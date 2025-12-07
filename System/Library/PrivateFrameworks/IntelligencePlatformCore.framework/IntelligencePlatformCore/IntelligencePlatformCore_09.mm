uint64_t sub_1C44CD5DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C44CD624(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SimpleBlockingFunction.blockValue(_:)(uint64_t a1, uint64_t a2)
{
  sub_1C4F00FF8();
  sub_1C4415EA8();
  v4 = sub_1C4F01FC8();

  v5 = 0;
  v6 = *(v4 + 16);
  v7 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v8 = (v4 + 40 + 16 * v5);
  while (v6 != v5)
  {
    if (v5 >= *(v4 + 16))
    {
      __break(1u);
LABEL_21:
      sub_1C443D664();
      v7 = v18;
      goto LABEL_16;
    }

    ++v5;
    v2 = *(v8 - 1);
    v9 = *v8;
    v8 += 2;
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C44CD9C0(0, *(v7 + 16) + 1, 1);
      }

      v3 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v3 >= v11 >> 1)
      {
        sub_1C44CD9C0(v11 > 1, v3 + 1, 1);
      }

      *(v7 + 16) = v3 + 1;
      v12 = v7 + 16 * v3;
      *(v12 + 32) = v2;
      *(v12 + 40) = v9;
      goto LABEL_2;
    }
  }

  if (!*(v7 + 16))
  {
    return v7;
  }

  v20 = sub_1C4F00FF8();
  MEMORY[0x1EEE9AC00](v20);
  v13 = sub_1C44CE068();

  if (v13)
  {
    return v7;
  }

  v2 = sub_1C4F00FF8();
  v3 = v14;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_16:
  v15 = *(v7 + 16);
  if (v15 >= *(v7 + 24) >> 1)
  {
    sub_1C443D664();
    v7 = v19;
  }

  *(v7 + 16) = v15 + 1;
  v16 = v7 + 16 * v15;
  *(v16 + 32) = v2;
  *(v16 + 40) = v3;
  return v7;
}

uint64_t sub_1C44CD8FC()
{

  return sub_1C4851984();
}

uint64_t sub_1C44CD920()
{

  return swift_task_alloc();
}

BOOL sub_1C44CD940()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t sub_1C44CD98C@<X0>(uint64_t a2@<X8>, double a3@<D0>)
{
  *(v3 + a2) = a3;
  *(v3 + *(v4 + 48)) = *(v5 - 148);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C44CD9E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1C43FBCA4(a1, a2, a3, a4);
  sub_1C43FBCE0();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t sub_1C44CDA30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1C43FBCA4(a1, a2, a3, a4);
  sub_1C43FBCE0();
  v5 = sub_1C43FBC98();
  v6(v5);
  return v4;
}

uint64_t sub_1C44CDA7C()
{
  sub_1C4404078();
  sub_1C456902C(v1, v2);
  sub_1C43FBCE0();
  v3 = sub_1C43FBC98();
  v4(v3);
  return v0;
}

uint64_t sub_1C44CDAD4()
{
  sub_1C4EF9648();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FBCC4();
  v1 = sub_1C4EF9378();
  v2 = sub_1C43FBD18(v1);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  sub_1C4EF93D8();
  swift_allocObject();
  sub_1C4EF93C8();
  sub_1C4EF9358();
  sub_1C4EF9388();
  sub_1C44CE010();
  v3 = sub_1C4EF93B8();
  v5 = v4;
  v6 = sub_1C44CE108(v3, v4);
  if (v7)
  {
    goto LABEL_8;
  }

  v20 = v3;
  v21 = v5;
  v8 = sub_1C43FD018();
  sub_1C44344B8(v8, v9);
  sub_1C456902C(&qword_1EC0C61A0, &qword_1C4F1E400);
  if (!swift_dynamicCast())
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_1C4423A0C(v18, &qword_1EC0BB218, &qword_1C4F2DA00);
LABEL_7:
    v13 = sub_1C43FD018();
    v6 = sub_1C47DC7B8(v13, v14);
LABEL_8:
    v12 = v6;

    v15 = sub_1C43FD018();
    sub_1C4434000(v15, v16);
    return v12;
  }

  sub_1C441D670(v18, v22);
  sub_1C4409678(v22, v23);
  if ((sub_1C4F02588() & 1) == 0)
  {
    sub_1C440962C(v22);
    goto LABEL_7;
  }

  v10 = sub_1C43FD018();
  sub_1C4434000(v10, v11);
  sub_1C4409678(v22, v23);
  sub_1C4F02578();

  v12 = *&v18[0];
  sub_1C440962C(v22);
  return v12;
}

void sub_1C44CDF38()
{
  sub_1C441581C();
  if (v4)
  {
    sub_1C441172C();
    if (v5 != v6)
    {
      sub_1C442B904();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1C440A4D4();
    }
  }

  sub_1C442DD18();
  if (v3)
  {
    sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
    v7 = sub_1C44182F4();
    sub_1C4424F4C(v7);
    v7[2] = v2;
    v7[3] = 2 * (v8 / 16);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = sub_1C441D138();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

unint64_t sub_1C44CE010()
{
  result = qword_1EDDFA400;
  if (!qword_1EDDFA400)
  {
    sub_1C4EF9648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA400);
  }

  return result;
}

BOOL sub_1C44CE068()
{
  sub_1C43FD6BC();
  v3 = v2 + 40;
  v5 = v4 + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v18 = *(v3 - 8);
    v6 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v14 = sub_1C4411C74(v6, v7, v8, v9, v10, v11, v12, v13, v18);
    v15 = v1(v14);
    if (v0)
    {

      return v5 != 0;
    }

    v16 = v15;
    v3 += 16;
  }

  while ((v16 & 1) == 0);
  return v5 != 0;
}

uint64_t sub_1C44CE108(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
      }

      v4 = a1;
      if (sub_1C4EF9538() && __OFSUB__(v4, sub_1C4EF9568()))
      {
        goto LABEL_14;
      }

LABEL_9:
      sub_1C4EF9558();
      return sub_1C4F01258();
    case 2uLL:
      v2 = *(a1 + 16);
      v3 = *(a1 + 24);
      if (sub_1C4EF9538() && __OFSUB__(v2, sub_1C4EF9568()))
      {
        goto LABEL_13;
      }

      if (!__OFSUB__(v3, v2))
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    default:
      return sub_1C4F01258();
  }
}

uint64_t sub_1C44CE310()
{
  v0 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v1 = sub_1C43FBD18(v0);
  MEMORY[0x1EEE9AC00](v1);
  v53 = &v45 - v2;
  v54 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v47 = v3;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v46 = v6 - v5;
  v7 = sub_1C456902C(&unk_1EC0B9830, qword_1C4F0FC20);
  v8 = sub_1C43FBD18(v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v11 = sub_1C456902C(&unk_1EC0BA0F0, &unk_1C4F1D8A0);
  v12 = sub_1C43FBD18(v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  sub_1C4EF9648();
  sub_1C43FCDF8();
  v51 = v19;
  v52 = v18;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  sub_1C4EF9628();
  sub_1C4EF9638();
  v50 = sub_1C4EF95D8();
  v48 = v23;
  v24 = sub_1C4EF95E8();
  if (v25)
  {
    v26 = 1;
  }

  else
  {
    v26 = v24;
  }

  v49 = v26;
  v27 = sub_1C4EF95A8();
  if (v28)
  {
    v29 = 1;
  }

  else
  {
    v29 = v27;
  }

  v30 = sub_1C4EF95C8();
  v32 = v31;
  v33 = sub_1C4EF95F8();
  sub_1C4EF9608();
  v44 = v33;
  v34 = v22;
  sub_1C4EF9618(v17, v10, 0, 1, v50, v48 & 1, v49, 0, v29, 0, v30, v32 & 1, v44);
  sub_1C4EF9628();
  v35 = sub_1C4EF9F88();
  if (sub_1C44157D4(v14, 1, v35) == 1)
  {
    (*(v51 + 8))(v34, v52);
    sub_1C4423A0C(v14, &unk_1EC0BA0F0, &unk_1C4F1D8A0);
    v36 = v53;
    sub_1C440BAA8(v53, 1, 1, v54);
  }

  else
  {
    v38 = v51;
    v37 = v52;
    v36 = v53;
    sub_1C4EF9F08();
    (*(*(v35 - 8) + 8))(v14, v35);
    v39 = v54;
    if (sub_1C44157D4(v36, 1, v54) != 1)
    {
      v42 = v46;
      v41 = v47;
      (*(v47 + 32))(v46, v36, v39);
      sub_1C4EF9AD8();
      v40 = sub_1C4F019E8();
      (*(v41 + 8))(v42, v39);
      (*(v38 + 8))(v34, v37);
      return v40;
    }

    (*(v38 + 8))(v34, v37);
  }

  sub_1C4423A0C(v36, &unk_1EC0B84E0, qword_1C4F0D2D0);
  return 0;
}

uint64_t sub_1C44CE7B0(uint64_t a1, uint64_t a2, void *a3, void (**a4)(char *, uint64_t))
{
  v119 = a4;
  v115 = a3;
  v113 = a2;
  v136 = a1;
  v122 = sub_1C4EFCD08();
  sub_1C43FCDF8();
  v127 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBFDC();
  v116 = v7;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v8);
  v125 = &v105 - v9;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  v117 = &v105 - v11;
  sub_1C43FBE44();
  v12 = sub_1C4EFCCC8();
  sub_1C43FCDF8();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBFDC();
  v135 = v16;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v105 - v18;
  v20 = sub_1C456902C(&qword_1EC0B9DC8, &unk_1C4F124A0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v105 - v21;
  v23 = sub_1C4EF9D38();
  sub_1C43FCDF8();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBFDC();
  v121 = v27;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v105 - v29;
  v31 = v4;
  sub_1C44CF428(v22);
  if (sub_1C44157D4(v22, 1, v23) == 1)
  {
    sub_1C4420C3C(v22, &qword_1EC0B9DC8, &unk_1C4F124A0);
LABEL_15:
    v51 = 0;
    return v51 & 1;
  }

  (*(v25 + 32))(v30, v22, v23);
  v32 = *(v14 + 104);
  LODWORD(v126) = *MEMORY[0x1E69E0620];
  v133 = v32;
  v134 = v14 + 104;
  v32(v19);
  v33 = sub_1C4EFCCB8();
  v34 = *(v14 + 8);
  v128 = v14 + 8;
  v132 = v34;
  v34(v19, v12);
  v136 = v33;
  v131 = *(v33 + 16);
  if (!v131)
  {
    (*(v25 + 8))(v30, v23);

    goto LABEL_15;
  }

  v124 = v30;
  v120 = v23;
  v118 = v31;
  v114 = 0;
  v35 = 0;
  v129 = (v127 + 8);
  v130 = v127 + 16;
  v36 = v122;
  v37 = v125;
  v137 = v19;
  v112 = v25;
  v38 = v132;
  while (v131 != v35)
  {
    if (v35 >= *(v136 + 16))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      sub_1C4419274();
      swift_once();
LABEL_39:
      v99 = sub_1C4F00978();
      sub_1C442B738(v99, qword_1EDE2DE10);
      v100 = sub_1C4F00968();
      v101 = sub_1C4F01CD8();
      v102 = os_log_type_enabled(v100, v101);
      v103 = v114;
      if (v102)
      {
        v104 = swift_slowAlloc();
        *v104 = 0;
        _os_log_impl(&dword_1C43F8000, v100, v101, "PHPerson: Invalid call to VUGallery", v104, 2u);
        sub_1C43FBE2C();
      }

LABEL_36:
      v51 = v110;
      return v51 & 1;
    }

    v125 = ((*(v127 + 80) + 32) & ~*(v127 + 80));
    v39 = *(v127 + 9);
    v40 = *(v127 + 2);
    v40(v37, &v125[v136 + v39 * v35], v36);
    sub_1C4EFCCE8();
    v41 = v135;
    v133(v135, v126, v12);
    sub_1C4693DE4(&qword_1EDDEFFF0, MEMORY[0x1E69E0630], MEMORY[0x1E69E0640]);
    sub_1C44087D0();
    sub_1C440F480();
    v38(v41, v12);
    v38(v137, v12);
    if (v138 == v139)
    {
      v42 = v125;
      v126 = v40;
      v123 = v39;
      (*(v127 + 4))(v117, v37, v36);
      v43 = sub_1C4EFCCF8();
      v44 = sub_1C43FD2BC();
      v127 = v45;
      v45(v44);
      if (v43)
      {
        v46 = 4;
      }

      else
      {
        v46 = 3;
      }

      v109 = v46;
      v47 = [v119 stringFromContact_];
      if (v47)
      {
        v49 = v47;
        v108 = sub_1C4F01138();
        v111 = v50;
      }

      else
      {
        v108 = 0;
        v111 = 0;
      }

      v52 = v116;
      v53 = v123;
      v54 = v126;
      v55 = v42;
      LODWORD(v110) = 0;
      v56 = 0;
      LODWORD(v125) = *MEMORY[0x1E69E0608];
      v119 = (v112 + 8);
      v57 = &v55[v136];
      *&v48 = 136315394;
      v105 = v48;
      v58 = v122;
      while (1)
      {
        if (v56 >= *(v136 + 16))
        {
          goto LABEL_43;
        }

        v54(v52, v57, v58);
        v59 = v58;
        sub_1C4EFCCE8();
        v60 = v135;
        v133(v135, v125, v12);
        sub_1C44087D0();
        sub_1C440F480();
        v61 = v60;
        v62 = v137;
        v63 = v132;
        v132(v61, v12);
        v63(v62, v12);
        if (v138 == v139)
        {
          sub_1C4461BB8(0, &qword_1EC0C2A80, 0x1E6978980);
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v65 = v121;
          sub_1C4EFCCD8();
          v58 = sub_1C4EF9CF8();
          v66 = v52;
          v68 = v67;
          v117 = *v119;
          (v117)(v65, v120);
          v69 = sub_1C4693D58(v58, v68, ObjCClassFromMetadata);
          if (!v70)
          {
            sub_1C440A888();
            v94();
            v52 = v66;
LABEL_33:
            v53 = v123;
            v96 = v124;
            goto LABEL_34;
          }

          v71 = v69;
          v72 = v70;
          v58 = v118;
          v73 = sub_1C46903EC(v69, v70, v115);
          v53 = v123;
          if (v73)
          {
            v74 = [v58 identifier];
            v75 = v72;
            v76 = sub_1C4F01138();
            v77 = v71;
            v79 = v78;

            LOBYTE(v138) = v109;
            v80.value._countAndFlagsBits = v76;
            v80.value._object = v79;
            v81.value._countAndFlagsBits = v108;
            v81.value._object = v111;
            v112 = v77;
            v82._countAndFlagsBits = v77;
            v82._object = v75;
            VisionKeyValueStore.store(entityIdentifier:name:relationship:visualIdentifier:association:confidence:)(v80, v81, 0, v82, &v138, 1.0);
            v114 = v83;
            if (v83)
            {

              (v127)(v116, v122);
              (v117)(v124, v120);
              if (qword_1EDDFD028 != -1)
              {
                goto LABEL_44;
              }

              goto LABEL_39;
            }

            if (qword_1EDDFD028 != -1)
            {
              sub_1C4419274();
              swift_once();
            }

            v84 = sub_1C4F00978();
            sub_1C442B738(v84, qword_1EDE2DE10);
            v85 = v118;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v58 = sub_1C4F00968();
            v86 = sub_1C4F01CC8();

            if (os_log_type_enabled(v58, v86))
            {
              v87 = swift_slowAlloc();
              v110 = v58;
              v58 = v87;
              v117 = swift_slowAlloc();
              v138 = v117;
              *v58 = v105;
              v88 = [v85 identifier];
              v106 = sub_1C4F01138();
              v107 = v86;
              v90 = v89;

              v91 = sub_1C441D828(v106, v90, &v138);

              *(v58 + 4) = v91;
              *(v58 + 6) = 2080;
              v92 = sub_1C441D828(v112, v75, &v138);

              *(v58 + 14) = v92;
              v93 = v110;
              _os_log_impl(&dword_1C43F8000, v110, v107, "CNContact: %s tagged with %s", v58, 0x16u);
              swift_arrayDestroy();
              sub_1C43FBE2C();
              sub_1C43FBE2C();
            }

            else
            {
            }

            v52 = v116;
            sub_1C440A888();
            v97();
            LODWORD(v110) = 1;
            goto LABEL_33;
          }

          v52 = v116;
          sub_1C440A888();
          v95();
        }

        else
        {
          (v127)(v52, v59);
          v58 = v59;
        }

        v96 = v124;
LABEL_34:
        ++v56;
        v57 += v53;
        v54 = v126;
        if (v131 == v56)
        {

          (*v119)(v96, v120);
          goto LABEL_36;
        }
      }
    }

    ++v35;
    (*v129)(v37, v36);
  }

  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

uint64_t sub_1C44CF3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1C4F02938() & 1;
  }
}

uint64_t sub_1C44CF428@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C43FED8C();
  sub_1C4F01138();

  v4 = sub_1C43FED8C();
  sub_1C4F01138();

  v5 = sub_1C4F012A8();

  if (v5 > 36)
  {

    v6 = sub_1C43FED8C();
    v7 = sub_1C4F01138();
    v9 = v8;

    v10 = sub_1C44CF75C(36, v7, v9);
    MEMORY[0x1C693FEF0](v10);

LABEL_11:
    sub_1C4EF9CE8();
  }

  v11 = sub_1C43FED8C();
  sub_1C4F01138();

  v12 = sub_1C4F012A8();

  if (v12 >= 36)
  {
    goto LABEL_11;
  }

  if (qword_1EDDFD028 != -1)
  {
    sub_1C4419274();
    swift_once();
  }

  v13 = sub_1C4F00978();
  sub_1C442B738(v13, qword_1EDE2DE10);
  v14 = v1;
  v15 = sub_1C4F00968();
  v16 = sub_1C4F01CD8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v26 = v18;
    *v17 = 136315138;
    v19 = [v14 identifier];
    v20 = sub_1C4F01138();
    v22 = v21;

    v23 = sub_1C441D828(v20, v22, &v26);

    *(v17 + 4) = v23;
    _os_log_impl(&dword_1C43F8000, v15, v16, "%s is a malformed identifier and cannot be converted into a UUID.", v17, 0xCu);
    sub_1C440962C(v18);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  v24 = sub_1C4EF9D38();

  return sub_1C440BAA8(a1, 1, 1, v24);
}

uint64_t sub_1C44CF75C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1C4F012D8();
    sub_1C4F01448();
    sub_1C44025B0();
    return sub_1C4460468();
  }

  return result;
}

uint64_t ContactHandleBlockingFunction.blockValue(_:)()
{
  if (String.normalizedContactHandle()().value._object)
  {
    sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
    v0 = swift_allocObject();
    *(v0 + 16) = xmmword_1C4F0D130;
    v1 = sub_1C4F00FF8();
    v3 = v2;

    *(v0 + 32) = v1;
    *(v0 + 40) = v3;
  }

  else
  {
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v4 = sub_1C4F00978();
    sub_1C442B738(v4, qword_1EDE2DE10);
    v5 = sub_1C4F00968();
    v6 = sub_1C4F01CB8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1C43F8000, v5, v6, "ContactHandleBlockingFunction: Passed a handle that was not a handle", v7, 2u);
      MEMORY[0x1C6942830](v7, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return v0;
}

uint64_t sub_1C44CF9EC()
{
  sub_1C4404078();
  v1(0);
  sub_1C43FBCE0();
  v2 = sub_1C43FBC98();
  v3(v2);
  return v0;
}

Swift::String_optional __swiftcall String.normalizedContactHandle()()
{
  v0 = sub_1C4EF9488();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E6996728]) init];
  sub_1C4402120();
  v5 = sub_1C4F01108();
  v6 = [v4 typeOfHandleString_];

  if (v6 == 1)
  {
    v7 = objc_autoreleasePoolPush();
    sub_1C4402120();
    v26[0] = sub_1C4F00FF8();
    v26[1] = v8;
    sub_1C4EF9448();
    sub_1C4415EA8();
    v9 = sub_1C4F01FF8();
    v11 = v10;
    (*(v1 + 8))(v3, v0);

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    sub_1C442040C();
    if (v12)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {
      sub_1C440F228();
      sub_1C4F012B8();
      sub_1C440F228();
      v16 = sub_1C44DBF14(v13, v14, v15);
      MEMORY[0x1C693FEF0](v16);
    }

    sub_1C4461BB8(0, &qword_1EDDFA538, 0x1E695CF50);
    v17 = sub_1C4402120();
    v19 = sub_1C44D0148(v17, v18);
    v20 = [v19 unformattedInternationalStringValue];
    if (v20)
    {
      v21 = v20;
      v9 = sub_1C4F01138();
      v11 = v22;
    }

    else
    {

      v9 = 0;
      v11 = 0;
    }
  }

  v23 = v9;
  v24 = v11;
  result.value._object = v24;
  result.value._countAndFlagsBits = v23;
  return result;
}

uint64_t sub_1C44CFC70(uint64_t a1)
{
  v20 = 0;
  v3 = [v1 phoneNumbers];
  sub_1C456902C(&qword_1EC0BAD60, &qword_1C4F175B0);
  v4 = sub_1C4F01678();

  v16 = a1;
  v17 = v1;
  v18 = &v20;
  sub_1C44CFE98(sub_1C44D021C, v15, v4);
  v6 = v5;

  v19 = v6;
  v7 = [v1 emailAddresses];
  v8 = sub_1C4F01678();

  v12[2] = a1;
  v13 = v1;
  v14 = &v20;
  sub_1C44CFE98(sub_1C44D18EC, v12, v8);
  v10 = v9;

  sub_1C44D1BBC(v10);
  return v19;
}

unint64_t sub_1C44CFDB0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 4 * v6;
  for (i = 15; ; i = sub_1C4F012B8())
  {
    if (i >> 14 == v7)
    {
      return 0;
    }

    if (sub_1C4F01428() == a1 && v9 == a2)
    {
      break;
    }

    v11 = sub_1C4F02938();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

void sub_1C44CFEC4()
{
  sub_1C43FE96C();
  v7 = v6;
  sub_1C4425280(v8);
  v9 = sub_1C456902C(&unk_1EC0BADC0, &qword_1C4F402C0);
  sub_1C43FBD18(v9);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FE94C();
  v34 = type metadata accessor for CNContactStructs.AddressRelationshipType(0);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  v33 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD230();
  v31 = v14;
  v7(v1);
  sub_1C44044E4();
  v15 = MEMORY[0x1E69E7CC0];
  v32 = v1;
  while (1)
  {
    if (v5 == v4)
    {
      goto LABEL_18;
    }

    if (v35)
    {
      v16 = MEMORY[0x1C6940F90](v4, v1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_20;
      }

      v16 = *(v1 + 8 * v4 + 32);
    }

    v17 = v16;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    v18 = sub_1C442E11C();
    v19(v18);
    if (v0)
    {

LABEL_18:
      sub_1C4402144();
      sub_1C43FBC80();
      return;
    }

    v20 = sub_1C441B908();
    if (sub_1C44157D4(v20, v21, v34) == 1)
    {
      sub_1C4420C3C(v3, &unk_1EC0BADC0, &qword_1C4F402C0);
    }

    else
    {
      sub_1C44D0C04(v3, v31, type metadata accessor for CNContactStructs.AddressRelationshipType);
      sub_1C44D0C04(v31, v33, type metadata accessor for CNContactStructs.AddressRelationshipType);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1C43FCEC0();
        sub_1C44D0D14(v26, v27, v28, v15);
        v15 = v29;
      }

      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1C44D0D14(v22 > 1, v23 + 1, 1, v15);
        v15 = v30;
      }

      *(v15 + 16) = v23 + 1;
      sub_1C43FBF6C();
      sub_1C44D0C04(v33, v15 + v24 + *(v25 + 72) * v23, type metadata accessor for CNContactStructs.AddressRelationshipType);
      v1 = v32;
    }

    ++v4;
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

id sub_1C44D0148(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1C4F01108();

  v4 = [v2 initWithStringValue_];

  return v4;
}

uint64_t VisionKeyValueStore.fetchVisualIdentifiers(for:)()
{
  result = sub_1C44D01BC();
  if (!result)
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

void sub_1C44D029C(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for CNContactStructs.AddressRelationshipType(0);
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = sub_1C44D06D0([*a1 value]);
  if (v17)
  {
    v54 = v17;
    v55 = v16;
    v53 = a4;
    v57 = v14;
    v58 = a5;
    v59 = v11;
    v60 = v5;
    v18 = a2[3];
    v19 = a2[4];
    sub_1C4409678(a2, v18);
    v20 = sub_1C4F01138();
    v22 = v21;
    v56 = v15;
    v23 = [v15 identifier];
    v24 = sub_1C4F01138();
    v26 = v25;

    v27 = (*(v19 + 8))(a3, v20, v22, v24, v26, 0, 0, 0, 0, v18, v19);

    v61 = sub_1C4428DA0(v27);
    v28 = 0;
    v29 = MEMORY[0x1E69E7CC0];
    while (v61 != v28)
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x1C6940F90](v28, v27);
      }

      else
      {
        if (v28 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v30 = *(v27 + 8 * v28 + 32);
      }

      v31 = v30;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        return;
      }

      v32 = [v30 actionType];
      v33 = sub_1C4F01138();
      v35 = v34;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C443D664();
        v29 = v38;
      }

      v36 = *(v29 + 16);
      if (v36 >= *(v29 + 24) >> 1)
      {
        sub_1C443D664();
        v29 = v39;
      }

      *(v29 + 16) = v36 + 1;
      v37 = v29 + 16 * v36;
      *(v37 + 32) = v33;
      *(v37 + 40) = v35;
      ++v28;
    }

    v40 = v57;
    sub_1C44D092C(v57);
    v41 = v59;
    v42 = (v40 + v59[12]);

    v43 = v54;
    *v42 = v55;
    v42[1] = v43;
    v44 = [v56 label];
    if (v44)
    {
      v45 = v44;
      v46 = sub_1C4F01138();
      v48 = v47;
    }

    else
    {
      v46 = 0;
      v48 = 0;
    }

    v49 = v58;
    v50 = (v40 + v41[10]);

    *v50 = v46;
    v50[1] = v48;
    if (v61)
    {
      v51 = (v40 + v41[14]);

      *v51 = xmmword_1C4F17530;
      v52 = v41[16];

      *(v40 + v52) = v29;
      *v53 = 1;
    }

    else
    {
    }

    sub_1C448CA30();
    sub_1C440BAA8(v49, 0, 1, v41);
    sub_1C44C45FC(v40, type metadata accessor for CNContactStructs.AddressRelationshipType);
  }

  else
  {
    sub_1C440BAA8(a5, 1, 1, v11);
  }
}

uint64_t VisualIdentifierBlockingFunction.blockValue(_:)()
{
  v0 = VisionKeyValueStore.fetchVisualIdentifiers(for:)();
  sub_1C4D3F510(v0);
  v2 = v1;

  return v2;
}

uint64_t sub_1C44D06D0(void *a1)
{
  v2 = [a1 unformattedInternationalStringValue];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C44D07B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v11 = a5;
  if (a3)
  {
    v13 = sub_1C4F01108();
    if (!v11)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v13 = 0;
  if (a5)
  {
LABEL_3:
    v11 = sub_1C4F01108();
  }

LABEL_4:
  if (a7)
  {
    a7 = sub_1C4F01108();
  }

  if (a9)
  {
    v14 = sub_1C4F01108();
  }

  else
  {
    v14 = 0;
  }

  v15 = [v9 entriesForContact:a1 propertyKey:v13 labeledValueIdentifier:v11 actionType:a7 bundleIdentifier:v14];

  sub_1C4461BB8(0, &qword_1EDDF0468, 0x1E695CE98);
  v16 = sub_1C4F01678();

  return v16;
}

void sub_1C44D092C(uint64_t a1@<X8>)
{
  sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v2, v3, v4, v5);
  v6 = type metadata accessor for CNContactStructs.AddressRelationshipType(0);
  sub_1C4EFD1D8();
  v7 = v6[6];
  if (qword_1EDDFED28 != -1)
  {
    sub_1C44133AC();
    swift_once();
  }

  v8 = type metadata accessor for Source(0);
  sub_1C442B738(v8, &unk_1EDDFD088);
  sub_1C4408374();
  sub_1C44CC80C(v9, a1 + v7, v10);
  sub_1C4EFE518();
  sub_1C4401738(v6[8]);
  sub_1C4EFE4E8();
  sub_1C4401738(v6[10]);
  sub_1C4EFE478();
  sub_1C4401738(v6[12]);
  sub_1C4EFE318();
  sub_1C4401738(v6[14]);
  sub_1C4EFEB08();
  *(a1 + v6[16]) = 0;
  sub_1C4EFE5A8();
  sub_1C4401738(v6[18]);
  sub_1C4EFE4B8();
  sub_1C4401738(v6[20]);
  sub_1C4EFEDE8();
  sub_1C4401738(v6[22]);
  sub_1C4EFEA58();
  sub_1C4401738(v6[24]);
  sub_1C4EFE8D8();
  sub_1C4401738(v6[26]);
  sub_1C4EFE378();
  sub_1C4401738(v6[28]);
  sub_1C4EFECD8();
  sub_1C4401738(v6[30]);
  sub_1C4EFE688();
  sub_1C4401738(v6[32]);
}

void (*sub_1C44D0AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (**a5)(uint64_t, uint64_t)@<X8>))(uint64_t, uint64_t)
{
  result = sub_1C44D08D8(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_1C44D0B30()
{
}

uint64_t sub_1C44D0B54()
{
  *(v0 - 360) = *(v0 + 16);
}

uint64_t sub_1C44D0B74()
{

  return sub_1C44BCC4C(v1, v0);
}

uint64_t sub_1C44D0C04(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C44D0C64@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = a2(0);
  if (v7)
  {
    sub_1C448CCC8(a1 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)), a4, a3);
  }

  v9 = sub_1C442FDE8();

  return sub_1C440BAA8(v9, v10, v11, v12);
}

void sub_1C44D0D54()
{
  sub_1C43FE96C();
  v2 = v1;
  sub_1C4EFB768();
  sub_1C4403200();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C4F13950;
  v10 = *v1;
  v11 = v1[1];
  v12 = MEMORY[0x1E69E6158];
  v13 = MEMORY[0x1E69A0138];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = v13;
  *(v9 + 32) = v10;
  *(v9 + 40) = v11;
  v14 = type metadata accessor for EntityBlock(0);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v15 = sub_1C4EFD3D8();
  *(v9 + 96) = v12;
  *(v9 + 104) = v13;
  *(v9 + 72) = v15;
  *(v9 + 80) = v16;
  v17 = (v2 + v14[6]);
  v19 = *v17;
  v18 = v17[1];
  *(v9 + 136) = v12;
  *(v9 + 144) = v13;
  *(v9 + 112) = v19;
  *(v9 + 120) = v18;
  v20 = *(v2 + v14[7]);
  v21 = MEMORY[0x1E69A0168];
  *(v9 + 176) = MEMORY[0x1E69E63B0];
  *(v9 + 184) = v21;
  *(v9 + 152) = v20;
  v22 = 0xE700000000000000;
  v23 = 0x6E776F6E6B6E75;
  switch(*(v2 + v14[8]))
  {
    case 1:
      v22 = 0xE400000000000000;
      v23 = 1819047270;
      break;
    case 2:
      v22 = 0xE500000000000000;
      v23 = 0x61746C6564;
      break;
    case 3:
      v22 = 0xEA0000000000676ELL;
      v23 = 0x69686374614D6F74;
      break;
    default:
      break;
  }

  *(v9 + 216) = v12;
  *(v9 + 224) = v13;
  *(v9 + 192) = v23;
  *(v9 + 200) = v22;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFB728();
  sub_1C4EFBFF8();
  (*(v4 + 8))(v8, v0);
  sub_1C43FBC80();
}

uint64_t sub_1C44D0FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDF92E8, type metadata accessor for EntityBlock, &protocol conformance descriptor for EntityBlock);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

void sub_1C44D108C(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X8>)
{
  v62 = a3;
  v10 = type metadata accessor for CNContactStructs.AddressRelationshipType(0);
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v60 = &object - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *a1;
  v13 = [v61 value];
  sub_1C4F01138();

  v14 = String.normalizedContactHandle()();

  if (!v14.value._object)
  {
    goto LABEL_16;
  }

  v15 = [objc_allocWithZone(MEMORY[0x1E6996728]) init];
  countAndFlagsBits = v14.value._countAndFlagsBits;
  v16 = sub_1C4F01108();
  v17 = [v15 typeOfHandleString_];

  if (v17 != 1)
  {

LABEL_16:
    sub_1C440BAA8(a5, 1, 1, v10);
    return;
  }

  object = v14.value._object;
  v55 = a4;
  v56 = a5;
  v57 = v10;
  v58 = v5;
  v18 = a2[3];
  v19 = a2[4];
  sub_1C4409678(a2, v18);
  v20 = sub_1C4F01138();
  v22 = v21;
  v23 = [v61 identifier];
  v24 = sub_1C4F01138();
  v26 = v25;

  v27 = (*(v19 + 8))(v62, v20, v22, v24, v26, 0, 0, 0, 0, v18, v19);

  v62 = sub_1C4428DA0(v27);
  v28 = 0;
  v29 = MEMORY[0x1E69E7CC0];
  while (v62 != v28)
  {
    if ((v27 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x1C6940F90](v28, v27);
    }

    else
    {
      if (v28 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v30 = *(v27 + 8 * v28 + 32);
    }

    v31 = v30;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      return;
    }

    v32 = [v30 actionType];
    v33 = sub_1C4F01138();
    v35 = v34;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C443D664();
      v29 = v38;
    }

    v36 = *(v29 + 16);
    if (v36 >= *(v29 + 24) >> 1)
    {
      sub_1C443D664();
      v29 = v39;
    }

    *(v29 + 16) = v36 + 1;
    v37 = v29 + 16 * v36;
    *(v37 + 32) = v33;
    *(v37 + 40) = v35;
    ++v28;
  }

  v40 = v60;
  sub_1C44D092C(v60);
  v41 = v57;
  v42 = (v40 + v57[8]);

  v43 = object;
  *v42 = countAndFlagsBits;
  v42[1] = v43;
  v44 = [v61 label];
  v45 = v55;
  if (v44)
  {
    v46 = v44;
    v47 = sub_1C4F01138();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0;
  }

  v50 = v56;
  v51 = (v40 + v41[10]);

  *v51 = v47;
  v51[1] = v49;
  if (v62)
  {
    v52 = (v40 + v41[14]);

    *v52 = xmmword_1C4F17530;
    v53 = v41[16];

    *(v40 + v53) = v29;
    *v45 = 1;
  }

  else
  {
  }

  sub_1C448CA30();
  sub_1C440BAA8(v50, 0, 1, v41);
  sub_1C44C45FC(v40, type metadata accessor for CNContactStructs.AddressRelationshipType);
}

void EntityBlock.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1C43FE96C();
  v30 = v29;
  v31 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v49 = v32;
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBCC4();
  v36 = v35 - v34;
  v50 = sub_1C456902C(&qword_1EC0BE0E0, &qword_1C4F32618);
  sub_1C43FCDF8();
  v48 = v37;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v38);
  v39 = sub_1C44017FC();
  v40 = type metadata accessor for EntityBlock(v39);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBCC4();
  sub_1C43FD1B4();
  sub_1C4417F50(v30, v30[3]);
  sub_1C44D190C();
  sub_1C4F02BC8();
  if (v27)
  {
    sub_1C440962C(v30);
  }

  else
  {
    *v28 = sub_1C4F02678();
    v28[1] = v42;
    sub_1C4405BEC();
    sub_1C44004E0();
    sub_1C4490F60(v43, v44, MEMORY[0x1E69A92F0]);
    sub_1C4F026C8();
    (*(v49 + 32))(v28 + v40[5], v36, v31);
    sub_1C4401670();
    v45 = sub_1C4F02678();
    v46 = (v28 + v40[6]);
    *v46 = v45;
    v46[1] = v47;
    sub_1C4495238();
    *(v28 + v40[7]) = sub_1C4F02698();
    sub_1C44C8A04();
    sub_1C4F026C8();
    (*(v48 + 8))(v26, v50);
    *(v28 + v40[8]) = a12;
    sub_1C449EEE8();
    sub_1C440962C(v30);
    sub_1C449F22C();
  }

  sub_1C43FBC80();
}

unint64_t sub_1C44D190C()
{
  result = qword_1EDDF9330[0];
  if (!qword_1EDDF9330[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDF9330);
  }

  return result;
}

uint64_t sub_1C44D1960(uint64_t a1)
{
  result = sub_1C49E1A90(a1);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  v5(result, 1);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = v8(0);
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return result;
  }

  v11 = *(v9 + 16);
  v7 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v7)
  {
    *(v9 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1C44D1A88(char a1)
{
  result = 0x676E696B636F6C62;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x6449797469746E65;
      break;
    case 3:
      result = 0x6D617473656D6974;
      break;
    case 4:
      result = 0x656E696C65706970;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C44D1B5C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void sub_1C44D1BE8()
{
  sub_1C43FBD3C();
  v3 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v3);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C44042B0();
  v6 = type metadata accessor for CNContactStructs.AddressRelationshipType(v5);
  v7 = sub_1C43FCF7C(v6);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  sub_1C44D458C();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4402CA8();
  v9 = *(type metadata accessor for CNContactStructs.Person(0) + 256);
  v10 = *(v0 + v9);
  if (v10)
  {
    if (*(v10 + 16))
    {
      sub_1C4401968(v10);
      v11 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1C44CC80C(v9, v2, type metadata accessor for CNContactStructs.AddressRelationshipType);
        sub_1C4EFEA18();
        v12 = sub_1C4EFEEF8();
        v13 = sub_1C444C460(v12);
        sub_1C444088C(v13, v14, &qword_1EC0B9A08, &unk_1C4F107B0);
        sub_1C4482EF0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1C43FCEC0();
          sub_1C44D0D14(v21, v22, v23, v11);
          v11 = v24;
        }

        sub_1C4473DBC();
        if (v16)
        {
          v25 = sub_1C4440B38(v15);
          sub_1C44D0D14(v25, v26, v27, v28);
          v11 = v29;
        }

        sub_1C4456300();
        sub_1C4D86E50();
        sub_1C44D4624(v1, v17, v18);
        sub_1C44401A4();
        sub_1C44D474C(v2, v19);
        sub_1C4D870C4();
      }

      while (!v20);

      v9 = v30;
      v0 = v31;
    }

    else
    {

      v11 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + v9) = v11;
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C44D1DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, void *a8@<X8>)
{
  v226 = a7;
  v9 = v8;
  v225[1] = a6;
  v238 = a5;
  v260 = a4;
  v259 = a3;
  v230 = a8;
  v272 = type metadata accessor for EntityBlock(0);
  MEMORY[0x1EEE9AC00](v272);
  v239 = (v225 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v258 = sub_1C4EF9CD8();
  v241 = *(v258 - 8);
  MEMORY[0x1EEE9AC00](v258);
  v236 = v225 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v235 = v225 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v263 = v225 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v252 = (v225 - v19);
  v257 = type metadata accessor for EntityPair(0);
  MEMORY[0x1EEE9AC00](v257);
  v234 = v225 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v233 = v225 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v246 = v225 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v225 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v255 = (v225 - v29);
  MEMORY[0x1EEE9AC00](v30);
  v250 = v225 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v251 = v225 - v33;
  v34 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v36 = v225 - v35;
  v277 = sub_1C4EFF0C8();
  v243 = *(v277 - 1);
  MEMORY[0x1EEE9AC00](v277);
  v242 = v225 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v232 = v225 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v245 = v225 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v231 = v225 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v248 = (v225 - v45);
  MEMORY[0x1EEE9AC00](v46);
  v273 = v225 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v275 = v225 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v254 = v225 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v268 = (v225 - v53);
  MEMORY[0x1EEE9AC00](v54);
  v264 = v225 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v249 = v225 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v270 = v225 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v253 = v225 - v61;
  v62 = sub_1C4EFD548();
  v276 = v62;
  v63 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v256 = (v225 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v65);
  v244 = v225 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v228 = v225 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v237 = v225 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v269 = (v225 - v72);
  MEMORY[0x1EEE9AC00](v73);
  v271 = v225 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v77 = v225 - v76;
  v262 = type metadata accessor for PairGenerator(0);
  v78 = v262[6];
  _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
  v274 = a1;
  v267 = v78;
  LOBYTE(a1) = sub_1C4EFD378();
  *&v240 = v63;
  v265 = *(v63 + 8);
  v266 = v63 + 8;
  v265(v77, v62);
  if ((a1 & 1) == 0)
  {
    v107 = *(v272 + 24);
    v272 = a2;
    v108 = (a2 + v107);
    v109 = *v108;
    v281 = v108[1];
    v282 = MEMORY[0x1E69E7CD0];
    v278 = 44;
    v279 = 0xE100000000000000;
    v280 = v109;
    sub_1C4415EA8();
    v110 = sub_1C4F01FC8();
    v111 = sub_1C44D4100(MEMORY[0x1E69E7CC0], v110, &v282);

    v280 = v111;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44D46A4(&v280);
    if (v8)
    {
      while (1)
      {

        __break(1u);
      }
    }

    v112 = v280;
    v113 = v280[2];
    v261 = v280;
    v83 = v273;
    v114 = v256;
    if (v113 > 0xFA)
    {
      v83 = v280;
      if (qword_1EDDFFAF0 == -1)
      {
        goto LABEL_22;
      }

      goto LABEL_100;
    }

    if (!v113)
    {
      v272 = 0;
      goto LABEL_89;
    }

    v126 = 0;
    v272 = 0;
    v27 = v280 + ((*(v243 + 80) + 32) & ~*(v243 + 80));
    v271 = (v243 + 16);
    v255 = (v240 + 16);
    ++v241;
    v127 = (v243 + 8);
    v240 = xmmword_1C4F0CE60;
    v229 = 1;
    v128 = v275;
    v247 = v113;
    v263 = (v243 + 8);
    v239 = v27;
    while (1)
    {
      if (v126 >= *(v112 + 16))
      {
        goto LABEL_99;
      }

      v129 = v126++;
      v130 = *(v243 + 72);
      v270 = *(v243 + 16);
      (v270)(v128, &v27[v130 * v129], v277);
      v227 = objc_autoreleasePoolPush();
      if (v126 == v113)
      {
LABEL_68:
        if ((sub_1C4EFEFF8() & 1) == 0)
        {
          v193 = v277;
          (v270)(v242, v128, v277);
          v194 = v264;
          sub_1C44D56D0();
          v195 = v194;
          v128 = v275;
          v196 = v193;
          v113 = v247;
          (*v127)(v195, v196);
        }

        goto LABEL_70;
      }

      v131 = &v27[v130 * v229];
      v225[0] = v126;
      v132 = v126;
      v133 = v83;
      v83 = v132;
      v250 = v130;
      do
      {
        if (v83 >= v113)
        {
          goto LABEL_94;
        }

        if (v83 >= *(v261 + 16))
        {
          goto LABEL_95;
        }

        v269 = v131;
        (v270)(v133);
        LODWORD(v249) = sub_1C4EFEFF8();
        if ((sub_1C4EFEFF8() & 1) == 0 || (sub_1C4EFEFF8() & 1) == 0)
        {
          v268 = v83;
          v134 = v274 + v262[5];
          if (*(v134 + *(type metadata accessor for Source(0) + 28)) == 1)
          {
            v135 = v9;
            v136 = v237;
            _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
            sub_1C44D7248(&unk_1EDDFE830, MEMORY[0x1E69A92C8], MEMORY[0x1E69A92E8]);
            v137 = v276;
            sub_1C4F01578();
            sub_1C4F01578();
            if (v280 == v278 && v281 == v279)
            {
              v265(v136, v137);

              v9 = v135;
            }

            else
            {
              v139 = sub_1C4F02938();
              v140 = v136;
              v141 = v139;
              v265(v140, v137);

              v9 = v135;
              if ((v141 & 1) == 0)
              {
                v142 = v228;
                sub_1C4EFCF28();
                v143 = v276;
                sub_1C4F01578();
                sub_1C4F01578();
                if (v280 == v278 && v281 == v279)
                {
                  v265(v142, v143);
                }

                else
                {
                  v145 = sub_1C4F02938();
                  v146 = v143;
                  v147 = v145;
                  v265(v142, v146);

                  if ((v147 & 1) == 0)
                  {
LABEL_48:
                    v148 = objc_autoreleasePoolPush();
                    sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
                    v149 = swift_allocObject();
                    *(v149 + 16) = v240;
                    v150 = v275;
                    *(v149 + 32) = sub_1C4EFF048();
                    *(v149 + 40) = v151;
                    *(v149 + 48) = sub_1C4EFF048();
                    *(v149 + 56) = v152;
                    v280 = v149;
                    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                    sub_1C44ECB2C(&v280);
                    v254 = 0;
                    v251 = v148;

                    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
                    sub_1C443D694();
                    sub_1C4F01048();

                    v153 = sub_1C4EFEFF8();
                    v154 = *v255;
                    v252 = *v255;
                    if (v153)
                    {
                      v155 = v274;
                      v156 = v244;
                      v157 = v276;
                      v154(v244, v274 + v267, v276);
                      v158 = v277;
                      v159 = v270;
                      (v270)(v248, v273, v277);
                      v27 = v231;
                      (v159)(v231, v150, v158);
                      v160 = v235;
                      sub_1C4EF9C88();
                      sub_1C4EF9AD8();
                      v162 = v161;
                      (*v241)(v160, v258);
                      LODWORD(v253) = *(v155 + v262[7]);
                      v163 = v233;
                      v252(v233, v156, v157);
                      v164 = v257;
                      (v159)(&v163[*(v257 + 20)], v248, v158);
                      (v159)(&v163[v164[6]], v27, v158);
                      v165 = v264;
                      sub_1C4EFF098();
                      LOBYTE(v160) = sub_1C4EFF088();
                      v166 = *v263;
                      (*v263)(v165, v158);
                      if (v160)
                      {
                        v167 = v277;
                        v166(v27, v277);
                        v166(v248, v167);
                        v265(v244, v276);
                        v163[v164[7]] = 1;
                      }

                      else
                      {
                        v179 = sub_1C4EFEFF8();
                        v180 = v277;
                        v166(v27, v277);
                        v166(v248, v180);
                        v265(v244, v276);
                        v163[v164[7]] = v179 & 1;
                      }

                      v181 = v163;
                      v114 = v256;
                    }

                    else
                    {
                      v168 = v274;
                      v169 = v276;
                      v154(v114, v274 + v267, v276);
                      v170 = v245;
                      v171 = v150;
                      v27 = v277;
                      v172 = v270;
                      (v270)(v245, v171, v277);
                      v173 = v232;
                      (v172)(v232, v273, v27);
                      v174 = v236;
                      sub_1C4EF9C88();
                      sub_1C4EF9AD8();
                      v162 = v175;
                      (*v241)(v174, v258);
                      LODWORD(v253) = *(v168 + v262[7]);
                      v176 = v234;
                      v252(v234, v114, v169);
                      v177 = v257;
                      (v172)(&v176[*(v257 + 20)], v170, v27);
                      (v172)(&v176[v177[6]], v173, v27);
                      v178 = v264;
                      sub_1C4EFF098();
                      LOBYTE(v174) = sub_1C4EFF088();
                      v166 = *v263;
                      (*v263)(v178, v27);
                      if (v174)
                      {
                        v166(v173, v27);
                        v166(v245, v27);
                        v114 = v256;
                        v265(v256, v276);
                        v176[v177[7]] = 1;
                      }

                      else
                      {
                        v182 = sub_1C4EFEFF8();
                        v166(v173, v27);
                        v166(v245, v27);
                        v114 = v256;
                        v265(v256, v276);
                        v176[v177[7]] = v182 & 1;
                      }

                      v181 = v176;
                      v164 = v177;
                    }

                    v83 = v268;
                    *(v181 + v164[8]) = v162;
                    *(v181 + v164[9]) = v253;
                    v183 = v246;
                    sub_1C447212C(v181, v246);
                    v184 = sub_1C4EFEFF8();
                    v128 = v275;
                    if (v184 & 1) != 0 || (sub_1C4EFEFF8())
                    {
                      v185 = v242;
                      v186 = v277;
                      v187 = v166;
                      v188 = v270;
                      (v270)(v242, v128, v277);
                      v189 = v264;
                      sub_1C44D56D0();
                      v27 = v263;
                      v187(v189, v186);
                      (v188)(v185, v273, v186);
                      v166 = v187;
                      v83 = v268;
                      sub_1C44D56D0();
                      v190 = v189;
                      v128 = v275;
                      v191 = v186;
                      v114 = v256;
                      v187(v190, v191);
                    }

                    v192 = v254;
                    v259(v183);
                    v9 = v192;
                    if (v192)
                    {
                      sub_1C4485564(v183, type metadata accessor for EntityPair);

                      objc_autoreleasePoolPop(v251);
                      v198 = v277;
                      v166(v273, v277);
                      objc_autoreleasePoolPop(v227);
                      v166(v128, v198);
                      *v226 = v192;
                    }

                    sub_1C4485564(v183, type metadata accessor for EntityPair);
                    v133 = v273;
                    v106 = __OFADD__(v272++, 1);
                    if (v106)
                    {
                      goto LABEL_96;
                    }

                    objc_autoreleasePoolPop(v251);
                    v113 = v247;
                    v127 = v263;
                    v27 = v239;
                    goto LABEL_64;
                  }
                }
              }
            }
          }

          if ((sub_1C4EFEFF8() & 1) == 0 && (sub_1C4EFEFF8() & 1) == 0)
          {
            v128 = v275;
            v113 = v247;
            v127 = v263;
            v83 = v268;
            goto LABEL_64;
          }

          goto LABEL_48;
        }

LABEL_64:
        ++v83;
        (*v127)(v133, v277);
        v131 = &v250[v269];
      }

      while (v113 != v83);
      v83 = v133;
      v126 = v225[0];
      if ((v249 & 1) == 0)
      {
        goto LABEL_68;
      }

LABEL_70:
      objc_autoreleasePoolPop(v227);
      (*v127)(v128, v277);
      ++v229;
      v112 = v261;
      if (v126 == v113)
      {
LABEL_89:

LABEL_90:

        goto LABEL_91;
      }
    }
  }

  v79 = (a2 + *(v272 + 24));
  v81 = *v79;
  v80 = v79[1];
  v280 = v81;
  v281 = v80;
  v278 = 44;
  v279 = 0xE100000000000000;
  sub_1C4415EA8();
  v82 = sub_1C4F01FC8();
  v83 = v82;
  v273 = *(v82 + 16);
  if (!v273)
  {

    v272 = 0;
LABEL_91:
    *v230 = v272;
    return result;
  }

  v272 = 0;
  v84 = 0;
  v268 = (v243 + 32);
  v254 = (v243 + 16);
  v248 = v241 + 1;
  v269 = (v243 + 8);
  v85 = v82 + 40;
  v86 = v274;
  v27 = v253;
  v87 = v271;
  v247 = v36;
  v256 = v82;
  v255 = (v240 + 16);
  while (1)
  {
    if (v84 >= *(v83 + 16))
    {
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFF0D8();
    if (sub_1C44157D4(v36, 1, v277) == 1)
    {
      sub_1C4420C3C(v36, &unk_1EC0BA0E0, &qword_1C4F105A0);
      goto LABEL_17;
    }

    (*v268)(v27, v36, v277);
    if (sub_1C4EFEFF8())
    {
      (*v269)(v27, v277);
      goto LABEL_17;
    }

    v275 = v9;
    v261 = *v255;
    (v261)(v87, v86 + v267, v276);
    v88 = *v254;
    (*v254)(v270, v27, v277);
    v89 = v249;
    if (qword_1EDDFA100 != -1)
    {
      swift_once();
    }

    v90 = v277;
    v91 = sub_1C442B738(v277, qword_1EDE2DC60);
    v88(v89, v91, v90);
    v92 = v252;
    sub_1C4EF9C88();
    sub_1C4EF9AD8();
    v94 = v93;
    (*v248)(v92, v258);
    LODWORD(v263) = *(v86 + v262[7]);
    v95 = v250;
    (v261)(v250, v271, v276);
    v96 = v257;
    v88((v95 + *(v257 + 20)), v270, v90);
    v88((v95 + v96[6]), v89, v90);
    v97 = v264;
    sub_1C4EFF098();
    LOBYTE(v92) = sub_1C4EFF088();
    v98 = *v269;
    (*v269)(v97, v90);
    if (v92)
    {
      v99 = v277;
      v98(v89, v277);
      v98(v270, v99);
      v265(v271, v276);
      v100 = v96[7];
      v101 = 1;
    }

    else
    {
      v102 = sub_1C4EFEFF8();
      v103 = v277;
      v98(v89, v277);
      v98(v270, v103);
      v265(v271, v276);
      v100 = v96[7];
      v101 = v102 & 1;
    }

    *(v95 + v100) = v101;
    v104 = v251;
    *(v95 + v96[8]) = v94;
    *(v95 + v96[9]) = v263;
    sub_1C447212C(v95, v104);
    v105 = v275;
    v259(v104);
    v9 = v105;
    v27 = v253;
    if (v105)
    {
      break;
    }

    sub_1C4485564(v104, type metadata accessor for EntityPair);
    v98(v27, v277);
    v106 = __OFADD__(v272++, 1);
    v83 = v256;
    if (v106)
    {
      while (1)
      {
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        swift_once();
LABEL_22:
        v115 = sub_1C4F00978();
        sub_1C442B738(v115, qword_1EDE2E088);
        v116 = v239;
        sub_1C4471A3C(v272, v239);

        v117 = sub_1C4F00968();
        v118 = sub_1C4F01CF8();
        if (os_log_type_enabled(v117, v118))
        {
          v119 = swift_slowAlloc();
          v120 = swift_slowAlloc();
          v280 = v120;
          *v119 = 136315394;
          v121 = v116;
          v122 = *v116;
          v123 = v9;
          v124 = *(v121 + 8);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4485564(v121, type metadata accessor for EntityBlock);
          v125 = sub_1C441D828(v122, v124, &v280);

          *(v119 + 4) = v125;
          *(v119 + 12) = 2048;
          *(v119 + 14) = *(v83 + 16);

          _os_log_impl(&dword_1C43F8000, v117, v118, "PairGenerator: entityBlock with key %s has %ld entities, skipping pair generation!", v119, 0x16u);
          sub_1C440962C(v120);
          MEMORY[0x1C6942830](v120, -1, -1);
          MEMORY[0x1C6942830](v119, -1, -1);
        }

        else
        {
          v123 = v9;

          sub_1C4485564(v116, type metadata accessor for EntityBlock);
        }

        v9 = v276;
        v272 = *(v83 + 16);
        v199 = v269;
        if (!v272)
        {
          break;
        }

        v200 = 0;
        LODWORD(v271) = *(v274 + v262[7]);
        v270 = (v83 + ((*(v243 + 80) + 32) & ~*(v243 + 80)));
        v201 = (v240 + 16);
        v256 = v241 + 1;
        v252 = (v240 + 16);
        v262 = (v243 + 16);
        v253 = (v243 + 8);
        while (v200 < *(v261 + 16))
        {
          v83 = v27;
          v275 = v123;
          v202 = v243;
          v203 = *(v243 + 72);
          v273 = v200;
          v204 = &v270[v203 * v200];
          v205 = *v201;
          (*v201)(v199, v274 + v267, v9);
          v206 = *(v202 + 16);
          v207 = v268;
          v206(v268, v204, v277);
          if (qword_1EDDFA100 != -1)
          {
            swift_once();
          }

          v208 = v277;
          v209 = sub_1C442B738(v277, qword_1EDE2DC60);
          v210 = v254;
          v206(v254, v209, v208);
          v211 = v263;
          sub_1C4EF9C88();
          sub_1C4EF9AD8();
          v213 = v212;
          (*v256)(v211, v258);
          v214 = v276;
          v205(v83, v269, v276);
          v215 = v257;
          v206((v83 + *(v257 + 20)), v207, v208);
          v206((v83 + v215[6]), v210, v208);
          v9 = v214;
          v216 = v264;
          sub_1C4EFF098();
          LOBYTE(v214) = sub_1C4EFF088();
          v217 = *v253;
          (*v253)(v216, v208);
          if (v214)
          {
            v218 = v277;
            v217(v210, v277);
            v217(v268, v218);
            v199 = v269;
            v265(v269, v9);
            v219 = v215[7];
            v220 = 1;
          }

          else
          {
            v221 = sub_1C4EFEFF8();
            v222 = v277;
            v217(v210, v277);
            v217(v268, v222);
            v199 = v269;
            v265(v269, v9);
            v219 = v215[7];
            v220 = v221 & 1;
          }

          *(v83 + v219) = v220;
          v27 = v83;
          *(v83 + v215[8]) = v213;
          *(v83 + v215[9]) = v271;
          v223 = v255;
          sub_1C447212C(v83, v255);
          v224 = v275;
          v259(v223);
          sub_1C4485564(v223, type metadata accessor for EntityPair);
          v123 = v224;
          if (v224)
          {

            *v226 = v224;
            return result;
          }

          v200 = v273 + 1;
          v201 = v252;
          if (v272 == v273 + 1)
          {
            goto LABEL_89;
          }
        }

LABEL_97:
        __break(1u);
      }

      v272 = 0;
      goto LABEL_89;
    }

    v86 = v274;
    v36 = v247;
    v87 = v271;
LABEL_17:
    ++v84;
    v85 += 16;
    if (v273 == v84)
    {
      goto LABEL_90;
    }
  }

  sub_1C4485564(v104, type metadata accessor for EntityPair);
  result = (v98)(v27, v277);
  *v226 = v105;
  return result;
}

uint64_t sub_1C44D3D38()
{
  sub_1C4404078();
  sub_1C456902C(v1, v2);
  sub_1C43FCE50();
  v3 = sub_1C43FBC98();
  v4(v3);
  return v0;
}

uint64_t sub_1C44D3D8C()
{
  sub_1C4404078();
  v4 = sub_1C4EDD784(v1, v2, v3);
  sub_1C456902C(v4, v5);
  sub_1C43FCE50();
  v6 = sub_1C43FBC98();
  v7(v6);
  return v0;
}

uint64_t sub_1C44D3DDC()
{

  return sub_1C4EFD548();
}

uint64_t sub_1C44D3DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_arrayInitWithCopy();
}

id sub_1C44D3E0C(uint64_t a1, const char *a2)
{
  v5 = *(v3 - 488);

  return [v5 a2];
}

void sub_1C44D3E4C()
{
  v4 = (v2 + *(v1 + 32));
  *v4 = *(v3 - 224);
  v4[1] = v0;
}

uint64_t sub_1C44D3E80()
{

  return sub_1C4F02738();
}

void sub_1C44D3EB0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = objc_autoreleasePoolPush();
  sub_1C44D1DE0(a4, a1, a2, a3, a5, a6, &v13, &v14);
  objc_autoreleasePoolPop(v12);
}

uint64_t sub_1C44D3F9C()
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_1C44D3FBC()
{
  v4 = *(v2 - 128) + *(v1 + 24);

  return sub_1C448B210(v0, v4);
}

uint64_t sub_1C44D3FDC()
{
}

uint64_t sub_1C44D3FFC()
{

  return sub_1C4EFBD48();
}

uint64_t sub_1C44D4028(uint64_t result, double a2)
{
  *(v2 + 192) = a2;
  *(v2 + 200) = result;
  return result;
}

void sub_1C44D403C(uint64_t a1@<X8>)
{
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v3;
  *(a1 + 17) = v2;
  *(a1 + 18) = v1;
}

uint64_t sub_1C44D4094()
{
  *(v0 - 112) = 5;

  return sub_1C4F02618();
}

uint64_t sub_1C44D4100(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v38 - v7;
  v9 = sub_1C4EFF0C8();
  MEMORY[0x1EEE9AC00](v9);
  v44 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v50 = v38 - v12;
  v13 = 0;
  v14 = a2 + 32;
  v15 = *(a2 + 16);
  v47 = (v16 + 32);
  v48 = v15;
  v41 = a3;
  v42 = (v16 + 8);
  v39 = (v16 + 16);
  v40 = v16;
  v43 = a2 + 32;
  while (v13 != v48)
  {
    v17 = (v14 + 16 * v13);
    v18 = *v17;
    v19 = v17[1];
    swift_bridgeObjectRetain_n();
    sub_1C4EFF0D8();
    if (sub_1C44157D4(v8, 1, v9) == 1)
    {
      sub_1C4420C3C(v8, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      v46 = *v47;
      v46(v50, v8, v9);
      v20 = *a3;
      if (*(*a3 + 16))
      {
        v45 = a1;
        sub_1C4F02AF8();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F01298();
        v21 = sub_1C4F02B68();
        v22 = ~(-1 << *(v20 + 32));
        while (1)
        {
          v23 = v21 & v22;
          if (((*(v20 + 56 + (((v21 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v22)) & 1) == 0)
          {
            break;
          }

          v24 = (*(v20 + 48) + 16 * v23);
          if (*v24 != v18 || v24[1] != v19)
          {
            v26 = sub_1C4F02938();
            v21 = v23 + 1;
            if ((v26 & 1) == 0)
            {
              continue;
            }
          }

          (*v42)(v50, v9);
          a3 = v41;
          a1 = v45;
          goto LABEL_20;
        }

        a3 = v41;
        a1 = v45;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44869B4(v49, v18, v19, v27, v28, v29, v30, v31, v38[0], v38[1], v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49[0], v49[1], v49[2], v49[3], v49[4], v49[5], v49[6], v49[7], v49[8], v49[9]);

      (*v39)(v44, v50, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C44D45E4(0, *(a1 + 16) + 1, 1, a1);
        a1 = v35;
      }

      v33 = *(a1 + 16);
      v32 = *(a1 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1C44D45E4(v32 > 1, v33 + 1, 1, a1);
        a1 = v36;
      }

      v34 = v40;
      (*(v40 + 8))(v50, v9);
      *(a1 + 16) = v33 + 1;
      v46((a1 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v33), v44, v9);
LABEL_20:
      v14 = v43;
    }

    ++v13;
  }

  return a1;
}

uint64_t sub_1C44D44D8@<X0>(unsigned __int16 a1@<W8>)
{

  return sub_1C4610B78(a1, 0);
}

uint64_t sub_1C44D44F0()
{
}

uint64_t sub_1C44D4508()
{

  return sub_1C4F021C8();
}

uint64_t sub_1C44D4524@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 112) = a1;

  return type metadata accessor for Source(0);
}

id sub_1C44D4550(uint64_t a1, const char *a2)
{
  v5 = *(v3 - 384);

  return [v5 a2];
}

uint64_t sub_1C44D4570()
{

  return sub_1C445B84C();
}

uint64_t sub_1C44D45AC()
{
  *(v0 - 112) = 7;

  return sub_1C4F02618();
}

uint64_t sub_1C44D45D4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  *(v3 - 70) = 7;
  return result;
}

uint64_t sub_1C44D4624(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

void sub_1C44D46A4(uint64_t *a1)
{
  v2 = *(sub_1C4EFF0C8() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C44D4848();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1C44D5260(v6);
  *a1 = v3;
}

uint64_t sub_1C44D474C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C44D47E0@<X0>(uint64_t a1@<X8>)
{
  *(v2 + a1) = v1;
}

void sub_1C44D48B8()
{
  sub_1C43FBD3C();
  v8 = v7;
  v10 = v9;
  v11 = v4;
  v12 = v1;
  if (v3)
  {
    sub_1C441172C();
    if (v14 != v15)
    {
      sub_1C442B904();
      if (v14)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_1C440A4D4();
    }
  }

  else
  {
    v13 = v2;
  }

  v16 = *(v11 + 16);
  if (v13 <= v16)
  {
    v17 = *(v11 + 16);
  }

  else
  {
    v17 = v13;
  }

  if (!v17)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  sub_1C4422208(v1, v2, v3, v4, v5, v6);
  v18 = *(*(v10(0) - 8) + 72);
  v19 = sub_1C44357B4();
  v20 = j__malloc_size(v19);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v20 - v0 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  sub_1C441B764((v20 - v0) / v18);
LABEL_18:
  v22 = *(v10(0) - 8);
  if (v12)
  {
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    sub_1C449ACF0(v11 + v23, v16, v19 + v23, v8);
    *(v11 + 16) = 0;
  }

  else
  {
    sub_1C4441894();
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C44D4A28@<X0>(id *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v118 = a3;
  v119 = a2;
  v4 = sub_1C456902C(&qword_1EC0BADB8, &unk_1C4F175D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v117 = &v113 - v5;
  v6 = sub_1C456902C(&unk_1EC0BADC0, &qword_1C4F402C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v114 = &v113 - v7;
  v116 = type metadata accessor for CNContactStructs.Place(0);
  MEMORY[0x1EEE9AC00](v116);
  v9 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CNContactStructs.AddressRelationshipType(0);
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = [*a1 value];
  v16 = [v14 label];
  v124 = v9;
  if (v16)
  {
    v17 = v16;
    v115 = sub_1C4F01138();
    v122 = v18;
  }

  else
  {
    v115 = 0;
    v122 = 0xE000000000000000;
  }

  v120 = "r the contacts UUID query.";
  sub_1C456902C(&qword_1EC0B8400, &unk_1C4F175E0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1C4F0F830;
  v20 = [v15 street];
  v21 = sub_1C4F01138();
  v23 = v22;

  v24 = MEMORY[0x1E69E6158];
  *(v19 + 56) = MEMORY[0x1E69E6158];
  v25 = sub_1C44D5840();
  *(v19 + 64) = v25;
  *(v19 + 32) = v21;
  *(v19 + 40) = v23;
  v26 = [v15 subLocality];
  v27 = sub_1C4F01138();
  v29 = v28;

  *(v19 + 96) = v24;
  *(v19 + 104) = v25;
  *(v19 + 72) = v27;
  *(v19 + 80) = v29;
  v30 = [v15 city];
  v31 = sub_1C4F01138();
  v33 = v32;

  *(v19 + 136) = v24;
  *(v19 + 144) = v25;
  *(v19 + 112) = v31;
  *(v19 + 120) = v33;
  v34 = [v15 subAdministrativeArea];
  v35 = sub_1C4F01138();
  v37 = v36;

  *(v19 + 176) = v24;
  *(v19 + 184) = v25;
  *(v19 + 152) = v35;
  *(v19 + 160) = v37;
  v38 = [v15 state];
  v39 = sub_1C4F01138();
  v41 = v40;

  *(v19 + 216) = v24;
  *(v19 + 224) = v25;
  *(v19 + 192) = v39;
  *(v19 + 200) = v41;
  v42 = [v15 postalCode];
  v43 = sub_1C4F01138();
  v45 = v44;

  *(v19 + 256) = v24;
  *(v19 + 264) = v25;
  *(v19 + 232) = v43;
  *(v19 + 240) = v45;
  v46 = [v15 country];
  v47 = sub_1C4F01138();
  v49 = v48;

  *(v19 + 296) = v24;
  *(v19 + 304) = v25;
  *(v19 + 272) = v47;
  *(v19 + 280) = v49;
  sub_1C4F01168();
  if (qword_1EDDE9320 != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for SourceIdPrefix(0);
  sub_1C442B738(v50, qword_1EDDE9328);
  String.base64EncodedSHA(withPrefix:)();
  v52 = v51;
  v54 = v53;

  sub_1C44D092C(v13);
  v55 = [v15 postalCode];
  v56 = sub_1C4F01138();
  v58 = v57;

  v59 = &v13[v10[28]];

  *v59 = v56;
  v59[1] = v58;
  v60 = [v15 country];
  v61 = sub_1C4F01138();
  v63 = v62;

  v64 = &v13[v10[30]];

  *v64 = v61;
  v64[1] = v63;
  v65 = [v15 street];
  v66 = sub_1C4F01138();
  v68 = v67;

  v69 = &v13[v10[18]];

  *v69 = v66;
  v69[1] = v68;
  v70 = [v15 subLocality];
  v71 = sub_1C4F01138();
  v73 = v72;

  v74 = &v13[v10[20]];

  *v74 = v71;
  v74[1] = v73;
  v75 = [v15 city];
  v76 = sub_1C4F01138();
  v78 = v77;

  v79 = &v13[v10[22]];

  *v79 = v76;
  v79[1] = v78;
  v80 = [v15 subAdministrativeArea];
  v81 = sub_1C4F01138();
  v83 = v82;

  v84 = &v13[v10[24]];

  *v84 = v81;
  v84[1] = v83;
  v85 = [v15 state];
  v86 = sub_1C4F01138();
  v88 = v87;

  v89 = &v13[v10[26]];

  *v89 = v86;
  v89[1] = v88;
  v90 = [v15 ISOCountryCode];
  v91 = sub_1C4F01138();
  v93 = v92;

  v94 = &v13[v10[32]];

  *v94 = v91;
  v94[1] = v93;
  v95 = v124;
  v96 = v121;
  sub_1C44D69A8(v52, v54, v97, v98, v99, v100, v101, v102, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124);
  if (v96)
  {

    result = sub_1C44C45FC(v13, type metadata accessor for CNContactStructs.AddressRelationshipType);
    *v119 = v96;
  }

  else
  {
    v104 = v114;
    sub_1C448CA30();
    sub_1C440BAA8(v104, 0, 1, v10);
    sub_1C44D7428(v104);
    v105 = sub_1C4EFEEF8();
    v106 = v118;
    sub_1C440BAA8(v118, 1, 1, v105);
    v107 = type metadata accessor for CNContactStructs.LocationRelationshipType(0);
    sub_1C4EFD1F8();
    if (qword_1EDDFED28 != -1)
    {
      swift_once();
    }

    v108 = type metadata accessor for Source(0);
    sub_1C442B738(v108, &unk_1EDDFD088);
    sub_1C448CA30();
    sub_1C4EFE5E8();
    v109 = (v106 + *(v107 + 32));
    *v109 = 0;
    v109[1] = 0;
    v110 = v116;
    sub_1C440BAA8(v106 + *(v107 + 36), 1, 1, v116);
    v111 = v117;
    sub_1C448CA30();
    sub_1C440BAA8(v111, 0, 1, v110);
    sub_1C44D7A60(v111);

    sub_1C44C45FC(v95, type metadata accessor for CNContactStructs.Place);

    v112 = v122;
    *v109 = v115;
    v109[1] = v112;
    return sub_1C44C45FC(v13, type metadata accessor for CNContactStructs.AddressRelationshipType);
  }

  return result;
}

void sub_1C44D5260(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1C4F02828();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1C4EFF0C8();
        v6 = sub_1C4F01728();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1C4EFF0C8() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C4A7CBFC(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1C44D53B0(0, v2, 1, a1);
  }
}

void sub_1C44D53B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1C4EFF0C8();
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v40 - v15;
  v42 = a2;
  if (a3 != a2)
  {
    v17 = v13;
    v18 = *a4;
    v20 = *(v12 + 16);
    v19 = v12 + 16;
    v21 = *(v19 + 56);
    v51 = (v19 - 8);
    v52 = v20;
    v53 = v19;
    v48 = (v19 + 16);
    v49 = v18;
    v22 = (v18 + v21 * (a3 - 1));
    v47 = -v21;
    v23 = a1 - a3;
    v41 = v21;
    v24 = v18 + v21 * a3;
    while (2)
    {
      v45 = v22;
      v46 = a3;
      v43 = v24;
      v44 = v23;
      v25 = v22;
      while (1)
      {
        v26 = v52;
        (v52)(v16, v24, v8, v14);
        v26(v17, v25, v8);
        v27 = sub_1C4EFF048();
        v28 = v16;
        v29 = v17;
        v31 = v30;
        if (v27 == sub_1C4EFF048() && v31 == v32)
        {
          break;
        }

        v34 = sub_1C4F02938();

        v35 = *v51;
        (*v51)(v29, v8);
        v35(v28, v8);
        v17 = v29;
        v16 = v28;
        if (v34)
        {
          if (!v49)
          {
            __break(1u);
            return;
          }

          v36 = *v48;
          v37 = v50;
          (*v48)(v50, v24, v8);
          swift_arrayInitWithTakeFrontToBack();
          v36(v25, v37, v8);
          v25 += v47;
          v24 += v47;
          if (!__CFADD__(v23++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v39 = *v51;
      (*v51)(v29, v8);
      v39(v28, v8);
      v17 = v29;
      v16 = v28;
LABEL_14:
      a3 = v46 + 1;
      v22 = &v45[v41];
      v23 = v44 - 1;
      v24 = v43 + v41;
      if (v46 + 1 != v42)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C44D56D0()
{
  sub_1C43FBD3C();
  sub_1C447F980(v3);
  sub_1C4EFF0C8();
  sub_1C440AC0C();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C441FB94();
  sub_1C4408AF4();
  v7 = sub_1C4403D94(v5, v6, MEMORY[0x1E69A9820]);
  sub_1C442F1F0(v7);
  sub_1C4406FA8();
  do
  {
    sub_1C44004BC();
    if (v8)
    {
      sub_1C448053C();
      v16 = sub_1C441322C();
      v17(v16);
      v18 = sub_1C44172C0();
      sub_1C44D5894(v18, v19, v20);
      v21 = sub_1C43FD854();
      v22(v21);
      goto LABEL_7;
    }

    v9 = sub_1C442CB30();
    v2(v9);
    sub_1C4408AF4();
    sub_1C4403D94(&qword_1EDDFCC98, v10, MEMORY[0x1E69A9830]);
    v11 = sub_1C442234C();
    sub_1C4475AE4(v11, v12, v13, v14);
    v15 = sub_1C4425BF4();
    v1(v15);
  }

  while ((v0 & 1) == 0);
  v23 = sub_1C440230C();
  v1(v23);
  v24 = sub_1C440E350();
  v2(v24);
LABEL_7:
  sub_1C43FE9F0();
}

unint64_t sub_1C44D5840()
{
  result = qword_1EC0BADD0;
  if (!qword_1EC0BADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BADD0);
  }

  return result;
}

uint64_t sub_1C44D5894(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_1C4EFF0C8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C483E2E4(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1C44D60B4(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_1C4403D94(&qword_1EDDFE820, MEMORY[0x1E69A9810], MEMORY[0x1E69A9820]);
      v14 = sub_1C4F00FD8();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1C4403D94(&qword_1EDDFCC98, MEMORY[0x1E69A9810], MEMORY[0x1E69A9830]);
        v16 = sub_1C4F010B8();
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

    sub_1C484A478();
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
    result = sub_1C4F029E8();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

void String.base64EncodedSHA(withPrefix:)()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v49 = v4;
  v5 = sub_1C4F00DD8();
  sub_1C43FCDF8();
  v50 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  sub_1C4F00DC8();
  sub_1C43FCDF8();
  v51 = v12;
  v52 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - v16;
  v18 = sub_1C4F01188();
  sub_1C43FCDF8();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  v24 = v23 - v22;
  sub_1C4F01178();
  v48 = v3;
  sub_1C4F01148();
  v26 = v25;
  (*(v20 + 8))(v24, v18);
  if (v26 >> 60 == 15)
  {
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v27 = sub_1C4F00978();
    sub_1C442B738(v27, qword_1EDE2DE10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v28 = sub_1C4F00968();
    v29 = sub_1C4F01CE8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v53[0] = v31;
      *v30 = 136380675;
      *(v30 + 4) = sub_1C441D828(v48, v1, v53);
      _os_log_impl(&dword_1C43F8000, v28, v29, "Unable to encode identifier into UTF-8. Identifier was %{private}s", v30, 0xCu);
      sub_1C440962C(v31);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }
  }

  else
  {
    v48 = objc_autoreleasePoolPush();
    v32 = v49[1];
    v53[0] = *v49;
    v53[1] = v32;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C445E9B8();
    sub_1C44CD280(&qword_1EDDFEAD0, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
    sub_1C4F00DB8();
    v33 = sub_1C43FD258();
    sub_1C44344B8(v33, v34);
    v35 = sub_1C43FD258();
    sub_1C4498FD8(v35, v36, v10);
    v37 = sub_1C43FD258();
    sub_1C441DFEC(v37, v38);
    sub_1C4F00DA8();
    (*(v50 + 8))(v10, v5);
    v39 = v51;
    v40 = v52;
    (*(v51 + 16))(v14, v17, v52);
    sub_1C44D5F88(v14);
    v41 = sub_1C4EF9A48();
    v43 = v42;
    v44 = sub_1C43FBC98();
    sub_1C4434000(v44, v45);
    (*(v39 + 8))(v17, v40);
    MEMORY[0x1C6940010](v41, v43);

    objc_autoreleasePoolPop(v48);
    v46 = sub_1C43FD258();
    sub_1C441DFEC(v46, v47);
  }

  sub_1C43FBC98();
  sub_1C43FE9F0();
}

uint64_t sub_1C44D5F88(uint64_t a1)
{
  v2 = sub_1C4F00DC8();
  v7 = v2;
  v8 = sub_1C44CD280(&qword_1EDDFEAD8, MEMORY[0x1E69663E0], MEMORY[0x1E69663D0]);
  v3 = sub_1C4422F90(v6);
  v4 = *(v2 - 8);
  (*(v4 + 16))(v3, a1, v2);
  sub_1C4409678(v6, v7);
  sub_1C440D818();
  sub_1C4EF9688();
  sub_1C440962C(v6);
  (*(v4 + 8))(a1, v2);
  return sub_1C4410428();
}

uint64_t sub_1C44D60B4(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1C4EFF0C8();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1C456902C(&qword_1EC0BDDE8, "(M\n");
  v7 = sub_1C4F021D8();
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
        sub_1C4403D94(&qword_1EDDFE820, MEMORY[0x1E69A9810], MEMORY[0x1E69A9820]);
        result = sub_1C4F00FD8();
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

uint64_t sub_1C44D63CC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_1C4EF9908();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x1C6938610]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x1C6938650]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1C44D6444(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v40 = a1;
  v47 = type metadata accessor for EntityPair(0);
  v2 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v52 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1C4EF9CD8();
  v41 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v39 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C4EFF0C8();
  v38 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v13 = sub_1C4EFD548();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0C24C0, &qword_1C4F4A8B0);
  v45 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1C4F0D130;
  v17 = type metadata accessor for PairGenerator(0);
  v18 = *(v17 + 24);
  v46 = v14;
  v19 = *(v14 + 16);
  v48 = v16;
  v20 = v16;
  v21 = v38;
  v50 = v13;
  v19(v20, v51 + v18, v13);
  v22 = *(v21 + 16);
  v49 = v12;
  v22(v12, v40, v5);
  if (qword_1EDDFA100 != -1)
  {
    swift_once();
  }

  v23 = sub_1C442B738(v5, qword_1EDE2DC60);
  v22(v9, v23, v5);
  v24 = v39;
  sub_1C4EF9C88();
  sub_1C4EF9AD8();
  v26 = v25;
  (*(v41 + 8))(v24, v44);
  v27 = v52;
  v28 = *(v51 + *(v17 + 28));
  v19(v52, v48, v50);
  v29 = v47;
  v22(&v27[*(v47 + 20)], v49, v5);
  v22(&v27[v29[6]], v9, v5);
  v30 = v42;
  sub_1C4EFF098();
  LOBYTE(v27) = sub_1C4EFF088();
  v31 = *(v21 + 8);
  v31(v30, v5);
  if (v27)
  {
    v31(v9, v5);
    v31(v49, v5);
    (*(v46 + 8))(v48, v50);
    v32 = v29[7];
    v33 = 1;
  }

  else
  {
    v34 = sub_1C4EFEFF8();
    v31(v9, v5);
    v31(v49, v5);
    (*(v46 + 8))(v48, v50);
    v32 = v29[7];
    v33 = v34 & 1;
  }

  v35 = v52;
  v52[v32] = v33;
  *(v35 + v29[8]) = v26;
  *(v35 + v29[9]) = v28;
  v36 = v43;
  sub_1C447212C(v35, v43 + v45);
  return v36;
}

void sub_1C44D69A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v22;
  v128 = v23;
  v125 = v24;
  v26 = v25;
  sub_1C4F00DD8();
  sub_1C43FCDF8();
  v118 = v28;
  v119 = v27;
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FD2D8();
  v116 = v29;
  sub_1C43FBE44();
  sub_1C4F00DC8();
  sub_1C43FCDF8();
  v120 = v31;
  v121 = v30;
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBFDC();
  v115 = v32;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FD230();
  v117 = v34;
  sub_1C43FBE44();
  sub_1C4F01188();
  sub_1C43FCDF8();
  v123 = v36;
  v124 = v35;
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FD2D8();
  v122 = v37;
  sub_1C43FBE44();
  v38 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v40 = v39;
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C4D871FC();
  sub_1C43FCDF8();
  v113 = v44;
  v114 = v43;
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FD230();
  v47 = sub_1C43FD2C8(v46);
  v48 = type metadata accessor for CNContactStructs.Place(v47);
  sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v49, v50, v51, v52);
  v53 = *(v48 + 24);
  _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
  v54 = v26 + *(v48 + 28);
  if (qword_1EDDFED28 != -1)
  {
    sub_1C44133AC();
    swift_once();
  }

  v55 = type metadata accessor for Source(0);
  sub_1C442B738(v55, &unk_1EDDFD088);
  sub_1C4408374();
  v131 = v54;
  sub_1C44CC80C(v56, v54, v57);
  type metadata accessor for CNContactStructs.AddressRelationshipType(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v58, v59, v60, v61);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v62 = sub_1C4F00978();
  sub_1C442B738(v62, qword_1EDE2DE10);
  v126 = v53;
  sub_1C4D871A8(v40 + 16);
  v63();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v64 = v128;
  v65 = sub_1C4F00968();
  v66 = sub_1C4F01CB8();

  v127 = v26;
  if (os_log_type_enabled(v65, v66))
  {
    swift_slowAlloc();
    v129 = sub_1C441D7BC();
    *v20 = 136381187;
    v67 = v125;
    v68 = sub_1C441D828(v125, v128, &v129);
    sub_1C44587AC(v68);
    sub_1C4432F18();
    sub_1C44CD358(v69, v70, MEMORY[0x1E69A92F8]);
    v71 = sub_1C4F02858();
    v73 = v72;
    v74 = sub_1C44A1558();
    v75(v74);
    v76 = sub_1C441D828(v71, v73, &v129);

    *(v20 + 14) = v76;
    v64 = v128;
    sub_1C44A18E0();
    _os_log_impl(&dword_1C43F8000, v65, v66, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v20, 0x1Cu);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v77 = sub_1C44A1558();
    v78(v77);
    v67 = v125;
  }

  v80 = *v131;
  v79 = v131[1];
  v129 = v67;
  v130 = v64;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v80, v79);

  v81 = v129;
  v82 = v130;
  sub_1C4F01178();
  sub_1C4F01148();
  v84 = v83;
  (*(v123 + 8))(v122, v124);
  if (v84 >> 60 == 15)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v85 = sub_1C4F00968();
    v86 = sub_1C4F01CD8();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v129 = v88;
      *v87 = 136380675;
      v89 = sub_1C441D828(v81, v82, &v129);

      *(v87 + 4) = v89;
      _os_log_impl(&dword_1C43F8000, v85, v86, "Source: failed to encode identifier as UTF8 data: %{private}s", v87, 0xCu);
      sub_1C440962C(v88);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    v103 = sub_1C45CF650();
    sub_1C43FFB2C(&type metadata for MappingError, v103);
    sub_1C43FE7A8(v104, 5);
    v105 = sub_1C4429108(&a17);
    sub_1C4420C3C(v105, v106, v107);
    v38(v127 + v126, v38);
    sub_1C440636C();
    sub_1C44D474C(v131, v108);
    v109 = sub_1C4429108(&a14);
    sub_1C4420C3C(v109, v110, v111);
  }

  else
  {

    sub_1C442A594();
    sub_1C44CD358(v90, v91, MEMORY[0x1E6966618]);
    sub_1C4F00DB8();
    v92 = sub_1C4404044();
    sub_1C44344B8(v92, v93);
    v94 = sub_1C4404044();
    sub_1C4498FD8(v94, v95, v116);
    v96 = sub_1C4404044();
    sub_1C441DFEC(v96, v97);
    sub_1C4F00DA8();
    (*(v118 + 8))(v116, v119);
    sub_1C4D87134();
    v98();
    (*(v120 + 16))(v115, v117, v121);
    sub_1C4EFF028();
    v99 = sub_1C4404044();
    sub_1C441DFEC(v99, v100);
    (*(v120 + 8))(v117, v121);
    v101 = *(v113 + 32);
    v102 = sub_1C4409F48();
    v101(v102);
    (v101)(v127, v112, v114);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C44D71D4()
{
  *(v1 - 248) = v0;

  return sub_1C4EFF0C8();
}

void sub_1C44D7200(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1C44D7248(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C44D7290@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDDFA128 != -1)
  {
    swift_once();
  }

  v2 = sub_1C4EFBAF8();
  v3 = sub_1C442B738(v2, qword_1EDE2DCC0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C44D7350()
{

  return sub_1C4F01148();
}

uint64_t sub_1C44D7370(uint64_t a1, double a2)
{
  *(v3 + *(v2 + 44)) = a2;
  *(v3 + *(v2 + 48)) = *(v4 - 140);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C44D7394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDFA0D0, type metadata accessor for EntityPair, &unk_1C4F36BC4);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t sub_1C44D7428(uint64_t a1)
{
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = *(type metadata accessor for CNContactStructs.Place(v6) + 32);
  sub_1C44D7768(a1, v2 + v7, &unk_1EC0BADC0, &qword_1C4F402C0);
  v8 = type metadata accessor for CNContactStructs.AddressRelationshipType(0);
  if (sub_1C44157D4(v2 + v7, 1, v8))
  {
    return sub_1C4420C3C(a1, &unk_1EC0BADC0, &qword_1C4F402C0);
  }

  sub_1C4EFE2D8();
  sub_1C4420C3C(a1, &unk_1EC0BADC0, &qword_1C4F402C0);
  v10 = sub_1C4EFEEF8();
  sub_1C440CBF4(v10);
  return sub_1C444088C(v1, v2 + v7, &qword_1EC0B9A08, &unk_1C4F107B0);
}

void sub_1C44D7534()
{
  sub_1C43FE96C();
  sub_1C440EDD4();
  sub_1C456902C(&qword_1EC0BE450, &qword_1C4F371C0);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FE61C();
  sub_1C43FD870();
  v2 = sub_1C44D77B0();
  sub_1C440F61C(&type metadata for EntityPair.CodingKeys, v3, v2);
  sub_1C441D6E4();
  sub_1C4EFD548();
  sub_1C44004E0();
  sub_1C4490F60(v4, v5, MEMORY[0x1E69A92D0]);
  sub_1C43FE6CC();
  sub_1C43FC428();
  sub_1C4F027E8();
  if (!v0)
  {
    type metadata accessor for EntityPair(0);
    sub_1C4404F64();
    sub_1C4EFF0C8();
    sub_1C4419854();
    sub_1C4490F60(v6, v7, MEMORY[0x1E69A9818]);
    sub_1C44032B0();
    sub_1C4F027E8();
    sub_1C44032B0();
    sub_1C4F027E8();
    sub_1C440D3E4();
    sub_1C4F027A8();
    sub_1C447F524();
    sub_1C4F027B8();
    sub_1C44C1190();
    sub_1C440D3E4();
    sub_1C4F027E8();
  }

  v8 = sub_1C440231C();
  v9(v8);
  sub_1C43FBC80();
}

uint64_t sub_1C44D7768(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1C43FBCA4(a1, a2, a3, a4);
  sub_1C43FCE50();
  v5 = sub_1C43FBC98();
  v6(v5);
  return v4;
}

unint64_t sub_1C44D77B0()
{
  result = qword_1EDDFA140;
  if (!qword_1EDDFA140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA140);
  }

  return result;
}

uint64_t sub_1C44D7818()
{
  sub_1C43FF404();
  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v1 + 84) == v0)
  {
    sub_1C43FD5B4();
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C();
    if (*(v2 + 84) == v0)
    {
      sub_1C4418160();
    }

    else
    {
      sub_1C4EFD548();
      sub_1C43FCF8C();
      if (*(v3 + 84) == v0)
      {
        sub_1C4416C20();
      }

      else
      {
        type metadata accessor for Source(0);
        sub_1C43FCF8C();
        if (*(v4 + 84) == v0)
        {
          sub_1C441D7B0();
        }

        else
        {
          sub_1C456902C(&unk_1EC0BADC0, &qword_1C4F402C0);
        }
      }
    }
  }

  sub_1C43FE688();

  return sub_1C440BAA8(v5, v6, v7, v8);
}

uint64_t sub_1C44D7978(char a1)
{
  result = 0x6C43797469746E65;
  switch(a1)
  {
    case 1:
      v3 = 0x656372756F73;
      goto LABEL_5;
    case 2:
      v3 = 0x746567726174;
LABEL_5:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6449000000000000;
      break;
    case 3:
      result = 0x7349746567726174;
      break;
    case 4:
      result = 0x6D617473656D6974;
      break;
    case 5:
      result = 0x656E696C65706970;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C44D7A60(uint64_t a1)
{
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = v2 + *(type metadata accessor for CNContactStructs.LocationRelationshipType(v6) + 36);
  sub_1C44D7768(a1, v7, &qword_1EC0BADB8, &unk_1C4F175D0);
  v8 = type metadata accessor for CNContactStructs.Place(0);
  sub_1C44101EC();
  if (sub_1C44157D4(v9, v10, v11))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BADB8, &unk_1C4F175D0);
  }

  sub_1C4EFE418();
  sub_1C4420C3C(a1, &qword_1EC0BADB8, &unk_1C4F175D0);
  v13 = sub_1C4EFEEF8();
  sub_1C440CBF4(v13);
  return sub_1C444088C(v1, v7 + *(v8 + 20), &qword_1EC0B9A08, &unk_1C4F107B0);
}

uint64_t PeopleMatcher.pipelineType.getter()
{
  result = sub_1C4460AC8();
  *v0 = *(v1 + *(result + 32));
  return result;
}

void sub_1C44D7BA8()
{
  sub_1C43FBD3C();
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C44042B0();
  v5 = type metadata accessor for CNContactStructs.LocationRelationshipType(v4);
  v6 = sub_1C43FCF7C(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD08();
  sub_1C44D458C();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4402CA8();
  v8 = *(type metadata accessor for CNContactStructs.Person(0) + 252);
  v9 = *(v0 + v8);
  if (v9)
  {
    if (*(v9 + 16))
    {
      sub_1C4401968(v9);
      v10 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1C44CC80C(v8, v1, type metadata accessor for CNContactStructs.LocationRelationshipType);
        sub_1C4EFEAC8();
        v11 = sub_1C4EFEEF8();
        v12 = sub_1C444C460(v11);
        sub_1C444088C(v12, v13, &qword_1EC0B9A08, &unk_1C4F107B0);
        sub_1C4482EF0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1C43FCEC0();
          sub_1C44D7D8C(v20, v21, v22, v10);
          v10 = v23;
        }

        sub_1C4473DBC();
        if (v15)
        {
          v24 = sub_1C4440B38(v14);
          sub_1C44D7D8C(v24, v25, v26, v27);
          v10 = v28;
        }

        sub_1C4456300();
        sub_1C4D8711C(v16, v17);
        sub_1C444AE90();
        sub_1C44D474C(v1, v18);
        sub_1C4D870C4();
      }

      while (!v19);

      v8 = v29;
      v0 = v30;
    }

    else
    {

      v10 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + v8) = v10;
  }

  sub_1C43FE9F0();
}

double sub_1C44D7E3C()
{

  swift_beginAccess();
  return result;
}

id sub_1C44D7E5C()
{
  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C4F0FCC0;
  v1 = *MEMORY[0x1E695C258];
  *(v0 + 32) = *MEMORY[0x1E695C258];
  v2 = v1;
  v3 = sub_1C44C9794(v0);

  return v3;
}

uint64_t PeopleMatcher.entityClass.getter()
{
  v2 = *(sub_1C4460AC8() + 24);
  sub_1C4EFD548();
  sub_1C43FBCE0();
  v5 = *(v4 + 16);

  return v5(v0, v1 + v2, v3);
}

unint64_t sub_1C44D7F40(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_63;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    v5 = v1 & 0xC000000000000001;
    v55 = v1;
    v49 = v1 + 32;
    v50 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = 0x1E695C000uLL;
    v48 = v1 & 0xC000000000000001;
    v46 = v2;
    while (1)
    {
      if (v5)
      {
        v7 = MEMORY[0x1C6940F90](v4, v55);
      }

      else
      {
        if (v4 >= *(v50 + 16))
        {
          goto LABEL_56;
        }

        v7 = *(v49 + 8 * v4);
      }

      v8 = v7;
      v9 = __OFADD__(v4++, 1);
      if (v9)
      {
        __break(1u);
LABEL_56:
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
        v2 = sub_1C4F02128();
        goto LABEL_3;
      }

      if (qword_1EC0B68D0 != -1)
      {
        swift_once();
      }

      v10 = off_1EC0BAD20;
      v11 = [v8 label];
      if (v11)
      {
        v12 = v11;
        sub_1C4F01138();
        v1 = v13;
      }

      else
      {
        v1 = 0xE000000000000000;
      }

      if (!v10[2])
      {

        goto LABEL_50;
      }

      v14 = sub_1C4404C28();
      v16 = sub_1C445FAA8(v14, v15);
      v18 = v17;

      if ((v18 & 1) == 0)
      {
        goto LABEL_50;
      }

      v56 = v4;
      v19 = *(v10[7] + 8 * v16);
      v20 = *(v19 + 16);
      v54 = v8;
      if (v20)
      {
        v57[0] = MEMORY[0x1E69E7CC0];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F02348();
        v21 = (v19 + 40);
        do
        {
          v22 = *(v21 - 1);
          v23 = *v21;
          swift_bridgeObjectRetain_n();
          v24 = [v8 value];
          v25 = objc_allocWithZone(*(v6 + 3808));
          sub_1C4693CB0(v22, v23, v24);

          sub_1C4F02318();
          sub_1C4F02358();
          sub_1C4404C28();
          sub_1C4F02368();
          sub_1C4F02328();
          v21 += 2;
          --v20;
        }

        while (v20);

        v26 = v57[0];
      }

      else
      {
        v26 = MEMORY[0x1E69E7CC0];
      }

      v1 = v26 >> 62;
      v4 = v56;
      if (v26 >> 62)
      {
        v27 = sub_1C4F02128();
      }

      else
      {
        v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v28 = v3 >> 62;
      if (v3 >> 62)
      {
        v29 = sub_1C4F02128();
      }

      else
      {
        v29 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v30 = v29 + v27;
      if (__OFADD__(v29, v27))
      {
        goto LABEL_57;
      }

      v53 = v27;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v28)
      {
        goto LABEL_33;
      }

      v31 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v30 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_34;
      }

LABEL_35:
      v32 = *(v31 + 16);
      v33 = (*(v31 + 24) >> 1) - v32;
      v34 = v31 + 8 * v32;
      v51 = v31;
      if (v1)
      {
        v36 = sub_1C4F02128();
        if (v36)
        {
          v1 = v36;
          v37 = sub_1C4F02128();
          if (v33 < v37)
          {
            goto LABEL_60;
          }

          if (v1 < 1)
          {
            goto LABEL_62;
          }

          v47 = v37;
          v52 = v3;
          v38 = v34 + 32;
          sub_1C4401CBC(&qword_1EC0BADB0, &qword_1EC0C60E0, &qword_1C4F6A260, MEMORY[0x1E69E6340]);
          for (i = 0; i != v1; ++i)
          {
            sub_1C456902C(&qword_1EC0C60E0, &qword_1C4F6A260);
            v40 = sub_1C4CD79AC(v57, i, v26);
            v42 = *v41;
            v40(v57, 0);
            *(v38 + 8 * i) = v42;
          }

          v2 = v46;
          v35 = v47;
          v4 = v56;
          v6 = 0x1E695C000;
          v3 = v52;
          goto LABEL_45;
        }
      }

      else
      {
        v1 = v26 & 0xFFFFFFFFFFFFFF8;
        v35 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v35)
        {
          if (v33 < v35)
          {
            goto LABEL_61;
          }

          sub_1C456902C(&qword_1EC0BAD60, &qword_1C4F175B0);
          swift_arrayInitWithCopy();
LABEL_45:

          v8 = v54;
          v5 = v48;
          if (v35 < v53)
          {
            goto LABEL_58;
          }

          if (v35 > 0)
          {
            v43 = *(v51 + 16);
            v9 = __OFADD__(v43, v35);
            v44 = v43 + v35;
            if (v9)
            {
              goto LABEL_59;
            }

            *(v51 + 16) = v44;
          }

          goto LABEL_50;
        }
      }

      v8 = v54;
      v5 = v48;
      if (v53 > 0)
      {
        goto LABEL_58;
      }

LABEL_50:

      if (v4 == v2)
      {
        return v3;
      }
    }

    if (v28)
    {
LABEL_33:
      sub_1C4F02128();
    }

LABEL_34:
    v3 = sub_1C4F022B8();
    v31 = v3 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_35;
  }

  return v3;
}

uint64_t PeopleMatcher.source.getter()
{
  sub_1C4460AC8();
  sub_1C44068F0();
  return sub_1C4471A98();
}

uint64_t PeopleMatcher.stageName.getter()
{
  result = sub_1C4460AC8();
  *v0 = *(v1 + *(result + 28));
  return result;
}

void sub_1C44D85F4()
{
  sub_1C43FE96C();
  sub_1C4425280(v6);
  v7 = sub_1C456902C(&qword_1EC0C0C50, &qword_1C4F402C8);
  sub_1C43FBD18(v7);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FE94C();
  v32 = type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType(0);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBFDC();
  v31 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD230();
  v29 = v12;
  sub_1C4428DA0(v1);
  sub_1C44044E4();
  v13 = MEMORY[0x1E69E7CC0];
  v30 = v1;
  while (1)
  {
    if (v5 == v4)
    {
      goto LABEL_18;
    }

    if (v33)
    {
      v14 = MEMORY[0x1C6940F90](v4, v1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_20;
      }

      v14 = *(v1 + 8 * v4 + 32);
    }

    v15 = v14;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    v16 = sub_1C442E11C();
    v17(v16);
    if (v0)
    {

LABEL_18:
      sub_1C4402144();
      sub_1C43FBC80();
      return;
    }

    v18 = sub_1C441B908();
    if (sub_1C44157D4(v18, v19, v32) == 1)
    {
      sub_1C4420C3C(v3, &qword_1EC0C0C50, &qword_1C4F402C8);
    }

    else
    {
      sub_1C44D0C04(v3, v29, type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType);
      sub_1C44D0C04(v29, v31, type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1C43FCEC0();
        sub_1C458CC94(v24, v25, v26, v13);
        v13 = v27;
      }

      v21 = *(v13 + 16);
      v20 = *(v13 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1C458CC94(v20 > 1, v21 + 1, 1, v13);
        v13 = v28;
      }

      *(v13 + 16) = v21 + 1;
      sub_1C43FBF6C();
      sub_1C44D0C04(v31, v13 + v22 + *(v23 + 72) * v21, type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType);
      v1 = v30;
    }

    ++v4;
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_1C44D8894()
{
  sub_1C43FBD3C();
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C44042B0();
  v5 = type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType(v4);
  v6 = sub_1C43FCF7C(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD08();
  sub_1C44D458C();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4402CA8();
  v8 = *(type metadata accessor for CNContactStructs.Person(0) + 248);
  v9 = *(v0 + v8);
  if (v9)
  {
    if (*(v9 + 16))
    {
      sub_1C4401968(v9);
      v10 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1C44CC80C(v8, v1, type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType);
        sub_1C4EFE638();
        v11 = sub_1C4EFEEF8();
        v12 = sub_1C444C460(v11);
        sub_1C444088C(v12, v13, &qword_1EC0B9A08, &unk_1C4F107B0);
        sub_1C4482EF0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1C43FCEC0();
          sub_1C458CC94(v20, v21, v22, v10);
          v10 = v23;
        }

        sub_1C4473DBC();
        if (v15)
        {
          v24 = sub_1C4440B38(v14);
          sub_1C458CC94(v24, v25, v26, v27);
          v10 = v28;
        }

        sub_1C4456300();
        sub_1C4D8711C(v16, v17);
        sub_1C441D4E4();
        sub_1C44D474C(v1, v18);
        sub_1C4D870C4();
      }

      while (!v19);

      v8 = v29;
      v0 = v30;
    }

    else
    {

      v10 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + v8) = v10;
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C44D8B38()
{
  v3 = sub_1C44A1E40();
  v4 = type metadata accessor for Source(v3);
  v5 = sub_1C43FBD18(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C442599C();
  sub_1C4459AF0();
  sub_1C4416710();
  v6 = type metadata accessor for PeopleMatcher(0);
  sub_1C4471CA0(v6);
  v7 = sub_1C456902C(&qword_1EC0BA4F8, &qword_1C4F14228);
  v8 = sub_1C4485A60(v7);
  MEMORY[0x1C6940010](v8);

  sub_1C441DC78();
  sub_1C44A1BE0(*(v1 + 28));
  sub_1C4475BB0();

  sub_1C44364AC();
  sub_1C441925C();
  sub_1C44F090C(v9);
  MEMORY[0x1C6940010](*v2, v2[1]);
  sub_1C4411930();
  sub_1C447E868(v2, v10);
  sub_1C44690B8();
  sub_1C4EFD3D8();
  sub_1C4475BB0();

  sub_1C44AE8A4();
  sub_1C448D934(*(v0 + *(v1 + 32)));
  return sub_1C43FE658();
}

uint64_t sub_1C44D8C40(void *a1, int8x16_t *a2, uint64_t a3)
{
  v6 = *(v3 + *(type metadata accessor for Configuration(0) + 20));
  if (*a1 != -1)
  {
    v9 = v6;
    swift_once();
    v6 = v9;
  }

  sub_1C43FC158(*a2, v6);
  return v7 & 1;
}

uint64_t PeopleMatcher.execute()()
{
  sub_1C43FBCD4();
  *(v1 + 24) = v0;
  v2 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  sub_1C43FBD18(v2);
  *(v1 + 32) = swift_task_alloc();
  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1C44D8D6C()
{
  sub_1C43FBD3C();
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C44042B0();
  v5 = type metadata accessor for CNContactStructs.IdentifierRelationshipType(v4);
  v6 = sub_1C43FCF7C(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD08();
  sub_1C44D458C();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4402CA8();
  v8 = *(type metadata accessor for CNContactStructs.Person(0) + 232);
  v9 = *(v0 + v8);
  if (v9)
  {
    if (*(v9 + 16))
    {
      sub_1C4401968(v9);
      v10 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1C44CC80C(v8, v1, type metadata accessor for CNContactStructs.IdentifierRelationshipType);
        sub_1C4EFE308();
        v11 = sub_1C4EFEEF8();
        v12 = sub_1C444C460(v11);
        sub_1C444088C(v12, v13, &qword_1EC0B9A08, &unk_1C4F107B0);
        sub_1C4482EF0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1C43FCEC0();
          sub_1C44CF814(v20, v21, v22, v10);
          v10 = v23;
        }

        sub_1C4473DBC();
        if (v15)
        {
          v24 = sub_1C4440B38(v14);
          sub_1C44CF814(v24, v25, v26, v27);
          v10 = v28;
        }

        sub_1C4456300();
        sub_1C4D8711C(v16, v17);
        sub_1C442EE4C();
        sub_1C44D474C(v1, v18);
        sub_1C4D870C4();
      }

      while (!v19);

      v8 = v29;
      v0 = v30;
    }

    else
    {

      v10 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + v8) = v10;
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C44D8F4C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44E2E7C;

  return PeopleMatcher.execute()();
}

uint64_t sub_1C44D8FD8()
{
  v41 = v0;
  v2 = v0[3];
  v1 = v0[4];
  type metadata accessor for PhaseStores(0);
  v3 = type metadata accessor for PeopleMatcher(0);
  v4 = *(v3 + 32);
  LOBYTE(v40[0]) = *(v2 + v4);
  v5 = *(v3 + 24);
  v6 = sub_1C4EFD548();
  sub_1C43FBCE0();
  v8 = *(v7 + 16);
  v8(v1, v2 + v5, v6);
  sub_1C43FBD94();
  sub_1C440BAA8(v9, v10, v11, v6);
  sub_1C44ABA54(v40, v1);
  sub_1C4420C3C(v1, &qword_1EC0B8568, &unk_1C4F319B0);
  v12 = *(v2 + v4);
  switch(*(v2 + v4))
  {
    case 1:
    case 3:
      v39 = v8;
      v13 = v0[3];
      v14 = swift_task_alloc();
      *(v14 + 16) = v13;
      sub_1C43FD8E4();
      sub_1C44AC170(v15, v16, v17, v18, v19, v20);

      if (v13)
      {
        goto LABEL_10;
      }

      if (*(v12 + *(sub_1C43FF150() + 28)) != 1)
      {
        goto LABEL_11;
      }

      v21 = *(v2 + v4);
      v22 = swift_task_alloc();
      *(v22 + 16) = v14;
      v23 = sub_1C4A94694;
      goto LABEL_9;
    case 2:
      v39 = v8;
      v26 = v0[3];
      v27 = swift_task_alloc();
      *(v27 + 16) = v26;
      sub_1C43FD8E4();
      sub_1C46CE408(v28, v29, v30, v31, v32, v33);

      if (v1)
      {
LABEL_10:

        sub_1C43FBDA0();
      }

      else
      {
        if (*(v26 + *(sub_1C43FF150() + 28)) == 1)
        {
          v21 = *(v2 + v4);
          v22 = swift_task_alloc();
          *(v22 + 16) = v27;
          v23 = sub_1C4A95930;
LABEL_9:
          sub_1C44C6BB4(v2 + v5, v21, 0, 1, v23, v22);
        }

LABEL_11:
        v35 = v0[4];
        sub_1C4EF9AE8();
        sub_1C43FBD94();
        sub_1C44E254C();
        LOBYTE(v40[0]) = *(v2 + v4);
        v39(v35, v2 + v5, v6);
        sub_1C43FBD94();
        sub_1C440BAA8(v36, v37, v38, v6);
        sub_1C44A8814(v40, v35);
        sub_1C4420C3C(v35, &qword_1EC0B8568, &unk_1C4F319B0);

        sub_1C43FBDA0();
      }

      result = v34();
      break;
    default:
      v40[0] = 0;
      v40[1] = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0x676E6974726F6241, 0xE900000000000020);
      v0[2] = v3;
      sub_1C456902C(&qword_1EC0BA4F8, &qword_1C4F14228);
      v24 = sub_1C4F01198();
      MEMORY[0x1C6940010](v24);

      MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4F8EC80);
      sub_1C448D934(*(v2 + v4));
      sub_1C448E088();
      result = sub_1C4F024A8();
      break;
  }

  return result;
}

void sub_1C44D93D0()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType(0);
  sub_1C43FCDF8();
  v90 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v89 = v8 - v7;
  v9 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
  sub_1C43FBD18(v9);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v82 - v11;
  v13 = sub_1C4EFF1C8();
  sub_1C43FCDF8();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  sub_1C44D9DFC(v1, v12);
  if (sub_1C44157D4(v12, 1, v13) == 1)
  {
    sub_1C4420C3C(v12, &qword_1EC0C2A90, &unk_1C4F16D30);
    if (qword_1EDDFD028 != -1)
    {
      goto LABEL_106;
    }

    goto LABEL_3;
  }

  v26 = *(v15 + 32);
  v93 = v19;
  v26(v19, v12, v13);
  v94 = MEMORY[0x1E69E7CC0];
  v27 = type metadata accessor for CNContactStructs.Person(0);
  v28 = (v3 + *(v27 + 44));
  v29 = v28[1];
  v84 = v27;
  if (v29)
  {
    v30 = *v28 == 1702195828 && v29 == 0xE400000000000000;
    if (v30 || (sub_1C4F02938() & 1) != 0)
    {
      type metadata accessor for PhaseStores(0);

      sub_1C44D9F00();
      sub_1C4416A80();

      if (v12)
      {
        v31 = v12;
      }

      else
      {
        v31 = MEMORY[0x1E69E7CC0];
      }

      if (*(v31 + 16))
      {
        sub_1C44DB648();
        sub_1C4416A80();

        if (v12)
        {
          sub_1C4424F0C();
        }
      }

      else
      {

        if (qword_1EDDFD028 != -1)
        {
          sub_1C43FE9B4(&qword_1EDDFD028);
        }

        v32 = sub_1C4F00978();
        sub_1C43FCEE8(v32, qword_1EDE2DE10);
        v33 = sub_1C4F00968();
        v12 = sub_1C4F01CD8();
        if (os_log_type_enabled(v33, v12))
        {
          v34 = sub_1C43FCED0();
          *v34 = 0;
          _os_log_impl(&dword_1C43F8000, v33, v12, "No me aliases found in relationship store.", v34, 2u);
          MEMORY[0x1C6942830](v34, -1, -1);
        }
      }
    }

    v27 = v84;
  }

  v35 = *(v3 + *(v27 + 248));
  if (v35)
  {
    v36 = v35;
  }

  else
  {
    v36 = MEMORY[0x1E69E7CC0];
  }

  v88 = *(v36 + 16);
  v83 = v15;
  if (!v88)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    goto LABEL_55;
  }

  v82 = v13;
  v92 = v3;
  v37 = *(v4 + 56);
  v86 = v36 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
  v87 = v37;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = 0;
  v85 = v36;
  while (1)
  {
    if (v13 >= *(v36 + 16))
    {
      goto LABEL_105;
    }

    v38 = v89;
    sub_1C44908D8(v86 + *(v90 + 72) * v13, v89, type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType);
    v39 = *(v38 + v87);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44DBCAC(v38, type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType);
    v40 = MEMORY[0x1E69E7CC0];
    if (v39)
    {
      v40 = v39;
    }

    v41 = *(v40 + 16);
    v91 = v40;
    if (v41)
    {
      break;
    }

LABEL_52:
    ++v13;

    v36 = v85;
    if (v13 == v88)
    {

      v3 = v92;
      v13 = v82;
LABEL_55:
      v55 = v84;
      v56 = (v3 + v84[9]);
      v57 = *v56;
      v58 = v56[1];
      if (v58)
      {
        v59 = HIBYTE(v58) & 0xF;
        if ((v58 & 0x2000000000000000) == 0)
        {
          v59 = v57 & 0xFFFFFFFFFFFFLL;
        }

        if (v59)
        {
          sub_1C4EFF168();
          v12 = v60;
          sub_1C4EFF198();
          sub_1C43FBD30();

          sub_1C442DD08();
          sub_1C4431E78();
          sub_1C44DB648();
          sub_1C4416A80();

          if (v12)
          {
            sub_1C4424F0C();
          }

          v55 = v84;
        }
      }

      if (*(v3 + v55[15] + 8))
      {
        sub_1C44099DC();
        if (v61)
        {
          v62 = sub_1C4EFF168();
          sub_1C4403FCC(v62, v63);
          sub_1C43FBD30();

          sub_1C4431E78();
          sub_1C44DB648();
          sub_1C4416A80();

          if (v12)
          {
            sub_1C4424F0C();
          }

          v55 = v84;
        }
      }

      v64 = (v3 + v55[17]);
      v65 = *v64;
      v66 = v64[1];
      if (v66)
      {
        v67 = HIBYTE(v66) & 0xF;
        if ((v66 & 0x2000000000000000) == 0)
        {
          v67 = v65 & 0xFFFFFFFFFFFFLL;
        }

        if (v67)
        {
          sub_1C4EFF168();
          v69 = v68;
          sub_1C4EFF198();
          sub_1C43FBD30();

          sub_1C4431E78();
          sub_1C44DB648();
          sub_1C4416A80();

          if (v69)
          {
            sub_1C4424F0C();
          }

          v55 = v84;
        }
      }

      v70 = (v3 + v55[51]);
      v71 = v70[1];
      if (!v71)
      {
        goto LABEL_91;
      }

      v12 = *v70;
      if (v58)
      {
        if (v12 == v57 && v71 == v58)
        {
          goto LABEL_91;
        }

        v73 = sub_1C4F02938();
        v55 = v84;
        if (v73)
        {
          goto LABEL_91;
        }
      }

      if (v66)
      {
        if (v12 == v65 && v71 == v66)
        {
          goto LABEL_91;
        }

        v75 = sub_1C4F02938();
        v55 = v84;
        if (v75)
        {
          goto LABEL_91;
        }
      }

      v76 = HIBYTE(v71) & 0xF;
      if ((v71 & 0x2000000000000000) == 0)
      {
        v76 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (!v76)
      {
LABEL_91:
        v41 = v83;
        v46 = v93;
      }

      else
      {
        sub_1C4EFF168();
        v46 = v93;
        sub_1C4EFF198();
        v41 = v83;
LABEL_100:

        sub_1C442DD08();
        sub_1C4431E78();
        sub_1C44DB648();
        sub_1C4416A80();

        if (v12)
        {
          sub_1C4424F0C();
        }

        v55 = v84;
      }

      if (*(v3 + v55[21] + 8))
      {
        sub_1C44099DC();
        if (v77)
        {
          v78 = sub_1C4EFF168();
          sub_1C4403FCC(v78, v79);
          sub_1C43FBD30();

          sub_1C442DD08();
          sub_1C4431E78();
          sub_1C44DB648();
          v81 = v80;

          if (v81)
          {
            sub_1C44DBE44(v81);
          }
        }
      }

      (*(v41 + 8))(v46, v13);
      goto LABEL_97;
    }
  }

  v42 = (v40 + 40);
  while (1)
  {
    v12 = *v42;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFF168();
    sub_1C4EFF198();

    sub_1C44DB648();
    v44 = v43;

    if (v44)
    {
      break;
    }

LABEL_51:
    v42 += 2;
    if (!--v41)
    {
      goto LABEL_52;
    }
  }

  v12 = *(v44 + 16);
  v45 = v94;
  v46 = *(v94 + 16);
  v3 = v46 + v12;
  if (__OFADD__(v46, v12))
  {
    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v48 = *(v45 + 24) >> 1, v48 < v3))
  {
    if (v46 <= v3)
    {
      v49 = v46 + v12;
    }

    else
    {
      v49 = v46;
    }

    sub_1C44DBB10(isUniquelyReferenced_nonNull_native, v49, 1, v45);
    v45 = v50;
    v48 = *(v50 + 24) >> 1;
  }

  v46 = v93;
  if (!*(v44 + 16))
  {

    if (v12)
    {
      goto LABEL_99;
    }

    goto LABEL_50;
  }

  v51 = v48 - *(v45 + 16);
  type metadata accessor for CNContactStructs.EntityAliasRelationshipType(0);
  if (v51 >= v12)
  {
    swift_arrayInitWithCopy();

    if (v12)
    {
      v52 = *(v45 + 16);
      v53 = __OFADD__(v52, v12);
      v54 = v52 + v12;
      if (v53)
      {
        goto LABEL_104;
      }

      *(v45 + 16) = v54;
    }

LABEL_50:
    v94 = v45;
    goto LABEL_51;
  }

  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  sub_1C43FE9B4(&qword_1EDDFD028);
LABEL_3:
  v20 = sub_1C4F00978();
  sub_1C43FCEE8(v20, qword_1EDE2DE10);
  v21 = sub_1C4F00968();
  v22 = sub_1C4F01CD8();
  if (sub_1C43FCEA4(v22))
  {
    v23 = sub_1C43FCED0();
    sub_1C43FBD24(v23);
    sub_1C440BAE8(&dword_1C43F8000, v24, v25, "Tokenizer was not intialized for current system locale. Not emitting aliases.");
    sub_1C43FE9D4();
  }

LABEL_97:
  sub_1C43FE9F0();
}

uint64_t sub_1C44D9DFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C44D9E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDFA0C8, type metadata accessor for EntityPair, &unk_1C4F36BEC);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

void sub_1C44D9F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1C43FE96C();
  a25 = v30;
  a26 = v31;
  sub_1C445C188(v32);
  v63 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v60 = v33;
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBD08();
  v37 = v35 - v36;
  MEMORY[0x1EEE9AC00](v38);
  sub_1C441D6FC();
  sub_1C4EFD548();
  sub_1C43FCDF8();
  v62 = v39;
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBCC4();
  v43 = v42 - v41;
  sub_1C456902C(&qword_1EC0BE448, &qword_1C4F371B8);
  sub_1C43FCDF8();
  v58 = v45;
  v59 = v44;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v46);
  v47 = sub_1C4402274();
  v61 = type metadata accessor for EntityPair(v47);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FD2D8();
  v50 = v49;
  sub_1C4417F50(v26, v26[3]);
  sub_1C44D77B0();
  sub_1C44BBC60();
  sub_1C4F02BC8();
  if (v27)
  {
    sub_1C440962C(v26);
  }

  else
  {
    a16 = 0;
    sub_1C44004E0();
    sub_1C4490F60(v51, v52, MEMORY[0x1E69A92F0]);
    sub_1C43FE6CC();
    sub_1C442A70C();
    sub_1C441E078();
    sub_1C4F026C8();
    (*(v62 + 32))(v50, v43);
    sub_1C4405BEC();
    sub_1C4419854();
    v55 = sub_1C4490F60(v53, v54, MEMORY[0x1E69A9838]);
    sub_1C448856C(v55, &a15);
    v57 = *(v60 + 32);
    v57(v50 + v61[5], v28, v63);
    sub_1C4401670();
    sub_1C448856C(v56, &a14);
    v57(v50 + v61[6], v37, v63);
    sub_1C4495238();
    sub_1C441E078();
    *(v50 + v61[7]) = sub_1C4F02688() & 1;
    sub_1C447F524();
    sub_1C441E078();
    *(v50 + v61[8]) = sub_1C4F02698();
    sub_1C44C8A04();
    sub_1C441E078();
    sub_1C4F026C8();
    (*(v58 + 8))(v29, v59);
    *(v50 + v61[9]) = a11;
    sub_1C449EEE8();
    sub_1C440962C(v26);
    sub_1C449F22C();
  }

  sub_1C43FBC80();
}

uint64_t sub_1C44DA4D4()
{
  v0 = sub_1C44059B8();
  v1(v0);
  sub_1C4EFEEF8();
  sub_1C43FBCE0();
  v2 = sub_1C448F13C();

  return v3(v2);
}

void (*sub_1C44DA548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (**a5)(uint64_t, uint64_t)@<X8>))(uint64_t, uint64_t)
{
  result = sub_1C44DA480(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

void sub_1C44DA574(unint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v4 = v2;
  v133 = a2;
  v6 = sub_1C4EFEEF8();
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  v149 = &v129 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v151 = &v129 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v164[0] = MEMORY[0x1E69E7CD0];
  v164[1] = MEMORY[0x1E69E7CD0];
  v164[2] = MEMORY[0x1E69E7CD0];
  v164[3] = MEMORY[0x1E69E7CD0];
  v165 = 0u;
  v166 = 0u;
  v16 = *(a1 + 16);
  if (v16)
  {
    v168 = &v129 - v14;
    v134 = 0;
    v135 = 0;
    v136 = 0;
    v137 = 0;
    v131 = 0;
    v132 = 0;
    v17 = (a1 + 32);
    v18 = v13 + 8;
    v144 = (v13 + 16);
    v145 = v15;
    sub_1C4451388();
    v147 = v18;
    v148 = v19;
    while (1)
    {
      sub_1C442E860(v17, v155);
      sub_1C4420040();
      sub_1C4416328();

      v20 = HIBYTE(v3) & 0xF;
      if ((v3 & 0x2000000000000000) == 0)
      {
        v20 = a1 & 0xFFFFFFFFFFFFLL;
      }

      if (!v20)
      {
        goto LABEL_20;
      }

      sub_1C44D8A74();
      if (v4)
      {

        sub_1C440962C(v155);
        v160 = sub_1C444AD6C();
        v161 = v128;
        v162 = v165;
        v163 = v166;
        sub_1C44DEEB4(&v160);
        return;
      }

      v154 = 0;
      sub_1C440D720();
      sub_1C440B0A0();
      sub_1C4EFF7C8();
      v21 = sub_1C4EFED18();
      v22 = sub_1C44000C4();
      v153 = v23;
      v23(v22);
      sub_1C440D720();
      sub_1C440B0A0();
      if (v21)
      {
        sub_1C4EFF7F8();
      }

      else
      {
        sub_1C4EFF7C8();
      }

      v152 = v17;
      sub_1C440D720();
      sub_1C440B0A0();
      sub_1C4EFF7F8();
      sub_1C4EFEAA8();
      sub_1C441BBEC();
      sub_1C4487240(&off_1EDDFCCA8, v24, MEMORY[0x1E69A9770]);
      sub_1C4F01578();
      sub_1C4F01578();
      v3 = v160.n128_u64[1];
      a1 = v156.n128_u64[1];
      v25 = v160.n128_u64[0] == v156.n128_u64[0] && v160.n128_u64[1] == v156.n128_u64[1];
      if (v25)
      {
        break;
      }

      v26 = sub_1C4F02938();
      v27 = sub_1C448F180();
      v17(v27);
      v28 = sub_1C44000C4();
      v17(v28);

      if (v26)
      {
        goto LABEL_18;
      }

      v146 = v16;
      v29 = v145;
      v30 = v168;
      (*v144)(v145, v168, v6);
      v31 = v151;
      sub_1C4EFE558();
      sub_1C441BBEC();
      v3 = sub_1C4487240(&qword_1EDDFCCB0, v32, MEMORY[0x1E69A9768]);
      sub_1C44122BC();
      v33 = sub_1C4432814();
      v17(v33);
      if ((a1 & 1) == 0)
      {
        sub_1C4EFE5D8();
        sub_1C44122BC();
        v44 = sub_1C4432814();
        v17(v44);
        sub_1C4EFE9C8();
        sub_1C44122BC();
        v45 = sub_1C4432814();
        v17(v45);
        v16 = v146;
        sub_1C4EFE478();
        sub_1C44122BC();
        v46 = sub_1C4432814();
        v17(v46);
        v17 = v152;
        sub_1C4EFE518();
        sub_1C44122BC();
        v47 = sub_1C441361C();
        v48(v47);
        sub_1C4EFEBF8();
        sub_1C44122BC();
        v49 = sub_1C441361C();
        v50(v49);
        sub_1C4EFE3A8();
        sub_1C44122BC();
        v51 = sub_1C441361C();
        v52(v51);
        sub_1C4EFE2C8();
        sub_1C44122BC();
        v53 = sub_1C441361C();
        v54(v53);
        sub_1C4EFEE68();
        sub_1C44122BC();
        v65 = sub_1C441361C();
        v66(v65);
        if (a1)
        {
          v67 = sub_1C4415864();
          v153(v67);
          sub_1C4420040();
          sub_1C4416328();
          [objc_allocWithZone(MEMORY[0x1E6996728]) init];
          sub_1C444115C();
          sub_1C441D28C();

          v130 = sub_1C4458538(v68, sel_typeOfHandleString_);

          sub_1C443003C();
          sub_1C43FC764();
          if (v25)
          {
            sub_1C4401D48();
            String.normalizedContactHandle()();
            sub_1C4416328();

            sub_1C4461D2C();
            if (v25)
            {
              v3 = 0xE000000000000000;
            }

            v69 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C44352A8(v69, v70, v71, v72, v73, v74, v75, v76, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150);

            v77 = sub_1C443DF7C();
            sub_1C4A8F5B4(v77, v78, v79);
            a1 = (v31 + 24);
            sub_1C483CA44(&v156, v167);
            sub_1C4414668();
          }

          else
          {
            v82 = objc_allocWithZone(MEMORY[0x1E696AB60]);
            v90 = sub_1C442EC74();
            v154 = 0;
            sub_1C4401D48();
            v91 = sub_1C4F01108();
            v92 = sub_1C4401D48();
            v93 = MEMORY[0x1C69400B0](v92);
            v94 = sub_1C4426D1C(v93, sel_matchesInString_options_range_);

            v95 = sub_1C44DBED0();
            v3 = sub_1C44606DC(v95);

            v96 = sub_1C4428DA0(v3);

            if (v96)
            {
              sub_1C4420040();
              a1 = v55;
              String.normalizedContactHandle()();
              sub_1C442F2F8();
              v56 = sub_1C443F6E4();
              sub_1C44869B4(v56, v57, v58, v59, v60, v61, v62, v63, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150);
            }

            else
            {

              sub_1C4420040();
              a1 = v83;
              v137 = sub_1C4F00FF8();
              v142 = v84;
            }
          }
        }

        else
        {
          sub_1C4EFE328();
          sub_1C44122BC();
          v80 = sub_1C441361C();
          v81(v80);
          sub_1C4EFE338();
          sub_1C44122BC();
          v85 = sub_1C441361C();
          v86(v85);
          sub_1C4EFE348();
          sub_1C44122BC();
          v87 = sub_1C4432814();
          v88 = v153;
          v153(v87);
          v89 = sub_1C4415864();
          v88(v89);
        }

        v64 = sub_1C445077C();
        v153(v64);
        v4 = v154;
        goto LABEL_20;
      }

      v34 = sub_1C4415864();
      v17(v34);
      v35 = sub_1C4420040();
      a1 = v164;
      sub_1C44869B4(&v160, v35, v36, v36, v37, v38, v39, v40, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150);

      (v17)(v30, v6);
      v4 = v154;
      v16 = v146;
LABEL_19:
      v17 = v152;
LABEL_20:
      sub_1C440962C(v155);
      v17 = (v17 + 40);
      if (!--v16)
      {
        goto LABEL_36;
      }
    }

    v41 = sub_1C448F180();
    v17(v41);
    v42 = sub_1C44000C4();
    v17(v42);

LABEL_18:
    v43 = sub_1C445077C();
    v17(v43);
    v4 = v154;
    goto LABEL_19;
  }

  v134 = 0;
  v135 = 0;
  v136 = 0;
  v137 = 0;
  sub_1C4451388();
LABEL_36:
  v154 = v4;
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  v97 = swift_allocObject();
  v98 = 0;
  *(v97 + 16) = xmmword_1C4F13950;
  *(v97 + 32) = v136;
  *(v97 + 40) = v141;
  v99 = v142;
  *(v97 + 48) = v137;
  *(v97 + 56) = v99;
  v100 = v140;
  *(v97 + 64) = v135;
  *(v97 + 72) = v100;
  v101 = v143;
  *(v97 + 80) = v138;
  *(v97 + 88) = v101;
  v102 = v139;
  *(v97 + 96) = v134;
  *(v97 + 104) = v102;
  v103 = MEMORY[0x1E69E7CC0];
LABEL_37:
  v104 = (v97 + 40 + 16 * v98);
  while (v98 != 5)
  {
    if (v98 > 4)
    {
      __break(1u);
      return;
    }

    ++v98;
    v106 = *(v104 - 1);
    v105 = *v104;
    v104 += 2;
    v107 = HIBYTE(v105) & 0xF;
    if ((v105 & 0x2000000000000000) == 0)
    {
      v107 = v106 & 0xFFFFFFFFFFFFLL;
    }

    if (v107)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v160.n128_u64[0] = v103;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C44CD9C0(0, *(v103 + 16) + 1, 1);
        v103 = v160.n128_u64[0];
      }

      v110 = *(v103 + 16);
      v109 = *(v103 + 24);
      if (v110 >= v109 >> 1)
      {
        sub_1C44CD9C0(v109 > 1, v110 + 1, 1);
        v103 = v160.n128_u64[0];
      }

      *(v103 + 16) = v110 + 1;
      v111 = v103 + 16 * v110;
      *(v111 + 32) = v106;
      *(v111 + 40) = v105;
      goto LABEL_37;
    }
  }

  swift_setDeallocating();
  sub_1C44DEE40();
  v160.n128_u64[0] = v103;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C43FDC98();
  sub_1C4401CBC(v112, v113, &unk_1C4F0E870, v114);
  v115 = sub_1C4F01048();
  v117 = v116;

  v123 = HIBYTE(v117) & 0xF;
  if ((v117 & 0x2000000000000000) == 0)
  {
    v123 = v115 & 0xFFFFFFFFFFFFLL;
  }

  if (v123)
  {
    sub_1C44869B4(&v160, v115, v117, v118, v119, v120, v121, v122, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150);
  }

  v124 = v133;
  v156 = sub_1C444AD6C();
  v157 = v125;
  v158 = v165;
  v159 = v166;
  v160 = v156;
  v161 = v125;
  v162 = v165;
  v163 = v166;
  sub_1C44DEE7C(&v156, v155);
  sub_1C44DEEB4(&v160);
  v126 = v157;
  *v124 = v156;
  v124[1] = v126;
  v127 = v159;
  v124[2] = v158;
  v124[3] = v127;
}

uint64_t sub_1C44DB5D0(uint64_t (*a1)(void))
{
  a1(0);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C43FBC98();
}

void sub_1C44DB648()
{
  sub_1C43FBD3C();
  v57 = v1;
  v58 = v2;
  v4 = v3;
  v5 = type metadata accessor for CNContactStructs.EntityAliasRelationshipType(0);
  sub_1C43FCDF8();
  v56 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C44116E8(v8, v53);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C44144E4();
  v10 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  sub_1C43FBD18(v10);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v53 - v12;
  sub_1C4EFF038();
  v14 = sub_1C4EFD548();
  if (sub_1C44157D4(v13, 1, v14) == 1)
  {
    sub_1C4420C3C(v13, &qword_1EC0B8568, &unk_1C4F319B0);
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4(&qword_1EDDFD028);
    }

    v15 = sub_1C4F00978();
    sub_1C43FCEE8(v15, qword_1EDE2DE10);
    v16 = sub_1C4F00968();
    v17 = sub_1C4F01CD8();
    if (sub_1C43FCEA4(v17))
    {
      v18 = sub_1C43FCED0();
      sub_1C43FBD24(v18);
      sub_1C440BAE8(&dword_1C43F8000, v19, v20, "Entity Identifier did not encode type. Not emitting entity alias.");
      sub_1C43FE9D4();
    }
  }

  else
  {
    v54 = sub_1C4EFD2F8();
    v55 = v21;
    (*(*(v14 - 8) + 8))(v13, v14);
    v22 = *(v4 + 16);
    if (v22)
    {
      v59 = sub_1C4EFEEF8();
      v23 = (v4 + 40);
      v24 = MEMORY[0x1E69E7CC0];
      v53 = xmmword_1C4F0D2B0;
      do
      {
        v26 = *(v23 - 1);
        v25 = *v23;
        v27 = sub_1C440571C();
        sub_1C440BAA8(v27, v28, v29, v59);
        v30 = v5[5];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EFD278();
        v31 = v5[6];
        if (qword_1EDDFED28 != -1)
        {
          swift_once();
        }

        v32 = type metadata accessor for Source(0);
        sub_1C442B738(v32, &unk_1EDDFD088);
        sub_1C4406464();
        sub_1C44908D8(v33, v0 + v31, v34);
        sub_1C4EFE3A8();
        v35 = (v0 + v5[8]);
        *v35 = 0;
        v35[1] = 0;
        sub_1C4EFE4A8();
        v36 = (v0 + v5[10]);
        *v36 = 0;
        v36[1] = 0;
        sub_1C4EFE658();
        sub_1C441B714();
        sub_1C4408540();
        if (v38)
        {
          *v35 = v26;
          v35[1] = v25;
          v39 = v58;
          *v36 = v57;
          v36[1] = v39;
          v40 = v55;
          *v30 = v54;
          v30[1] = v40;
          *v37 = v53;
          sub_1C44908D8(v0, v60, type metadata accessor for CNContactStructs.EntityAliasRelationshipType);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = sub_1C43FCEC0();
            sub_1C44DBB10(v44, v45, v46, v24);
            v24 = v47;
          }

          v42 = *(v24 + 16);
          v41 = *(v24 + 24);
          if (v42 >= v41 >> 1)
          {
            v48 = sub_1C4404AA4(v41);
            sub_1C44DBB10(v48, v49, v50, v51);
            v24 = v52;
          }

          *(v24 + 16) = v42 + 1;
          sub_1C442FA84();
          sub_1C44DBBD8(v60, v43, type metadata accessor for CNContactStructs.EntityAliasRelationshipType);
        }

        else
        {
        }

        sub_1C44DBCAC(v0, type metadata accessor for CNContactStructs.EntityAliasRelationshipType);
        v23 += 2;
        --v22;
      }

      while (v22);
    }
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C44DBA44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  sub_1C44DBE88(a4, a5, a6);
  sub_1C4F01578();
  sub_1C4F01578();
  if (v15 == v13 && v16 == v14)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C43FED70(v15, v9, v13);
  }

  return v11 & 1;
}

uint64_t sub_1C44DBBD8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C44DBC38()
{
  v0 = sub_1C44059B8();
  v1(v0);
  sub_1C4EFEEF8();
  sub_1C43FBCE0();
  v2 = sub_1C448F13C();

  return v3(v2);
}

uint64_t sub_1C44DBCAC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C44DBD04(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C44DBD5C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C44DBDB4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C44DBE88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C44DBED0()
{
  result = qword_1EDDF03D0;
  if (!qword_1EDDF03D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDF03D0);
  }

  return result;
}

unint64_t sub_1C44DBF14(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1C4F01448();
  }

  __break(1u);
  return result;
}

uint64_t LocationMatcher.pipelineType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for LocationMatcher(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t LocationMatcher.source.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for LocationMatcher(0);
  sub_1C43FD90C();
  return sub_1C44719E4(v1 + v3, a1);
}

uint64_t LocationMatcher.stageName.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for LocationMatcher(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

void sub_1C44DC0D4()
{
  sub_1C43FBD3C();
  sub_1C44A1E40();
  sub_1C4EFD548();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1C4433190();
  v4 = type metadata accessor for Source(v3);
  v5 = sub_1C43FBD18(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4414930();
  sub_1C4440948();
  v6 = type metadata accessor for LocationMatcher(0);
  sub_1C4429020(v6);
  v7 = sub_1C456902C(&qword_1EC0BA518, &qword_1C4F41990);
  v8 = sub_1C445BBF0(v7);
  MEMORY[0x1C6940010](v8);

  sub_1C441DC78();
  v9 = sub_1C44A3BBC(*(v0 + 32));
  MEMORY[0x1C6940010](v9);

  sub_1C44364AC();
  sub_1C441925C();
  sub_1C447F6A4(v10);
  MEMORY[0x1C6940010](*v1, v1[1]);
  sub_1C4411930();
  sub_1C447E868(v1, v11);
  sub_1C446BE3C();
  _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C4EFD3D8();
  v12 = sub_1C441B798();
  v13(v12);
  sub_1C44A1748();

  sub_1C44AB234();
  sub_1C4656CA4();
  sub_1C44EB86C();
  sub_1C43FE9F0();
}

uint64_t sub_1C44DC248()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return LocationMatcher.execute()();
}

uint64_t LocationMatcher.execute()()
{
  v1[3] = v0;
  v2 = sub_1C4EFD548();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C44DC3F0, 0, 0);
}

uint64_t sub_1C44DC3F0()
{
  v57 = v0;
  v1 = v0[10];
  v3 = v0[3];
  v2 = v0[4];
  type metadata accessor for PhaseStores(0);
  v4 = type metadata accessor for LocationMatcher(0);
  v5 = *(v4 + 24);
  LOBYTE(v56[0]) = *(v3 + v5);
  _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C43FBD94();
  sub_1C440BAA8(v6, v7, v8, v2);
  sub_1C44ABA54(v56, v1);
  sub_1C4420C3C(v1, &qword_1EC0B8568, &unk_1C4F319B0);
  switch(*(v3 + v5))
  {
    case 1:
    case 3:
      v9 = v0[5];
      v10 = v0[3];
      _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
      v11 = swift_task_alloc();
      *(v11 + 16) = v10;
      sub_1C43FC6AC();
      sub_1C44AC170(v12, v13, v14, v15, v16, v11);
      v17 = v5;
      v18 = *(v9 + 8);
      v19 = sub_1C43FFE24();
      v18(v19);

      v54 = v17;
      v20 = v0[3];
      v21 = v20 + *(v4 + 20);
      if (*(v21 + *(type metadata accessor for Source(0) + 28)) != 1)
      {
        goto LABEL_8;
      }

      v22 = v0[8];
      v23 = v0[4];
      _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
      v24 = swift_task_alloc();
      *(v24 + 16) = v20;
      sub_1C43FC6AC();
      sub_1C44C6BB4(v25, v26, v27, v28, v29, v24);
      (v18)(v22, v23);
      goto LABEL_7;
    case 2:
      v32 = v0[7];
      v33 = v0[5];
      v55 = v0[4];
      v34 = v0[3];
      _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
      v35 = *(v3 + v5);
      v36 = swift_task_alloc();
      *(v36 + 16) = v34;
      sub_1C46CE408(v32, v35, 0, 1, sub_1C49F84CC, v36);
      v37 = *(v33 + 8);
      v37(v32, v55);

      v54 = v5;
      v38 = v0[3];
      v39 = v38 + *(v4 + 20);
      if (*(v39 + *(type metadata accessor for Source(0) + 28)) == 1)
      {
        v40 = v0[6];
        v41 = v0[4];
        _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
        v42 = swift_task_alloc();
        *(v42 + 16) = v38;
        sub_1C43FC6AC();
        sub_1C44C6BB4(v43, v44, v45, v46, v47, v42);
        v37(v40, v41);
LABEL_7:
      }

LABEL_8:
      v48 = v0[10];
      v49 = v0[4];
      sub_1C4EF9AE8();
      sub_1C43FBD94();
      sub_1C44DE4FC();
      LOBYTE(v56[0]) = *(v3 + v54);
      _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
      sub_1C43FBD94();
      sub_1C440BAA8(v50, v51, v52, v49);
      sub_1C44A8814(v56, v48);
      sub_1C4420C3C(v48, &qword_1EC0B8568, &unk_1C4F319B0);

      v53 = v0[1];

      result = v53();
      break;
    default:
      v56[0] = 0;
      v56[1] = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0x676E6974726F6241, 0xE900000000000020);
      v0[2] = v4;
      sub_1C456902C(&qword_1EC0BA518, &qword_1C4F41990);
      v30 = sub_1C4F01198();
      MEMORY[0x1C6940010](v30);

      MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4F8EC80);
      sub_1C448D934(*(v3 + v5));
      result = sub_1C4F024A8();
      break;
  }

  return result;
}

uint64_t sub_1C44DC904(void (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v59 = a5;
  v56 = a6;
  v58 = a1;
  v57 = type metadata accessor for EntityMatch(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBD08();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v52 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v52 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v52 - v19;
  v21 = sub_1C456902C(&qword_1EC0BB248, &qword_1C4F1E7C8);
  MEMORY[0x1EEE9AC00](v21 - 8);
  sub_1C43FBD08();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v52 - v26;
  v28 = *a4;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v29 = v60;
  v58(a3, v28, v59);

  if (!v29)
  {
    v60 = v20;
    sub_1C445FFF0(v27, v24, &qword_1EC0BB248, &qword_1C4F1E7C8);
    if (sub_1C44157D4(v24, 1, v57) == 1)
    {
      sub_1C4420C3C(v27, &qword_1EC0BB248, &qword_1C4F1E7C8);
      v31 = v24;
    }

    else
    {
      v59 = 0;
      v32 = v24;
      v33 = v60;
      sub_1C4471E9C(v32, v60);
      if (qword_1EDDFFAF0 != -1)
      {
        sub_1C4400128(&qword_1EDDFFAF0);
      }

      v34 = sub_1C4F00978();
      sub_1C442B738(v34, qword_1EDE2E088);
      sub_1C4430A14(v33, v17);
      sub_1C4430A14(v33, v14);
      v35 = v11;
      sub_1C4430A14(v33, v11);
      v36 = sub_1C4F00968();
      v37 = sub_1C4F01CB8();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v55 = v36;
        v39 = v38;
        v58 = swift_slowAlloc();
        v61 = v58;
        *v39 = 136315650;
        v54 = v37;
        sub_1C4EFF0C8();
        sub_1C44AC538(&qword_1EDDFE810, MEMORY[0x1E69A9810], MEMORY[0x1E69A9840]);
        sub_1C43FD2BC();
        v40 = sub_1C4F02858();
        v41 = v27;
        v43 = v42;
        v53 = v35;
        sub_1C44DBD04(v17, type metadata accessor for EntityMatch);
        v44 = sub_1C441D828(v40, v43, &v61);
        v27 = v41;

        *(v39 + 4) = v44;
        *(v39 + 12) = 2080;
        sub_1C43FD2BC();
        v33 = v60;
        v45 = sub_1C4F02858();
        v47 = v46;
        sub_1C44DBD04(v14, type metadata accessor for EntityMatch);
        v48 = sub_1C441D828(v45, v47, &v61);
        v49 = v57;

        *(v39 + 14) = v48;
        *(v39 + 22) = 2048;
        v50 = *(v53 + *(v49 + 28));
        sub_1C44DBD04(v53, type metadata accessor for EntityMatch);
        *(v39 + 24) = v50;
        v51 = v55;
        _os_log_impl(&dword_1C43F8000, v55, v54, "GraphStore: tripleMatchingMap: inserting match: %s <-> %s c:%f", v39, 0x20u);
        swift_arrayDestroy();
        sub_1C43FBE2C();
        sub_1C43FBE2C();
      }

      else
      {

        sub_1C44DBD04(v11, type metadata accessor for EntityMatch);
        sub_1C44DBD04(v14, type metadata accessor for EntityMatch);
        sub_1C44DBD04(v17, type metadata accessor for EntityMatch);
      }

      sub_1C44AC538(&qword_1EDDF91D0, type metadata accessor for EntityMatch, &protocol conformance descriptor for EntityMatch);
      sub_1C4EFB6C8();
      sub_1C44DBD04(v33, type metadata accessor for EntityMatch);
      v31 = v27;
    }

    return sub_1C4420C3C(v31, &qword_1EC0BB248, &qword_1C4F1E7C8);
  }

  return result;
}

uint64_t sub_1C44DCE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  result = a5(a1, a2, a3);
  if (!v5)
  {
    type metadata accessor for EntityMatch(0);
    sub_1C43FBD94();
    return sub_1C440BAA8(v7, v8, v9, v10);
  }

  return result;
}

uint64_t sub_1C44DCEEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v76 = a3;
  v77 = a2;
  v79 = a1;
  v73 = a4;
  v72 = sub_1C4EF9CD8();
  v70 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C4EFF0C8();
  v74 = *(v6 - 8);
  v75 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v78 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v64 - v9;
  v11 = type metadata accessor for EntityTriple(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&unk_1EC0BCAE0, byte_1C4F142A0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v64 - v15;
  v17 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v64 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v64 - v24;
  v26 = v80;
  result = sub_1C44DC054();
  if (!v26)
  {
    v68 = v13;
    v69 = v10;
    v65 = v19;
    v66 = v22;
    v28 = v75;
    v29 = v76;
    v80 = 0;
    v30 = v74;
    v67 = v4;
    if (v77)
    {
      v31 = v77;
      sub_1C486854C(v77, v16);
      v32 = type metadata accessor for ConstructionGraphTriple(0);
      v33 = v29;
      v34 = v11;
      if (sub_1C44157D4(v16, 1, v32) == 1)
      {
        sub_1C4420C3C(v16, &unk_1EC0BCAE0, byte_1C4F142A0);
        v35 = 1;
      }

      else
      {
        (*(v30 + 16))(v25, v16, v28);
        sub_1C447EA28(v16, type metadata accessor for ConstructionGraphTriple);
        v35 = 0;
      }
    }

    else
    {
      v31 = 0;
      v35 = 1;
      v33 = v76;
      v34 = v11;
    }

    v36 = v25;
    sub_1C440BAA8(v25, v35, 1, v28);
    v37 = v69;
    sub_1C44D0BD8(v79, v69);
    v38 = sub_1C44157D4(v37, 1, v34);
    v39 = v78;
    if (v38 == 1)
    {
      sub_1C4420C3C(v37, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v40 = sub_1C4F00978();
      sub_1C442B738(v40, qword_1EDE2DE10);
      v41 = sub_1C4F00968();
      v42 = sub_1C4F01CD8();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_1C43F8000, v41, v42, "Location Matcher: skipping entityTriples are empty", v43, 2u);
        MEMORY[0x1C6942830](v43, -1, -1);
      }

      sub_1C46828B4();
      v44 = swift_allocError();
      *v45 = 0;
      v80 = v44;
      swift_willThrow();
      return sub_1C4420C3C(v36, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    v46 = v37;
    v47 = v68;
    sub_1C44DD7A8(v46, v68);
    if (v31)
    {
      v48 = v80;
      v49 = sub_1C49F6FB8(v79, v31, v33, sub_1C4812AF0, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple, sub_1C459DC78);
      v50 = v73;
      v80 = v48;
      v51 = v66;
      if (v48)
      {
        sub_1C447EA28(v47, type metadata accessor for EntityTriple);
        return sub_1C4420C3C(v36, &unk_1EC0BA0E0, &qword_1C4F105A0);
      }

      v53 = 1.0;
      v52 = &unk_1C4F41000;
      if (v49 > 0.88)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v50 = v73;
      v51 = v66;
      v52 = &unk_1C4F41000;
    }

    sub_1C4EFF008();
    sub_1C4420C3C(v36, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C440BAA8(v51, 0, 1, v28);
    sub_1C44DDDBC(v51, v36);
    v53 = v52[605];
LABEL_20:
    v54 = v65;
    sub_1C446C964(v36, v65, &unk_1EC0BA0E0, &qword_1C4F105A0);
    if (sub_1C44157D4(v54, 1, v28) == 1)
    {
      sub_1C4420C3C(v54, &unk_1EC0BA0E0, &qword_1C4F105A0);
      result = sub_1C4F024A8();
      __break(1u);
    }

    else
    {
      (*(v30 + 32))(v39, v54, v28);
      _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
      v55 = type metadata accessor for EntityMatch(0);
      v56 = v39;
      v57 = v28;
      v58 = *(v30 + 16);
      v59 = v68;
      v58(v50 + v55[5], v68, v57);
      v58(v50 + v55[6], v56, v57);
      v60 = v71;
      sub_1C4EF9C88();
      sub_1C4EF9AD8();
      v62 = v61;
      (*(v70 + 8))(v60, v72);
      (*(v30 + 8))(v56, v57);
      sub_1C447EA28(v59, type metadata accessor for EntityTriple);
      sub_1C4420C3C(v36, &unk_1EC0BA0E0, &qword_1C4F105A0);
      result = type metadata accessor for LocationMatcher(0);
      v63 = *(v67 + *(result + 24));
      *(v50 + v55[7]) = v53;
      *(v50 + v55[8]) = v62;
      *(v50 + v55[9]) = v63;
      *(v50 + v55[10]) = 0;
    }
  }

  return result;
}

uint64_t sub_1C44DD6F4()
{
  sub_1C4404078();
  v1(0);
  sub_1C43FCE50();
  v2 = sub_1C43FBC98();
  v3(v2);
  return v0;
}

uint64_t sub_1C44DD748(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C44DD7A8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v4(v3);
  sub_1C43FBCE0();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

uint64_t sub_1C44DD800()
{
  sub_1C4404078();
  v1(0);
  sub_1C43FBCE0();
  v2 = sub_1C43FBC98();
  v3(v2);
  return v0;
}

uint64_t sub_1C44DD858(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

uint64_t sub_1C44DD8B0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

uint64_t sub_1C44DD908(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v4(v3);
  sub_1C43FCE50();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

uint64_t sub_1C44DD95C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

uint64_t sub_1C44DD9B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

uint64_t sub_1C44DDA0C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

uint64_t sub_1C44DDA64()
{
  sub_1C4404078();
  v1(0);
  sub_1C43FCE50();
  v2 = sub_1C43FBC98();
  v3(v2);
  return v0;
}

uint64_t sub_1C44DDAB8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v4(v3);
  sub_1C43FCE50();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

uint64_t sub_1C44DDB0C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v4(v3);
  sub_1C43FCE50();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

uint64_t sub_1C44DDB60()
{
  sub_1C4404078();
  v1(0);
  sub_1C43FCE50();
  v2 = sub_1C43FBC98();
  v3(v2);
  return v0;
}

uint64_t sub_1C44DDBB4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

uint64_t sub_1C44DDC0C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v4(v3);
  sub_1C43FCE50();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

uint64_t sub_1C44DDC60(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

uint64_t sub_1C44DDCB8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

uint64_t sub_1C44DDD10()
{
  sub_1C4404078();
  v1(0);
  sub_1C43FCE50();
  v2 = sub_1C43FBC98();
  v3(v2);
  return v0;
}

uint64_t sub_1C44DDD64(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

uint64_t sub_1C44DDDBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C44DDE2C()
{
  sub_1C4404078();
  sub_1C456902C(v1, v2);
  sub_1C43FBCE0();
  v3 = sub_1C43FBC98();
  v4(v3);
  return v0;
}

void sub_1C44DDE98()
{
  sub_1C43FC36C();
  sub_1C4EFD548();
  sub_1C43FCF8C();
  if (*(v4 + 84) == v3)
  {
    sub_1C43FD5B4();
  }

  else
  {
    sub_1C4EFF0C8();
    sub_1C43FCF8C();
    if (*(v5 + 84) != v3)
    {
      *(v1 + *(v2 + 40)) = v0;
      return;
    }

    sub_1C442F908();
  }

  sub_1C43FE688();

  sub_1C440BAA8(v6, v7, v8, v9);
}

uint64_t sub_1C44DDF78()
{
  sub_1C43FECE0();
  sub_1C4EFD548();
  sub_1C43FCF8C();
  if (*(v1 + 84) == v0)
  {
    v2 = sub_1C4404F74();
LABEL_5:

    return sub_1C44157D4(v2, v0, v3);
  }

  sub_1C4EFF0C8();
  sub_1C43FCF8C();
  if (*(v4 + 84) == v0)
  {
    v2 = sub_1C442F908();
    goto LABEL_5;
  }

  sub_1C448E060();
  v7 = v6 - 1;
  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

uint64_t sub_1C44DE080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4490F60(&qword_1EDDF91C0, type metadata accessor for EntityMatch, &protocol conformance descriptor for EntityMatch);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

void EntityMatch.encode(to:)()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  sub_1C456902C(&qword_1EC0BE130, &unk_1C4F32660);
  sub_1C4403200();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FE61C();
  sub_1C43FD870();
  v2 = sub_1C44DE3A4();
  sub_1C440F61C(&type metadata for EntityMatch.CodingKeys, v3, v2);
  sub_1C4EFD548();
  sub_1C44004E0();
  sub_1C4490F60(v4, v5, MEMORY[0x1E69A92D0]);
  sub_1C44E76EC();
  sub_1C43FEF68();
  sub_1C4F027E8();
  if (!v0)
  {
    type metadata accessor for EntityMatch(0);
    sub_1C4404F64();
    sub_1C4EFF0C8();
    sub_1C4419854();
    sub_1C4490F60(v6, v7, MEMORY[0x1E69A9818]);
    sub_1C441AED4();
    sub_1C44032B0();
    sub_1C4F027E8();
    sub_1C44032B0();
    sub_1C4F027E8();
    sub_1C442FDD8();
    sub_1C4F027C8();
    sub_1C442FDD8();
    sub_1C4F027B8();
    sub_1C44C1190();
    sub_1C442DF84();
    sub_1C4F027E8();
    sub_1C456902C(qword_1EC0C0740, &qword_1C4F0D000);
    sub_1C4473454(&qword_1EDDFA5E0, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1C43FEF68();
    sub_1C4F02778();
  }

  v8 = sub_1C440231C();
  v9(v8);
  sub_1C44103B4();
  sub_1C43FBC80();
}

unint64_t sub_1C44DE3A4()
{
  result = qword_1EDDF9240[0];
  if (!qword_1EDDF9240[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDF9240);
  }

  return result;
}

uint64_t sub_1C44DE400(char a1)
{
  result = 0x6C43797469746E65;
  switch(a1)
  {
    case 1:
      v3 = 0x656372756F73;
      goto LABEL_5;
    case 2:
      v3 = 0x746567726174;
LABEL_5:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6449000000000000;
      break;
    case 3:
      result = 0x6E656469666E6F63;
      break;
    case 4:
      result = 0x6D617473656D6974;
      break;
    case 5:
      result = 0x656E696C65706970;
      break;
    case 6:
      result = 0x617461646174656DLL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C44DE4FC()
{
  sub_1C43FBD3C();
  v67 = v0;
  sub_1C4423618(v8, v9, v10);
  sub_1C43FCDF8();
  v64 = v11;
  v65 = v12;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  type metadata accessor for ProgressTokens(0);
  sub_1C4412DFC();
  v66 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1C4416DF8();
  type metadata accessor for LocationMatcher(v18);
  sub_1C44101F8();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v61 - v21;
  if (v1)
  {
    sub_1C4424C80();
  }

  else
  {
    v62 = v15;
    v23 = sub_1C44607D4(objc_autoreleasePoolPush());
    sub_1C44099C4(v23);
    sub_1C4EF93C8();
    v24 = &qword_1EC0BA4A8;
    sub_1C4656BB0();
    sub_1C442C5A4();
    v28 = sub_1C4401CBC(v25, v26, &dword_1C4F141D0, v27);
    v29 = sub_1C4656C04(v28);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v63);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v31 = sub_1C4F00978();
        sub_1C43FCEE8(v31, qword_1EDE2DE10);
        sub_1C4430900(v67, v22);
        v32 = sub_1C4F00968();
        v33 = sub_1C4F01CD8();
        if (os_log_type_enabled(v32, v33))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v34 = swift_slowAlloc();
          sub_1C44305A4(v34);
          *v5 = 136315138;
          v35 = sub_1C44623A0();
          sub_1C4430900(v35, v3);
          sub_1C447E868(v22, type metadata accessor for LocationMatcher);
          sub_1C44DC0D4();
          v36 = sub_1C440CAFC();
          sub_1C447E868(v36, type metadata accessor for LocationMatcher);
          v37 = sub_1C447CB90();
          sub_1C441D828(v37, v4, v38);
          sub_1C44D44F0();
          *(v5 + 4) = v3;
          sub_1C4656C84(&dword_1C43F8000, v39, v40, "%s failed to update progress token");
          sub_1C440962C(v6);
          v41 = sub_1C4416E14();
          MEMORY[0x1C6942830](v41);
          v42 = sub_1C44068C0();
          MEMORY[0x1C6942830](v42);
        }

        else
        {
          sub_1C447E868(v22, type metadata accessor for LocationMatcher);
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    v2 = v29;
    v4 = v30;

    objc_autoreleasePoolPop(v63);
    v15 = v62;
    v3 = v2;
  }

  v22 = v67;
  v43 = v67;
  sub_1C44DE9F0(v69);
  v24 = v70;
  if (v70)
  {
    v44 = sub_1C440F3CC();
    v45(v44);
    sub_1C4456268();
  }

  else
  {
    sub_1C4420C3C(v69, &qword_1EC0BA490, &unk_1C4F53630);
    v43 = 0;
  }

  if ((v68 & 1) == 0 && __OFADD__(v43, 1))
  {
    __break(1u);
    goto LABEL_25;
  }

  v46 = 0x6E776F6E6B6E75;
  switch(v22[*(v5 + 24)])
  {
    case 1:
      v46 = sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      v46 = sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC(v46);
      sub_1C44016DC();
      if (v2)
      {
LABEL_18:
        _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
        sub_1C445AABC();
        sub_1C441925C();
        sub_1C44EC814(v47);
        *(v6 + *(v7 + 20)) = 0;
        sub_1C43FC08C();
        sub_1C4656C64(v48);
        sub_1C4460A18();
        v49 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v50 = sub_1C4424F7C(v49);
        sub_1C4412DCC(v50, xmmword_1C4F0D130);
        sub_1C4415F88();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v51 = sub_1C43FFEF0();
      }

      else
      {
        _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
        sub_1C441925C();
        sub_1C4430900(&v22[v53], v15 + v54);
        sub_1C44433E8();
        sub_1C4460A18();
        v55 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v56 = sub_1C4405904(v55);
        sub_1C44068A0(v56, xmmword_1C4F0D130);
        sub_1C4430900(v15, v57);
        v58 = sub_1C4415F88();
        sub_1C449498C(v58);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v51 = v15;
      }

      sub_1C447E868(v51, v52);
      v59 = sub_1C43FD2BC();
      sub_1C441DFEC(v59, v60);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

uint64_t sub_1C44DE9F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29[-1] - v4;
  v6 = type metadata accessor for ConstructionProgressTokens(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v29[-1] - v10;
  v12 = type metadata accessor for ProgressTokens(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LocationMatcher(0);
  switch(*(v2 + *(v15 + 24)))
  {
    case 2:

      goto LABEL_4;
    default:
      v16 = sub_1C4F02938();

      if (v16)
      {
LABEL_4:
        type metadata accessor for PhaseStores(0);
        v30 = v15;
        v31 = sub_1C447CB3C(&qword_1EDDF6728, type metadata accessor for LocationMatcher, &protocol conformance descriptor for LocationMatcher);
        v17 = sub_1C4422F90(v29);
        sub_1C4430900(v2, v17);
        sub_1C44FEF34(v29, 0);
        sub_1C440962C(v29);
        if (sub_1C44157D4(v11, 1, v12) == 1)
        {
          v18 = &unk_1EC0BA4B8;
          v19 = &unk_1C4F16F60;
          v20 = v11;
LABEL_8:
          result = sub_1C4420C3C(v20, v18, v19);
          v23 = v28;
          *(v28 + 32) = 0;
          *v23 = 0u;
          v23[1] = 0u;
          return result;
        }

        sub_1C449F338(v11, v14);
        v24 = v28;
        *(v28 + 24) = v12;
        v24[4] = &off_1F43EE918;
        v25 = sub_1C4422F90(v24);
        v26 = v14;
      }

      else
      {
        type metadata accessor for PhaseStores(0);
        v30 = v15;
        v31 = sub_1C447CB3C(&qword_1EDDF6728, type metadata accessor for LocationMatcher, &protocol conformance descriptor for LocationMatcher);
        v21 = sub_1C4422F90(v29);
        sub_1C4430900(v2, v21);
        sub_1C449D50C(v29, 0);
        sub_1C440962C(v29);
        if (sub_1C44157D4(v5, 1, v6) == 1)
        {
          v18 = &unk_1EC0BAC20;
          v19 = &unk_1C4F141E0;
          v20 = v5;
          goto LABEL_8;
        }

        sub_1C449F338(v5, v8);
        v27 = v28;
        *(v28 + 24) = v6;
        v27[4] = &off_1F43EE970;
        v25 = sub_1C4422F90(v27);
        v26 = v8;
      }

      return sub_1C449F338(v26, v25);
  }
}

uint64_t sub_1C44DEE40()
{
  swift_arrayDestroy();
  sub_1C4406518();

  return swift_deallocClassInstance();
}

uint64_t sub_1C44DEEE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X3>, char *a4@<X4>, void (*a5)(void)@<X5>, uint64_t (*a6)(void)@<X6>, char *a7@<X7>, uint64_t a8@<X8>, uint64_t (*a9)(uint64_t), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t (*a15)(void), uint64_t a16, uint64_t a17, uint64_t a18, char *a19)
{
  v431 = a7;
  v434 = a5;
  v435 = a6;
  v445 = a2;
  v447 = a1;
  v440 = a8;
  sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v438 = v23;
  v439 = v22;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBCC4();
  v437 = v25 - v24;
  sub_1C4EFD548();
  sub_1C43FCDF8();
  v449 = v27;
  v450 = v26;
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBCC4();
  v443 = v29 - v28;
  v446 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v444 = v30;
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBFDC();
  v442 = v32;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v33);
  v441 = &v404 - v34;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v35);
  v448 = &v404 - v36;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v37);
  v432 = &v404 - v38;
  v429 = a3;
  v430 = a4;
  v39 = sub_1C456902C(a3, a4);
  v40 = sub_1C43FBD18(v39);
  MEMORY[0x1EEE9AC00](v40);
  v433 = &v404 - v41;
  v42 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v43 = sub_1C43FBD18(v42);
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBFDC();
  v436 = v44;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v404 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v404 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v404 - v52;
  v54 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v55 = sub_1C43FBD18(v54);
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v404 - v56;
  v58 = type metadata accessor for EntityTriple(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FBCC4();
  v62 = v61 - v60;
  v63 = v489;
  result = sub_1C44D8A74();
  if (v63)
  {
    return result;
  }

  v489 = v50;
  v424 = v47;
  v425 = v53;
  v426 = v62;
  v427 = v19;
  sub_1C44D0BD8(v447, v57);
  if (sub_1C44157D4(v57, 1, v58) == 1)
  {
    sub_1C4420C3C(v57, &qword_1EC0BA590, &qword_1C4F1F430);
    if (qword_1EDDFD028 == -1)
    {
LABEL_4:
      v65 = sub_1C4F00978();
      sub_1C442B738(v65, qword_1EDE2DE10);
      v66 = sub_1C4F00968();
      v67 = sub_1C4F01CD8();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_1C43F8000, v66, v67, "People Matcher: skipping entityTriples are empty", v68, 2u);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      sub_1C46828B4();
      swift_allocError();
      *v69 = 0;
      return swift_willThrow();
    }

LABEL_283:
    sub_1C4419274();
    swift_once();
    goto LABEL_4;
  }

  v70 = v58;
  v71 = v426;
  sub_1C4A948D8(v57, v426);
  v72 = *(v71 + *(v58 + 40) + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44F40EC();
  sub_1C44DA574(v73, &v475);
  v414 = v70;
  v419 = v72;
  v422 = 0;

  v75 = v475.n128_u64[1];
  v74 = v475.n128_u64[0];
  v77 = v476;
  v76 = v477;
  v78 = v479;
  v415 = v480;
  v416 = v478;
  v417 = v481;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v418 = v75;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v421 = v76;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v447 = v78;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v420 = v74;
  v79 = sub_1C44E1D98(v74);
  v80 = MEMORY[0x1E69E7CC8];
  v423 = v77;
  v428 = v79;
  if (v445)
  {
    v75 = v433;
    v434();
    v81 = v435(0);
    v82 = sub_1C44157D4(v75, 1, v81);
    v83 = v446;
    v85 = v449;
    v84 = v450;
    v86 = v448;
    v87 = v425;
    if (v82 != 1)
    {
      (*(v444 + 16))(v425, v75, v446);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C447EA28(v75, v431);
      sub_1C43FBD94();
      sub_1C440BAA8(v88, v89, v90, v83);
      v474 = v80;
      sub_1C442E4AC();
LABEL_14:
      v91 = v489;
      sub_1C44DDE2C();
      if (sub_1C44157D4(v91, 1, v83) == 1)
      {

        sub_1C4420C3C(v91, &unk_1EC0BA0E0, &qword_1C4F105A0);
        goto LABEL_16;
      }

      v131 = v444;
      v132 = v432;
      (*(v444 + 32))(v432, v91, v83);
      v133 = a9(v445);
      v134 = v422;
      sub_1C44DA574(v133, &v482);
      if (v134)
      {

        sub_1C44DEEB4(&v475);

        swift_bridgeObjectRelease_n();

        (*(v131 + 8))(v132, v83);
        sub_1C4420C3C(v425, &unk_1EC0BA0E0, &qword_1C4F105A0);

        sub_1C44035D8();
        return sub_1C447EA28(v426, v135);
      }

      v422 = 0;

      v161 = v482;
      v434 = v482.n128_u64[0];
      v163 = v483;
      v162 = v484;
      v164 = v486;
      v165 = v488;
      v430 = v485;
      v431 = v487;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v435 = v161.n128_u64[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v489 = v162;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DEEB4(&v482);
      v166 = sub_1C44E1D98(v161.n128_i64[0]);
      v445 = v163;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFF048();
      v409 = v167;
      sub_1C441DDD8();
      *&v469 = v168;
      sub_1C4415BB0();
      *(&v469 + 1) = v169;
      *&v470 = 1702195828;
      *(&v470 + 1) = 0xE400000000000000;
      v472 = 0;
      v471 = 0uLL;
      v473 = 1;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44E3634(&v469);
      v433 = v166;
      if (v447)
      {
        if (v416 == 1702195828 && v447 == 0xE400000000000000)
        {
          v171 = 1;
        }

        else
        {
          v171 = sub_1C443FEE0(v416, v447);
        }
      }

      else
      {
        v171 = 0;
      }

      v464.n128_u64[0] = 0xD000000000000014;
      v464.n128_u64[1] = 0x80000001C4F8BE80;
      v465.n128_u64[0] = 1702195828;
      v465.n128_u64[1] = 0xE400000000000000;
      v467 = 0;
      v466 = 0uLL;
      v468 = 1;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44E3634(&v464);
      if (v417)
      {
        if (v415 == 1702195828 && v417 == 0xE400000000000000)
        {
          LODWORD(v429) = 1;
        }

        else
        {
          LODWORD(v429) = sub_1C443FEE0(v415, v417);
        }
      }

      else
      {
        LODWORD(v429) = 0;
      }

      sub_1C441DDD8();
      v462[0] = v181;
      sub_1C4415BB0();
      v462[1] = v182;
      v462[2] = 1702195828;
      v462[3] = 0xE400000000000000;
      memset(&v462[4], 0, 24);
      v463 = 1;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44E3634(v462);
      if (v164)
      {
        if (v430 == 1702195828 && v164 == 0xE400000000000000)
        {
          v184 = 1;
        }

        else
        {
          v184 = sub_1C443FEE0(v430, v164);
        }
      }

      else
      {
        v184 = 0;
      }

      v460[0] = 0xD000000000000014;
      v460[1] = 0x80000001C4F8BE80;
      v460[2] = 1702195828;
      v460[3] = 0xE400000000000000;
      memset(&v460[4], 0, 24);
      v461 = 1;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44E3634(v460);
      v405 = 0xD000000000000014;
      if (v165)
      {
        v185 = v431 == 1702195828 && v165 == 0xE400000000000000;
        v84 = v450;
        if (!v185)
        {
          v186 = sub_1C443FEE0(v431, v165);

          v187 = v423;
          v188 = v445;
          if (v171)
          {
            v189 = v184 | ~v186;
            v190 = v425;
            if (v189)
            {
              LODWORD(v431) = v184;
              v191 = v184 ^ 1u;
LABEL_125:
              v429 = v191;
              goto LABEL_126;
            }

            goto LABEL_121;
          }

          if ((v184 & 1) == 0)
          {
            v192 = v429 & v186;
            v190 = v425;
            if ((v192 & 1) == 0)
            {
              goto LABEL_124;
            }

            goto LABEL_121;
          }

LABEL_120:
          v190 = v425;
          if ((v429 & 1) == 0)
          {
            goto LABEL_124;
          }

          goto LABEL_121;
        }

        v187 = v423;
        v188 = v445;
        if ((v171 & 1) == 0)
        {
          goto LABEL_120;
        }

        v190 = v425;
        if ((v184 & 1) == 0)
        {
LABEL_121:
          if (*(v187 + 16) && *(v188 + 16))
          {
            v193 = sub_1C4A935F4(v187, v188);
            sub_1C47023EC(v194, v195, v196);
            LODWORD(v431) = v193;
            v191 = v193 ^ 1u;
            goto LABEL_125;
          }

LABEL_124:
          LODWORD(v431) = 0;
          v191 = 1;
          goto LABEL_125;
        }

        v429 = 0;
        LODWORD(v431) = 1;
      }

      else
      {

        v84 = v450;
        v190 = v425;
        if ((v171 & 1) == 0)
        {
          v187 = v423;
          v188 = v445;
          if ((v184 & v429 & 1) == 0)
          {
            goto LABEL_124;
          }

          goto LABEL_121;
        }

        LODWORD(v431) = v184;
        v429 = (v184 ^ 1u);
      }

LABEL_126:
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v197 = v420;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v198 = v434;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      if (*(v197 + 16) && *(v198 + 16))
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v199 = v421;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v200 = v420;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        sub_1C4417658();
        v203 = sub_1C4A954A4(v198, v200, v201, v202);
        v406 = v203[2] != 0;
        *&v456 = v203;
        v204 = sub_1C440A9B8();
        sub_1C456902C(v204, v205);
        sub_1C4405220();
        sub_1C4401CBC(v206, v207, &qword_1C4F11B50, v208);
        sub_1C4415EA8();
        sub_1C4405FC4();
        v190 = v425;
        v430 = sub_1C4F01568();
        v408 = v209;

        v75 = v199;

        v210 = v418;

        v417 = 1;
      }

      else
      {

        v75 = v421;

        v211 = v418;

        v210 = v211;
        v406 = 0;
        v417 = 0;
        v430 = 0;
        v408 = 1;
      }

      v429 = (v429 & 1);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v212 = v435;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v102 = v448;
      if (*(v210 + 16) && *(v212 + 16) || *(v75 + 16) && (v212 = v435, *(v489 + 2)))
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        sub_1C4417658();
        v215 = sub_1C4A954A4(v212, v210, v213, v214);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        v216 = sub_1C4A954A4(v489, v421, sub_1C4A6AD48, sub_1C4A6AD48);
        v217 = v422;
        sub_1C4A8ED7C(v216);
        v422 = v217;
        sub_1C4499940();

        v218 = sub_1C4404084();
        *&v456 = sub_1C44999E0(v218, v219);
        sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
        sub_1C4405220();
        v75 = sub_1C4401CBC(v220, v221, &qword_1C4F11B50, v222);
        sub_1C4415EA8();
        sub_1C4405FC4();
        v410 = sub_1C4F01568();
        v411 = v223;

        v224 = v215[2];

        if (v224)
        {

          v225 = 1;
        }

        else
        {
          v230 = v216[2];

          v225 = v230 != 0;
        }

        v412 = v225;
        v84 = v450;
        sub_1C442E4AC();
        v227 = v445;
        v229 = v431;
        v413 = 2;
        v228 = v447;
        v102 = v448;
        v190 = v425;
        v226 = v428;
      }

      else
      {

        v412 = 0;
        v413 = 0;
        v410 = 0;
        v411 = 2;
        sub_1C442E4AC();
        v227 = v445;
        v228 = v447;
        v229 = v431;
      }

      v447 = sub_1C4A92C90(v226, v433);
      v232 = v231;
      v407 = v233;
      v415 = v234;
      v431 = v231;
      if (v228)
      {
        if (v229)
        {

          sub_1C4A95670(v412, v413, v410, v411);
          sub_1C47023EC(v417, v430, v408);
          sub_1C456902C(&qword_1EC0B8530, qword_1C4F0CF70);
          v235 = swift_allocObject();
          sub_1C466323C(v235, 1);
          sub_1C441DDD8();
          *v236 = v237;
          sub_1C4415BB0();
          v238[1] = v239;
          v238[2] = v416;
          v238[3] = v228;
          v240 = sub_1C4F00F28();
          v241 = 0;
          v242 = 0;
          v474 = v240;
          v85 = v449;
          v243 = v429;
          goto LABEL_157;
        }

        v246 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
        sub_1C47023EC(v246, v247, v429);
      }

      else
      {
        v244 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
        sub_1C47023EC(v244, v245, v429);
      }

      v242 = v430;
      if (v406)
      {

        sub_1C4A95670(v412, v413, v410, v411);
        v243 = v408;
        v85 = v449;
LABEL_156:
        v241 = v417;
        goto LABEL_157;
      }

      sub_1C47023EC(v417, v430, v408);
      v248 = *(v423 + 16);

      if (v248)
      {
        v249 = *(v227 + 16);

        v85 = v449;
        if (v249)
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if (v415 == 2)
          {
            LODWORD(v430) = 0;
            v250 = v411;
            v251 = v411 != 2 && v412;
            v252 = v411 == 2 || v412;
          }

          else
          {
            v250 = v411;
            if (v447)
            {
              LODWORD(v430) = v411 != 2 && v412;
              v251 = 1;
              v252 = 1;
            }

            else
            {
              LODWORD(v430) = 0;
              v343 = v411 != 2;
              v251 = v343 && v412;
              v252 = v343 && v412;
            }
          }

          v344 = sub_1C4A933E4(v423);
          v242 = v346;
          if (v344 & 1) != 0 && (v252)
          {
            v243 = v347;
            v348 = v345;

            sub_1C4A95670(v412, v413, v410, v250);
            v241 = v348;
            v84 = v450;
            goto LABEL_157;
          }

          sub_1C47023EC(v345, v346, v347);
          v75 = v423;
          v349 = sub_1C4A935F4(v423, v445);
          v429 = v350;
          v352 = v351;

          if (v349 & v251)
          {
            *&v456 = sub_1C4B400F8(8);
            *(&v456 + 1) = v353;
            v84 = v450;
            v75 = 0xD00000000000001DLL;
            if (v352 < 2)
            {

              sub_1C44237B8();
            }

            v354 = v411;
            sub_1C4414294();

            v375 = sub_1C4405FC4();
            MEMORY[0x1C6940010](v375);
            if (v354 >= 3)
            {
              sub_1C4A9568C(v413, v410, v354);
            }

            else
            {

              sub_1C44237B8();
            }

            sub_1C4414294();

            v380 = sub_1C4405FC4();
            MEMORY[0x1C6940010](v380);
            if (v415 >= 3)
            {
              sub_1C4418B70();
              sub_1C4A9568C(v381, v382, v383);
            }

            else
            {

              sub_1C44237B8();
            }

            sub_1C4414294();

            sub_1C4A95670(v412, v413, v410, v354);
            v243 = *(&v456 + 1);
            v242 = v456;
            v241 = 9;
            goto LABEL_157;
          }

          sub_1C4418B70();
          sub_1C47023EC(v355, v356, v357);
          v84 = v450;
          sub_1C442E4AC();
          if (v430)
          {
            *&v456 = sub_1C4B400F8(5);
            *(&v456 + 1) = v358;
            v359 = v411;
            if (v411 >= 3)
            {
              sub_1C4A9568C(v413, v410, v411);
            }

            else
            {

              sub_1C44237B8();
            }

            sub_1C4414294();

            v384 = sub_1C4405FC4();
            MEMORY[0x1C6940010](v384);
            if (v415 >= 3)
            {
              sub_1C4418B70();
              sub_1C4A9568C(v385, v386, v387);
            }

            else
            {

              sub_1C44237B8();
            }

            sub_1C4414294();

            v388 = v456;
            v389 = sub_1C4F012A8();
            sub_1C4A95670(v412, v413, v410, v359);
            if (v389 < 2)
            {

              v243 = 0;
              v242 = 0;
              v241 = 5;
LABEL_158:
              v263 = v241;
              v436 = sub_1C4A8F4B4(v241);
              sub_1C47023EC(v263, v242, v243);
              sub_1C4434670();
              *&v456 = v242;
              sub_1C44E737C();
              v474 = v456;
LABEL_159:
              v264 = (v427 + *(type metadata accessor for PeopleMatcher(0) + 20));
              if (qword_1EDDFD0A8 != -1)
              {
                sub_1C440FA20(&qword_1EDDFD0A8);
              }

              v265 = type metadata accessor for Source(0);
              v266 = sub_1C442B738(v265, qword_1EDDFD0B0);
              v267 = v266[1];
              v268 = *v264 == *v266 && v264[1] == v267;
              v269 = v447;
              v270 = v431;
              v430 = *v266;
              if (!v268 && (sub_1C4F02938() & 1) == 0 || !*(v428 + 16))
              {
LABEL_196:
                if (v415 == 2 || (sub_1C4A95670(v269, v270, v407, v415), (v269 & 1) == 0))
                {

                  swift_bridgeObjectRelease_n();
                  goto LABEL_202;
                }

                v436 = v267;
                v293 = sub_1C4A92FE0(v433, v428);

                if (!*(v293 + 16))
                {
                  v334 = sub_1C440FA0C();
                  v335(v334);

                  goto LABEL_304;
                }

                sub_1C45A323C();
                v294 = *(v293 + 48);
                v456 = *(v293 + 32);
                v295 = *(v293 + 64);
                v457 = v294;
                v458 = v295;
                v459 = *(v293 + 80);
                sub_1C461B90C(&v456, &v452);

                v296 = v459;
                v75 = *(&v456 + 1);
                v297 = v456;
                sub_1C4440A40();
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                sub_1C4434670();
                sub_1C4401E78();
                v447 = v297;
                sub_1C44000C4();
                sub_1C44E737C();
                v102 = "association:identifierNoMatch";
                switch(v296)
                {
                  case 1:
                    goto LABEL_254;
                  case 2:
                    v102 = "num_rejected_suggestions";
                    goto LABEL_254;
                  case 3:
                    v360 = "association:contactsInferred";
                    goto LABEL_253;
                  case 4:
                    v298 = "association:contactsConfirmed";
                    goto LABEL_251;
                  case 5:
                    v298 = "association:userTaggedHomeKit";
                    goto LABEL_251;
                  case 6:
                    v360 = "association:userTaggedPhotos";
LABEL_253:
                    v102 = v360 - 32;
                    goto LABEL_254;
                  default:
                    v298 = "association:identifierNoMatch";
LABEL_251:
                    v102 = v298 - 32;
LABEL_254:
                    v84 = "visualIdentifier";
                    swift_isUniquelyReferenced_nonNull_native();
                    sub_1C4401E78();
                    sub_1C44E737C();
                    v474 = v452.n128_u64[0];
                    v361 = v426 + *(v414 + 36);
                    v362 = *v361 == v430 && *(v361 + 8) == v436;
                    if (!v362 && (sub_1C4F02938() & 1) == 0)
                    {
                      v373 = sub_1C440FA0C();
                      v374(v373);

                      sub_1C4851A34(&v456);
                      sub_1C441809C();
                      goto LABEL_301;
                    }

                    v363 = *(_s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0() + 16);

                    sub_1C441809C();
                    if (v363)
                    {
                    }

                    else
                    {

                      v364 = *(v445 + 16);

                      if (v364)
                      {
                        goto LABEL_295;
                      }

                      type metadata accessor for PhaseStores(0);
                      sub_1C44336AC();
                      v365 = VisionKeyValueStore.fetchNameEntities(for:)();
                      v366 = sub_1C482FE08(v365);
                      sub_1C4A9594C(v366);
                      sub_1C4460338();

                      if (MEMORY[0x10])
                      {
                        sub_1C441D338();
                        while (1)
                        {
                          v368 = sub_1C443F30C();
                          v455 = v370;
                          v453 = v369;
                          v454 = v368;
                          v452 = v371;
                          v372 = HIBYTE(v369.n128_u64[1]) & 0xF;
                          if ((v369.n128_u64[1] & 0x2000000000000000) == 0)
                          {
                            v372 = v369.n128_u64[0] & 0xFFFFFFFFFFFFLL;
                          }

                          if (v372)
                          {
                            sub_1C44BBEA4();

                            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                            sub_1C4434670();
                            sub_1C444B230();
                            sub_1C4408EFC();
                            sub_1C44E737C();
                            sub_1C4851A34(&v452);
                            sub_1C444199C();
                            goto LABEL_294;
                          }

                          if (!v367)
                          {
                            break;
                          }

                          sub_1C440CD28();
                        }

LABEL_294:
                        v85 = v449;
                        v84 = v450;
                        v102 = v448;
                        goto LABEL_295;
                      }
                    }

LABEL_295:
                    type metadata accessor for PhaseStores(0);
                    sub_1C44336AC();
                    v390 = VisionKeyValueStore.fetchRelationshipEntities(for:)();
                    sub_1C4851A34(&v456);
                    v391 = sub_1C482FE08(v390);
                    sub_1C4A9594C(v391);
                    sub_1C4460338();

                    if (*(v390 + 16))
                    {
                      sub_1C441D338();
                      sub_1C442E4AC();
                      while (1)
                      {
                        v392 = sub_1C440C674();
                        v453 = v393;
                        v454 = v394;
                        v455 = v395;
                        v452 = v392;
                        sub_1C442A498();
                        if (v397)
                        {
                          break;
                        }

                        if (!v396)
                        {
                          v400 = sub_1C440FA0C();
                          v401(v400);
LABEL_304:

LABEL_203:
                          v160 = 1.0;
                          goto LABEL_204;
                        }

                        sub_1C440CD28();
                      }

                      sub_1C44BBEA4();

                      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                      sub_1C4434670();
                      sub_1C444B230();
                      sub_1C44E737C();
                      v474 = v451;
                      sub_1C4F01A78();
                      sub_1C4851A34(&v452);
                      swift_isUniquelyReferenced_nonNull_native();
                      sub_1C444B230();
                      sub_1C4404BB0();
                      sub_1C44E737C();
                      sub_1C444199C();
LABEL_202:
                      v299 = sub_1C440FA0C();
                      v300(v299);
                      goto LABEL_203;
                    }

                    v398 = sub_1C440FA0C();
                    v399(v398);

LABEL_301:
                    sub_1C442E4AC();
                    goto LABEL_203;
                }
              }

              v436 = v267;
              v271 = v428;
              sub_1C45A323C();
              v273 = *(v271 + 32);
              v272 = *(v271 + 48);
              v459 = *(v271 + 80);
              v456 = v273;
              v274 = *(v271 + 64);
              v457 = v272;
              v458 = v274;
              v275 = v459;
              sub_1C461B90C(&v456, &v452);
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C4434670();
              sub_1C4401E78();
              sub_1C43FD2BC();
              sub_1C44E737C();
              if (v275 <= 1)
              {
                v84 = "association:identifierNoMatch";
                v75 = 0xD00000000000001BLL;
              }

              else
              {
                v84 = "num_rejected_suggestions";
                v75 = v405;
                switch(v275)
                {
                  case 3u:
                    v276 = "association:contactsInferred";
                    goto LABEL_178;
                  case 4u:
                    v282 = "association:contactsConfirmed";
                    goto LABEL_181;
                  case 5u:
                    v282 = "association:userTaggedHomeKit";
LABEL_181:
                    v84 = v282 - 32;
                    sub_1C442E4AC();
                    break;
                  case 6u:
                    v276 = "association:userTaggedPhotos";
LABEL_178:
                    v84 = v276 - 32;
                    v75 = 0xD00000000000001CLL;
                    break;
                  default:
                    break;
                }
              }

              v102 = "visualIdentifier";
              swift_isUniquelyReferenced_nonNull_native();
              sub_1C4401E78();
              sub_1C44E737C();
              v474 = v452.n128_u64[0];
              v283 = *(_s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0() + 16);

              if (v283)
              {
                sub_1C441809C();
              }

              else
              {
                v284 = *(_s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0() + 16);

                sub_1C441809C();
                sub_1C442E4AC();
                if (v284)
                {
                  goto LABEL_186;
                }

                type metadata accessor for PhaseStores(0);
                sub_1C44336AC();
                sub_1C43FD2BC();
                v336 = VisionKeyValueStore.fetchNameEntities(for:)();
                v75 = sub_1C482FE08(v336);
                sub_1C4A8F1A4(v75);
                sub_1C4460338();

                if (MEMORY[0x10])
                {
                  sub_1C441D338();
                  while (1)
                  {
                    v338 = sub_1C443F30C();
                    v455 = v340;
                    v453 = v339;
                    v454 = v338;
                    v452 = v341;
                    v75 = v339.n128_u64[1];
                    v342 = HIBYTE(v339.n128_u64[1]) & 0xF;
                    if ((v339.n128_u64[1] & 0x2000000000000000) == 0)
                    {
                      v342 = v339.n128_u64[0] & 0xFFFFFFFFFFFFLL;
                    }

                    if (v342)
                    {
                      sub_1C44BBEA4();

                      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                      sub_1C4434670();
                      sub_1C444B230();
                      sub_1C4408EFC();
                      sub_1C44E737C();
                      sub_1C4851A34(&v452);
                      sub_1C444199C();
                      goto LABEL_273;
                    }

                    if (!v337)
                    {
                      break;
                    }

                    sub_1C440CD28();
                  }

LABEL_273:
                  v84 = v450;
                }

                else
                {
                }
              }

              sub_1C442E4AC();
LABEL_186:
              type metadata accessor for PhaseStores(0);
              sub_1C44336AC();
              sub_1C43FD2BC();
              v285 = VisionKeyValueStore.fetchRelationshipEntities(for:)();
              sub_1C4851A34(&v456);
              v286 = sub_1C482FE08(v285);
              sub_1C4A8F1A4(v286);
              sub_1C4460338();

              if (*(v285 + 16))
              {
                sub_1C441D338();
                while (1)
                {
                  v288 = sub_1C440C674();
                  v453 = v290;
                  v454 = v289;
                  v455 = v291;
                  v452 = v288;
                  v292 = HIBYTE(v289.n128_u64[1]) & 0xF;
                  if ((v289.n128_u64[1] & 0x2000000000000000) == 0)
                  {
                    v292 = v289.n128_u64[0] & 0xFFFFFFFFFFFFLL;
                  }

                  if (v292)
                  {
                    break;
                  }

                  if (!v287)
                  {
                    goto LABEL_193;
                  }

                  sub_1C440CD28();
                }

                sub_1C44BBEA4();

                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                sub_1C4434670();
                sub_1C444B230();
                sub_1C44E737C();
                v474 = v451;
                v75 = "suggestedRelationship";
                sub_1C4F01A78();
                sub_1C4851A34(&v452);
                swift_isUniquelyReferenced_nonNull_native();
                sub_1C444B230();
                sub_1C442E4AC();
                sub_1C43FD2BC();
                sub_1C44E737C();
                sub_1C444199C();
              }

              else
              {
LABEL_193:
              }

              v269 = v447;
              v270 = v431;
              v267 = v436;
              goto LABEL_196;
            }

            v241 = 5;
            v243 = *(&v388 + 1);
            v242 = v388;
LABEL_157:
            if (v243 == 1)
            {
              goto LABEL_159;
            }

            goto LABEL_158;
          }

          sub_1C4A95670(v412, v413, v410, v411);
          v376 = sub_1C440A9B8();
          sub_1C4A95670(v376, v377, v407, v415);

          swift_bridgeObjectRelease_n();

          v378 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
          sub_1C47023EC(v378, v379, 1);
          v277 = v440;
          v190 = v425;
LABEL_172:
          v278 = v432;
          v279 = sub_1C4EFEFF8();
          (*(v444 + 8))(v278, v446);
          if ((v279 & 1) == 0)
          {
            sub_1C4420C3C(v190, &unk_1EC0BA0E0, &qword_1C4F105A0);
            sub_1C44DEEB4(&v475);

            swift_bridgeObjectRelease_n();

            sub_1C44035D8();
            sub_1C447EA28(v426, v280);
            v281 = type metadata accessor for EntityMatch(0);
            return sub_1C440BAA8(v277, 1, 1, v281);
          }

          v86 = v102;
          goto LABEL_16;
        }
      }

      else
      {

        v85 = v449;
      }

      v255 = v232;
      v256 = v412;
      v258 = v410;
      v257 = v411;
      sub_1C4A92E24(v447, v255, v407, v415, v412, v413, v410, v411);
      LODWORD(v416) = v259;
      v417 = v260;
      v429 = v262;
      v430 = v261;
      sub_1C4A95670(v256, v413, v258, v257);
      if (v416)
      {
        v243 = v429;
        v242 = v430;
        goto LABEL_156;
      }

      sub_1C4A95670(v447, v431, v407, v415);

      swift_bridgeObjectRelease_n();

      sub_1C47023EC(v417, v430, v429);
      v277 = v440;
      goto LABEL_172;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4420C3C(v75, v429, v430);
  }

  else
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v83 = v446;
    v85 = v449;
    v84 = v450;
    v86 = v448;
    v87 = v425;
  }

  sub_1C442E4AC();
  sub_1C440BAA8(v87, 1, 1, v83);
  v474 = v80;
  if (v445)
  {
    goto LABEL_14;
  }

LABEL_16:
  sub_1C4EFF008();
  sub_1C4418B70();
  sub_1C4420C3C(v92, v93, v94);
  sub_1C43FBD94();
  sub_1C440BAA8(v95, v96, v97, v446);
  sub_1C44CDA7C();
  v98 = (v427 + *(type metadata accessor for PeopleMatcher(0) + 20));
  if (qword_1EDDFD0A8 != -1)
  {
    sub_1C440FA20(&qword_1EDDFD0A8);
  }

  v99 = type metadata accessor for Source(0);
  v100 = sub_1C442B738(v99, qword_1EDDFD0B0);
  v101 = *v98 == *v100 && v98[1] == v100[1];
  v102 = v86;
  if (!v101 && (sub_1C4F02938() & 1) == 0)
  {
    goto LABEL_71;
  }

  v103 = v428;
  v104 = *(v428 + 16);
  if (!v104)
  {
    goto LABEL_58;
  }

  v434 = 0;
  v105 = 0;
  v106 = 0;
  v107 = v474;
  v489 = 0x80000001C4FAEDA0;
  v435 = (v104 - 1);
  v108 = 32;
  v432 = "association:identifierNoMatch";
  v433 = (v75 - 2);
  v431 = "association:userTaggedPhotos";
  v430 = "num_rejected_suggestions";
  v429 = "association:messages";
  v416 = "association:contactsInferred";
  v415 = "association:contactsConfirmed";
  v417 = "suggestedRelationshipConfidence";
  while (1)
  {
    if (v106 >= v104)
    {
      __break(1u);
LABEL_238:
      __break(1u);
LABEL_239:
      sub_1C446BFC8();
      v254 = v416;
LABEL_244:
      v432 = v254;
LABEL_245:
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C442F6FC();
      sub_1C44E737C();
      v474 = v462[0];
      goto LABEL_53;
    }

    v109 = *(v103 + v108);
    v110 = *(v103 + v108 + 16);
    v111 = *(v103 + v108 + 32);
    v472 = *(v103 + v108 + 48);
    v470 = v110;
    v471 = v111;
    v469 = v109;
    v112 = v472;
    if (v472 <= 6u && ((1 << v472) & 0x45) != 0)
    {
      v445 = v108;
      v447 = v106;
      v115 = *(&v469 + 1);
      v114 = v469;
      sub_1C461B90C(&v469, &v464);

      v436 = v115;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4851A34(&v469);
      v84 = v432;
      v102 = v433;
      v434 = v114;
      switch(v112)
      {
        case 1:
          break;
        case 2:
          v102 = (v75 - 9);
          v84 = v430;
          break;
        case 3:
          v102 = (v75 - 1);
          v84 = v429;
          break;
        case 4:
          sub_1C4440A40();
          v84 = v416;
          break;
        case 5:
          sub_1C4440A40();
          v84 = v415;
          break;
        case 6:
          v102 = (v75 - 1);
          v84 = v417;
          break;
        default:
          sub_1C4440A40();
          v84 = v431;
          break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v464.n128_u64[0] = v107;
      v117 = v75 - 12;
      sub_1C445FAA8(v75 - 12, v489);
      sub_1C441EAB4();
      if (v120)
      {
        goto LABEL_238;
      }

      v121 = v118;
      v75 = v119;
      sub_1C456902C(&qword_1EC0BA720, &qword_1C4F23540);
      if (sub_1C4F02458())
      {
        v122 = sub_1C445FAA8(v117, v489);
        v85 = v449;
        if ((v75 & 1) != (v123 & 1))
        {
          sub_1C4F029F8();
          __break(1u);
          goto LABEL_306;
        }

        v121 = v122;
      }

      else
      {
        v85 = v449;
      }

      v124 = v84 | 0x8000000000000000;
      v107 = v464.n128_u64[0];
      if (v75)
      {
        v125 = (*(v464.n128_u64[0] + 56) + 16 * v121);
        *v125 = v102;
        v125[1] = v124;

        v84 = v450;
      }

      else
      {
        *(v464.n128_u64[0] + 8 * (v121 >> 6) + 64) |= 1 << v121;
        v126 = (v107[6] + 16 * v121);
        v127 = v489;
        *v126 = v117;
        v126[1] = v127;
        v128 = (v107[7] + 16 * v121);
        *v128 = v102;
        v128[1] = v124;
        v129 = v107[2];
        v120 = __OFADD__(v129, 1);
        v130 = v129 + 1;
        v84 = v450;
        if (v120)
        {
          __break(1u);
          goto LABEL_283;
        }

        v107[2] = v130;
      }

      v102 = v448;
      sub_1C442E4AC();
      v103 = v428;
      v108 = v445;
      v105 = v436;
    }

    if (v435 == v106)
    {
      break;
    }

    v104 = *(v103 + 16);
    v108 += 56;
    ++v106;
  }

  v474 = v107;
  if (!v105)
  {
LABEL_58:
    v489 = a19;
    v447 = a18;
    v445 = a17;
    v436 = a16;
    v435 = a15;
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v149 = sub_1C4F00978();
    sub_1C442B738(v149, qword_1EDE2DE10);
    v150 = swift_allocObject();
    v151 = v428;
    *(v150 + 16) = v428;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v152 = sub_1C4F00968();
    v153 = sub_1C4F01CE8();
    v154 = swift_allocObject();
    *(v154 + 16) = 0;
    v155 = swift_allocObject();
    *(v155 + 16) = 8;
    v156 = swift_allocObject();
    *(v156 + 16) = a14;
    *(v156 + 24) = v150;
    v75 = swift_allocObject();
    *(v75 + 16) = v436;
    *(v75 + 24) = v156;
    sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
    v157 = swift_allocObject();
    sub_1C466323C(v157, 3);
    *v158 = v445;
    v158[1] = v154;
    v158[2] = v447;
    v158[3] = v155;
    v158[4] = v489;
    v158[5] = v75;

    if (os_log_type_enabled(v152, v153))
    {
      v75 = swift_slowAlloc();
      *v75 = 134217984;
      v159 = *(v151 + 16);

      *(v75 + 4) = v159;

      _os_log_impl(&dword_1C43F8000, v152, v153, "Vision KVS should have vid-vid association as an entry. Source vision signals count: %ld", v75, 0xCu);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
    }

    v160 = 0.8;
    v85 = v449;
    v84 = v450;
    v102 = v448;
    sub_1C442E4AC();
    goto LABEL_204;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v136 = sub_1C4404BB0();
  sub_1C4C808A0(v136, v137, v138, v139);
  v140 = *(_s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0() + 16);

  if (v140)
  {
    goto LABEL_53;
  }

  type metadata accessor for PhaseStores(0);
  sub_1C44336AC();
  sub_1C4404BB0();
  v172 = VisionKeyValueStore.fetchNameEntities(for:)();
  v173 = sub_1C482FE08(v172);
  sub_1C4A9594C(v173);
  sub_1C4460338();

  if (MEMORY[0x10])
  {
    sub_1C441D338();
    while (1)
    {
      v175 = sub_1C443F30C();
      v467 = v177;
      v465 = v176;
      v466 = v175;
      v464 = v178;
      v75 = v176.n128_u64[1];
      v179 = HIBYTE(v176.n128_u64[1]) & 0xF;
      if ((v176.n128_u64[1] & 0x2000000000000000) == 0)
      {
        v179 = v176.n128_u64[0] & 0xFFFFFFFFFFFFLL;
      }

      if (v179)
      {
        break;
      }

      if (!v174)
      {

        v102 = v448;
        sub_1C442E4AC();
        goto LABEL_53;
      }

      sub_1C440CD28();
    }

    v253 = v467;
    sub_1C461B90C(&v464, v462);

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4434670();
    sub_1C442F6FC();
    sub_1C4408EFC();
    sub_1C4415864();
    sub_1C44E737C();
    sub_1C4851A34(&v464);
    v102 = v448;
    v75 = 0xD00000000000001DLL;
    switch(v253)
    {
      case 1:
        goto LABEL_245;
      case 2:
        v433 = 0xD000000000000014;
        v254 = v430;
        goto LABEL_244;
      case 3:
        v433 = 0xD00000000000001CLL;
        v254 = v429;
        goto LABEL_244;
      case 4:
        goto LABEL_239;
      case 5:
        sub_1C446BFC8();
        v254 = v415;
        goto LABEL_244;
      case 6:
        v433 = 0xD00000000000001CLL;
        v254 = v417;
        goto LABEL_244;
      default:
        sub_1C446BFC8();
        v254 = v431;
        goto LABEL_244;
    }

    goto LABEL_245;
  }

LABEL_53:
  type metadata accessor for PhaseStores(0);
  sub_1C44336AC();
  v141 = VisionKeyValueStore.fetchRelationshipEntities(for:)();

  v142 = sub_1C482FE08(v141);
  sub_1C4A9594C(v142);
  sub_1C4460338();

  if (!*(v141 + 16))
  {
LABEL_71:

    goto LABEL_72;
  }

  sub_1C441D338();
  while (1)
  {
    v143 = sub_1C440C674();
    v465 = v144;
    v466 = v145;
    v467 = v146;
    v464 = v143;
    sub_1C442A498();
    if (v148)
    {
      break;
    }

    if (!v147)
    {
      goto LABEL_71;
    }

    sub_1C440CD28();
  }

  sub_1C461B90C(&v464, v462);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4434670();
  sub_1C442F6FC();
  sub_1C44E737C();
  v474 = v462[0];
  sub_1C4F01A78();
  sub_1C4851A34(&v464);
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C442F6FC();
  sub_1C4404BB0();
  sub_1C44E737C();
  v474 = v462[0];
LABEL_72:
  v160 = 0.8;
LABEL_204:
  v301 = v474;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v302 = sub_1C44E24F8(v75 - 13, 0x80000001C4FAED80, v301);

  if (v302 & 1) != 0 && (_s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0(), v303 = sub_1C44E24F8(v75 - 12, 0x80000001C4FAEDA0, v301), , (v303 & 1) == 0) || (_s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0(), v304 = sub_1C44E24F8(v75 - 13, 0x80000001C4FAED80, v301), , (v304 & 1) == 0) && (_s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0(), v305 = sub_1C44E24F8(v75 - 12, 0x80000001C4FAEDA0, v301), , (v305))
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v306 = sub_1C4F00978();
    sub_1C442B738(v306, qword_1EDE2DE10);
    v307 = sub_1C4F00968();
    v308 = sub_1C4F01CD8();
    if (os_log_type_enabled(v307, v308))
    {
      v309 = swift_slowAlloc();
      *v309 = 0;
      _os_log_impl(&dword_1C43F8000, v307, v308, "Metadata invalid. Visual identifier and association reason were not simultaneously set on metadata.", v309, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }
  }

  v489 = v301;
  isUniquelyReferenced_nonNull_native = v424;
  sub_1C44DDE2C();
  v310 = v446;
  if (sub_1C44157D4(isUniquelyReferenced_nonNull_native, 1, v446) == 1)
  {
LABEL_306:
    sub_1C4420C3C(isUniquelyReferenced_nonNull_native, &unk_1EC0BA0E0, &qword_1C4F105A0);
    v403 = 0;
    v402 = 416;
    sub_1C448E088();
    sub_1C4F024A8();
    __break(1u);
    JUMPOUT(0x1C44E1CB8);
  }

  sub_1C44DEEB4(&v475);
  v311 = v444;
  v312 = sub_1C4401D48();
  v448 = v313;
  (v313)(v312);
  v314 = v102;
  v315 = v310;
  v447 = type metadata accessor for PeopleMatcher(0);
  v316 = *(v85 + 16);
  v317 = v427;
  v316(v443, v427 + *(v447 + 24), v84);
  v318 = *(v311 + 16);
  v319 = v426;
  v318(v441, v426, v310);
  v318(v442, v314, v310);
  v320 = v437;
  sub_1C4EF9C88();
  sub_1C4EF9AD8();
  v322 = v321;
  (*(v438 + 8))(v320, v439);
  (*(v311 + 8))(v314, v315);
  sub_1C4420C3C(v425, &unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C44035D8();
  sub_1C447EA28(v319, v323);
  v324 = *(v317 + *(v447 + 32));
  v325 = v489;
  if (*(v489 + 2))
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v326 = v325;
  }

  else
  {
    v326 = 0;
  }

  v327 = v440;
  (*(v449 + 32))(v440, v443, v450);
  v328 = type metadata accessor for EntityMatch(0);
  v329 = v446;
  v330 = v448;
  (v448)(v327 + v328[5], v441, v446);
  (v330)(v327 + v328[6], v442, v329);
  *(v327 + v328[7]) = v160;
  *(v327 + v328[8]) = v322;
  *(v327 + v328[9]) = v324;
  *(v327 + v328[10]) = v326;
  sub_1C43FBD94();
  sub_1C440BAA8(v331, v332, v333, v328);
}

uint64_t sub_1C44E1D20(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for PhaseStores(0);
  v4 = VisionKeyValueStore.fetchVisualIdentifiers(for:)();
  sub_1C44E20E4(v4, a3);
}

uint64_t sub_1C44E1D98(uint64_t a1)
{
  v44 = MEMORY[0x1E69E7CC8];
  v33[3] = &v44;
  sub_1C44E1FA4(sub_1C44E20C8, v33, a1);
  v1 = v44;
  v2 = v44 + 64;
  v3 = 1 << *(v44 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v44 + 64);
  v6 = (v3 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v9;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      do
      {
LABEL_8:
        v11 = __clz(__rbit64(v5)) | (v8 << 6);
        v12 = (*(v1 + 48) + 16 * v11);
        v14 = *v12;
        v13 = v12[1];
        v15 = *(v1 + 56) + 56 * v11;
        v17 = *(v15 + 16);
        v16 = *(v15 + 32);
        v18 = *v15;
        v38 = *(v15 + 48);
        v36 = v17;
        v37 = v16;
        v35 = v18;
        v39[0] = v14;
        v39[1] = v13;
        v40 = v18;
        v41 = v17;
        v42 = v16;
        v43 = v38;
        sub_1C461B90C(&v35, v34);
        sub_1C44DDE2C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1C43FCEC0();
          sub_1C458EC60(v25, v26, v27, v9);
          v9 = v28;
        }

        v20 = *(v9 + 16);
        v19 = *(v9 + 24);
        if (v20 >= v19 >> 1)
        {
          v29 = sub_1C4413F5C(v19);
          sub_1C458EC60(v29, v30, v31, v9);
          v9 = v32;
        }

        v5 &= v5 - 1;
        result = sub_1C4420C3C(v39, &qword_1EC0C2618, qword_1C4F4B440);
        *(v9 + 16) = v20 + 1;
        v21 = v9 + 56 * v20;
        v23 = v36;
        v22 = v37;
        v24 = v35;
        *(v21 + 80) = v38;
        *(v21 + 48) = v23;
        *(v21 + 64) = v22;
        *(v21 + 32) = v24;
      }

      while (v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C44E1FA4(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  sub_1C43FD030();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = 0;
  if (v9)
  {
    while (1)
    {
      v14 = v13;
LABEL_6:
      v15 = (*(a3 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v9)))));
      v16 = v15[1];
      v17[0] = *v15;
      v17[1] = v16;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      a1(v17);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;

      v13 = v14;
      if (!v9)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
      }

      v9 = *(v6 + 8 * v14);
      ++v13;
      if (v9)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C44E20E4(uint64_t a1, void *a2)
{
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = 0;
  v43 = v7;
  v44 = v3;
  v42 = a2;
  if (v6)
  {
LABEL_8:
    while (1)
    {
      v10 = *(a1 + 48) + 56 * (__clz(__rbit64(v6)) | (v8 << 6));
      v12 = *(v10 + 16);
      v11 = *(v10 + 32);
      v13 = *(v10 + 48);
      v58 = *v10;
      v61 = v13;
      v59 = v12;
      v60 = v11;
      v14 = v58;
      v15 = *a2;
      if (!*(*a2 + 16))
      {
        break;
      }

      sub_1C461B90C(&v58, &v54);
      sub_1C461B90C(&v58, &v54);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v16 = sub_1C445FAA8(v14, *(&v14 + 1));
      if ((v17 & 1) == 0)
      {
        goto LABEL_14;
      }

      v18 = *(v15 + 56) + 56 * v16;
      v20 = *(v18 + 16);
      v19 = *(v18 + 32);
      v21 = *v18;
      v22 = *(v18 + 48);
      v57 = v22;
      v55 = v20;
      v56 = v19;
      v54 = v21;
      v23 = v22;
      v24 = HIDWORD(v22);
      if (v61 < v22)
      {
        sub_1C461B90C(&v54, v53);
        sub_1C4851A34(&v58);
        v50 = *(&v56 + 1);
        v51 = v56;
        v47 = *(&v55 + 1);
        v49 = v55;
        v52 = v23;
LABEL_12:
        v46 = *(&v54 + 1);
        v48 = v54;
        goto LABEL_16;
      }

      v52 = v61;
      if (v22 == v61 && *(&v61 + 1) < *(&v22 + 1))
      {
        sub_1C461B90C(&v54, v53);
        sub_1C4851A34(&v58);
        v50 = *(&v56 + 1);
        v51 = v56;
        v47 = *(&v55 + 1);
        v49 = v55;
        goto LABEL_12;
      }

      v50 = *(&v60 + 1);
      v51 = v60;
      v46 = *(&v14 + 1);
      v48 = v14;
      v24 = HIDWORD(v61);
LABEL_15:
      v47 = *(&v59 + 1);
      v49 = v59;
LABEL_16:
      swift_isUniquelyReferenced_nonNull_native();
      v53[0] = *a2;
      v25 = v53[0];
      v26 = sub_1C445FAA8(v14, *(&v14 + 1));
      if (__OFADD__(*(v25 + 16), (v27 & 1) == 0))
      {
        goto LABEL_32;
      }

      v28 = v26;
      v29 = v27;
      sub_1C456902C(&qword_1EC0C2610, &unk_1C4F4B430);
      if (sub_1C4F02458())
      {
        v30 = sub_1C445FAA8(v14, *(&v14 + 1));
        if ((v29 & 1) != (v31 & 1))
        {
          goto LABEL_34;
        }

        v28 = v30;
      }

      if (v29)
      {
        v32 = v53[0];
        v33 = *(v53[0] + 56) + 56 * v28;
        v35 = *(v33 + 16);
        v34 = *(v33 + 32);
        v36 = *v33;
        v57 = *(v33 + 48);
        v55 = v35;
        v56 = v34;
        v54 = v36;
        *v33 = v48;
        *(v33 + 8) = v46;
        *(v33 + 16) = v49;
        *(v33 + 24) = v47;
        *(v33 + 32) = v51;
        *(v33 + 40) = v50;
        *(v33 + 48) = v52;
        *(v33 + 52) = v24;
        sub_1C4851A34(&v54);
      }

      else
      {
        v32 = v53[0];
        *(v53[0] + 8 * (v14 >> 6) + 64) |= 1 << v14;
        *(v32[6] + 16 * v14) = v14;
        v37 = v32[7] + 56 * v14;
        *v37 = v48;
        *(v37 + 8) = v46;
        *(v37 + 16) = v49;
        *(v37 + 24) = v47;
        *(v37 + 32) = v51;
        *(v37 + 40) = v50;
        *(v37 + 48) = v52;
        *(v37 + 52) = v24;
        v38 = v32[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_33;
        }

        v32[2] = v40;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      v6 &= v6 - 1;
      a2 = v42;
      *v42 = v32;

      sub_1C4851A34(&v58);
      v7 = v43;
      v3 = v44;
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    sub_1C461B90C(&v58, &v54);
    sub_1C461B90C(&v58, &v54);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_14:
    v24 = HIDWORD(v61);
    v52 = v61;
    v50 = *(&v60 + 1);
    v51 = v60;
    v46 = *(&v14 + 1);
    v48 = v14;
    goto LABEL_15;
  }

LABEL_4:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}