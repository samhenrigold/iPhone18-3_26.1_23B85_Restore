uint64_t sub_1974F4538@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, unint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = swift_conformsToProtocol2();
  if (v22)
  {
    v23 = AssociatedTypeWitness == 0;
  }

  else
  {
    v23 = 1;
  }

  if (!v23)
  {
    v27 = v22;
    sub_1973FA578(a5, v46, &qword_1EAF2BB80, &qword_197531238);
    if (v47)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
      type metadata accessor for Schema.Relationship();
      if (swift_dynamicCast())
      {
        v28 = v45;
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      sub_1973FA518(v46, &qword_1EAF2BB80, &qword_197531238);
      v28 = 0;
    }

    v39 = type metadata accessor for Schema.Relationship();
    swift_allocObject();

    v40 = sub_1973FB21C(a1, a2, a3, a4, v28);
    a8[3] = v39;
    a8[4] = sub_1973FA628(&qword_1ED7C9190, 255, type metadata accessor for Schema.Relationship, &protocol conformance descriptor for Schema.Relationship);
    *a8 = v40;
    return sub_1973F548C(AssociatedTypeWitness, a6, a7, a9, a10, AssociatedTypeWitness, v27);
  }

  sub_1973FA578(a5, v46, &qword_1EAF2BB80, &qword_197531238);
  if (!v47)
  {
    sub_1973FA518(v46, &qword_1EAF2BB80, &qword_197531238);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
  type metadata accessor for Schema.Attribute();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    sub_1973FA578(a11, v46, &qword_1EAF2AF20, &unk_19752F320);
    v24 = 0;
    v41 = 0;
    v42 = 0;
    v26 = 0;
    v25 = MEMORY[0x1E69E7CC0];
    goto LABEL_15;
  }

  swift_beginAccess();
  v24 = v45[5];
  v41 = v45[4];
  swift_beginAccess();
  v25 = v45[6];

  sub_1973FA578(a11, v46, &qword_1EAF2AF20, &unk_19752F320);
  swift_beginAccess();
  v26 = v45[14];
  v42 = v45[13];

LABEL_15:
  v29 = type metadata accessor for Schema.Attribute();
  v30 = swift_allocObject();
  v31 = v30;
  *(v30 + 80) = 0u;
  *(v30 + 64) = 0u;
  v32 = v30 + 64;
  *(v30 + 112) = 0;
  *(v30 + 120) = 0;
  *(v30 + 104) = 0;
  v33 = (v30 + 104);
  *(v30 + 16) = a1;
  *(v30 + 24) = a2;
  v34 = v41;
  if (!v24)
  {
    v34 = 0;
  }

  v35 = 0xE000000000000000;
  if (v24)
  {
    v35 = v24;
  }

  *(v30 + 32) = v34;
  *(v30 + 40) = v35;
  *(v30 + 48) = v25;
  *(v30 + 56) = a3;
  swift_beginAccess();

  sub_1973F7958(v46, v32);
  swift_endAccess();
  swift_beginAccess();
  *v33 = v42;
  *(v31 + 112) = v26;

  if (swift_conformsToProtocol2())
  {
    v36 = a3 == 0;
  }

  else
  {
    v36 = 1;
  }

  v37 = !v36;
  *(v31 + 96) = v37;
  sub_1973F710C();
  sub_1973FA518(v46, &qword_1EAF2AF20, &unk_19752F320);
  a8[3] = v29;
  a8[4] = sub_1973FA628(&qword_1ED7CA308, 255, type metadata accessor for Schema.Attribute, &protocol conformance descriptor for Schema.Attribute);

  *a8 = v31;
  return result;
}

uint64_t sub_1974F49B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1973FA578(a1 + 56, &v35, &qword_1EAF2BB80, &qword_197531238);
  if (!v37)
  {
    return sub_1973FA518(&v35, &qword_1EAF2BB80, &qword_197531238);
  }

  sub_1973FA670();
  sub_1973FA430(v38, &v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
  type metadata accessor for Schema.Index(0, a5, a6, v9);
  if (swift_dynamicCast())
  {
    v10 = sub_197418B20();
    if (!v6)
    {
      if ((v10 & 1) == 0)
      {
        goto LABEL_29;
      }

      v11 = sub_1974194C0();
      sub_19741997C(v11);

      goto LABEL_12;
    }

    swift_unexpectedError();
    __break(1u);
    goto LABEL_22;
  }

  v13 = v39;
  v14 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  v15 = (*(v14 + 32))(v13, v14);
  v17 = v16;
  if (v15 == sub_197418AB0() && v17 == v18)
  {
LABEL_22:

    goto LABEL_23;
  }

  v20 = sub_19752282C();

  if (v20)
  {
LABEL_23:
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000034, 0x80000001975299A0);
    v33 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v33);

    MEMORY[0x19A8DFF80](0x7669672074756220, 0xED0000202D206E65);
    sub_19752235C();
    goto LABEL_29;
  }

LABEL_12:
  sub_1973FA430(v38, &v35);
  type metadata accessor for Schema.Unique(0, a5, a6, v21);
  if (swift_dynamicCast())
  {
    v22 = sub_1974FA6E8();
    if (v6)
    {
      swift_unexpectedError();
      __break(1u);
    }

    else if (v22)
    {
      sub_1974FA9FC();
      sub_19741997C(v23);

      return __swift_destroy_boxed_opaque_existential_1Tm_5(v38);
    }
  }

  else
  {
    v24 = v39;
    v25 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    if (((*(v25 + 136))(v24, v25) & 1) == 0)
    {
      return __swift_destroy_boxed_opaque_existential_1Tm_5(v38);
    }

    v26 = v39;
    v27 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    v28 = (*(v27 + 32))(v26, v27);
    v30 = v29;
    if (v28 == sub_1974FAD10() && v30 == v31)
    {
    }

    else
    {
      v32 = sub_19752282C();

      if ((v32 & 1) == 0)
      {
        return __swift_destroy_boxed_opaque_existential_1Tm_5(v38);
      }
    }

    v35 = 0;
    v36 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000040, 0x8000000197529900);
    v34 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v34);

    MEMORY[0x19A8DFF80](0x7669672074756220, 0xED0000202D206E65);
    sub_19752235C();
  }

LABEL_29:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974F4F18(void *a1, uint64_t *a2)
{
  swift_beginAccess();
  v109 = a1;
  v3 = a1[11];
  if ((v3 & 0xC000000000000001) != 0)
  {

    sub_1975220AC();
    type metadata accessor for Schema.Relationship();
    sub_1973FA628(&qword_1ED7C91A8, 255, type metadata accessor for Schema.Relationship, &protocol conformance descriptor for Schema.Relationship);
    sub_197521C1C();
    v3 = v111;
    v4 = v112;
    v5 = v113;
    v6 = v114;
    v7 = v115;
  }

  else
  {
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 56);

    v6 = 0;
  }

  LODWORD(v131) = 0;
  while ((v3 & 0x8000000000000000) == 0)
  {
    v11 = v6;
    v12 = v7;
    if (!v7)
    {
      while (1)
      {
        v6 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v6 >= ((v5 + 64) >> 6))
        {
          goto LABEL_26;
        }

        v12 = *(v4 + 8 * v6);
        ++v11;
        if (v12)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_121;
    }

LABEL_13:
    v7 = (v12 - 1) & v12;
    v13 = *(*(v3 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v13)
    {
      goto LABEL_26;
    }

LABEL_17:
    swift_beginAccess();
    v15 = *(v13 + 112);
    if (v15)
    {

      v16 = sub_197521FFC();
      v131 = sub_197522B8C();
      v107 = v17;
      swift_beginAccess();
      v18 = *a2;
      if (!*(*a2 + 16))
      {
        goto LABEL_126;
      }

      v19 = sub_1973F4028(v131, v107);
      if ((v20 & 1) == 0)
      {
        goto LABEL_126;
      }

      v131 = *(*(v18 + 56) + 8 * v19);
      swift_endAccess();
      v21 = v16;
      v22 = swift_conformsToProtocol2();
      if (v22)
      {
        v23 = v16 == 0;
      }

      else
      {
        v23 = 1;
      }

      if (v23)
      {
        goto LABEL_129;
      }

      v24 = v22;

      sub_1974F5E3C(v21, v15, v131, v13, v21, v24);

      LODWORD(v131) = 1;
    }

    else
    {
    }
  }

  v14 = sub_19752212C();
  if (v14)
  {
    v121 = v14;
    type metadata accessor for Schema.Relationship();
    swift_dynamicCast();
    v13 = v126;
    if (v126)
    {
      goto LABEL_17;
    }
  }

LABEL_26:
  result = sub_197416DA8();
  if (v131)
  {
    return result;
  }

  v26 = v109[11];
  if ((v26 & 0xC000000000000001) != 0)
  {

    sub_1975220AC();
    type metadata accessor for Schema.Relationship();
    sub_1973FA628(&qword_1ED7C91A8, 255, type metadata accessor for Schema.Relationship, &protocol conformance descriptor for Schema.Relationship);
    sub_197521C1C();
    v26 = v116;
    v27 = v117;
    v28 = v118;
    v29 = v119;
    v30 = v120;
  }

  else
  {
    v31 = -1 << *(v26 + 32);
    v27 = v26 + 56;
    v32 = ~v31;
    v33 = -v31;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    else
    {
      v34 = -1;
    }

    v30 = v34 & *(v26 + 56);

    v28 = v32;
    v29 = 0;
  }

  v100 = v27;
  v35 = (v28 + 64) >> 6;
  v101 = v26;
  v106 = v35;
  while (2)
  {
    while (2)
    {
      while (2)
      {
        while (2)
        {
          if (v26 < 0)
          {
            if (!sub_19752212C())
            {
              return sub_197416DA8();
            }

            type metadata accessor for Schema.Relationship();
            swift_dynamicCast();
            v40 = v110;
            v38 = v29;
            v39 = v30;
            if (!v110)
            {
              return sub_197416DA8();
            }
          }

          else
          {
            v36 = v29;
            v37 = v30;
            v38 = v29;
            if (!v30)
            {
              while (1)
              {
                v38 = v36 + 1;
                if (__OFADD__(v36, 1))
                {
                  break;
                }

                if (v38 >= v35)
                {
                  return sub_197416DA8();
                }

                v37 = *(v27 + 8 * v38);
                ++v36;
                if (v37)
                {
                  goto LABEL_40;
                }
              }

LABEL_122:
              __break(1u);
LABEL_123:
              __break(1u);
LABEL_124:
              __break(1u);
              goto LABEL_125;
            }

LABEL_40:
            v39 = (v37 - 1) & v37;
            v40 = *(*(v26 + 48) + ((v38 << 9) | (8 * __clz(__rbit64(v37)))));

            if (!v40)
            {
              return sub_197416DA8();
            }
          }

          v108 = v39;
          swift_beginAccess();
          v41 = *(v40 + 64);
          if (swift_conformsToProtocol2())
          {
            v42 = v41 == 0;
          }

          else
          {
            v42 = 1;
          }

          if (v42 || *(v40 + 169) == 1)
          {

            v29 = v38;
            v30 = v39;
            continue;
          }

          break;
        }

        swift_beginAccess();
        v44 = *(v40 + 72);
        v43 = *(v40 + 80);
        swift_beginAccess();
        v45 = *a2;
        if (!*(*a2 + 16) || (, v46 = sub_1973F4028(v44, v43), v48 = v47, , (v48 & 1) == 0))
        {
          swift_endAccess();
          sub_1975221EC();

          v96 = *(v40 + 72);
          v95 = *(v40 + 80);

          MEMORY[0x19A8DFF80](v96, v95);

          MEMORY[0x19A8DFF80](544106784, 0xE400000000000000);
          swift_beginAccess();
          type metadata accessor for Schema.Entity();

          v97 = sub_19752160C();
          v99 = v98;

          MEMORY[0x19A8DFF80](v97, v99);

          goto LABEL_129;
        }

        v49 = *(*(v45 + 56) + 8 * v46);
        swift_endAccess();
        swift_beginAccess();
        v50 = *(v49 + 88);
        if ((v50 & 0xC000000000000001) != 0)
        {

          sub_1975220AC();
          type metadata accessor for Schema.Relationship();
          sub_1973FA628(&qword_1ED7C91A8, 255, type metadata accessor for Schema.Relationship, &protocol conformance descriptor for Schema.Relationship);
          sub_197521C1C();
          v50 = v121;
          v51 = v122;
          v52 = v123;
          v53 = v124;
          v54 = v125;
        }

        else
        {
          v55 = -1 << *(v50 + 32);
          v51 = v50 + 56;
          v56 = ~v55;
          v57 = -v55;
          if (v57 < 64)
          {
            v58 = ~(-1 << v57);
          }

          else
          {
            v58 = -1;
          }

          v54 = v58 & *(v50 + 56);

          v52 = v56;
          v53 = 0;
        }

        v102 = 0;
        v103 = 0;
        v59 = (v52 + 64) >> 6;
        v131 = v40;
        v107 = v50;
        while (2)
        {
          v60 = v53;
          v61 = v54;
LABEL_60:
          if ((v50 & 0x8000000000000000) == 0)
          {
            v62 = v60;
            v63 = v61;
            v53 = v60;
            if (!v61)
            {
              while (1)
              {
                v53 = v62 + 1;
                if (__OFADD__(v62, 1))
                {
                  break;
                }

                if (v53 >= v59)
                {
                  goto LABEL_83;
                }

                v63 = *(v51 + 8 * v53);
                ++v62;
                if (v63)
                {
                  goto LABEL_65;
                }
              }

LABEL_121:
              __break(1u);
              goto LABEL_122;
            }

LABEL_65:
            v54 = (v63 - 1) & v63;
            v64 = *(*(v50 + 48) + ((v53 << 9) | (8 * __clz(__rbit64(v63)))));

            if (!v64)
            {
              goto LABEL_83;
            }

LABEL_69:
            swift_beginAccess();
            v66 = *(v64 + 72);
            v65 = *(v64 + 80);
            swift_beginAccess();
            v67 = v66 == v109[2] && v65 == v109[3];
            if (v67 || (sub_19752282C()) && (*(v64 + 169) & 1) == 0)
            {
              swift_beginAccess();
              v68 = *(v64 + 64);
              v69 = !swift_conformsToProtocol2() || v68 == 0;
              if (!v69 || (*(v64 + 168) & 1) == 0)
              {

                if (!__OFADD__(v103, 1))
                {
                  v102 = v64;
                  ++v103;
                  v50 = v107;
                  continue;
                }

LABEL_125:
                __break(1u);
LABEL_126:
                swift_endAccess();
                sub_1975221EC();
                MEMORY[0x19A8DFF80](0xD000000000000018, 0x80000001975297A0);
                MEMORY[0x19A8DFF80](v131, v107);
                MEMORY[0x19A8DFF80](0x202D20726F6620, 0xE700000000000000);
                sub_19752202C();
                sub_19752235C();
                goto LABEL_129;
              }
            }

            v60 = v53;
            v61 = v54;
            v50 = v107;
            goto LABEL_60;
          }

          break;
        }

        if (sub_19752212C())
        {
          type metadata accessor for Schema.Relationship();
          swift_dynamicCast();
          v64 = v110;
          v53 = v60;
          v54 = v61;
          if (v110)
          {
            goto LABEL_69;
          }
        }

LABEL_83:
        sub_197416DA8();
        if (v103 != 1)
        {

          v29 = v38;
          v30 = v108;
          v27 = v100;
          v26 = v101;
          v35 = v106;
          continue;
        }

        break;
      }

      v70 = v109[11];
      if ((v70 & 0xC000000000000001) != 0)
      {

        sub_1975220AC();
        type metadata accessor for Schema.Relationship();
        sub_1973FA628(&qword_1ED7C91A8, 255, type metadata accessor for Schema.Relationship, &protocol conformance descriptor for Schema.Relationship);
        sub_197521C1C();
        v71 = v126;
        v72 = v127;
        v73 = v128;
        i = v129;
        v75 = v130;
      }

      else
      {
        v76 = -1 << *(v70 + 32);
        v72 = v70 + 56;
        v73 = ~v76;
        v77 = -v76;
        if (v77 < 64)
        {
          v78 = ~(-1 << v77);
        }

        else
        {
          v78 = -1;
        }

        v75 = v78 & *(v70 + 56);

        i = 0;
      }

      v105 = 0;
      v107 = v71;
      while (2)
      {
        v79 = i;
        v80 = v75;
LABEL_93:
        v35 = v106;
        if (v71 < 0)
        {
          if (!sub_19752212C())
          {
            break;
          }

          type metadata accessor for Schema.Relationship();
          swift_dynamicCast();
          v83 = v110;
          i = v79;
          v75 = v80;
          if (!v110)
          {
            break;
          }

          goto LABEL_102;
        }

        v81 = v79;
        v82 = v80;
        for (i = v79; !v82; ++v81)
        {
          i = v81 + 1;
          if (__OFADD__(v81, 1))
          {
            goto LABEL_123;
          }

          if (i >= ((v73 + 64) >> 6))
          {
            goto LABEL_112;
          }

          v82 = *(v72 + 8 * i);
        }

        v75 = (v82 - 1) & v82;
        v83 = *(*(v71 + 48) + ((i << 9) | (8 * __clz(__rbit64(v82)))));

        if (v83)
        {
LABEL_102:
          swift_beginAccess();
          if (*(v83 + 72) == *(v131 + 72) && *(v83 + 80) == *(v131 + 80))
          {

            v71 = v107;
LABEL_109:
            if (__OFADD__(v105++, 1))
            {
              goto LABEL_124;
            }

            continue;
          }

          v85 = sub_19752282C();

          v79 = i;
          v80 = v75;
          v71 = v107;
          if (v85)
          {
            goto LABEL_109;
          }

          goto LABEL_93;
        }

        break;
      }

LABEL_112:
      sub_197416DA8();
      if (v105 != 1)
      {

        v29 = v38;
        v30 = v108;
        v27 = v100;
        v26 = v101;
        continue;
      }

      break;
    }

    v27 = v100;
    v26 = v101;
    if (v102)
    {
      swift_beginAccess();
      v87 = *(v131 + 48);
      if (v87)
      {
        swift_beginAccess();
        v88 = v102[6];
        if (v88)
        {

          v89 = sub_1973F8364(v87);
          v91 = v90;
          swift_beginAccess();
          v102[12] = v89;
          v102[13] = v91;

          swift_beginAccess();
          v102[14] = v87;

          v92 = sub_1973F8364(v88);
          v94 = v93;

          swift_beginAccess();
          *(v131 + 96) = v92;
          *(v131 + 104) = v94;

          swift_beginAccess();
          *(v131 + 112) = v88;

          v29 = v38;
          v30 = v108;
          v35 = v106;
          continue;
        }
      }
    }

    break;
  }

LABEL_129:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974F5E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char *a6)
{
  v8 = sub_1973F7BBC(a2, a5, a6);
  v10 = v9;
  swift_beginAccess();
  v11 = *(a3 + 104);
  if (*(v11 + 16) && (v12 = sub_1973F4028(v8, v10), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();
    swift_beginAccess();
    v15 = *(a4 + 48);
    if (v15)
    {

      v16 = sub_1973F8364(v15);
      v18 = v17;
      swift_beginAccess();
      v14[12] = v16;
      v14[13] = v18;

      swift_beginAccess();
      v14[14] = v15;
    }
  }

  else
  {
    swift_endAccess();
  }

  result = sub_1975223EC();
  __break(1u);
  return result;
}

void *Schema.Entity.deinit()
{

  swift_weakDestroy();

  return v0;
}

uint64_t Schema.Entity.__deallocating_deinit()
{
  Schema.Entity.deinit();

  return swift_deallocClassInstance();
}

uint64_t Schema.Entity.hashValue.getter()
{
  sub_197522A5C();
  swift_beginAccess();

  sub_19752180C();

  return sub_197522A9C();
}

void *sub_1974F6138@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = Schema.Entity.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1974F61B4()
{
  sub_197522A5C();
  swift_beginAccess();

  sub_19752180C();

  return sub_197522A9C();
}

uint64_t sub_1974F6228(uint64_t a1)
{
  swift_beginAccess();

  sub_19752180C();
}

uint64_t sub_1974F6294(uint64_t a1)
{
  sub_197522A5C();
  swift_beginAccess();

  sub_19752180C();

  return sub_197522A9C();
}

uint64_t sub_1974F6334(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_1975220EC();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v8 &= v8 - 1;
LABEL_12:

    v12 = sub_19752213C();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 56 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

char *sub_1974F6438(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t (*)(uint64_t *, char *, uint64_t, uint64_t, __n128), uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_1975220EC();
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_197416DA8();
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return a2;
}

void sub_1974F64F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3C0, &qword_19752D580);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size_4(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_1974F65D0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1974F6714(a1, a2, a3, *v3, &qword_1EAF2BCA8, &qword_197532038, &qword_1EAF2B970, &unk_19752FC90);
  *v3 = result;
  return result;
}

void *sub_1974F6610(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1974F6848(a1, a2, a3, *v3, &qword_1EAF2B1C0, &unk_19752D350, &qword_1EAF2B1C8, &unk_19752EA30);
  *v3 = result;
  return result;
}

void *sub_1974F6650(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1974F6714(a1, a2, a3, *v3, &qword_1EAF2BCB8, &unk_197532040, &qword_1EAF2AF50, &unk_19752C6C0);
  *v3 = result;
  return result;
}

void *sub_1974F6690(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1974F6848(a1, a2, a3, *v3, &qword_1EAF2B330, &unk_19752FCE0, &qword_1EAF2B338, &qword_19752D4E0);
  *v3 = result;
  return result;
}

char *sub_1974F66D0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1974F6990(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1974F6714(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v17 = _swift_stdlib_malloc_size_4(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
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

void *sub_1974F6848(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v17 = _swift_stdlib_malloc_size_4(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
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

char *sub_1974F6990(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF58, &qword_1975319E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_4(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1974F6AA0(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1975220EC();
LABEL_9:
  result = sub_19752224C();
  *v2 = result;
  return result;
}

uint64_t sub_1974F6B40(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1975227BC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
        v5 = sub_197521A2C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1974F6E0C(v7, v8, a1, v4);
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
    return sub_1974F6C48(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1974F6C48(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
LABEL_6:
    v28 = a3;
    v20 = v6;
    v21 = v5;
    while (1)
    {
      sub_1973FA430(v5, v25);
      sub_1973FA430(v5 - 40, v22);
      v7 = v26;
      v8 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      v9 = (*(v8 + 32))(v7, v8);
      v11 = v10;
      v13 = v23;
      v12 = v24;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      if (v9 == (*(v12 + 32))(v13, v12) && v11 == v14)
      {

        __swift_destroy_boxed_opaque_existential_1Tm_5(v22);
        result = __swift_destroy_boxed_opaque_existential_1Tm_5(v25);
LABEL_5:
        a3 = v28 + 1;
        v5 = v21 + 40;
        v6 = v20 - 1;
        if (v28 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v16 = sub_19752282C();

      __swift_destroy_boxed_opaque_existential_1Tm_5(v22);
      result = __swift_destroy_boxed_opaque_existential_1Tm_5(v25);
      if ((v16 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      sub_1973FA670();
      v17 = *(v5 - 24);
      *v5 = *(v5 - 40);
      *(v5 + 16) = v17;
      *(v5 + 32) = *(v5 - 8);
      result = sub_1973FA670();
      v5 -= 40;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1974F6E0C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v112 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_104:
    v6 = *v112;
    if (!*v112)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_106:
      v105 = v5;
      v129 = v8;
      v106 = *(v8 + 2);
      if (v106 >= 2)
      {
        while (*a3)
        {
          v107 = *&v8[16 * v106];
          v5 = *&v8[16 * v106 + 24];
          sub_1974F76D0((*a3 + 40 * v107), (*a3 + 40 * *&v8[16 * v106 + 16]), *a3 + 40 * v5, v6);
          if (v105)
          {
          }

          if (v5 < v107)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1974DAF28(v8);
          }

          if (v106 - 2 >= *(v8 + 2))
          {
            goto LABEL_131;
          }

          v108 = &v8[16 * v106];
          *v108 = v107;
          *(v108 + 1) = v5;
          v129 = v8;
          result = sub_1974DAE9C(v106 - 1);
          v8 = v129;
          v106 = *(v129 + 2);
          if (v106 <= 1)
          {
          }
        }

        goto LABEL_141;
      }
    }

LABEL_137:
    result = sub_1974DAF28(v8);
    v8 = result;
    goto LABEL_106;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    v121 = v8;
    if (v7 < v6)
    {
      v10 = *a3;
      sub_1973FA430(*a3 + 40 * v7, v126);
      v113 = v9;
      sub_1973FA430(v10 + 40 * v9, v123);
      v11 = v127;
      v12 = v128;
      __swift_project_boxed_opaque_existential_1(v126, v127);
      v13 = (*(v12 + 32))(v11, v12);
      v15 = v14;
      v16 = v124;
      v17 = v125;
      __swift_project_boxed_opaque_existential_1(v123, v124);
      v19 = v13 == (*(v17 + 32))(v16, v17) && v15 == v18;
      v110 = v5;
      if (v19)
      {
        v119 = 0;
      }

      else
      {
        v119 = sub_19752282C();
      }

      __swift_destroy_boxed_opaque_existential_1Tm_5(v123);
      result = __swift_destroy_boxed_opaque_existential_1Tm_5(v126);
      v20 = v113 + 2;
      v21 = v10 + 40 * v113 + 80;
      v117 = v6;
      v22 = 40 * v113 + 40;
      v8 = v121;
      do
      {
        v24 = v20;
        v25 = v7;
        v5 = v22;
        if (v20 >= v6)
        {
          break;
        }

        sub_1973FA430(v21, v126);
        sub_1973FA430(v21 - 40, v123);
        v26 = v127;
        v27 = v128;
        __swift_project_boxed_opaque_existential_1(v126, v127);
        v28 = (*(v27 + 32))(v26, v27);
        v30 = v29;
        v32 = v124;
        v31 = v125;
        __swift_project_boxed_opaque_existential_1(v123, v124);
        v34 = v28 == (*(v31 + 32))(v32, v31) && v30 == v33;
        v23 = v34 ? 0 : sub_19752282C();

        __swift_destroy_boxed_opaque_existential_1Tm_5(v123);
        result = __swift_destroy_boxed_opaque_existential_1Tm_5(v126);
        v20 = v24 + 1;
        v21 += 40;
        v7 = v25 + 1;
        v22 = v5 + 40;
        v8 = v121;
        v6 = v117;
      }

      while (((v119 ^ v23) & 1) == 0);
      if (v119)
      {
        v9 = v113;
        if (v24 < v113)
        {
          goto LABEL_134;
        }

        if (v113 < v24)
        {
          v6 = v113;
          v35 = 40 * v113;
          do
          {
            if (v6 != v25)
            {
              v37 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v38 = v37 + v35;
              v39 = v37 + v5;
              sub_1973FA670();
              v40 = *(v39 + 32);
              v41 = *(v39 + 16);
              *v38 = *v39;
              *(v38 + 16) = v41;
              *(v38 + 32) = v40;
              result = sub_1973FA670();
            }

            ++v6;
            v5 -= 40;
            v35 += 40;
          }

          while (v6 < v25--);
        }

        v7 = v24;
        v5 = v110;
      }

      else
      {
        v7 = v24;
        v5 = v110;
        v9 = v113;
      }
    }

    v42 = a3[1];
    if (v7 < v42)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_197477094(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v59 = *(v8 + 2);
    v58 = *(v8 + 3);
    v60 = v59 + 1;
    if (v59 >= v58 >> 1)
    {
      result = sub_197477094((v58 > 1), v59 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v60;
    v61 = &v8[16 * v59];
    *(v61 + 4) = v9;
    *(v61 + 5) = v7;
    v62 = *v112;
    if (!*v112)
    {
      goto LABEL_142;
    }

    if (v59)
    {
      while (1)
      {
        v63 = v60 - 1;
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v64 = *(v8 + 4);
          v65 = *(v8 + 5);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_73:
          if (v67)
          {
            goto LABEL_121;
          }

          v80 = &v8[16 * v60];
          v82 = *v80;
          v81 = *(v80 + 1);
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_124;
          }

          v86 = &v8[16 * v63 + 32];
          v88 = *v86;
          v87 = *(v86 + 1);
          v74 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v74)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v84, v89))
          {
            goto LABEL_128;
          }

          if (v84 + v89 >= v66)
          {
            if (v66 < v89)
            {
              v63 = v60 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v90 = &v8[16 * v60];
        v92 = *v90;
        v91 = *(v90 + 1);
        v74 = __OFSUB__(v91, v92);
        v84 = v91 - v92;
        v85 = v74;
LABEL_87:
        if (v85)
        {
          goto LABEL_123;
        }

        v93 = &v8[16 * v63];
        v95 = *(v93 + 4);
        v94 = *(v93 + 5);
        v74 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v74)
        {
          goto LABEL_126;
        }

        if (v96 < v84)
        {
          goto LABEL_3;
        }

LABEL_94:
        v101 = v63 - 1;
        if (v63 - 1 >= v60)
        {
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
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v6 = v7;
        v102 = *&v8[16 * v101 + 32];
        v103 = *&v8[16 * v63 + 40];
        sub_1974F76D0((*a3 + 40 * v102), (*a3 + 40 * *&v8[16 * v63 + 32]), *a3 + 40 * v103, v62);
        if (v5)
        {
        }

        if (v103 < v102)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1974DAF28(v8);
        }

        if (v101 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v104 = &v8[16 * v101];
        *(v104 + 4) = v102;
        *(v104 + 5) = v103;
        v129 = v8;
        result = sub_1974DAE9C(v63);
        v8 = v129;
        v60 = *(v129 + 2);
        v7 = v6;
        if (v60 <= 1)
        {
          goto LABEL_3;
        }
      }

      v68 = &v8[16 * v60 + 32];
      v69 = *(v68 - 64);
      v70 = *(v68 - 56);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_119;
      }

      v73 = *(v68 - 48);
      v72 = *(v68 - 40);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_120;
      }

      v75 = &v8[16 * v60];
      v77 = *v75;
      v76 = *(v75 + 1);
      v74 = __OFSUB__(v76, v77);
      v78 = v76 - v77;
      if (v74)
      {
        goto LABEL_122;
      }

      v74 = __OFADD__(v66, v78);
      v79 = v66 + v78;
      if (v74)
      {
        goto LABEL_125;
      }

      if (v79 >= v71)
      {
        v97 = &v8[16 * v63 + 32];
        v99 = *v97;
        v98 = *(v97 + 1);
        v74 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v74)
        {
          goto LABEL_129;
        }

        if (v66 < v100)
        {
          v63 = v60 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_104;
    }
  }

  v43 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_135;
  }

  if (v43 >= v42)
  {
    v43 = a3[1];
  }

  if (v43 < v9)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v7 == v43)
  {
    goto LABEL_53;
  }

  v111 = v5;
  v44 = *a3;
  v45 = *a3 + 40 * v7;
  v114 = v9;
  v115 = v43;
  v46 = v9 - v7;
LABEL_42:
  v118 = v45;
  v120 = v7;
  v116 = v46;
  while (1)
  {
    sub_1973FA430(v45, v126);
    sub_1973FA430(v45 - 40, v123);
    v47 = v127;
    v48 = v128;
    __swift_project_boxed_opaque_existential_1(v126, v127);
    v49 = (*(v48 + 32))(v47, v48);
    v51 = v50;
    v52 = v124;
    v6 = v125;
    __swift_project_boxed_opaque_existential_1(v123, v124);
    if (v49 == (*(v6 + 32))(v52, v6) && v51 == v53)
    {

      __swift_destroy_boxed_opaque_existential_1Tm_5(v123);
      __swift_destroy_boxed_opaque_existential_1Tm_5(v126);
LABEL_41:
      v7 = v120 + 1;
      v45 = v118 + 40;
      v46 = v116 - 1;
      if (v120 + 1 == v115)
      {
        v7 = v115;
        v5 = v111;
        v8 = v121;
        v9 = v114;
        goto LABEL_53;
      }

      goto LABEL_42;
    }

    v55 = sub_19752282C();

    __swift_destroy_boxed_opaque_existential_1Tm_5(v123);
    result = __swift_destroy_boxed_opaque_existential_1Tm_5(v126);
    if ((v55 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (!v44)
    {
      break;
    }

    sub_1973FA670();
    v56 = *(v45 - 24);
    *v45 = *(v45 - 40);
    *(v45 + 16) = v56;
    *(v45 + 32) = *(v45 - 8);
    sub_1973FA670();
    v45 -= 40;
    if (__CFADD__(v46++, 1))
    {
      goto LABEL_41;
    }
  }

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
  return result;
}

uint64_t sub_1974F76D0(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v7 = a2;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 40;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 40;
  if (v9 >= v11)
  {
    if (a4 != a2 || &a2[40 * v11] <= a4)
    {
      memmove(a4, a2, 40 * v11);
      v7 = a2;
    }

    v58 = &v4[40 * v11];
    if (v10 >= 40 && v7 > __src)
    {
      v28 = v7;
      v51 = v4;
      do
      {
        __dst = v28;
        v29 = (v28 - 40);
        v30 = (v58 - 40);
        v5 -= 40;
        while (1)
        {
          sub_1973FA430(v30, v55);
          v33 = v29;
          sub_1973FA430(v29, v52);
          v34 = v56;
          v35 = v57;
          __swift_project_boxed_opaque_existential_1(v55, v56);
          v36 = (*(v35 + 32))(v34, v35);
          v38 = v37;
          v40 = v53;
          v39 = v54;
          __swift_project_boxed_opaque_existential_1(v52, v53);
          v42 = v36 == (*(v39 + 32))(v40, v39) && v38 == v41;
          v43 = v42 ? 0 : sub_19752282C();

          __swift_destroy_boxed_opaque_existential_1Tm_5(v52);
          __swift_destroy_boxed_opaque_existential_1Tm_5(v55);
          if (v43)
          {
            break;
          }

          if (v5 + 40 != v30 + 40)
          {
            v44 = *v30;
            v45 = *(v30 + 16);
            *(v5 + 32) = *(v30 + 32);
            *v5 = v44;
            *(v5 + 16) = v45;
          }

          v31 = v30 - 40;
          v5 -= 40;
          v32 = v30 > v51;
          v30 -= 40;
          v29 = v33;
          if (!v32)
          {
            v58 = (v31 + 40);
            v7 = __dst;
            v4 = v51;
            goto LABEL_43;
          }
        }

        v7 = v33;
        if ((v5 + 40) != __dst)
        {
          v46 = *v33;
          v47 = *(v33 + 16);
          *(v5 + 32) = *(v33 + 32);
          *v5 = v46;
          *(v5 + 16) = v47;
        }

        v58 = (v30 + 40);
        v4 = v51;
        if (v30 + 40 <= v51)
        {
          break;
        }

        v28 = v7;
      }

      while (v7 > __src);
      v58 = (v30 + 40);
    }
  }

  else
  {
    if (a4 != __src || &__src[40 * v9] <= a4)
    {
      memmove(a4, __src, 40 * v9);
      v7 = a2;
    }

    v58 = &v4[40 * v9];
    if (v8 >= 40 && v7 < v5)
    {
      while (1)
      {
        v13 = v7;
        sub_1973FA430(v7, v55);
        sub_1973FA430(v4, v52);
        v14 = v56;
        v15 = v57;
        __swift_project_boxed_opaque_existential_1(v55, v56);
        v16 = (*(v15 + 32))(v14, v15);
        v18 = v17;
        v19 = v53;
        v20 = v54;
        __swift_project_boxed_opaque_existential_1(v52, v53);
        v22 = v16 == (*(v20 + 32))(v19, v20) && v18 == v21;
        if (v22)
        {
          break;
        }

        v23 = sub_19752282C();

        __swift_destroy_boxed_opaque_existential_1Tm_5(v52);
        __swift_destroy_boxed_opaque_existential_1Tm_5(v55);
        if ((v23 & 1) == 0)
        {
          goto LABEL_15;
        }

        v24 = v13;
        v7 = v13 + 40;
        if (__src != v13)
        {
          goto LABEL_16;
        }

LABEL_17:
        __src += 40;
        if (v4 >= v58 || v7 >= v5)
        {
          goto LABEL_19;
        }
      }

      __swift_destroy_boxed_opaque_existential_1Tm_5(v52);
      __swift_destroy_boxed_opaque_existential_1Tm_5(v55);
LABEL_15:
      v24 = v4;
      v22 = __src == v4;
      v4 += 40;
      v7 = v13;
      if (v22)
      {
        goto LABEL_17;
      }

LABEL_16:
      v25 = *v24;
      v26 = *(v24 + 1);
      *(__src + 4) = *(v24 + 4);
      *__src = v25;
      *(__src + 1) = v26;
      goto LABEL_17;
    }

LABEL_19:
    v7 = __src;
  }

LABEL_43:
  v48 = (v58 - v4) / 40;
  if (v7 != v4 || v7 >= &v4[40 * v48])
  {
    memmove(v7, v4, 40 * v48);
  }

  return 1;
}

uint64_t sub_1974F7B2C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1975220EC();
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
      result = sub_1975220EC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_19745B31C(&qword_1EAF2BCB0, &qword_1EAF2BAE8, &qword_1975309C8, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BAE8, &qword_1975309C8);
            v9 = sub_1974804BC(v13, i, a3);
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
        type metadata accessor for Schema.Entity();
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

uint64_t sub_1974F7CCC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1975220EC();
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
      result = sub_1975220EC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_19745B31C(&qword_1EAF2B6C0, &qword_1EAF2B6B8, &qword_19752F3A0, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B6B8, &qword_19752F3A0);
            v9 = sub_197480544(v13, i, a3);
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
        sub_1973FF6C8(0, &qword_1ED7C9BA0, 0x1E695D5B8);
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

unint64_t sub_1974F7E80(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_1975220EC();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B180, &qword_19752D310);
      result = sub_1975221CC();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!v2)
  {
LABEL_4:
    v5 = *(v4 + 16);
    if (!v5)
    {
      return v3;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = sub_1975220EC();
  v5 = result;
  if (!result)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v37 = v1;
  v38 = v1 & 0xC000000000000001;
  v34 = v1 + 32;
  v35 = v1 & 0xFFFFFFFFFFFFFF8;
  v36 = v5;
  while (1)
  {
    if (v38)
    {
      result = MEMORY[0x19A8E0960](v6, v1);
      v8 = result;
      v9 = __OFADD__(v6, 1);
      v10 = v6 + 1;
      if (v9)
      {
        break;
      }

      goto LABEL_16;
    }

    if (v6 >= *(v35 + 16))
    {
      goto LABEL_45;
    }

    v8 = *(v34 + 8 * v6);

    v9 = __OFADD__(v6, 1);
    v10 = v6 + 1;
    if (v9)
    {
      break;
    }

LABEL_16:
    v39 = v10;
    sub_197522A5C();
    swift_beginAccess();

    sub_19752180C();

    v11 = sub_197522A9C();
    v12 = -1 << *(v3 + 32);
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    result = swift_beginAccess();
    v13 = v11 & ~v12;
    v14 = v13 >> 6;
    v15 = *(v7 + 8 * (v13 >> 6));
    v16 = 1 << v13;
    if (((1 << v13) & v15) == 0)
    {
      goto LABEL_39;
    }

    v17 = ~v12;
    do
    {
      v18 = *(*(v3 + 48) + 8 * v13);
      swift_beginAccess();
      v19 = v18[2] == v8[2] && v18[3] == v8[3];
      if (v19 || (result = sub_19752282C(), (result & 1) != 0))
      {
        result = swift_beginAccess();
        v20 = v18[6];
        v21 = v8[6];
        if (v20)
        {
          if (!v21)
          {
            goto LABEL_19;
          }

          if (v18[5] != v8[5] || v20 != v21)
          {
            result = sub_19752282C();
            if ((result & 1) == 0)
            {
              goto LABEL_19;
            }
          }
        }

        else if (v21)
        {
          goto LABEL_19;
        }

        swift_beginAccess();
        v23 = v18[10];
        v24 = v8[10];

        v25 = sub_197415D98(v23, v24);

        if (v25 & 1) != 0 && (swift_beginAccess(), v26 = v18[11], v27 = v8[11], , , v28 = sub_19741616C(v26, v27), , , (v28))
        {
          swift_beginAccess();
          v29 = v18[4];
          v30 = v8[4];

          v31 = sub_197416704(v29, v30);

          if (v31)
          {

            v5 = v36;
            v1 = v37;
            goto LABEL_41;
          }
        }

        else
        {
        }
      }

LABEL_19:
      v13 = (v13 + 1) & v17;
      v14 = v13 >> 6;
      v15 = *(v7 + 8 * (v13 >> 6));
      v16 = 1 << v13;
    }

    while (((1 << v13) & v15) != 0);
    v5 = v36;
    v1 = v37;
LABEL_39:
    *(v7 + 8 * v14) = v16 | v15;
    *(*(v3 + 48) + 8 * v13) = v8;
    v32 = *(v3 + 16);
    v9 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v9)
    {
      goto LABEL_44;
    }

    *(v3 + 16) = v33;
LABEL_41:
    v6 = v39;
    if (v39 == v5)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

unint64_t sub_1974F828C(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_1975220EC();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B350, &qword_19752D4F8);
      result = sub_1975221CC();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_1975220EC();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v35 = v1;
  v36 = v1 & 0xC000000000000001;
  v31 = v1 + 32;
  v32 = v1 & 0xFFFFFFFFFFFFFF8;
  v33 = v5;
  v34 = v3;
  while (v36)
  {
    result = MEMORY[0x19A8E0960](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_53;
    }

LABEL_17:
    sub_197522A5C();
    swift_beginAccess();

    sub_19752180C();

    result = sub_197522A9C();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v7 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      v16 = *(v3 + 48);
      swift_beginAccess();
      swift_beginAccess();
      while (1)
      {
        v17 = *(v16 + 8 * v11);
        swift_beginAccess();
        v18 = v17[2] == v8[2] && v17[3] == v8[3];
        if (v18 || (result = sub_19752282C(), (result & 1) != 0))
        {
          result = swift_beginAccess();
          v19 = v17[6];
          v20 = v8[6];
          v21 = *(v19 + 16);
          if (v21 == *(v20 + 16))
          {
            if (v21)
            {
              v22 = v19 == v20;
            }

            else
            {
              v22 = 1;
            }

            if (!v22)
            {
              v23 = (v20 + 68);
              v24 = (v19 + 68);
              while (v21)
              {
                if (*(v24 - 4) != *(v23 - 4))
                {
                  goto LABEL_20;
                }

                if ((*(v24 - 2) ^ *(v23 - 2)))
                {
                  goto LABEL_20;
                }

                if ((*v24 ^ *v23))
                {
                  goto LABEL_20;
                }

                if ((*(v24 - 3) ^ *(v23 - 3)))
                {
                  goto LABEL_20;
                }

                if ((*(v24 - 1) ^ *(v23 - 1)))
                {
                  goto LABEL_20;
                }

                v25 = *(v24 - 36);
                v26 = *(v23 - 36);
                if ((v25 ^ v26))
                {
                  goto LABEL_20;
                }

                if ((v25 & v26) == 1)
                {
                  v27 = *(v24 - 12);
                  v28 = *(v23 - 12);
                  if (v27)
                  {
                    if (!v28)
                    {
                      goto LABEL_20;
                    }

                    result = *(v24 - 20);
                    if (result != *(v23 - 20) || v27 != v28)
                    {
                      result = sub_19752282C();
                      if ((result & 1) == 0)
                      {
                        goto LABEL_20;
                      }
                    }
                  }

                  else if (v28)
                  {
                    goto LABEL_20;
                  }
                }

                v24 += 40;
                v23 += 40;
                if (!--v21)
                {
                  goto LABEL_19;
                }
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_19:
            result = swift_beginAccess();
            if (v17[7] == v8[7])
            {
              break;
            }
          }
        }

LABEL_20:
        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
        if ((v13 & (1 << v11)) == 0)
        {
          v3 = v34;
          v1 = v35;
          v5 = v33;
          goto LABEL_49;
        }
      }

      v3 = v34;
      v1 = v35;
      v5 = v33;
      if (v6 == v33)
      {
        return v3;
      }
    }

    else
    {
LABEL_49:
      *(v7 + 8 * v12) = v13 | v14;
      *(*(v3 + 48) + 8 * v11) = v8;
      v29 = *(v3 + 16);
      v9 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v9)
      {
        goto LABEL_54;
      }

      *(v3 + 16) = v30;
      if (v6 == v5)
      {
        return v3;
      }
    }
  }

  if (v6 >= *(v32 + 16))
  {
    goto LABEL_55;
  }

  v8 = *(v31 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_17;
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_1974F864C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1975220EC())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B378, &qword_19752D528);
      v3 = sub_1975221CC();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!v2)
  {
LABEL_4:
    result = *(v4 + 16);
    if (!result)
    {
      return v3;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = sub_1975220EC();
  if (!result)
  {
    return v3;
  }

LABEL_9:
  v6 = v3 + 56;
  v84 = result;
  if ((v1 & 0xC000000000000001) == 0)
  {
    v46 = 0;
    v47 = 0x6E6F697463416F6ELL;
    v82 = v1 + 32;
    v83 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      if (v46 == v83)
      {
        goto LABEL_153;
      }

      v48 = *(v82 + 8 * v46);
      sub_197522A5C();
      swift_beginAccess();

      sub_19752180C();

      v49 = sub_197522A9C();
      v50 = -1 << *(v3 + 32);
      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      result = swift_beginAccess();
      v51 = v49 & ~v50;
      v52 = v51 >> 6;
      v53 = *(v6 + 8 * (v51 >> 6));
      v54 = 1 << v51;
      if (((1 << v51) & v53) == 0)
      {
        goto LABEL_143;
      }

      v86 = v46;
      v55 = ~v50;
      do
      {
        v56 = *(*(v3 + 48) + 8 * v51);
        swift_beginAccess();
        v57 = *(v56 + 16) == *(v48 + 16) && *(v56 + 24) == *(v48 + 24);
        if (v57 || (result = sub_19752282C(), (result & 1) != 0))
        {
          result = swift_beginAccess();
          v58 = *(v56 + 56);
          v59 = *(v48 + 56);
          v60 = *(v58 + 16);
          if (v60 == *(v59 + 16))
          {
            if (v60)
            {
              v61 = v58 == v59;
            }

            else
            {
              v61 = 1;
            }

            if (v61)
            {
LABEL_100:
              result = swift_beginAccess();
              if (*(v56 + 64) == *(v48 + 64))
              {
                if (swift_beginAccess(), *(v56 + 72) == *(v48 + 72)) && *(v56 + 80) == *(v48 + 80) || (result = sub_19752282C(), (result))
                {
                  swift_beginAccess();
                  v64 = *(v56 + 88);
                  if (v64 > 1)
                  {
                    if (v64 == 2)
                    {
                      v65 = 0x65646163736163;
                    }

                    else
                    {
                      v65 = 2037278052;
                    }

                    if (v64 == 2)
                    {
                      v66 = 0xE700000000000000;
                    }

                    else
                    {
                      v66 = 0xE400000000000000;
                    }
                  }

                  else
                  {
                    if (*(v56 + 88))
                    {
                      v65 = 0x7966696C6C756ELL;
                    }

                    else
                    {
                      v65 = v47;
                    }

                    if (*(v56 + 88))
                    {
                      v66 = 0xE700000000000000;
                    }

                    else
                    {
                      v66 = 0xE800000000000000;
                    }
                  }

                  v67 = *(v48 + 88);
                  v68 = 2037278052;
                  if (v67 == 2)
                  {
                    v68 = 0x65646163736163;
                  }

                  v69 = 0xE400000000000000;
                  if (v67 == 2)
                  {
                    v69 = 0xE700000000000000;
                  }

                  if (*(v48 + 88))
                  {
                    v70 = 0x7966696C6C756ELL;
                  }

                  else
                  {
                    v70 = v47;
                  }

                  v71 = 0xE800000000000000;
                  if (*(v48 + 88))
                  {
                    v71 = 0xE700000000000000;
                  }

                  if (*(v48 + 88) <= 1u)
                  {
                    v72 = v70;
                  }

                  else
                  {
                    v72 = v68;
                  }

                  if (*(v48 + 88) <= 1u)
                  {
                    v73 = v71;
                  }

                  else
                  {
                    v73 = v69;
                  }

                  v74 = v47;
                  if (v65 == v72 && v66 == v73)
                  {
                  }

                  else
                  {
                    v75 = sub_19752282C();

                    if ((v75 & 1) == 0)
                    {
                      goto LABEL_84;
                    }
                  }

                  swift_beginAccess();
                  v76 = *(v56 + 104);
                  v77 = *(v48 + 104);
                  if (!v76)
                  {
                    if (!v77)
                    {
                      goto LABEL_147;
                    }

LABEL_84:

                    v47 = v74;
                    goto LABEL_85;
                  }

                  if (!v77)
                  {
                    goto LABEL_84;
                  }

                  if (*(v56 + 96) == *(v48 + 96) && v76 == v77)
                  {
LABEL_147:

                    v46 = v86;
                    v47 = v74;
                    goto LABEL_145;
                  }

                  v78 = sub_19752282C();

                  v47 = v74;
                  if (v78)
                  {

                    v46 = v86;
                    goto LABEL_145;
                  }
                }
              }
            }

            else
            {
              v62 = (v58 + 32);
              v63 = (v59 + 32);
              while (1)
              {
                if (!v60)
                {
                  goto LABEL_150;
                }

                if (*v62 != *v63)
                {
                  break;
                }

                ++v62;
                ++v63;
                if (!--v60)
                {
                  goto LABEL_100;
                }
              }
            }
          }
        }

LABEL_85:
        v51 = (v51 + 1) & v55;
        v52 = v51 >> 6;
        v53 = *(v6 + 8 * (v51 >> 6));
        v54 = 1 << v51;
      }

      while (((1 << v51) & v53) != 0);
      v46 = v86;
LABEL_143:
      *(v6 + 8 * v52) = v54 | v53;
      *(*(v3 + 48) + 8 * v51) = v48;
      v79 = *(v3 + 16);
      v10 = __OFADD__(v79, 1);
      v80 = v79 + 1;
      if (v10)
      {
        goto LABEL_154;
      }

      *(v3 + 16) = v80;
LABEL_145:
      if (++v46 == v84)
      {
        return v3;
      }
    }
  }

  v7 = 0;
  v8 = 0x6E6F697463416F6ELL;
  v9 = 0x65646163736163;
  v81 = v1;
  while (1)
  {
    result = MEMORY[0x19A8E0960](v7, v1);
    v10 = __OFADD__(v7, 1);
    v11 = v7 + 1;
    if (v10)
    {
      goto LABEL_151;
    }

    v12 = result;
    v85 = v11;
    sub_197522A5C();
    swift_beginAccess();

    sub_19752180C();

    v13 = sub_197522A9C();
    v14 = -1 << *(v3 + 32);
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    result = swift_beginAccess();
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    v17 = *(v6 + 8 * (v15 >> 6));
    v18 = 1 << v15;
    if (((1 << v15) & v17) != 0)
    {
      break;
    }

LABEL_74:
    *(v6 + 8 * v16) = v18 | v17;
    *(*(v3 + 48) + 8 * v15) = v12;
    v44 = *(v3 + 16);
    v10 = __OFADD__(v44, 1);
    v45 = v44 + 1;
    v7 = v85;
    if (v10)
    {
      goto LABEL_152;
    }

    *(v3 + 16) = v45;
LABEL_76:
    v1 = v81;
    if (v7 == v84)
    {
      return v3;
    }
  }

  v19 = ~v14;
  while (1)
  {
    v20 = *(*(v3 + 48) + 8 * v15);
    swift_beginAccess();
    if (*(v20 + 16) != *(v12 + 16) || *(v20 + 24) != *(v12 + 24))
    {
      result = sub_19752282C();
      if ((result & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    result = swift_beginAccess();
    v22 = *(v20 + 56);
    v23 = *(v12 + 56);
    v24 = *(v22 + 16);
    if (v24 != *(v23 + 16))
    {
      goto LABEL_16;
    }

    if (v24 && v22 != v23)
    {
      break;
    }

LABEL_31:
    result = swift_beginAccess();
    if (*(v20 + 64) != *(v12 + 64))
    {
      goto LABEL_16;
    }

    swift_beginAccess();
    if (*(v20 + 72) != *(v12 + 72) || *(v20 + 80) != *(v12 + 80))
    {
      result = sub_19752282C();
      if ((result & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    swift_beginAccess();
    v28 = *(v20 + 88);
    if (v28 > 1)
    {
      if (v28 == 2)
      {
        v29 = v9;
      }

      else
      {
        v29 = 2037278052;
      }

      if (v28 == 2)
      {
        v31 = 0xE700000000000000;
      }

      else
      {
        v31 = 0xE400000000000000;
      }

      v30 = 0xE800000000000000;
    }

    else
    {
      if (*(v20 + 88))
      {
        v29 = 0x7966696C6C756ELL;
      }

      else
      {
        v29 = v8;
      }

      v30 = 0xE800000000000000;
      if (*(v20 + 88))
      {
        v31 = 0xE700000000000000;
      }

      else
      {
        v31 = 0xE800000000000000;
      }
    }

    v32 = *(v12 + 88);
    v33 = v9;
    v34 = 2037278052;
    if (v32 == 2)
    {
      v34 = v9;
    }

    v35 = 0xE400000000000000;
    if (v32 == 2)
    {
      v35 = 0xE700000000000000;
    }

    v36 = v8;
    if (*(v12 + 88))
    {
      v37 = 0x7966696C6C756ELL;
    }

    else
    {
      v37 = v8;
    }

    if (*(v12 + 88))
    {
      v30 = 0xE700000000000000;
    }

    if (*(v12 + 88) <= 1u)
    {
      v38 = v37;
    }

    else
    {
      v38 = v34;
    }

    if (*(v12 + 88) <= 1u)
    {
      v39 = v30;
    }

    else
    {
      v39 = v35;
    }

    if (v29 == v38 && v31 == v39)
    {

      v8 = v36;
      v9 = v33;
      v6 = v3 + 56;
    }

    else
    {
      v40 = sub_19752282C();

      v8 = v36;
      v9 = v33;
      v6 = v3 + 56;
      if ((v40 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    swift_beginAccess();
    v41 = *(v20 + 104);
    v42 = *(v12 + 104);
    if (!v41)
    {
      if (!v42)
      {
        goto LABEL_78;
      }

LABEL_15:

      goto LABEL_16;
    }

    if (!v42)
    {
      goto LABEL_15;
    }

    if (*(v20 + 96) == *(v12 + 96) && v41 == v42)
    {
LABEL_78:
      swift_unknownObjectRelease();

      v7 = v85;
      goto LABEL_76;
    }

    v43 = sub_19752282C();

    if (v43)
    {
      swift_unknownObjectRelease();
      v7 = v85;
      goto LABEL_76;
    }

LABEL_16:
    v15 = (v15 + 1) & v19;
    v16 = v15 >> 6;
    v17 = *(v6 + 8 * (v15 >> 6));
    v18 = 1 << v15;
    if (((1 << v15) & v17) == 0)
    {
      goto LABEL_74;
    }
  }

  v26 = (v22 + 32);
  v27 = (v23 + 32);
  while (v24)
  {
    if (*v26 != *v27)
    {
      goto LABEL_16;
    }

    ++v26;
    ++v27;
    if (!--v24)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
  return result;
}

unint64_t sub_1974F8FFC(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_1975220EC();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B210, &qword_19752D3A0);
      result = sub_1975221CC();
      v3 = result;
      v18 = v1;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_1975220EC();
      v4 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v18 = v1;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return v3;
  }

LABEL_9:
  v5 = 0;
  v6 = v3 + 56;
  v17 = v4;
  while ((v18 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x19A8E0960](v5, v18);
    v7 = result;
    v8 = __OFADD__(v5++, 1);
    if (v8)
    {
      goto LABEL_25;
    }

LABEL_17:
    sub_19752202C();
    result = sub_1975216AC();
    v9 = -1 << *(v3 + 32);
    v10 = result & ~v9;
    v11 = v10 >> 6;
    v12 = *(v6 + 8 * (v10 >> 6));
    v13 = 1 << v10;
    if (((1 << v10) & v12) != 0)
    {
      v14 = ~v9;
      while (1)
      {
        result = sub_19752173C();
        if (result)
        {
          break;
        }

        v10 = (v10 + 1) & v14;
        v11 = v10 >> 6;
        v12 = *(v6 + 8 * (v10 >> 6));
        v13 = 1 << v10;
        if (((1 << v10) & v12) == 0)
        {
          v4 = v17;
          goto LABEL_22;
        }
      }

      v4 = v17;
      if (v5 == v17)
      {
        return v3;
      }
    }

    else
    {
LABEL_22:
      *(v6 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v7;
      v15 = *(v3 + 16);
      v8 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v8)
      {
        goto LABEL_26;
      }

      *(v3 + 16) = v16;
      if (v5 == v4)
      {
        return v3;
      }
    }
  }

  if (v5 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  v7 = *(v18 + 32 + 8 * v5);

  v8 = __OFADD__(v5++, 1);
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1974F923C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x19A8E0310](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_197414EA0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1974F92D4(void x0_0, uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3 >> 1;
  v7 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
  }

  else
  {
    v5 = a2;
    if (!(*v4 >> 62))
    {
      v8 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = __OFADD__(v8, v7);
      result = v8 + v7;
      if (!v9)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  v14 = sub_1975220EC();
  v9 = __OFADD__(v14, v7);
  result = v14 + v7;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = sub_1974F6AA0(result, 1);
  v11 = *v4;
  if (v6 == v5)
  {
    if (v7 <= 0)
    {
LABEL_11:
      *v4 = v11;
      return result;
    }

    __break(1u);
  }

  if ((*((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_19752202C();
  result = swift_arrayInitWithCopy();
  if (v7 <= 0)
  {
    goto LABEL_11;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9 = __OFADD__(v12, v7);
  v13 = v12 + v7;
  if (!v9)
  {
    *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v13;
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1974F93D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_19752282C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7469746E65627573 && a2 == 0xEB00000000736569 || (sub_19752282C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E657265707573 && a2 == 0xEF656D614E797469 || (sub_19752282C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365 || (sub_19752282C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F6974616C6572 && a2 == 0xED00007370696873 || (sub_19752282C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001975295D0 == a2 || (sub_19752282C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001975295F0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_19752282C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1974F9648(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1974FA3A4();
  result = MEMORY[0x19A8E0310](v2, &type metadata for ModelContext.AnyPersistentObject, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      swift_unknownObjectRetain();
      sub_1974327FC(&v8, v7, v6);
      swift_unknownObjectRelease();
      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_1974F96E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_197405108();
  result = MEMORY[0x19A8E0310](v2, &type metadata for PersistentIdentifier, v3);
  v10 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v5 += 16;
      sub_1974028EC(v6, v7);
      sub_19742AE44(&v8, v6, v7);
      sub_1974028C8(v8, v9);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_1974F9780(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_1975220EC();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = type metadata accessor for Schema.Entity();
  v6 = sub_1973FA628(&qword_1EAF2B670, v5, type metadata accessor for Schema.Entity, &protocol conformance descriptor for Schema.Entity);
  result = MEMORY[0x19A8E0310](v3, v4, v6);
  v13 = result;
  if (!i)
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x19A8E0960](i, a1);
        v11 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v13;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v10 = *(a1 + 8 * i + 32);

        v11 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      sub_19747D134(&v12, v10);

      if (v11 == v8)
      {
        return v13;
      }
    }
  }

  v9 = result;
  v8 = sub_1975220EC();
  result = v9;
  if (v8)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_1974F98E8()
{
  result = qword_1EAF2BC18;
  if (!qword_1EAF2BC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BC18);
  }

  return result;
}

unint64_t sub_1974F993C()
{
  result = qword_1EAF2BC28;
  if (!qword_1EAF2BC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2BC20, &qword_197531D40);
    sub_1973FA628(&qword_1ED7CA310, 255, type metadata accessor for Schema.Attribute, &protocol conformance descriptor for Schema.Attribute);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BC28);
  }

  return result;
}

unint64_t sub_1974F99F4()
{
  result = qword_1EAF2BC38;
  if (!qword_1EAF2BC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2BC30, &qword_197531D48);
    sub_1973FA628(&qword_1ED7C9198, 255, type metadata accessor for Schema.Relationship, &protocol conformance descriptor for Schema.Relationship);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BC38);
  }

  return result;
}

unint64_t sub_1974F9AAC()
{
  result = qword_1EAF2BC48;
  if (!qword_1EAF2BC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2BC40, &qword_197531D50);
    sub_1973FA628(&qword_1EAF2BAF8, v1, type metadata accessor for Schema.Entity, &protocol conformance descriptor for Schema.Entity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BC48);
  }

  return result;
}

unint64_t sub_1974F9B60()
{
  result = qword_1EAF2BC58;
  if (!qword_1EAF2BC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2BC40, &qword_197531D50);
    sub_1973FA628(&qword_1EAF2BB18, v1, type metadata accessor for Schema.Entity, &protocol conformance descriptor for Schema.Entity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BC58);
  }

  return result;
}

unint64_t sub_1974F9C14()
{
  result = qword_1EAF2BC60;
  if (!qword_1EAF2BC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2BC20, &qword_197531D40);
    sub_1973FA628(&qword_1ED7CA328, 255, type metadata accessor for Schema.Attribute, &protocol conformance descriptor for Schema.Attribute);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BC60);
  }

  return result;
}

unint64_t sub_1974F9CCC()
{
  result = qword_1EAF2BC68;
  if (!qword_1EAF2BC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2BC30, &qword_197531D48);
    sub_1973FA628(qword_1ED7C91B0, 255, type metadata accessor for Schema.Relationship, &protocol conformance descriptor for Schema.Relationship);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BC68);
  }

  return result;
}

uint64_t _s6EntityC10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s6EntityC10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1974F9FB0()
{
  result = qword_1EAF2BC78;
  if (!qword_1EAF2BC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BC78);
  }

  return result;
}

unint64_t sub_1974FA008()
{
  result = qword_1EAF2BC80;
  if (!qword_1EAF2BC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BC80);
  }

  return result;
}

unint64_t sub_1974FA060()
{
  result = qword_1EAF2BC88;
  if (!qword_1EAF2BC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BC88);
  }

  return result;
}

void sub_1974FA0B4(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1975220EC())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BC90, &qword_197532028);
      v3 = sub_1975221CC();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1975220EC();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x19A8E0960](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_197521F2C();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1973FF6C8(0, qword_1ED7C7910, 0x1E695D630);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_197521F3C();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_197521F2C();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_1973FF6C8(0, qword_1ED7C7910, 0x1E695D630);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_197521F3C();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

unint64_t sub_1974FA3A4()
{
  result = qword_1ED7C7140;
  if (!qword_1ED7C7140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C7140);
  }

  return result;
}

void static Schema.Attribute.Option.externalStorage.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 256;
  *(a1 + 34) = 0;
}

BOOL SchemaProperty.isOptional.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 80))(a1);
  if (swift_conformsToProtocol2())
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

BOOL Schema.Relationship.isUnique.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  v3 = (v1 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != 1);
  return v4 != 0;
}

uint64_t Schema.Attribute.__allocating_init(name:originalName:options:valueType:defaultValue:hashModifier:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = swift_allocObject();
  v17 = v16;
  *(v16 + 80) = 0u;
  *(v16 + 64) = 0u;
  v18 = v16 + 64;
  *(v16 + 112) = 0;
  *(v16 + 120) = 0;
  *(v16 + 104) = 0;
  v19 = (v16 + 104);
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  if (a4)
  {
    v20 = a3;
  }

  else
  {
    v20 = 0;
  }

  v21 = 0xE000000000000000;
  if (a4)
  {
    v21 = a4;
  }

  *(v16 + 32) = v20;
  *(v16 + 40) = v21;
  *(v16 + 48) = a5;
  *(v16 + 56) = a6;
  swift_beginAccess();
  sub_1973F7958(a7, v18);
  swift_endAccess();
  swift_beginAccess();
  *v19 = a8;
  *(v17 + 112) = a9;
  if (swift_conformsToProtocol2())
  {
    v22 = a6 == 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = !v22;
  *(v17 + 96) = v23;
  sub_1973F710C();
  sub_1973F9E68(a7);
  return v17;
}

uint64_t Schema.CompositeAttribute.__allocating_init(name:originalName:options:valueType:defaultValue:hashModifier:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  Schema.CompositeAttribute.init(name:originalName:options:valueType:defaultValue:hashModifier:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  return v17;
}

uint64_t sub_1974FA6E8()
{
  sub_19752228C();
  sub_197521AAC();

  if (!sub_197521A5C())
  {
    goto LABEL_23;
  }

  v0 = 0;
  while (1)
  {
    v1 = sub_197521A3C();
    sub_1975219EC();
    if (v1)
    {

      v2 = __OFADD__(v0++, 1);
      if (v2)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_19752222C();
      v2 = __OFADD__(v0++, 1);
      if (v2)
      {
LABEL_22:
        __break(1u);
LABEL_23:

        return 1;
      }
    }

    if (sub_197521A5C())
    {
      break;
    }

LABEL_3:

    if (v0 == sub_197521A5C())
    {
      goto LABEL_23;
    }
  }

  v3 = 4;
  while (1)
  {
    v4 = v3 - 4;
    v5 = sub_197521A3C();
    sub_1975219EC();
    if ((v5 & 1) == 0)
    {
      break;
    }

    v6 = v3 - 3;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_24;
    }

LABEL_11:
    v7 = sub_197521FFC();
    if (swift_conformsToProtocol2())
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8 && !swift_dynamicCastMetatype())
    {
      goto LABEL_25;
    }

    ++v3;
    if (v6 == sub_197521A5C())
    {
      goto LABEL_3;
    }
  }

  sub_19752222C();
  v6 = v3 - 3;
  if (!__OFADD__(v4, 1))
  {
    goto LABEL_11;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD00000000000002FLL, 0x800000019752A030);
  v10 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v10);

  MEMORY[0x19A8DFF80](0xD000000000000013, 0x800000019752A060);
  v11 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v11);

  result = sub_1975223EC();
  __break(1u);
  return result;
}

void sub_1974FA9FC()
{
  v25 = *v0;
  v1 = v0[2];
  v24 = *(*v0 + 80);
  sub_19752228C();
  sub_197521AAC();

  if (!sub_197521A5C())
  {
LABEL_28:

    return;
  }

  v2 = 0;
  v22 = v1 + 32;
  v3 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v4 = sub_197521A3C();
    sub_1975219EC();
    if (v4)
    {
      v5 = *(v22 + 8 * v2);

      v6 = __OFADD__(v2, 1);
      v7 = v2 + 1;
      if (v6)
      {
        break;
      }

      goto LABEL_5;
    }

    v5 = sub_19752222C();
    v6 = __OFADD__(v2, 1);
    v7 = v2 + 1;
    if (v6)
    {
      break;
    }

LABEL_5:
    v23 = v7;
    if (sub_197521A5C())
    {
      v8 = 4;
      v9 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v10 = v8 - 4;
        v11 = sub_197521A3C();
        sub_1975219EC();
        if (v11)
        {
          v12 = *(v5 + 8 * v8);

          v13 = v8 - 3;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_29;
          }
        }

        else
        {
          v12 = sub_19752222C();
          v13 = v8 - 3;
          if (__OFADD__(v10, 1))
          {
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }
        }

        v14 = sub_1973F7BBC(v12, v24, *(v25 + 88));
        v16 = v15;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_19741E330(0, *(v9 + 2) + 1, 1, v9);
        }

        v18 = *(v9 + 2);
        v17 = *(v9 + 3);
        if (v18 >= v17 >> 1)
        {
          v9 = sub_19741E330((v17 > 1), v18 + 1, 1, v9);
        }

        *(v9 + 2) = v18 + 1;
        v19 = &v9[16 * v18];
        *(v19 + 4) = v14;
        *(v19 + 5) = v16;
        ++v8;
        if (v13 == sub_197521A5C())
        {
          goto LABEL_19;
        }
      }
    }

    v9 = MEMORY[0x1E69E7CC0];
LABEL_19:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_19741E43C(0, v3[2] + 1, 1, v3);
    }

    v2 = v23;
    v21 = v3[2];
    v20 = v3[3];
    if (v21 >= v20 >> 1)
    {
      v3 = sub_19741E43C((v20 > 1), v21 + 1, 1, v3);
    }

    v3[2] = v21 + 1;
    v3[v21 + 4] = v9;
    if (v23 == sub_197521A5C())
    {
      goto LABEL_28;
    }
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_1974FAD68(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_1974FAE18(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
}

uint64_t sub_1974FAEC8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 48) = v2;
}

double sub_1974FAF28()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1974FAF60(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t sub_1974FAFF8(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  return result;
}

uint64_t sub_1974FB088(uint64_t a1, uint64_t *a2)
{
  sub_197413B20(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  sub_1974FE634(v5, v3 + 64);
  return swift_endAccess();
}

uint64_t sub_1974FB0E4(uint64_t a1)
{
  swift_beginAccess();
  sub_1974FE634(a1, v1 + 64);
  return swift_endAccess();
}

uint64_t sub_1974FB184(char a1)
{
  result = swift_beginAccess();
  *(v1 + 96) = a1;
  return result;
}

uint64_t sub_1974FB214(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 104) = v3;
  *(v4 + 112) = v2;
}

uint64_t sub_1974FB274()
{
  swift_beginAccess();
  v1 = *(v0 + 104);

  return v1;
}

uint64_t sub_1974FB2C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
}

void static Schema.Attribute.Option.unique.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 1;
  *(a1 + 33) = 0;
  *(a1 + 37) = 0;
}

double static Schema.Attribute.Option.transformable(by:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 1;
  *(a3 + 8) = 0;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *(a3 + 32) = 0;
  *(a3 + 36) = 0;

  return result;
}

double static Schema.Attribute.Option.allowsCloudEncryption.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *&result = 0x100000001;
  *(a1 + 34) = 1;
  return result;
}

void static Schema.Attribute.Option.preserveValueOnDeletion.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 31) = 0;
  *(a1 + 35) = 1;
  *(a1 + 37) = 0;
}

void static Schema.Attribute.Option.ephemeral.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 29) = 0;
  *(a1 + 37) = 1;
}

void static Schema.Attribute.Option.spotlight.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 36) = 1;
}

uint64_t sub_1974FB418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 56) = a3;
  if (swift_conformsToProtocol2())
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  *(v3 + 96) = v6;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  *(v3 + 48) = MEMORY[0x1E69E7CC0];
  (*(*v3 + 448))();
  return v3;
}

uint64_t Schema.Attribute.__allocating_init(_:originalName:hashModifier:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  Schema.Attribute.init(_:originalName:hashModifier:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t Schema.Attribute.init(name:originalName:options:valueType:defaultValue:hashModifier:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 80) = 0u;
  *(v9 + 64) = 0u;
  *(v9 + 112) = 0;
  *(v9 + 120) = 0;
  *(v9 + 104) = 0;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  if (a4)
  {
    v13 = a3;
  }

  else
  {
    v13 = 0;
  }

  v14 = 0xE000000000000000;
  if (a4)
  {
    v14 = a4;
  }

  *(v9 + 32) = v13;
  *(v9 + 40) = v14;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  swift_beginAccess();
  sub_1973F7958(a7, v9 + 64);
  swift_endAccess();
  swift_beginAccess();
  *(v9 + 104) = a8;
  *(v9 + 112) = a9;

  if (swift_conformsToProtocol2())
  {
    v15 = a6 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = !v15;
  *(v9 + 96) = v16;
  (*(*v9 + 448))();
  sub_1973F9E68(a7);
  return v9;
}

uint64_t sub_1974FB680()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x70795465756C6176;
  v4 = 0x69646F4D68736168;
  if (v1 != 4)
  {
    v4 = 0x6E6F6974704F7369;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C616E696769726FLL;
  if (v1 != 1)
  {
    v5 = 0x736E6F6974706FLL;
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

uint64_t sub_1974FB754@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_19750685C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1974FB788(uint64_t a1)
{
  v2 = sub_1974FE6A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1974FB7C4(uint64_t a1)
{
  v2 = sub_1974FE6A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Schema.Attribute.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  Schema.Attribute.init(from:)(a1);
  return v2;
}

void *Schema.Attribute.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BCC8, &qword_197532070);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v22 - v8;
  v23 = a1;
  v24 = v3;
  *(v3 + 64) = 0u;
  v10 = v3 + 64;
  *(v10 + 40) = 0;
  *(v10 + 16) = 0u;
  *(v10 + 48) = 0;
  *(v10 + 56) = 0;
  __swift_project_boxed_opaque_existential_1Tm_4(a1, a1[3]);
  sub_1974FE6A4();
  sub_197522AFC();
  if (v2)
  {
    v11 = v24;
    sub_1973F9E68(v10);

    type metadata accessor for Schema.Attribute();
    swift_deallocPartialClassInstance();
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1Tm_6(v23);
    return v11;
  }

  LOBYTE(v25) = 0;
  v12 = sub_1975225EC();
  v13 = v24;
  v24[2] = v12;
  v13[3] = v14;
  LOBYTE(v25) = 1;
  v13[4] = sub_1975225EC();
  v13[5] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BCD8, &qword_197532078);
  v26 = 2;
  sub_1974FE74C(&qword_1EAF2BCE0, sub_1974FE6F8, MEMORY[0x1E69E6330]);
  sub_19752261C();
  v13[6] = v25;
  LOBYTE(v25) = 3;
  sub_1975225EC();
  v22 = v16;
  result = sub_1975221FC();
  if (result)
  {
    v18 = result;

    v11 = v24;
    v24[7] = v18;
    LOBYTE(v25) = 4;
    v19 = sub_1975224FC();
    v22 = v20;
    swift_beginAccess();
    v21 = v22;
    v11[13] = v19;
    v11[14] = v21;

    v26 = 5;
    *(v11 + 96) = sub_1975225FC() & 1;
    (*(*v11 + 448))();
    (*(v6 + 8))(v9, 0);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1974FBC68(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BCF0, &unk_197532080);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1Tm_4(a1, a1[3]);
  sub_1974FE6A4();
  sub_197522B0C();
  swift_beginAccess();
  v17 = 0;

  sub_19752268C();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {

    swift_beginAccess();
    v16 = 1;

    sub_19752268C();

    swift_beginAccess();
    v15 = *(v3 + 48);
    LOBYTE(v13) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BCD8, &qword_197532078);
    sub_1974FE74C(&qword_1EAF2BCF8, sub_1974FE7C4, MEMORY[0x1E69E6300]);
    sub_1975226EC();
    swift_beginAccess();
    v13 = sub_19752238C();
    v14 = v11;
    LOBYTE(v12) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE58, &unk_19752F390);
    sub_197506F70(&qword_1EAF2BD08, &qword_1EAF2AE58, &unk_19752F390, MEMORY[0x1E69E7C70]);
    sub_1975226EC();

    swift_beginAccess();
    v12 = *(v3 + 104);
    v18 = 4;
    sub_1975226EC();
    swift_beginAccess();
    v18 = 5;
    sub_19752269C();
    return (*(v6 + 8))(v9, v5);
  }
}

BOOL sub_1974FC038()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = (v1 + 32);
  v3 = *(v1 + 16) + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = *v2;
    v2 += 40;
  }

  while (v4 != 1);
  return v3 != 0;
}

uint64_t sub_1974FC094(char a1)
{
  if (!a1)
  {
    return 23899;
  }

  if ((a1 & 1) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((a1 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v2 = sub_19741E330(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  if (v5 >= v4 >> 1)
  {
    v2 = sub_19741E330((v4 > 1), v5 + 1, 1, v2);
  }

  *(v2 + 2) = v5 + 1;
  v6 = &v2[16 * v5];
  strcpy(v6 + 32, ".isComposite");
  v6[45] = 0;
  *(v6 + 23) = -5120;
  if ((a1 & 2) != 0)
  {
LABEL_9:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_19741E330(0, *(v2 + 2) + 1, 1, v2);
    }

    v8 = *(v2 + 2);
    v7 = *(v2 + 3);
    if (v8 >= v7 >> 1)
    {
      v2 = sub_19741E330((v7 > 1), v8 + 1, 1, v2);
    }

    *(v2 + 2) = v8 + 1;
    v9 = &v2[16 * v8];
    *(v9 + 4) = 0x6D756E4573692ELL;
    *(v9 + 5) = 0xE700000000000000;
  }

LABEL_14:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_19741E330(0, *(v2 + 2) + 1, 1, v2);
    }

    v11 = *(v2 + 2);
    v10 = *(v2 + 3);
    if (v11 >= v10 >> 1)
    {
      v2 = sub_19741E330((v10 > 1), v11 + 1, 1, v2);
    }

    *(v2 + 2) = v11 + 1;
    v12 = &v2[16 * v11];
    *(v12 + 4) = 0x7473654E7361682ELL;
    *(v12 + 5) = 0xEF736D756E456465;
  }

  if ((a1 & 0x10) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_19741E330(0, *(v2 + 2) + 1, 1, v2);
    }

    v14 = *(v2 + 2);
    v13 = *(v2 + 3);
    if (v14 >= v13 >> 1)
    {
      v2 = sub_19741E330((v13 > 1), v14 + 1, 1, v2);
    }

    *(v2 + 2) = v14 + 1;
    v15 = &v2[16 * v14];
    *(v15 + 4) = 0xD000000000000010;
    *(v15 + 5) = 0x800000019752A100;
    if ((a1 & 8) == 0)
    {
LABEL_22:
      if ((a1 & 0x20) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_36;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_22;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_19741E330(0, *(v2 + 2) + 1, 1, v2);
  }

  v17 = *(v2 + 2);
  v16 = *(v2 + 3);
  if (v17 >= v16 >> 1)
  {
    v2 = sub_19741E330((v16 > 1), v17 + 1, 1, v2);
  }

  *(v2 + 2) = v17 + 1;
  v18 = &v2[16 * v17];
  strcpy(v18 + 32, ".isJSONCodable");
  v18[47] = -18;
  if ((a1 & 0x20) == 0)
  {
LABEL_23:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_24;
    }

LABEL_41:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_19741E330(0, *(v2 + 2) + 1, 1, v2);
    }

    v23 = *(v2 + 2);
    v22 = *(v2 + 3);
    if (v23 >= v22 >> 1)
    {
      v2 = sub_19741E330((v22 > 1), v23 + 1, 1, v2);
    }

    *(v2 + 2) = v23 + 1;
    v24 = &v2[16 * v23];
    *(v24 + 4) = 0xD000000000000013;
    *(v24 + 5) = 0x800000019752A0E0;
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_46;
  }

LABEL_36:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_19741E330(0, *(v2 + 2) + 1, 1, v2);
  }

  v20 = *(v2 + 2);
  v19 = *(v2 + 3);
  if (v20 >= v19 >> 1)
  {
    v2 = sub_19741E330((v19 > 1), v20 + 1, 1, v2);
  }

  *(v2 + 2) = v20 + 1;
  v21 = &v2[16 * v20];
  strcpy(v21 + 32, ".isValueType");
  v21[45] = 0;
  *(v21 + 23) = -5120;
  if ((a1 & 0x40) != 0)
  {
    goto LABEL_41;
  }

LABEL_24:
  if (a1 < 0)
  {
LABEL_46:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_19741E330(0, *(v2 + 2) + 1, 1, v2);
    }

    v26 = *(v2 + 2);
    v25 = *(v2 + 3);
    if (v26 >= v25 >> 1)
    {
      v2 = sub_19741E330((v25 > 1), v26 + 1, 1, v2);
    }

    *(v2 + 2) = v26 + 1;
    v27 = &v2[16 * v26];
    *(v27 + 4) = 0xD000000000000010;
    *(v27 + 5) = 0x800000019752A0C0;
  }

LABEL_51:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE60, &qword_19752C0E0);
  sub_19745BA20();
  v28 = sub_1975216CC();
  v30 = v29;

  MEMORY[0x19A8DFF80](v28, v30);

  MEMORY[0x19A8DFF80](23840, 0xE200000000000000);
  return 8283;
}

BOOL sub_1974FC5F0(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_1974FC620@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_1974FC64C@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t sub_1974FC740@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = sub_197506CD0(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1974FC780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a2;
  v28[0] = a2;
  v8 = swift_conformsToProtocol2();
  if (v8 && v7)
  {
    v9 = v8;
    do
    {
      sub_1973F732C(v7, v28, v7, v9);
      v7 = v28[0];
      v9 = swift_conformsToProtocol2();
      if (v9)
      {
        v10 = v7 == 0;
      }

      else
      {
        v10 = 1;
      }
    }

    while (!v10);
  }

  result = swift_conformsToProtocol2();
  if (result && v7 && (v28[0] = swift_getAssociatedTypeWitness(), MetatypeMetadata = swift_getMetatypeMetadata(), result = sub_1974A2910(v28, MetatypeMetadata), (result & 1) != 0))
  {
    v13 = *(a4 + 120);
    v14 = *(a4 + 120);
    if (v13 >= 0)
    {
      v14 |= 0x80u;
    }

    if ((v13 & 0x80000000) == 0 || (v14 & 0x10) == 0)
    {
      *(a4 + 120) = v14 | 0x10;
    }

    v15 = sub_1975217BC();
    v17 = v16;
    swift_beginAccess();
    v18 = *(a4 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 48) = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_1974772DC(0, *(v18 + 2) + 1, 1, v18);
      *(a4 + 48) = v18;
    }

    v20 = *(v18 + 2);
    v21 = *(v18 + 3);
    v22 = v20 + 1;
    if (v20 >= v21 >> 1)
    {
      v25 = v18;
      v26 = *(v18 + 2);
      v27 = sub_1974772DC((v21 > 1), v20 + 1, 1, v25);
      v20 = v26;
      v18 = v27;
    }

    *(v18 + 2) = v22;
    v23 = &v18[40 * v20];
    v23[32] = 1;
    v24 = *&v29[3];
    *(v23 + 33) = *v29;
    *(v23 + 9) = v24;
    *(v23 + 5) = 0;
    *(v23 + 6) = v15;
    *(v23 + 7) = v17;
    *(v23 + 34) = 0;
    *(v23 + 16) = 0;
    *(a4 + 48) = v18;
    return swift_endAccess();
  }

  else if ((*(a4 + 120) & 8) == 0)
  {
    *(a4 + 120) |= 8u;
  }

  return result;
}

void *Schema.Attribute.deinit()
{

  sub_1973F9E68(v0 + 64);

  return v0;
}

uint64_t sub_1974FCA7C(uint64_t a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 56) = a1;
  return result;
}

uint64_t sub_1974FCB2C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 336))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1974FCBB4(uint64_t a1)
{
  sub_197522A5C();
  swift_beginAccess();

  sub_19752180C();

  return sub_197522A9C();
}

double Schema.CompositeAttribute.properties.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t Schema.CompositeAttribute.properties.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 128) = a1;
}

uint64_t sub_1974FCD00()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x70795465756C6176;
  v4 = 0x69747265706F7270;
  if (v1 != 4)
  {
    v4 = 0x6E6F6974704F7369;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C616E696769726FLL;
  if (v1 != 1)
  {
    v5 = 0x736E6F6974706FLL;
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

uint64_t sub_1974FCDD4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_197506648(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1974FCE08(uint64_t a1)
{
  v2 = sub_197505A80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1974FCE44(uint64_t a1)
{
  v2 = sub_197505A80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Schema.CompositeAttribute.init(name:originalName:options:valueType:defaultValue:hashModifier:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  *(v10 + 128) = MEMORY[0x1E69E7CC0];
  v143 = (v10 + 128);
  *(v10 + 136) = MEMORY[0x1E69E7CC8];
  v17 = (v10 + 136);
  *(v10 + 144) = MEMORY[0x1E69E7CD0];
  sub_197413B20(a7, &v147);
  *(v10 + 80) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 112) = 0;
  *(v10 + 120) = 0;
  *(v10 + 104) = 0;
  v134 = a1;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  if (a4)
  {
    v18 = a3;
  }

  else
  {
    v18 = 0;
  }

  v19 = 0xE000000000000000;
  if (a4)
  {
    v19 = a4;
  }

  *(v10 + 32) = v18;
  *(v10 + 40) = v19;
  *(v10 + 48) = a5;
  *(v10 + 56) = a6;
  swift_beginAccess();

  sub_1973F7958(&v147, v10 + 64);
  swift_endAccess();
  swift_beginAccess();
  *(v10 + 104) = a8;
  *(v10 + 112) = a9;

  v20 = swift_conformsToProtocol2();
  if (v20)
  {
    v21 = a6 == 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = !v21;
  *(v10 + 96) = v22;

  sub_1974FE9E4();

  sub_1973F9E68(&v147);
  *&v147 = a6;
  v23 = a6;
  if (v20)
  {
    v23 = a6;
    if (a6)
    {
      v23 = a6;
      do
      {
        sub_1973F732C(v23, &v147, v23, v20);
        v23 = v147;
        v20 = swift_conformsToProtocol2();
        if (v20)
        {
          v24 = v23 == 0;
        }

        else
        {
          v24 = 1;
        }
      }

      while (!v24);
    }
  }

  v25 = *v23;
  v136 = v10;
  if (*v23 > 0x7FF)
  {
    if ((sub_19752148C() - 2048) < 0xFFFFFFFFFFFFF801)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (v25 - 513 < 2)
    {
      v26 = v23 + 1;
      if (*(v23[1] + 20) & 0xFFFFFF | *(v23[1] + 24))
      {
        if (*sub_19752146C())
        {
LABEL_171:
          *&v147 = 0;
          *(&v147 + 1) = 0xE000000000000000;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197529B30);
          v133 = sub_19752149C();
          MEMORY[0x19A8DFF80](v133);

          goto LABEL_172;
        }

        for (i = 1; ; ++i)
        {
          if (*v23 - 513 > 1)
          {
            v28 = 0;
          }

          else
          {
            v28 = (*(*v26 + 20) & 0xFFFFFF) + *(*v26 + 24);
            if (i == v28)
            {
              goto LABEL_110;
            }
          }

          if (i >= v28)
          {
            break;
          }

          if (*sub_19752146C())
          {
            goto LABEL_171;
          }
        }

        goto LABEL_167;
      }

LABEL_110:

      if ((*(v10 + 120) & 2) == 0)
      {
        *(v10 + 120) |= 2u;
      }

      v81 = swift_conformsToProtocol2();
      if (v81)
      {
        sub_1974FE818(v23, v134, a2, v10, v23, v81);

        goto LABEL_114;
      }

      v84 = 0;
      while (1)
      {
        while (1)
        {
          if (*v23 > 0x7FF || *v23 - 513 > 1)
          {
            if (!v84)
            {
              goto LABEL_114;
            }
          }

          else if (v84 == (*(*v26 + 20) & 0xFFFFFF) + *(*v26 + 24))
          {
            goto LABEL_114;
          }

          sub_1975214FC();
          if (__OFADD__(v84++, 1))
          {
            goto LABEL_168;
          }

          v86 = sub_1975214AC();
          if (v86)
          {
            break;
          }

          v141 = v84;
          v90 = sub_1975214BC();
          v92 = v91;
          type metadata accessor for Schema.Attribute();
          v93 = swift_allocObject();
          sub_1974FB418(v90, v92, MEMORY[0x1E69E6158]);
          swift_beginAccess();
          *(v93 + 96) = 1;
          swift_beginAccess();

          MEMORY[0x19A8E00D0](v94);
          if (*((*v143 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v143 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1975219FC();
          }

          sub_197521A4C();
          swift_endAccess();
          swift_beginAccess();
          v96 = *(v93 + 16);
          v95 = *(v93 + 24);
          swift_beginAccess();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v145 = *v17;
          *v17 = 0x8000000000000000;
          sub_1974184C4(v93, v96, v95, isUniquelyReferenced_nonNull_native);

          *v17 = v145;
          swift_endAccess();
          v98 = sub_1975214BC();
          v100 = v99;
          swift_beginAccess();
          sub_197414EA0(&v145, v98, v100);
          swift_endAccess();

          v84 = v141;
        }

        v87 = v86;
        v88 = *v86;
        v89 = sub_19752148C();
        if (v88 >= 0x800)
        {
          break;
        }

        if (v89 >= 0x800)
        {
          if (!v88)
          {
            goto LABEL_134;
          }

LABEL_138:
          v109 = sub_1975214BC();
          v111 = v110;
          v112 = swift_allocObject();
          *(v112 + 128) = MEMORY[0x1E69E7CC0];
          *(v112 + 136) = MEMORY[0x1E69E7CC8];
          *(v112 + 144) = MEMORY[0x1E69E7CD0];
          sub_1974FB418(v109, v111, v87);
          swift_beginAccess();
          *(v112 + 96) = 1;
          if (sub_1973F6EEC(v87))
          {
            goto LABEL_147;
          }

          *&v147 = v87;
          v113 = swift_conformsToProtocol2();
          if (v113)
          {
            v114 = v113;
            v115 = v87;
            do
            {
              sub_1973F732C(v115, &v147, v115, v114);
              v115 = v147;
              v114 = swift_conformsToProtocol2();
              if (v114)
              {
                v116 = v115 == 0;
              }

              else
              {
                v116 = 1;
              }
            }

            while (!v116);
          }

          sub_197520C6C();
          if (swift_dynamicCastMetatype())
          {
LABEL_147:
            type metadata accessor for Schema.Attribute();
            v117 = swift_allocObject();

            sub_1974FB418(12383, 0xE200000000000000, v87);
            swift_beginAccess();
            *(v117 + 96) = 1;
          }

          else
          {
            v147 = 0u;
            v148 = 0u;
            v117 = swift_allocObject();

            Schema.CompositeAttribute.init(name:originalName:options:valueType:defaultValue:hashModifier:)(12383, 0xE200000000000000, 0, 0, MEMORY[0x1E69E7CC0], v87, &v147, 0, 0);
            swift_beginAccess();
            *(v117 + 96) = 1;
            swift_beginAccess();

            sub_1974FE9CC(v126);
          }

          v142 = v84;

          swift_beginAccess();

          MEMORY[0x19A8E00D0](v118);
          if (*((*(v112 + 128) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v112 + 128) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1975219FC();
          }

          sub_197521A4C();
          swift_endAccess();
          swift_beginAccess();
          v119 = *(v117 + 16);
          v120 = *(v117 + 24);
          swift_beginAccess();

          v121 = swift_isUniquelyReferenced_nonNull_native();
          v145 = *(v112 + 136);
          *(v112 + 136) = 0x8000000000000000;
          sub_1974184C4(v117, v119, v120, v121);

          *(v112 + 136) = v145;
          swift_endAccess();
          sub_1974FE9E4();
          swift_beginAccess();

          MEMORY[0x19A8E00D0](v122);
          if (*((*v143 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v143 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1975219FC();
          }

          sub_197521A4C();
          swift_endAccess();
          swift_beginAccess();
          v123 = *(v112 + 16);
          v124 = *(v112 + 24);
          swift_beginAccess();

          v125 = swift_isUniquelyReferenced_nonNull_native();
          v145 = *v17;
          *v17 = 0x8000000000000000;
          sub_1974184C4(v112, v123, v124, v125);

          *v17 = v145;
          swift_endAccess();

          v84 = v142;
        }

        else
        {
          if (v88 != v89)
          {
            goto LABEL_138;
          }

LABEL_134:
          sub_19752146C();
          v101 = sub_19752186C();
          v103 = v102;
          v147 = 0u;
          v148 = 0u;
          v104 = swift_allocObject();
          Schema.CompositeAttribute.init(name:originalName:options:valueType:defaultValue:hashModifier:)(v101, v103, 0, 0, MEMORY[0x1E69E7CC0], v87, &v147, 0, 0);
          swift_beginAccess();
          *(v104 + 96) = 1;
          swift_beginAccess();
          v105 = swift_retain_n();
          MEMORY[0x19A8E00D0](v105);
          if (*((*v143 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v143 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1975219FC();
          }

          sub_197521A4C();
          swift_endAccess();
          swift_beginAccess();
          v106 = *(v104 + 16);
          v107 = *(v104 + 24);
          swift_beginAccess();

          v108 = swift_isUniquelyReferenced_nonNull_native();
          v145 = *v17;
          *v17 = 0x8000000000000000;
          sub_1974184C4(v104, v106, v107, v108);

          *v17 = v145;
          swift_endAccess();
        }
      }

      if (v89 - 2048 < 0xFFFFFFFFFFFFF801)
      {
        goto LABEL_134;
      }

      goto LABEL_138;
    }

    if (v25 == 512)
    {

      if (sub_19752154C())
      {
        for (j = 0; j != sub_19752154C(); ++j)
        {
          if (j >= sub_19752154C())
          {
            goto LABEL_169;
          }

          v46 = *v23;
          v47 = sub_19752148C();
          if (v46 > 0x7FF)
          {
            if (v47 - 2048 < 0xFFFFFFFFFFFFF801)
            {
              goto LABEL_66;
            }
          }

          else if (v47 >= 0x800)
          {
            if (!v46)
            {
LABEL_66:
              sub_19752145C();
              sub_19752144C();
              v48 = sub_19752142C();
              goto LABEL_69;
            }
          }

          else if (v46 == v47)
          {
            goto LABEL_66;
          }

          sub_19752146C();
          v48 = sub_19752186C();
LABEL_69:
          if (v48 != 0x676E696B6361625FLL || v49 != 0xEC00000061746144)
          {
            v51 = sub_19752282C();

            if (v51)
            {
              continue;
            }

            if (sub_19752151C() != 0xD000000000000016 || 0x8000000197525EF0 != v52)
            {
              v53 = sub_19752282C();

              if (v53)
              {
                continue;
              }

              if (sub_19752151C() != 0x7265666675625FLL || v54 != 0xE700000000000000)
              {
                v55 = sub_19752282C();

                if ((v55 & 1) == 0)
                {
                  v56 = sub_19752152C();
                  *&v147 = v56;
                  v57 = swift_conformsToProtocol2();
                  v58 = v56;
                  if (v57)
                  {
                    v58 = v56;
                    if (v56)
                    {
                      v59 = v57;
                      v58 = v56;
                      do
                      {
                        sub_1973F732C(v58, &v147, v58, v59);
                        v58 = v147;
                        v59 = swift_conformsToProtocol2();
                        if (v59)
                        {
                          v60 = v58 == 0;
                        }

                        else
                        {
                          v60 = 1;
                        }
                      }

                      while (!v60);
                    }
                  }

                  if (sub_1973F6EEC(v58) || swift_conformsToProtocol2() && v58)
                  {
                    v61 = sub_19752151C();
                    v62 = v56;
                    v64 = v63;
                    type metadata accessor for Schema.Attribute();
                    v65 = swift_allocObject();
                    sub_1974FB418(v61, v64, v62);
                    swift_beginAccess();

                    MEMORY[0x19A8E00D0](v66);
                    if (*((*v143 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v143 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      sub_1975219FC();
                    }

                    sub_197521A4C();
                    swift_endAccess();
                    swift_beginAccess();
                    v68 = *(v65 + 16);
                    v67 = *(v65 + 24);
                    swift_beginAccess();

                    v69 = swift_isUniquelyReferenced_nonNull_native();
                    v146 = *v17;
                    *v17 = 0x8000000000000000;
                    sub_1974184C4(v65, v68, v67, v69);

                    *v17 = v146;
                    swift_endAccess();
                  }

                  else
                  {
                    *&v147 = v58;
                    v70 = swift_conformsToProtocol2();
                    v138 = v56;
                    if (v70 && v58)
                    {
                      v71 = v70;
                      do
                      {
                        sub_1973F732C(v58, &v147, v58, v71);
                        v58 = v147;
                        v71 = swift_conformsToProtocol2();
                        if (v71)
                        {
                          v72 = v58 == 0;
                        }

                        else
                        {
                          v72 = 1;
                        }
                      }

                      while (!v72);
                    }

                    sub_197520C6C();
                    v73 = swift_dynamicCastMetatype();
                    v74 = sub_19752151C();
                    v137 = v75;
                    if (v73)
                    {
                      type metadata accessor for Schema.Attribute();
                      v76 = swift_allocObject();
                      sub_1974FB418(v74, v137, v138);
                      swift_beginAccess();

                      MEMORY[0x19A8E00D0](v77);
                      if (*((*v143 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v143 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                      {
                        sub_1975219FC();
                      }

                      sub_197521A4C();
                      swift_endAccess();
                      swift_beginAccess();
                      v78 = *(v76 + 24);
                      v139 = *(v76 + 16);
                      swift_beginAccess();
                    }

                    else
                    {
                      v147 = 0u;
                      v148 = 0u;
                      v76 = swift_allocObject();
                      Schema.CompositeAttribute.init(name:originalName:options:valueType:defaultValue:hashModifier:)(v74, v137, 0, 0, MEMORY[0x1E69E7CC0], v138, &v147, 0, 0);
                      swift_beginAccess();
                      v79 = swift_retain_n();
                      MEMORY[0x19A8E00D0](v79);
                      if (*((*v143 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v143 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                      {
                        sub_1975219FC();
                      }

                      sub_197521A4C();
                      swift_endAccess();
                      swift_beginAccess();
                      v78 = *(v76 + 24);
                      v139 = *(v76 + 16);
                      swift_beginAccess();
                    }

                    v80 = swift_isUniquelyReferenced_nonNull_native();
                    v146 = *v17;
                    *v17 = 0x8000000000000000;
                    sub_1974184C4(v76, v139, v78, v80);

                    *v17 = v146;
                    swift_endAccess();
                  }
                }

                continue;
              }
            }
          }
        }
      }

LABEL_114:
      sub_1974FE9E4();
      sub_1973F9E68(a7);
      return v136;
    }

    v83 = sub_19752148C();
    if (v83 < 0x800)
    {
      if (v25 != v83)
      {
        goto LABEL_155;
      }

LABEL_33:

      if (sub_19752154C())
      {
        v29 = 0;
        while (v29 < sub_19752154C())
        {
          v30 = sub_19752152C();
          v31 = sub_19752151C();
          v33 = v32;
          if (!sub_19752181C())
          {

            *&v147 = 95;
            *(&v147 + 1) = 0xE100000000000000;
            v34 = sub_1975227DC();
            MEMORY[0x19A8DFF80](v34);

            v33 = *(&v147 + 1);
            v31 = v147;
          }

          if (sub_1973F6EEC(v30))
          {
            goto LABEL_48;
          }

          *&v147 = v30;
          v35 = swift_conformsToProtocol2();
          if (v35 && v30)
          {
            v36 = v35;
            v37 = v30;
            do
            {
              sub_1973F732C(v37, &v147, v37, v36);
              v37 = v147;
              v36 = swift_conformsToProtocol2();
              if (v36)
              {
                v38 = v37 == 0;
              }

              else
              {
                v38 = 1;
              }
            }

            while (!v38);
          }

          sub_197520C6C();
          if (swift_dynamicCastMetatype())
          {
LABEL_48:
            type metadata accessor for Schema.Attribute();
            v39 = swift_allocObject();
            sub_1974FB418(v31, v33, v30);
            swift_beginAccess();
            *(v39 + 96) = 1;
          }

          else
          {
            v147 = 0u;
            v148 = 0u;
            v39 = swift_allocObject();
            Schema.CompositeAttribute.init(name:originalName:options:valueType:defaultValue:hashModifier:)(v31, v33, 0, 0, MEMORY[0x1E69E7CC0], v30, &v147, 0, 0);
            swift_beginAccess();
            *(v39 + 96) = 1;
            swift_beginAccess();

            sub_1974FEDB0(v44);
          }

          swift_beginAccess();

          MEMORY[0x19A8E00D0](v40);
          if (*((*v143 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v143 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1975219FC();
          }

          sub_197521A4C();
          swift_endAccess();
          swift_beginAccess();
          v41 = *(v39 + 16);
          v42 = *(v39 + 24);
          swift_beginAccess();

          v43 = swift_isUniquelyReferenced_nonNull_native();
          v144 = *v17;
          *v17 = 0x8000000000000000;
          sub_1974184C4(v39, v41, v42, v43);

          *v17 = v144;
          swift_endAccess();

          if (v29 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_166;
          }

          if (++v29 == sub_19752154C())
          {
            goto LABEL_114;
          }
        }

        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
        goto LABEL_170;
      }

      goto LABEL_114;
    }

    if (!v25)
    {
      goto LABEL_33;
    }
  }

LABEL_155:
  v127 = *v23;
  if (*v23 - 2048 < 0xFFFFFFFFFFFFF801 || ((v128 = sub_19752147C(), v128 < 0x800) ? (v129 = v128 == v127) : (v129 = 0), !v129 ? (v130 = 0) : (v130 = 1), v127 - 515 < 2 || v130))
  {
LABEL_170:
    *&v147 = 0;
    *(&v147 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000003ELL, 0x8000000197529AB0);
    v132 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v132);

    goto LABEL_172;
  }

  *&v147 = 0;
  *(&v147 + 1) = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000032, 0x8000000197529AF0);
  v131 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v131);

LABEL_172:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974FE634(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1974FE6A4()
{
  result = qword_1EAF2BCD0;
  if (!qword_1EAF2BCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BCD0);
  }

  return result;
}

unint64_t sub_1974FE6F8()
{
  result = qword_1EAF2BCE8;
  if (!qword_1EAF2BCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BCE8);
  }

  return result;
}

uint64_t sub_1974FE74C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2BCD8, &qword_197532078);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1974FE7C4()
{
  result = qword_1EAF2BD00;
  if (!qword_1EAF2BD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BD00);
  }

  return result;
}

uint64_t sub_1974FE818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for Schema.Attribute();
  v10 = swift_allocObject();

  sub_1974FB418(a2, a3, AssociatedTypeWitness);
  swift_beginAccess();
  *(v10 + 96) = 1;
  swift_beginAccess();

  MEMORY[0x19A8E00D0](v11);
  if (*((*(a4 + 128) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 128) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1975219FC();
  }

  sub_197521A4C();
  swift_endAccess();
  swift_beginAccess();
  v12 = *(v10 + 16);
  v13 = *(v10 + 24);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a4 + 136);
  *(a4 + 136) = 0x8000000000000000;
  sub_1974184C4(v10, v12, v13, isUniquelyReferenced_nonNull_native);

  *(a4 + 136) = v16;
  swift_endAccess();
}

uint64_t sub_1974FE9E4()
{
  v1 = v0;
  sub_1973F710C();
  if ((*(v0 + 120) & 1) == 0)
  {
    *(v0 + 120) |= 1u;
  }

  swift_beginAccess();
  v2 = *(v0 + 56);
  v24[0] = v2;
  v3 = &protocol descriptor for _Optional;
  v4 = swift_conformsToProtocol2();
  if (v4)
  {
    v5 = v2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v4;
    do
    {
      sub_1973F732C(v2, v24, v2, v6);
      v2 = v24[0];
      v6 = swift_conformsToProtocol2();
      if (v6)
      {
        v7 = v2 == 0;
      }

      else
      {
        v7 = 1;
      }
    }

    while (!v7);
  }

  v8 = *v2;
  if ((*v2 - 513) <= 1 && ((*(v1 + 120) & 2) != 0 || (*(v1 + 120) |= 2u, v8 = *v2, *v2 <= 0x7FF)) && (v8 - 513) <= 1 && *(v2[1] + 20) & 0xFFFFFF | *(v2[1] + 24))
  {
    if (!*(sub_19752146C() + 4))
    {
      v9 = sub_1975214BC();
      v11 = v10;
      swift_beginAccess();
      v3 = v1 + 144;
      sub_197414EA0(&v23, v9, v11);
      swift_endAccess();
    }

    for (i = 1; ; ++i)
    {
      if ((*v2 - 513) > 1)
      {
        v13 = 0;
      }

      else
      {
        v13 = (*(v2[1] + 20) & 0xFFFFFF) + *(v2[1] + 24);
        if (i == v13)
        {
          goto LABEL_29;
        }
      }

      if (i >= v13)
      {
        break;
      }

      if (!*(sub_19752146C() + 4))
      {
        v14 = sub_1975214BC();
        v16 = v15;
        swift_beginAccess();
        v3 = v1 + 144;
        sub_197414EA0(&v23, v14, v16);
        swift_endAccess();
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
  }

  else
  {
LABEL_29:
    result = swift_beginAccess();
    v3 = *(v1 + 128);
    if (!(v3 >> 62))
    {
      v18 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        return result;
      }

      goto LABEL_31;
    }
  }

  result = sub_1975220EC();
  v18 = result;
  if (!result)
  {
    return result;
  }

LABEL_31:

  for (j = 0; ; ++j)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x19A8E0960](j, v3);
      v20 = j + 1;
      if (__OFADD__(j, 1))
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (j >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v20 = j + 1;
      if (__OFADD__(j, 1))
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }
    }

    v21 = swift_dynamicCastClass();
    if (v21)
    {
      break;
    }

LABEL_33:
    if (v20 == v18)
    {
    }
  }

  v22 = *(v21 + 120);

  if ((v22 & 6) == 0)
  {
    goto LABEL_33;
  }

  if ((*(v1 + 120) & 4) == 0)
  {
    *(v1 + 120) |= 4u;
  }

  return result;
}

unint64_t sub_1974FEDC8(unint64_t result, void (*a2)(uint64_t))
{
  v3 = result;
  if (result >> 62)
  {
    result = sub_1975220EC();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = 0;
    do
    {
      v6 = MEMORY[0x19A8E0960](v5, v3);
      type metadata accessor for Schema.CompositeAttribute();
      if (swift_dynamicCastClass())
      {
        swift_beginAccess();

        a2(v7);
      }

      ++v5;
      swift_beginAccess();
      *(v6 + 96) = 1;
      result = swift_unknownObjectRelease();
    }

    while (v4 != v5);
  }

  else
  {
    v8 = (v3 + 32);
    type metadata accessor for Schema.CompositeAttribute();
    do
    {
      v10 = *v8;
      if (swift_dynamicCastClass())
      {
        swift_beginAccess();

        a2(v9);
      }

      else
      {
      }

      swift_beginAccess();
      *(v10 + 96) = 1;

      ++v8;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t Schema.CompositeAttribute.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  Schema.CompositeAttribute.init(from:)(a1);
  return v2;
}

uint64_t Schema.CompositeAttribute.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BD10, &qword_197532090);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v48 = &v35 - v8;
  v1[16] = MEMORY[0x1E69E7CC0];
  v9 = v1 + 16;
  v1[17] = MEMORY[0x1E69E7CC8];
  v1[18] = MEMORY[0x1E69E7CD0];
  sub_197505A1C(a1, v47);
  Schema.Attribute.init(from:)(v47);
  if (v2)
  {
LABEL_2:
    __swift_destroy_boxed_opaque_existential_1Tm_6(a1);
    return v3;
  }

  v43 = v6;
  v44 = v1 + 17;
  __swift_project_boxed_opaque_existential_1Tm_4(a1, a1[3]);
  sub_197505A80();
  sub_197522AFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BD20, &qword_197532098);
  LOBYTE(v47[0]) = 4;
  sub_197505AD4(&qword_1EAF2BD28, &qword_1ED7CA310, &protocol conformance descriptor for Schema.Attribute, MEMORY[0x1E69E6330]);
  v10 = v5;
  v11 = v48;
  sub_19752261C();
  v42 = 0;
  v13 = v46;
  swift_beginAccess();
  *v9 = v13;

  v14 = *v9;
  if (v14 >> 62)
  {
    goto LABEL_39;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v16 = MEMORY[0x1E69E7CC0];
  v41 = v10;
  if (!v15)
  {
LABEL_13:
    v18 = v43;
    v40 = v16;
    if (v16 >> 62)
    {
      v19 = sub_1975220EC();
      v16 = v40;
      if (v19)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v19 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
LABEL_15:
        v14 = 0;
        v38 = v16 & 0xFFFFFFFFFFFFFF8;
        v39 = v16 & 0xC000000000000001;
        v20 = MEMORY[0x1E69E7CC8];
        v36 = v19;
        v37 = a1;
        v35 = v3;
        while (1)
        {
          if (v39)
          {
            a1 = MEMORY[0x19A8E0960](v14, v16);
            v22 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              goto LABEL_35;
            }
          }

          else
          {
            if (v14 >= *(v38 + 16))
            {
              goto LABEL_36;
            }

            a1 = *(v16 + 8 * v14 + 32);

            v22 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
LABEL_35:
              __break(1u);
LABEL_36:
              __break(1u);
LABEL_37:
              __break(1u);
LABEL_38:
              __break(1u);
LABEL_39:
              v15 = sub_1975220EC();
              goto LABEL_5;
            }
          }

          swift_beginAccess();
          v3 = a1[2];
          v23 = a1[3];

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v45 = v20;
          v10 = sub_1973F4028(v3, v23);
          v26 = v20[2];
          v27 = (v25 & 1) == 0;
          v28 = v26 + v27;
          if (__OFADD__(v26, v27))
          {
            goto LABEL_37;
          }

          v11 = v25;
          if (v20[3] >= v28)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if (v25)
              {
                goto LABEL_16;
              }
            }

            else
            {
              sub_197479A9C();
              if (v11)
              {
                goto LABEL_16;
              }
            }
          }

          else
          {
            sub_197478128(v28, isUniquelyReferenced_nonNull_native);
            v29 = sub_1973F4028(v3, v23);
            if ((v11 & 1) != (v30 & 1))
            {
              goto LABEL_44;
            }

            v10 = v29;
            if (v11)
            {
LABEL_16:

              v20 = v45;
              *(v45[7] + 8 * v10) = a1;

              goto LABEL_17;
            }
          }

          v20 = v45;
          v45[(v10 >> 6) + 8] |= 1 << v10;
          v31 = (v20[6] + 16 * v10);
          *v31 = v3;
          v31[1] = v23;
          *(v20[7] + 8 * v10) = a1;

          v32 = v20[2];
          v33 = __OFADD__(v32, 1);
          v34 = v32 + 1;
          if (v33)
          {
            goto LABEL_38;
          }

          v20[2] = v34;
LABEL_17:
          ++v14;
          v3 = v35;
          v21 = v22 == v36;
          a1 = v37;
          v10 = v41;
          v18 = v43;
          v11 = v48;
          v16 = v40;
          if (v21)
          {
            goto LABEL_42;
          }
        }
      }
    }

    v20 = MEMORY[0x1E69E7CC8];
LABEL_42:

    swift_beginAccess();
    *(v3 + 136) = v20;

    sub_1974FE9E4();
    (*(v18 + 8))(v11, v10);
    goto LABEL_2;
  }

  v46 = MEMORY[0x1E69E7CC0];

  sub_1975222CC();
  if ((v15 & 0x8000000000000000) == 0)
  {
    v17 = 0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        MEMORY[0x19A8E0960](v17, v14);
      }

      else
      {
      }

      ++v17;
      sub_19752229C();
      sub_1975222DC();
      sub_1975222EC();
      sub_1975222AC();
    }

    while (v15 != v17);

    v16 = v46;
    v10 = v41;
    v11 = v48;
    goto LABEL_13;
  }

  __break(1u);
LABEL_44:
  result = sub_1975229CC();
  __break(1u);
  return result;
}

uint64_t Schema.CompositeAttribute.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BD30, &qword_1975320A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-v8];
  __swift_project_boxed_opaque_existential_1Tm_4(a1, a1[3]);
  sub_197505A80();
  sub_197522B0C();
  swift_beginAccess();
  v18 = 0;

  sub_19752268C();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {

    swift_beginAccess();
    v17 = 1;

    sub_19752268C();

    swift_beginAccess();
    v16 = *(v3 + 48);
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BCD8, &qword_197532078);
    sub_1974FE74C(&qword_1EAF2BCF8, sub_1974FE7C4, MEMORY[0x1E69E6300]);
    sub_1975226EC();
    swift_beginAccess();
    v15 = 5;
    sub_19752269C();
    swift_beginAccess();
    v13 = sub_19752238C();
    v14 = v11;
    LOBYTE(v19) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE58, &unk_19752F390);
    sub_197506F70(&qword_1EAF2BD08, &qword_1EAF2AE58, &unk_19752F390, MEMORY[0x1E69E7C70]);
    sub_1975226EC();

    swift_beginAccess();
    v19 = *(v3 + 128);
    v12[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BD20, &qword_197532098);
    sub_197505AD4(&qword_1EAF2BD38, &qword_1ED7CA328, &protocol conformance descriptor for Schema.Attribute, MEMORY[0x1E69E6300]);
    sub_1975226EC();
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t static Schema.CompositeAttribute.== infix(_:_:)(void *a1, void *a2)
{
  swift_beginAccess();
  v4 = a1[2];
  v5 = a1[3];
  swift_beginAccess();
  v6 = v4 == a2[2] && v5 == a2[3];
  if (v6 || (sub_19752282C()) && (swift_beginAccess(), v7 = a1[6], swift_beginAccess(), (sub_1974D1674(v7, a2[6])) && (swift_beginAccess(), v8 = a1[7], swift_beginAccess(), v8 == a2[7]) && (swift_beginAccess(), v9 = a1[16], swift_beginAccess(), v10 = a2[16], , , v11 = sub_1974D19EC(v9, v10), , , (v11))
  {
    swift_beginAccess();
    v12 = a1[17];
    swift_beginAccess();
    v13 = a2[17];

    v14 = sub_19750556C(v12, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1974FFB8C()
{
}

void *Schema.CompositeAttribute.deinit()
{

  sub_1973F9E68(v0 + 64);

  return v0;
}

uint64_t Schema.CompositeAttribute.__deallocating_deinit()
{
  Schema.CompositeAttribute.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1974FFC54()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1974FFCA4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1974FFD4C()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1974FFD9C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t Schema.Relationship.keypath.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

double Schema.Relationship.options.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t Schema.Relationship.options.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

uint64_t Schema.Relationship.valueType.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 64) = a1;
  return result;
}

uint64_t Schema.Relationship.destination.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 72);

  return v1;
}

uint64_t Schema.Relationship.destination.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

uint64_t Schema.Relationship.deleteRule.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 88);
  return result;
}

uint64_t Schema.Relationship.deleteRule.setter(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 88) = v2;
  return result;
}

uint64_t Schema.Relationship.inverseName.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);

  return v1;
}

uint64_t Schema.Relationship.inverseName.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

uint64_t Schema.Relationship.inverseKeyPath.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t Schema.Relationship.minimumModelCount.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 120) = a1;
  *(v2 + 128) = a2 & 1;
  return result;
}

uint64_t Schema.Relationship.maximumModelCount.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 136) = a1;
  *(v2 + 144) = a2 & 1;
  return result;
}

uint64_t Schema.Relationship.hashModifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 152);

  return v1;
}

uint64_t Schema.Relationship.hashModifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
}

uint64_t Schema.Relationship.DeleteRule.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1975224CC();

  v6 = 4;
  if (v4 < 4)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t Schema.Relationship.DeleteRule.rawValue.getter()
{
  v1 = 0x6E6F697463416F6ELL;
  v2 = 0x65646163736163;
  if (*v0 != 2)
  {
    v2 = 2037278052;
  }

  if (*v0)
  {
    v1 = 0x7966696C6C756ELL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1975007B0()
{
  sub_197522A5C();
  sub_19752180C();

  return sub_197522A9C();
}

uint64_t sub_19750086C(uint64_t a1)
{
  sub_19752180C();
}

uint64_t sub_197500914(uint64_t a1)
{
  sub_197522A5C();
  sub_19752180C();

  return sub_197522A9C();
}

void sub_1975009D8(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6E6F697463416F6ELL;
  v4 = 0xE700000000000000;
  v5 = 0x65646163736163;
  if (*v1 != 2)
  {
    v5 = 2037278052;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x7966696C6C756ELL;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t Schema.Relationship.Option.debugDescription.getter()
{
  if (*v0 == 1)
  {
    MEMORY[0x19A8DFF80](0x657571696E75, 0xE600000000000000);
  }

  return 0;
}

uint64_t sub_197500BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7571696E5573695FLL && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_19752282C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_197500C4C(uint64_t a1)
{
  v2 = sub_197505B70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197500C88(uint64_t a1)
{
  v2 = sub_197505B70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Schema.Relationship.Option.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BD40, &qword_1975320A8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1Tm_4(a1, a1[3]);
  sub_197505B70();
  sub_197522B0C();
  sub_19752269C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t Schema.Relationship.Option.hashValue.getter()
{
  sub_197522A5C();
  sub_197522A7C();
  return sub_197522A9C();
}

uint64_t Schema.Relationship.Option.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BD50, &qword_1975320B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1Tm_4(a1, a1[3]);
  sub_197505B70();
  sub_197522AFC();
  if (!v2)
  {
    v10 = sub_1975225FC();
    (*(v6 + 8))(v9, v5);
    *a2 = v10 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm_6(a1);
}

uint64_t sub_197500FE0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BD40, &qword_1975320A8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1Tm_4(a1, a1[3]);
  sub_197505B70();
  sub_197522B0C();
  sub_19752269C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_197501118()
{
  sub_197522A5C();
  sub_197522A7C();
  return sub_197522A9C();
}

uint64_t sub_19750118C(uint64_t a1)
{
  sub_197522A5C();
  sub_197522A7C();
  return sub_197522A9C();
}

uint64_t sub_1975011D0()
{
  if (*v0 == 1)
  {
    MEMORY[0x19A8DFF80](0x657571696E75, 0xE600000000000000);
  }

  return 0;
}

uint64_t Schema.Relationship.__allocating_init(_:deleteRule:minimumModelCount:maximumModelCount:originalName:inverse:hashModifier:)(uint64_t a1, char *a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = swift_allocObject();
  v17 = *a2;
  *(v16 + 48) = 0;
  *(v16 + 88) = 1;
  *(v16 + 96) = 0u;
  *(v16 + 112) = 0u;
  *(v16 + 128) = 1;
  *(v16 + 136) = 0;
  *(v16 + 144) = 1;
  *(v16 + 152) = 0;
  *(v16 + 160) = 0;
  *(v16 + 168) = 0;
  swift_beginAccess();
  *(v16 + 88) = v17;
  *(v16 + 56) = a1;
  if (a9)
  {
    swift_beginAccess();
    *(v16 + 112) = a9;
  }

  if (a8)
  {
    v18 = a7;
  }

  else
  {
    v18 = 0;
  }

  if (a8)
  {
    v19 = a8;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  *(v16 + 32) = v18;
  *(v16 + 40) = v19;
  swift_beginAccess();
  *(v16 + 120) = a3;
  *(v16 + 128) = a4 & 1;
  swift_beginAccess();
  *(v16 + 136) = a5;
  *(v16 + 144) = a6 & 1;
  swift_beginAccess();
  *(v16 + 152) = a10;
  *(v16 + 160) = a11;
  v20 = MEMORY[0x1E69E7CA0];
  *(v16 + 16) = 0;
  *(v16 + 24) = 0xE000000000000000;
  *(v16 + 64) = v20 + 8;
  *(v16 + 72) = 0;
  *(v16 + 80) = 0xE000000000000000;
  return v16;
}

uint64_t Schema.Relationship.init(_:deleteRule:minimumModelCount:maximumModelCount:originalName:inverse:hashModifier:)(uint64_t a1, char *a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v17 = *a2;
  *(v11 + 88) = 1;
  v18 = v11 + 88;
  *(v18 - 40) = 0;
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  *(v18 + 40) = 1;
  *(v18 + 48) = 0;
  *(v18 + 56) = 1;
  *(v18 + 64) = 0;
  *(v18 + 72) = 0;
  *(v18 + 80) = 0;
  swift_beginAccess();
  *v18 = v17;
  *(v18 - 32) = a1;
  if (a9)
  {
    swift_beginAccess();
    *(v12 + 112) = a9;
  }

  if (a8)
  {
    v19 = a7;
  }

  else
  {
    v19 = 0;
  }

  if (a8)
  {
    v20 = a8;
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  *(v12 + 32) = v19;
  *(v12 + 40) = v20;
  swift_beginAccess();
  *(v12 + 120) = a3;
  *(v12 + 128) = a4 & 1;
  swift_beginAccess();
  *(v12 + 136) = a5;
  *(v12 + 144) = a6 & 1;
  swift_beginAccess();
  *(v12 + 152) = a10;
  *(v12 + 160) = a11;
  v21 = MEMORY[0x1E69E7CA0];
  *(v12 + 16) = 0;
  *(v12 + 24) = 0xE000000000000000;
  *(v12 + 64) = v21 + 8;
  *(v12 + 72) = 0;
  *(v12 + 80) = 0xE000000000000000;
  return v12;
}

unint64_t sub_197501560(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000011;
    v6 = 0xD000000000000011;
    if (a1 != 8)
    {
      v6 = 0x69646F4D68736168;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x75526574656C6564;
    if (a1 != 5)
    {
      v7 = 0x4E65737265766E69;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1701667182;
    v2 = 0x736E6F6974706FLL;
    v3 = 0x70795465756C6176;
    if (a1 != 3)
    {
      v3 = 0x74616E6974736564;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6C616E696769726FLL;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1975016D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1975062EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_197501714(uint64_t a1)
{
  v2 = sub_197505BC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197501750(uint64_t a1)
{
  v2 = sub_197505BC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Schema.Relationship.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  Schema.Relationship.init(from:)(a1);
  return v2;
}

uint64_t *Schema.Relationship.init(from:)(void *a1)
{
  v2 = v1;
  v66 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BD58, &qword_1975320B8);
  v65 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v62 - v6;
  *(v2 + 88) = 1;
  v2[6] = 0;
  *(v2 + 6) = 0u;
  *(v2 + 7) = 0u;
  *(v2 + 128) = 1;
  v2[17] = 0;
  *(v2 + 144) = 1;
  v2[19] = 0;
  v2[20] = 0;
  v67 = a1;
  v68 = v2;
  *(v2 + 84) = 0;
  __swift_project_boxed_opaque_existential_1Tm_4(a1, a1[3]);
  sub_197505BC4();
  v8 = v75;
  sub_197522AFC();
  if (v8)
  {
    v75 = v8;
    v9 = v68;

    v15 = v67;
LABEL_4:

    swift_deallocPartialClassInstance();
    goto LABEL_5;
  }

  v10 = v65;
  LOBYTE(v73) = 0;
  v11 = sub_1975225EC();
  v9 = v68;
  v68[2] = v11;
  v9[3] = v12;
  LOBYTE(v73) = 1;
  v13 = sub_1975225EC();
  v75 = 0;
  v9[4] = v13;
  v9[5] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BD68, &qword_1975320C0);
  LOBYTE(v72[0]) = 2;
  sub_197505C18();
  v18 = v75;
  sub_19752261C();
  if (v18)
  {
    (*(v10 + 8))(v7, v4);
    v75 = v18;
    v19 = v18;
LABEL_13:

    v15 = v67;
    if (!v19)
    {
    }

    goto LABEL_4;
  }

  v9[7] = v73;
  LOBYTE(v73) = 3;
  v64 = 0;
  v20 = sub_1975225EC();
  v75 = 0;
  v63 = v20;
  v22 = v21;
  v23 = sub_1975221FC();
  if (v23)
  {
    v24 = v23;

    v9 = v68;
    v25 = v68;
    v68[8] = v24;
    v63 = (v25 + 8);
    LOBYTE(v73) = 5;
    sub_197505CF0();
    v26 = v75;
    sub_19752261C();
    v75 = v26;
    if (v26)
    {
      (*(v10 + 8))(v7, v4);
    }

    else
    {
      v27 = v72[0];
      swift_beginAccess();
      *(v2 + 88) = v27;
      LOBYTE(v72[0]) = 4;
      v28 = v75;
      v29 = sub_1975225EC();
      if (!v28)
      {
        v31 = v68;
        v68[9] = v29;
        v31[10] = v30;
        LOBYTE(v72[0]) = 6;
        v32 = sub_1975224FC();
        v75 = 0;
        v66 = v33;
        v34 = v32;
        swift_beginAccess();
        v35 = v66;
        v31[12] = v34;
        v31[13] = v35;

        v71 = 9;
        v36 = v75;
        v37 = sub_1975224FC();
        v75 = v36;
        if (v36)
        {
          goto LABEL_18;
        }

        v39 = v38;
        v40 = v37;
        swift_beginAccess();
        v31[19] = v40;
        v31[20] = v39;

        swift_beginAccess();
        v41 = v31[8];
        v70[0] = v41;
        v42 = swift_conformsToProtocol2();
        if (v42 && v41)
        {
          v43 = v42;
          do
          {
            sub_1973F732C(v41, v70, v41, v43);
            v41 = v70[0];
            v43 = swift_conformsToProtocol2();
            if (v43)
            {
              v44 = v41 == 0;
            }

            else
            {
              v44 = 1;
            }
          }

          while (!v44);
        }

        v70[0] = v41;
        v45 = swift_conformsToProtocol2();
        if (v45)
        {
          v46 = v41 == 0;
        }

        else
        {
          v46 = 1;
        }

        if (!v46)
        {
          v47 = v45;
          do
          {
            sub_1973F732C(v41, v70, v41, v47);
            v41 = v70[0];
            v47 = swift_conformsToProtocol2();
            if (v47)
            {
              v48 = v41 == 0;
            }

            else
            {
              v48 = 1;
            }
          }

          while (!v48);
        }

        v49 = !swift_conformsToProtocol2() || v41 == 0;
        v50 = !v49;
        v31 = v68;
        *(v68 + 168) = v50;
        LOBYTE(v70[0]) = 7;
        v51 = v75;
        v52 = sub_19752253C();
        v75 = v51;
        if (v51)
        {
LABEL_18:

          (*(v10 + 8))(v7, v4);
          v15 = v67;
          v9 = v31;
        }

        else
        {
          v54 = v52;
          v55 = v53;
          swift_beginAccess();
          v31[15] = v54;
          *(v31 + 128) = v55 & 1;
          v69 = 8;
          v56 = v75;
          v57 = sub_19752253C();
          v75 = v56;
          if (!v56)
          {
            v60 = v57;
            v61 = v58;
            (*(v10 + 8))(v7, v4);
            swift_beginAccess();
            v16 = v67;
            v9 = v68;
            v68[17] = v60;
            *(v9 + 144) = v61 & 1;
            goto LABEL_6;
          }

          v59 = v68;

          v9 = v59;
          (*(v10 + 8))(v7, v4);
          v15 = v67;
        }

LABEL_5:
        v16 = v15;
LABEL_6:
        __swift_destroy_boxed_opaque_existential_1Tm_6(v16);
        return v9;
      }

      v75 = v28;
      (*(v10 + 8))(v7, v4);
      v9 = v68;
    }

    v19 = v64;
    goto LABEL_13;
  }

  v73 = 0;
  v74 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x8000000197529C00);
  MEMORY[0x19A8DFF80](v63, v22);
  MEMORY[0x19A8DFF80](0xD000000000000020, 0x8000000197529C20);
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t Schema.Relationship.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BD88, &qword_1975320C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v15[-v8];
  __swift_project_boxed_opaque_existential_1Tm_4(a1, a1[3]);
  sub_197505BC4();
  sub_197522B0C();
  swift_beginAccess();
  v28 = 0;

  sub_19752268C();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {

    swift_beginAccess();
    v27 = 1;

    sub_19752268C();

    swift_beginAccess();
    v26 = *(v3 + 56);
    LOBYTE(v24) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BD68, &qword_1975320C0);
    sub_197505D44();
    sub_1975226EC();
    swift_beginAccess();
    sub_19752238C();
    if (v11)
    {
      LOBYTE(v24) = 3;
      sub_19752268C();

      swift_beginAccess();
      v23 = *(v3 + 88);
      v22 = 5;
      sub_197505E1C();
      sub_1975226EC();
      swift_beginAccess();
      v22 = 4;

      sub_19752268C();

      swift_beginAccess();
      v21 = 6;

      sub_19752267C();

      swift_beginAccess();
      v12 = *(v3 + 128);
      v19 = *(v3 + 120);
      v20 = v12;
      LOBYTE(v17) = 7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BDA8, &unk_1975320D0);
      sub_197505E70();
      sub_1975226EC();
      swift_beginAccess();
      v13 = *(v3 + 144);
      v17 = *(v3 + 136);
      v18 = v13;
      LOBYTE(v16) = 8;
      sub_1975226EC();
      swift_beginAccess();
      v16 = *(v3 + 152);
      v15[15] = 9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE58, &unk_19752F390);
      sub_197506F70(&qword_1EAF2BD08, &qword_1EAF2AE58, &unk_19752F390, MEMORY[0x1E69E7C70]);
      sub_1975226EC();
      return (*(v6 + 8))(v9, v5);
    }

    else
    {
      v24 = 0;
      v25 = 0xE000000000000000;
      sub_1975221EC();

      v24 = 0xD00000000000001FLL;
      v25 = 0x8000000197529C50;
      swift_getMetatypeMetadata();
      v14 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v14);

      result = sub_1975223EC();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_197502548(uint64_t a1)
{
  swift_beginAccess();

  sub_19752180C();
}

uint64_t sub_1975025B4()
{
  sub_197522A5C();
  swift_beginAccess();

  sub_19752180C();

  return sub_197522A9C();
}

uint64_t sub_197502624(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
}

uint64_t sub_1975026D0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
}

uint64_t sub_19750277C(uint64_t a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 64) = a1;
  return result;
}

uint64_t *sub_19750282C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = Schema.Relationship.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1975028A8()
{
  sub_197522A5C();
  swift_beginAccess();

  sub_19752180C();

  return sub_197522A9C();
}

uint64_t sub_19750291C(uint64_t a1)
{
  swift_beginAccess();

  sub_19752180C();
}

uint64_t sub_197502988(uint64_t a1)
{
  sub_197522A5C();
  swift_beginAccess();

  sub_19752180C();

  return sub_197522A9C();
}

uint64_t (*Schema.Index.name.modify(uint64_t a1))(uint64_t a1)
{
  strcpy(a1, "Schema.Index");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
  return sub_1975089F0;
}

uint64_t (*Schema.Index.originalName.modify(uint64_t a1))(uint64_t a1)
{
  strcpy(a1, "Schema.Index");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
  return sub_197502ACC;
}

void (*Schema.Index.valueType.modify(double **a1))(void **a1)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  v7.val[0] = *(*v2 + 80);
  v7.val[1] = v7.val[0];
  vst2q_f64(v4, v7);
  type metadata accessor for Schema.Index.Types(255, v4);
  *(v5 + 4) = sub_197521AAC();
  return sub_197502BAC;
}

BOOL static Schema.Index.== infix(_:_:)()
{
  v0 = sub_1974194C0();
  v1 = sub_1974194C0();
  v2 = sub_1974D178C(v0, v1);

  return v2;
}

uint64_t Schema.Index.hash(into:)(uint64_t a1)
{
  v2 = sub_1974194C0();
  sub_197505780(a1, v2);
}

uint64_t Schema.Index.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

{
  swift_allocObject();
  v2 = sub_197506D40(a1);

  return v2;
}

uint64_t Schema.Index.init(_:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  return v1;
}

{
  v1 = sub_197506D40(a1);

  return v1;
}

uint64_t Schema.Index.debugDescription.getter()
{
  v1 = *v0;
  v3[0] = 0.0;
  v3[1] = -2.68156159e154;
  sub_1975221EC();
  v4 = 0;
  v5 = 0xE000000000000000;
  MEMORY[0x19A8DFF80](0xD000000000000011, 0x8000000197529CB0);
  *&v3[4] = v0[2];
  v6.val[0] = *(v1 + 80);
  v6.val[1] = v6.val[0];
  vst2q_f64(v3, v6);
  type metadata accessor for Schema.Index.Types(255, v3);
  sub_197521AAC();
  swift_getWitnessTable();
  sub_19752280C();
  return v4;
}

uint64_t Schema.Index.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656369646E69 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_19752282C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_197502F48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_197502F9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t Schema.Index.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  Schema.Index.init(from:)(a1, v3, v4, v5);
  return v2;
}

uint64_t *Schema.Index.init(from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(*v4 + 88);
  v17 = *(*v4 + 80);
  type metadata accessor for Schema.Index.CodingKeys(255, v17, v7, a4);
  swift_getWitnessTable();
  v18 = sub_19752264C();
  v16 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1Tm_4(a1, a1[3]);
  v11 = v19;
  sub_197522AFC();
  if (v11)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v16;
    v12 = v17;
    v19 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BDC0, &qword_1975320E0);
    sub_197506FD0();
    sub_19752261C();
    v15 = sub_197503300(v20, v12, v19);

    (*(v13 + 8))(v10, v18);
    *(v5 + 16) = v15;
  }

  __swift_destroy_boxed_opaque_existential_1Tm_6(a1);
  return v5;
}

uint64_t sub_197503300(uint64_t a1, char *a2, char *a3)
{
  v8 = *(v3 + 88);
  v35 = *(v3 + 80);
  v36 = a2;
  v37 = v8;
  v38 = a3;
  v30 = type metadata accessor for Schema.Index.Types(0, &v35);
  v9 = sub_1975215CC();
  v39 = v9;
  v29 = *(a1 + 16);
  if (!v29)
  {
    v23 = v9;
    goto LABEL_26;
  }

  v11 = 0;
  v12 = 0;
  v28 = a1 + 32;
  do
  {
    v14 = *(v28 + 8 * v11);
    if (!*(v14 + 2))
    {

      goto LABEL_30;
    }

    v15 = *(v14 + 4);
    v4 = *(v14 + 5);
    v35 = v15;
    v36 = v4;
    MEMORY[0x1EEE9AC00](v9, v10);
    v26 = &v35;

    if ((sub_19741E284(sub_197508BC8, &v25, &unk_1F0BA5390) & 1) == 0)
    {
      goto LABEL_28;
    }

    v16 = *(v14 + 2);
    if (!v16)
    {
      __break(1u);
LABEL_28:

LABEL_30:
      v27 = 0;
      v26 = 1029;
      goto LABEL_32;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v14;
    v32 = v12;
    if (!isUniquelyReferenced_nonNull_native || (v16 - 1) > *(v14 + 3) >> 1)
    {
      v14 = sub_19741E330(isUniquelyReferenced_nonNull_native, v16, 1, v14);
      v34 = v14;
    }

    v31 = v11;
    sub_19750622C(0, 1, 0);
    if (!*(v14 + 2))
    {
      v27 = 0;
      v26 = 1033;
      goto LABEL_32;
    }

    sub_19752228C();
    v33 = sub_1975215CC();
    v18 = *(v14 + 2);
    if (v18)
    {
      v19 = (v14 + 40);
      do
      {
        v20 = *(v19 - 1);
        v21 = *v19;

        sub_1974A280C(v20, v21, a2, a3);

        v35 = swift_dynamicCastClassUnconditional();
        sub_197521AAC();
        sub_197521A7C();
        v19 += 2;
        --v18;
      }

      while (v18);
    }

    a1 = v15;
    if (v15 == 0x7972616E6962 && v4 == 0xE600000000000000)
    {

      v13 = v31;
LABEL_4:
      v12 = v32;

      v35 = v33;
      LOBYTE(v36) = 0;
      goto LABEL_5;
    }

    v22 = sub_19752282C();
    v13 = v31;
    if (v22)
    {

      goto LABEL_4;
    }

    v12 = v32;
    if ((v15 != 0x656572742D72 || v4 != 0xE600000000000000) && (sub_19752282C() & 1) == 0)
    {
      while (1)
      {
        v35 = 0;
        v36 = 0xE000000000000000;
        sub_1975221EC();

        v35 = 0xD000000000000015;
        v36 = 0x800000019752A340;
        MEMORY[0x19A8DFF80](a1, v4);
        v27 = 0;
        v26 = 1045;
LABEL_32:
        sub_1975223EC();
        __break(1u);
      }
    }

    v35 = v33;
    LOBYTE(v36) = 1;
LABEL_5:
    sub_197521AAC();
    v9 = sub_197521A7C();
    v11 = v13 + 1;
  }

  while (v11 != v29);
  v23 = v39;
LABEL_26:
  swift_arrayDestroy();
  return v23;
}

uint64_t Schema.Index.hashValue.getter()
{
  sub_197522A5C();
  v0 = sub_1974194C0();
  sub_197505780(v2, v0);

  return sub_197522A9C();
}

uint64_t (*sub_1975037FC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Schema.Index.name.modify(v2);
  return sub_197508B24;
}

uint64_t (*sub_197503884(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Schema.Index.originalName.modify(v2);
  return sub_1975038EC;
}

uint64_t (*sub_197503900(double ***a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Schema.Index.valueType.modify(v2);
  return sub_197508B28;
}

uint64_t sub_197503A10@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = Schema.Index.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t (*Schema.Unique.name.modify(uint64_t a1))(uint64_t)
{
  strcpy(a1, "Schema.Unique");
  *(a1 + 14) = -4864;
  return sub_1975089F4;
}

uint64_t (*Schema.Unique.originalName.modify(uint64_t a1))(uint64_t)
{
  strcpy(a1, "Schema.Unique");
  *(a1 + 14) = -4864;
  return sub_1975089F8;
}

uint64_t static Schema.Unique.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_19752228C();
  sub_197521AAC();
  swift_getWitnessTable();
  return sub_197521ACC() & 1;
}

uint64_t Schema.Unique.hash(into:)(uint64_t a1)
{
  sub_19752228C();
  sub_197521AAC();
  swift_getWitnessTable();
  return sub_197521ABC();
}

uint64_t Schema.Unique.debugDescription.getter()
{
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000016, 0x8000000197529CD0);
  sub_19752228C();
  sub_197521AAC();
  sub_197521AAC();
  swift_getWitnessTable();
  sub_19752280C();
  return 0;
}

uint64_t Schema.Unique.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x69617274736E6F63 && a2 == 0xEB0000000073746ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_19752282C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t _s9SwiftData6SchemaC5IndexC10CodingKeysO9hashValueSivg_0()
{
  sub_197522A5C();
  MEMORY[0x19A8E1190](0);
  return sub_197522A9C();
}

uint64_t sub_197503F48()
{
  sub_197522A5C();
  MEMORY[0x19A8E1190](0);
  return sub_197522A9C();
}

uint64_t sub_197503F8C(uint64_t a1)
{
  sub_197522A5C();
  MEMORY[0x19A8E1190](0);
  return sub_197522A9C();
}

uint64_t sub_197503FFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_197504050(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1975040F8(void *a1, uint64_t (*a2)(uint64_t, void, void), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v14[0] = a4;
  v5 = v4;
  a2(255, *(*v5 + 80), *(*v5 + 88));
  swift_getWitnessTable();
  v7 = sub_19752278C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1Tm_4(a1, a1[3]);
  v12 = sub_197522B0C();
  v14[3] = (v14[0])(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BDC0, &qword_1975320E0);
  sub_197506ECC();
  sub_1975226EC();

  return (*(v8 + 8))(v11, v7);
}

uint64_t Schema.Unique.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  Schema.Unique.init(from:)(a1, v3, v4, v5);
  return v2;
}

uint64_t *Schema.Unique.init(from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  type metadata accessor for Schema.Unique.CodingKeys(255, *(*v4 + 80), *(*v4 + 88), a4);
  swift_getWitnessTable();
  v8 = sub_19752264C();
  v16 = *(v8 - 8);
  v17 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v16 - v10;
  __swift_project_boxed_opaque_existential_1Tm_4(a1, a1[3]);
  sub_197522AFC();
  if (v5)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BDC0, &qword_1975320E0);
    sub_197506FD0();
    v13 = v17;
    sub_19752261C();
    v15 = sub_197504560(v18);

    (*(v12 + 8))(v11, v13);
    *(v6 + 16) = v15;
  }

  __swift_destroy_boxed_opaque_existential_1Tm_6(a1);
  return v6;
}

uint64_t sub_197504560(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 80);
  sub_19752228C();
  sub_197521AAC();
  result = sub_1975215CC();
  v14 = result;
  v13 = *(a1 + 16);
  if (v13)
  {
    v6 = 0;
    v12 = a1 + 32;
    while (1)
    {
      v7 = *(v12 + 8 * v6);
      if (!*(v7 + 16))
      {
        break;
      }

      sub_1975215CC();
      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = (v7 + 40);
        do
        {
          v10 = *(v9 - 1);
          v11 = *v9;

          sub_1974A280C(v10, v11, v4, *(v2 + 88));

          swift_dynamicCastClassUnconditional();
          sub_197521A7C();
          v9 += 2;
          --v8;
        }

        while (v8);
      }

      ++v6;
      sub_197521AAC();
      sub_197521A7C();
      if (v6 == v13)
      {
        return v14;
      }
    }

    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t Schema.Unique.hashValue.getter()
{
  sub_197522A5C();
  Schema.Unique.hash(into:)(v1);
  return sub_197522A9C();
}

uint64_t (*sub_19750478C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Schema.Unique.name.modify(v2);
  return sub_197508B30;
}

uint64_t (*sub_197504818(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Schema.Unique.originalName.modify(v2);
  return sub_197508B34;
}

uint64_t (*sub_197504890(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = Schema.Unique.valueType.modify(v2);
  return sub_197508B38;
}

void sub_197504904(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1975049F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_197522A5C();
  a4(v6);
  return sub_197522A9C();
}

uint64_t sub_197504A38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = Schema.Unique.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_197504A94()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

uint64_t sub_197504ADC(uint64_t a1)
{
  v2 = *v1;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v2);
  return sub_197522A9C();
}

uint64_t sub_197504B20()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x7571696E5573695FLL;
    if (v1 == 1)
    {
      v5 = 0xD000000000000011;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    v2 = 0x6F7473626D6F745FLL;
    if (v1 != 5)
    {
      v2 = 0x67696C746F70735FLL;
    }

    v3 = 0xD000000000000010;
    if (v1 != 3)
    {
      v3 = 0xD000000000000016;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_197504C0C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_197506A70(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_197504C4C(uint64_t a1)
{
  v2 = sub_1975070E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_197504C88(uint64_t a1)
{
  v2 = sub_1975070E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Schema.Attribute.Option.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BDE8, &qword_1975320E8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v23 - v8;
  __swift_project_boxed_opaque_existential_1Tm_4(a1, a1[3]);
  sub_1975070E8();
  sub_197522AFC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm_6(a1);
    v30 = 0;
    *v31 = *v40;
    *&v31[3] = *&v40[3];
    v32 = 0;
    v33 = 0uLL;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
  }

  else
  {
    v30 = 0;
    LOBYTE(v27) = sub_1975225FC() & 1;
    v27 = v27;
    v30 = 1;
    *&v26 = sub_1975224FC();
    *(&v26 + 1) = v11;
    v30 = 2;
    v12 = sub_1975225FC() & 1;
    v30 = 3;
    v13 = sub_1975225FC();
    v25 = a2;
    v14 = v13 & 1;
    v30 = 4;
    v15 = sub_1975225FC() & 1;
    v30 = 5;
    v16 = sub_1975225FC() & 1;
    v39 = 6;
    v17 = sub_1975225FC();
    v18 = *(v6 + 8);
    v24 = v17;
    v18(v9, v5);
    v24 &= 1u;
    v19 = v27;
    LOBYTE(v28[0]) = v27;
    v20 = v26;
    v28[1] = 0;
    *v29 = v26;
    v29[16] = v12;
    v29[17] = v14;
    v29[18] = v15;
    v29[19] = v16;
    v29[20] = v24;
    v29[21] = 0;
    v21 = v26;
    v22 = v25;
    *v25 = v28[0];
    v22[1] = v21;
    *(v22 + 30) = *&v29[14];
    sub_19741DE14(v28, &v30);
    __swift_destroy_boxed_opaque_existential_1Tm_6(a1);
    v30 = v19;
    v32 = 0;
    v33 = v20;
    v34 = v12;
    v35 = v14;
    v36 = v15;
    v37 = v16;
    v38 = v24;
  }

  return sub_19741EE34(&v30);
}

uint64_t Schema.Attribute.Option.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BDF8, &qword_1975320F0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = v8;
  v17 = *(v1 + 32);
  LODWORD(v8) = *(v1 + 33);
  v11[4] = *(v1 + 34);
  v11[5] = v8;
  v11[3] = *(v1 + 35);
  __swift_project_boxed_opaque_existential_1Tm_4(a1, a1[3]);
  sub_1975070E8();
  sub_197522B0C();
  LOBYTE(v15) = 0;
  v9 = v14;
  sub_19752269C();
  if (!v9)
  {
    v15 = v13;
    v16 = v12;
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE58, &unk_19752F390);
    sub_197506F70(&qword_1EAF2BD08, &qword_1EAF2AE58, &unk_19752F390, MEMORY[0x1E69E7C70]);
    sub_1975226EC();
    LOBYTE(v15) = 2;
    sub_19752269C();
    LOBYTE(v15) = 3;
    sub_19752269C();
    LOBYTE(v15) = 4;
    sub_19752269C();
    LOBYTE(v15) = 5;
    sub_19752269C();
    LOBYTE(v15) = 6;
    sub_19752269C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t Schema.Attribute.Option.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_197522A7C();
  sub_197522A7C();
  sub_197522A7C();
  sub_197522A7C();
  sub_197522A7C();
  sub_197522A7C();
  if (!v2)
  {
    return sub_197522A7C();
  }

  sub_197522A7C();

  return sub_19752180C();
}

uint64_t Schema.Attribute.Option.hashValue.getter()
{
  sub_197522A5C();
  Schema.Attribute.Option.hash(into:)(v1);
  return sub_197522A9C();
}

uint64_t sub_1975054E8()
{
  sub_197522A5C();
  Schema.Attribute.Option.hash(into:)(v1);
  return sub_197522A9C();
}

uint64_t sub_19750552C(uint64_t a1)
{
  sub_197522A5C();
  Schema.Attribute.Option.hash(into:)(v2);
  return sub_197522A9C();
}

uint64_t sub_19750556C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_1973F4028(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || ((v20 = *(*(a2 + 56) + 8 * v17), swift_beginAccess(), v21 = v20[2], v22 = v20[3], swift_beginAccess(), v21 == v16[2]) ? (v23 = v22 == v16[3]) : (v23 = 0), !v23 && (sub_19752282C() & 1) == 0 || (swift_beginAccess(), v24 = v20[6], swift_beginAccess(), (sub_1974D1674(v24, v16[6]) & 1) == 0)))
    {

      return 0;
    }

    swift_beginAccess();
    v25 = v20[7];
    swift_beginAccess();
    v26 = v16[7];

    if (v25 != v26)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_197505780(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x19A8E1190](v3);
  if (v3)
  {
    v5 = 0;
    v6 = a2 + 32;
    do
    {
      v7 = *(v6 + 8 * v5);
      result = MEMORY[0x19A8E1190](*(v7 + 16));
      v8 = *(v7 + 16);
      if (v8)
      {

        v9 = v7 + 40;
        do
        {

          sub_19752180C();

          v9 += 16;
          --v8;
        }

        while (v8);
      }

      ++v5;
    }

    while (v5 != v3);
  }

  return result;
}

BOOL _s9SwiftData6SchemaC9AttributeC6OptionV2eeoiySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (a1[32] == a2[32] && ((a1[34] ^ a2[34]) & 1) == 0 && ((a1[36] ^ a2[36]) & 1) == 0 && ((a1[33] ^ a2[33]) & 1) == 0 && ((a1[35] ^ a2[35]) & 1) == 0)
  {
    v4 = *a1;
    v5 = *a2;
    if (((v4 ^ v5) & 1) == 0)
    {
      if ((v4 & v5) == 1)
      {
        v6 = *(a1 + 3);
        v7 = *(a2 + 3);
        if (v6)
        {
          return v7 && (*(a1 + 2) == *(a2 + 2) && v6 == v7 || (sub_19752282C() & 1) != 0);
        }

        if (v7)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

BOOL _s9SwiftData6SchemaC9AttributeC2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  swift_beginAccess();
  v4 = a1[2];
  v5 = a1[3];
  swift_beginAccess();
  v6 = v4 == a2[2] && v5 == a2[3];
  if (!v6 && (sub_19752282C() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v7 = a1[6];
  swift_beginAccess();
  if ((sub_1974D1674(v7, a2[6]) & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v8 = a1[7];
  swift_beginAccess();
  return v8 == a2[7];
}

uint64_t sub_197505A1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_197505A80()
{
  result = qword_1EAF2BD18;
  if (!qword_1EAF2BD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BD18);
  }

  return result;
}

uint64_t sub_197505AD4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2BD20, &qword_197532098);
    sub_1973F7598(a2, type metadata accessor for Schema.Attribute, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_197505B70()
{
  result = qword_1EAF2BD48;
  if (!qword_1EAF2BD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BD48);
  }

  return result;
}

unint64_t sub_197505BC4()
{
  result = qword_1EAF2BD60;
  if (!qword_1EAF2BD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BD60);
  }

  return result;
}

unint64_t sub_197505C18()
{
  result = qword_1EAF2BD70;
  if (!qword_1EAF2BD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2BD68, &qword_1975320C0);
    sub_197505C9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BD70);
  }

  return result;
}

unint64_t sub_197505C9C()
{
  result = qword_1EAF2BD78;
  if (!qword_1EAF2BD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BD78);
  }

  return result;
}

unint64_t sub_197505CF0()
{
  result = qword_1EAF2BD80;
  if (!qword_1EAF2BD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BD80);
  }

  return result;
}

unint64_t sub_197505D44()
{
  result = qword_1EAF2BD90;
  if (!qword_1EAF2BD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2BD68, &qword_1975320C0);
    sub_197505DC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BD90);
  }

  return result;
}

unint64_t sub_197505DC8()
{
  result = qword_1EAF2BD98;
  if (!qword_1EAF2BD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BD98);
  }

  return result;
}

unint64_t sub_197505E1C()
{
  result = qword_1EAF2BDA0;
  if (!qword_1EAF2BDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BDA0);
  }

  return result;
}

unint64_t sub_197505E70()
{
  result = qword_1EAF2BDB0;
  if (!qword_1EAF2BDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2BDA8, &unk_1975320D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2BDB0);
  }

  return result;
}

uint64_t sub_197505EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for Schema.Entity();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1975220EC();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1975220EC();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_197505FEC(uint64_t a1, uint64_t a2)
{
  v3[0] = a1;
  v3[1] = a1;
  v3[2] = a2;
  v3[3] = a2;
  type metadata accessor for Schema.Index.Types(255, v3);
  return sub_197521AAC();
}

uint64_t sub_197506028(uint64_t a1)
{
  sub_19752228C();
  sub_197521AAC();

  return sub_197521AAC();
}

uint64_t sub_19750606C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000027 && 0x800000019752A120 == a2 || (sub_19752282C() & 1) != 0 || a1 == 0xD000000000000022 && 0x800000019752A150 == a2 || (sub_19752282C() & 1) != 0 || a1 == 0xD000000000000013 && 0x800000019752A180 == a2 || (sub_19752282C() & 1) != 0 || a1 == 0xD000000000000018 && 0x800000019752A1A0 == a2 || (sub_19752282C() & 1) != 0)
  {
    goto LABEL_13;
  }

  if (sub_1975217BC() == a1 && v6 == a2)
  {
    goto LABEL_17;
  }

  v7 = sub_19752282C();

  if ((v7 & 1) == 0)
  {
    if (sub_1975217BC() != a1 || v8 != a2)
    {
      v4 = sub_19752282C();
      goto LABEL_18;
    }

LABEL_17:
    v4 = 1;
LABEL_18:

    return v4 & 1;
  }

LABEL_13:
  v4 = 1;
  return v4 & 1;
}