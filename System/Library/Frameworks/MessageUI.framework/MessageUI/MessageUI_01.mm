uint64_t sub_1BE92AC1C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v9[4] = a1;
  sub_1BE932EAC(a1, &v8);
  sub_1BE94203C();
  v3 = sub_1BE94224C();
  MEMORY[0x1E69E5928](v3);

  MEMORY[0x1E69E5920](v3);
  __swift_destroy_boxed_opaque_existential_1(v9);
  *a2 = v3;
  sub_1BE932EAC(a1, &v6);
  sub_1BE932D64(&v7, (a2 + 1));
}

uint64_t sub_1BE92ACFC(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = a1;
  v41 = a2;
  v65 = a3;
  v55 = a4;
  v42 = a5;
  v64 = a6;
  v44 = a8;
  v45 = "Fatal error";
  v46 = "Range requires lowerBound <= upperBound";
  v47 = "Swift/Range.swift";
  v48 = "Index out of range";
  v49 = "invalid Collection: count differed in successive traversals";
  v50 = "Swift/ArrayShared.swift";
  v75[3] = a3;
  v75[2] = a4;
  v75[1] = a5;
  v51 = *(a5 - 8);
  v52 = a5 - 8;
  v53 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v54 = &v21 - v53;
  v56 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = *(AssociatedTypeWitness - 8);
  v59 = AssociatedTypeWitness - 8;
  v60 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v56, v64, v65, v55);
  v61 = &v21 - v60;
  v62 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8, v10, v11, v9);
  v63 = &v21 - v62;
  v66 = swift_getAssociatedTypeWitness();
  v67 = *(v66 - 8);
  v68 = v66 - 8;
  v69 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v65, v64, v12, v13);
  v70 = &v21 - v69;
  v71 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14, v16, &v21 - v69, v17);
  v72 = &v21 - v71;
  v73 = sub_1BE94249C();
  if (!v73)
  {
    goto LABEL_24;
  }

  v75[0] = sub_1BE9426FC();
  v39 = sub_1BE94270C();
  sub_1BE9426DC();
  result = sub_1BE94248C();
  if (v73 < 0)
  {
    sub_1BE94274C();
    __break(1u);
LABEL_24:
    v23 = sub_1BE9423BC();
    v24 = v43;
    return v23;
  }

  if (!v73)
  {
LABEL_19:
    v29 = v43;
LABEL_20:
    v25 = v29;
    sub_1BE9424AC();
    swift_getAssociatedConformanceWitness();
    v28 = sub_1BE94223C();
    v26 = *(v67 + 8);
    v27 = v67 + 8;
    v26(v70, v66);
    if ((v28 & 1) == 0)
    {
      sub_1BE94276C();
      __break(1u);
    }

    v26(v72, v66);
    v22 = v75[0];

    v23 = v22;
    v24 = v25;
    return v23;
  }

  v37 = 0;
  for (i = v43; ; i = v33)
  {
    v35 = i;
    v36 = v37;
    if (v37 < 0 || v36 >= v73)
    {
      goto LABEL_18;
    }

    if (v73 < 0)
    {
      sub_1BE94274C();
      __break(1u);
LABEL_18:
      sub_1BE94276C();
      __break(1u);
      goto LABEL_19;
    }

    v34 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    v32 = &v74;
    v31 = sub_1BE9424FC();
    (*(v58 + 16))(v61);
    v31();
    v20 = v35;
    v40(v61, v54);
    v33 = v20;
    if (v20)
    {
      (*(v58 + 8))(v61, AssociatedTypeWitness);
      (*(v67 + 8))(v72, v66);
      sub_1BE926968(v75);
      (*(v51 + 32))(v44, v54, v42);
      return v30;
    }

    (*(v58 + 8))(v61, AssociatedTypeWitness);
    sub_1BE9426EC();
    sub_1BE9424BC();
    if (v34 == v73)
    {
      v29 = v33;
      goto LABEL_20;
    }

    result = v33;
    v37 = v34;
  }

  __break(1u);
  return result;
}

id sub_1BE92B62C(uint64_t a1, double a2)
{
  v4 = [swift_getObjCClassFromMetadata() fontWithDescriptor:a1 size:a2];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

unint64_t sub_1BE92B690(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EBDB61B8;
  if (!qword_1EBDB61B8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBDB61B8);
    return ObjCClassMetadata;
  }

  return v4;
}

void sub_1BE92B6F4()
{
  sub_1BE94283C();
  *v0 = 0;
  v0[1] = 1;
  v0[2] = 2;
  v0[3] = 3;
  v0[4] = 4;
  sub_1BE921DF8();
}

uint64_t sub_1BE92B75C@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v22 = a1;
  v36 = 0;
  v35 = 0;
  v26 = 0;
  v18 = (*(*(sub_1BE941D9C() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v2, v3, v4);
  v33 = &v17 - v18;
  v19 = (*(*(sub_1BE941E2C() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v22, v5, v6, v7);
  v32 = &v17 - v19;
  v36 = v8;
  v20 = objc_opt_self();
  v21 = sub_1BE92E4C0(v22);
  v34 = [v20 preferredFontForTextStyle_];
  MEMORY[0x1E69E5920](v21);
  v35 = v34;
  v30 = sub_1BE92C02C(v22);
  v31 = v9;
  sub_1BE93051C(v22);
  sub_1BE941E1C();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB61E0, &qword_1BE985FF0);
  v25 = sub_1BE94283C();
  v23 = v10;
  sub_1BE930C04(MEMORY[0x1E69DB648], v10);
  MEMORY[0x1E69E5928](v34);
  v12 = sub_1BE930BA0(v26, v11);
  v13 = v23;
  v14 = v34;
  v23[4] = v12;
  v13[1] = v14;
  sub_1BE921DF8();
  v28 = v15;
  v27 = type metadata accessor for Key(v26);
  sub_1BE93095C();
  sub_1BE94219C();
  sub_1BE941DAC();
  sub_1BE9425BC();
  return MEMORY[0x1E69E5920](v34);
}

uint64_t sub_1BE92B99C(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v4 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v10[0] = v4;
  sub_1BE932D80(a2, &v10[1]);
  v9 = a3;
  type metadata accessor for Key(0);
  sub_1BE93095C();
  v8 = sub_1BE94203C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6438, &unk_1BE986798);
  sub_1BE932DE4();
  sub_1BE93291C();
  v7 = sub_1BE94234C();
  sub_1BE91F954(&v8);
  sub_1BE932E6C(v10);
  return v7 & 1;
}

uint64_t sub_1BE92BAAC(void *a1, void *a2)
{
  v32 = 0;
  v42[5] = a1;
  v42[4] = a2;
  sub_1BE932CDC(a1, &v40);
  v28 = v40;
  v39[4] = v40;
  sub_1BE932D64(&v41, v42);
  sub_1BE932CDC(a2, &v37);
  v29 = v37;
  v36[6] = v37;
  sub_1BE932D64(&v38, v39);
  v36[5] = v28;
  v36[4] = v29;
  type metadata accessor for Key(0);
  sub_1BE93255C();
  if ((sub_1BE94284C() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x1E69E5920](v29);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x1E69E5920](v28);
    v10 = 0;
    return v10 & 1;
  }

  sub_1BE932D80(v39, v36);
  sub_1BE930BA0(0, v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v36);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x1E69E5920](v29);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x1E69E5920](v28);
    v10 = 1;
    return v10 & 1;
  }

  v26 = v35;
  sub_1BE932D80(v39, v34);
  if (swift_dynamicCast())
  {
    v25 = v33;
  }

  else
  {
    v25 = 0;
  }

  if (!v25)
  {
    goto LABEL_19;
  }

  v32 = v25;
  sub_1BE932D80(v42, v31);
  v3 = swift_dynamicCast();
  if (v3)
  {
    v24 = v30;
  }

  else
  {
    v24 = 0;
  }

  if (!v24)
  {
    MEMORY[0x1E69E5920](v25);
LABEL_19:
    MEMORY[0x1E69E5920](v26);
    __swift_destroy_boxed_opaque_existential_1(v36);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x1E69E5920](v29);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x1E69E5920](v28);
    v10 = 0;
    return v10 & 1;
  }

  v12 = [v25 0x1FB328E67];
  v13 = [v12 0x1FBB6A9EBLL];
  v20 = sub_1BE94225C();
  v21 = v4;
  MEMORY[0x1E69E5920](v12);
  MEMORY[0x1E69E5920](v13);
  v14 = [v24 0x1FB328E67];
  v15 = [v14 0x1FBB6A9EBLL];
  v22 = sub_1BE94225C();
  v23 = v5;
  MEMORY[0x1E69E5920](v14);
  MEMORY[0x1E69E5920](v15);
  v16 = [v25 0x1FB328E67];
  [v16 0x1FAA5F578];
  v17 = v6;
  MEMORY[0x1E69E5920](v16);
  v18 = [v24 0x1FB328E67];
  [v18 0x1FAA5F578];
  v19 = v7;
  MEMORY[0x1E69E5920](v18);
  v8 = MEMORY[0x1BFB4A0E0](v20, v21, v22, v23);
  v11 = (v8 & 1) != 0 && v17 == v19;

  MEMORY[0x1E69E5920](v24);
  MEMORY[0x1E69E5920](v25);
  MEMORY[0x1E69E5920](v26);
  __swift_destroy_boxed_opaque_existential_1(v36);
  __swift_destroy_boxed_opaque_existential_1(v39);
  MEMORY[0x1E69E5920](v29);
  __swift_destroy_boxed_opaque_existential_1(v42);
  MEMORY[0x1E69E5920](v28);
  v10 = v11;
  return v10 & 1;
}

double sub_1BE92C21C()
{
  v27 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB61D0, &qword_1BE985FE0);
  v20 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1, v2, v3, v4);
  v21 = v9 - v20;
  v27 = v0;
  MEMORY[0x1E69E5928](v0);
  sub_1BE9425FC();
  v5 = sub_1BE94259C();
  if ((*(*(v5 - 8) + 48))(v21, 1) == 0)
  {
    v17 = sub_1BE94256C();
    sub_1BE930C44(v21);
    MEMORY[0x1E69E5920](v19);
    v24 = v17;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6208, &qword_1BE986000);
    sub_1BE930A64();
    sub_1BE9424CC();
    v18 = v23;

    if (v18)
    {
      v15 = v18;
      v11 = v18;
      [v18 pointSize];
      v12 = v6;
      MEMORY[0x1E69E5920](v11);
      v13 = v12;
      v14 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1BE930C44(v21);
    MEMORY[0x1E69E5920](v19);
  }

  v13 = 0.0;
  v14 = 1;
LABEL_6:
  v25 = v13;
  v26 = v14 & 1;
  if ((v14 & 1) == 0)
  {
    return v25;
  }

  [objc_opt_self() mf_defaultComposeFontPixelSize];
  *&v9[1] = v7;
  return v7;
}

double sub_1BE92C49C(char a1)
{
  sub_1BE92C21C();
  sub_1BE930CEC();
  sub_1BE94285C();
  sub_1BE94286C();
  return v2;
}

uint64_t sub_1BE92C640(uint64_t a1, uint64_t a2)
{
  v159 = a1;
  v165 = a2;
  v216 = 0;
  v215 = 0;
  v214 = 0;
  v213 = 0;
  v211 = 0;
  v212 = 0;
  v210 = 0;
  v209 = 0;
  v207 = 0;
  v205 = 0;
  v197 = 0;
  v190 = 0;
  v183 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB61D0, &qword_1BE985FE0);
  v155 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3, v4, v5, v6);
  v156 = &v41 - v155;
  v157 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v41 - v155, v8, v9, v10);
  v158 = &v41 - v157;
  v169 = sub_1BE9425EC();
  v167 = *(v169 - 8);
  v168 = v169 - 8;
  v162 = *(v167 + 64);
  v160 = (v162 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v165, v11, v12, v13);
  v170 = &v41 - v160;
  v161 = (v162 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = MEMORY[0x1EEE9AC00](v14, v15, v16, v17);
  v164 = &v41 - v161;
  v163 = (v162 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = MEMORY[0x1EEE9AC00](v18, &v41 - v161, v19, v20);
  v166 = &v41 - v163;
  v216 = &v41 - v163;
  v215 = v22;
  v214 = v21;
  v213 = v2;
  MEMORY[0x1E69E5928](v21);
  sub_1BE9425DC();
  (*(v167 + 32))(v166, v164, v169);
  MEMORY[0x1E69E5920](v165);
  (*(v167 + 16))(v170, v166, v169);
  v171 = (*(v167 + 88))(v170, v169);
  if (v171 == *MEMORY[0x1E69DC490])
  {
    (*(v167 + 96))(v170, v169);
    v172 = [v154 formattingDelegate];
    if (v172)
    {
      v151 = &v172;
      v153 = v172;
      swift_unknownObjectRetain();
      sub_1BE92898C(v151);
      swift_getObjectType();
      sub_1BE930D64(0, v23);
      v152 = sub_1BE92E264(1);
      [v153 composeFormattingController:v154 didSelectTextStyle:?];
      MEMORY[0x1E69E5920](v152);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1BE92898C(&v172);
    }
  }

  else if (v171 == *MEMORY[0x1E69DC4A0])
  {
    (*(v167 + 96))(v170, v169);
    v173 = [v154 formattingDelegate];
    if (v173)
    {
      v148 = &v173;
      v150 = v173;
      swift_unknownObjectRetain();
      sub_1BE92898C(v148);
      swift_getObjectType();
      sub_1BE930D64(0, v24);
      v149 = sub_1BE92E264(2);
      [v150 composeFormattingController:v154 didSelectTextStyle:?];
      MEMORY[0x1E69E5920](v149);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1BE92898C(&v173);
    }
  }

  else if (v171 == *MEMORY[0x1E69DC4C0])
  {
    (*(v167 + 96))(v170, v169);
    v174 = [v154 formattingDelegate];
    if (v174)
    {
      v145 = &v174;
      v147 = v174;
      swift_unknownObjectRetain();
      sub_1BE92898C(v145);
      swift_getObjectType();
      sub_1BE930D64(0, v25);
      v146 = sub_1BE92E264(3);
      [v147 composeFormattingController:v154 didSelectTextStyle:?];
      MEMORY[0x1E69E5920](v146);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1BE92898C(&v174);
    }
  }

  else if (v171 == *MEMORY[0x1E69DC448])
  {
    (*(v167 + 96))(v170, v169);
    v175 = [v154 formattingDelegate];
    if (v175)
    {
      v142 = &v175;
      v144 = v175;
      swift_unknownObjectRetain();
      sub_1BE92898C(v142);
      swift_getObjectType();
      sub_1BE930D64(0, v26);
      v143 = sub_1BE92E264(4);
      [v144 composeFormattingController:v154 didSelectTextStyle:?];
      MEMORY[0x1E69E5920](v143);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1BE92898C(&v175);
    }
  }

  else if (v171 == *MEMORY[0x1E69DC498])
  {
    (*(v167 + 96))(v170, v169);
    v57 = *v170;
    v205 = v57;
    v204 = [v154 formattingDelegate];
    if (v204)
    {
      v54 = &v204;
      v56 = v204;
      swift_unknownObjectRetain();
      sub_1BE92898C(v54);
      swift_getObjectType();
      v55 = [v57 fontWithSize_];
      [v56 composeFormattingController:v154 didChangeFont:?];
      MEMORY[0x1E69E5920](v55);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1BE92898C(&v204);
    }

    MEMORY[0x1E69E5920](v57);
  }

  else if (v171 == *MEMORY[0x1E69DC4B8])
  {
    (*(v167 + 96))(v170, v169);
    v53 = *v170;
    v207 = v53;
    v206 = [v154 formattingDelegate];
    if (v206)
    {
      v51 = &v206;
      v52 = v206;
      swift_unknownObjectRetain();
      sub_1BE92898C(v51);
      swift_getObjectType();
      [v52 composeFormattingController:v154 didChangeTextColor:v53];
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1BE92898C(&v206);
    }

    MEMORY[0x1E69E5920](v53);
  }

  else if (v171 == *MEMORY[0x1E69DC4B0])
  {
    (*(v167 + 96))(v170, v169);
    v119 = *v170;
    v197 = v119;
    MEMORY[0x1E69E5928](v119);
    if (v119)
    {
      v118 = v119;
      v112 = v119;
      v190 = v119;
      MEMORY[0x1E69E5928](v119);
      v111 = *MEMORY[0x1E69DE678];
      MEMORY[0x1E69E5928](v111);
      v116 = &v189;
      v189 = v111;
      v113 = &v188;
      v188 = v112;
      v114 = type metadata accessor for TextList(0);
      v115 = sub_1BE930EE0();
      v117 = sub_1BE94223C();
      sub_1BE923F04(v116);
      if (v117)
      {
        MEMORY[0x1E69E5920](v112);
        v184 = [v154 formattingDelegate];
        if (v184)
        {
          v108 = &v184;
          v110 = v184;
          swift_unknownObjectRetain();
          sub_1BE92898C(v108);
          swift_getObjectType();
          sub_1BE930D64(0, v30);
          v109 = sub_1BE92E264(7);
          [v110 composeFormattingController:v154 didSelectTextStyle:?];
          MEMORY[0x1E69E5920](v109);
          swift_unknownObjectRelease();
        }

        else
        {
          sub_1BE92898C(&v184);
        }
      }

      else
      {
        MEMORY[0x1E69E5920](v112);
        MEMORY[0x1E69E5928](v112);
        v105 = *MEMORY[0x1E69DE680];
        MEMORY[0x1E69E5928](v105);
        v106 = &v187;
        v187 = v105;
        v186[1] = v112;
        v107 = sub_1BE94223C();
        sub_1BE923F04(v106);
        if (v107)
        {
          MEMORY[0x1E69E5920](v112);
          v185 = [v154 formattingDelegate];
          if (v185)
          {
            v102 = &v185;
            v104 = v185;
            swift_unknownObjectRetain();
            sub_1BE92898C(v102);
            swift_getObjectType();
            sub_1BE930D64(0, v31);
            v103 = sub_1BE92E264(8);
            [v104 composeFormattingController:v154 didSelectTextStyle:?];
            MEMORY[0x1E69E5920](v103);
            swift_unknownObjectRelease();
          }

          else
          {
            sub_1BE92898C(&v185);
          }
        }

        else
        {
          MEMORY[0x1E69E5920](v112);
          v186[0] = [v154 formattingDelegate];
          if (v186[0])
          {
            v99 = v186;
            v101 = v186[0];
            swift_unknownObjectRetain();
            sub_1BE92898C(v99);
            swift_getObjectType();
            sub_1BE930D64(0, v32);
            v100 = sub_1BE92E264(8);
            [v101 composeFormattingController:v154 didSelectTextStyle:?];
            MEMORY[0x1E69E5920](v100);
            swift_unknownObjectRelease();
          }

          else
          {
            sub_1BE92898C(v186);
          }
        }
      }

      MEMORY[0x1E69E5920](v112);
    }

    else
    {
      MEMORY[0x1E69E5928](v154);
      sub_1BE9425FC();
      v95 = sub_1BE94259C();
      v33 = *(v95 - 8);
      v96 = *(v33 + 48);
      v97 = v33 + 48;
      if (v96(v158, 1) == 0)
      {
        v92 = sub_1BE94258C();
        sub_1BE930C44(v158);
        MEMORY[0x1E69E5920](v154);
        v89 = *MEMORY[0x1E69DE678];
        MEMORY[0x1E69E5928](v89);
        v91 = &v191;
        v191 = v89;
        v90 = type metadata accessor for TextList(0);
        sub_1BE930E60();
        v93 = sub_1BE94246C();
        sub_1BE923F04(v91);

        v94 = v93 & 1;
      }

      else
      {
        sub_1BE930C44(v158);
        MEMORY[0x1E69E5920](v154);
        v94 = 2;
      }

      v196 = v94;
      if (v94 == 2)
      {
        v88 = 0;
      }

      else
      {
        v88 = v196;
      }

      if (v88)
      {
        v192 = [v154 formattingDelegate];
        if (v192)
        {
          v85 = &v192;
          v87 = v192;
          swift_unknownObjectRetain();
          sub_1BE92898C(v85);
          swift_getObjectType();
          sub_1BE930D64(0, v34);
          v86 = sub_1BE92E264(7);
          [v87 composeFormattingController:v154 didSelectTextStyle:?];
          MEMORY[0x1E69E5920](v86);
          swift_unknownObjectRelease();
        }

        else
        {
          sub_1BE92898C(&v192);
        }
      }

      else
      {
        MEMORY[0x1E69E5928](v154);
        sub_1BE9425FC();
        if ((v96)(v156, 1, v95) == 0)
        {
          v81 = sub_1BE94258C();
          sub_1BE930C44(v156);
          MEMORY[0x1E69E5920](v154);
          v78 = *MEMORY[0x1E69DE680];
          MEMORY[0x1E69E5928](v78);
          v80 = &v193;
          v193 = v78;
          v79 = type metadata accessor for TextList(0);
          sub_1BE930E60();
          v82 = sub_1BE94246C();
          sub_1BE923F04(v80);

          v83 = v82 & 1;
        }

        else
        {
          sub_1BE930C44(v156);
          MEMORY[0x1E69E5920](v154);
          v83 = 2;
        }

        v195 = v83;
        if (v83 == 2)
        {
          v77 = 0;
        }

        else
        {
          v77 = v195;
        }

        if (v77)
        {
          v194 = [v154 formattingDelegate];
          if (v194)
          {
            v74 = &v194;
            v76 = v194;
            swift_unknownObjectRetain();
            sub_1BE92898C(v74);
            swift_getObjectType();
            sub_1BE930D64(0, v35);
            v75 = sub_1BE92E264(8);
            [v76 composeFormattingController:v154 didSelectTextStyle:?];
            MEMORY[0x1E69E5920](v75);
            swift_unknownObjectRelease();
          }

          else
          {
            sub_1BE92898C(&v194);
          }
        }
      }
    }

    MEMORY[0x1E69E5920](v119);
  }

  else if (v171 == *MEMORY[0x1E69DC450])
  {
    (*(v167 + 96))(v170, v169);
    v136 = *v170;
    v183 = v136;
    MEMORY[0x1E69E5928](v136);
    v135 = *MEMORY[0x1E69DE650];
    MEMORY[0x1E69E5928](v135);
    v140 = &v182;
    v182 = v135;
    v137 = &v181;
    v181 = v136;
    v138 = type metadata accessor for TextAlignment(0);
    v139 = sub_1BE930FF8();
    v141 = sub_1BE94223C();
    sub_1BE923F04(v140);
    if (v141)
    {
      MEMORY[0x1E69E5920](v136);
      v176 = [v154 formattingDelegate];
      if (v176)
      {
        v132 = &v176;
        v134 = v176;
        swift_unknownObjectRetain();
        sub_1BE92898C(v132);
        swift_getObjectType();
        sub_1BE930D64(0, v27);
        v133 = sub_1BE92E264(13);
        [v134 composeFormattingController:v154 didSelectTextStyle:?];
        MEMORY[0x1E69E5920](v133);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_1BE92898C(&v176);
      }
    }

    else
    {
      MEMORY[0x1E69E5920](v136);
      MEMORY[0x1E69E5928](v136);
      v129 = *MEMORY[0x1E69DE660];
      MEMORY[0x1E69E5928](v129);
      v130 = &v180;
      v180 = v129;
      v179[1] = v136;
      v131 = sub_1BE94223C();
      sub_1BE923F04(v130);
      if (v131)
      {
        MEMORY[0x1E69E5920](v136);
        v177 = [v154 formattingDelegate];
        if (v177)
        {
          v126 = &v177;
          v128 = v177;
          swift_unknownObjectRetain();
          sub_1BE92898C(v126);
          swift_getObjectType();
          sub_1BE930D64(0, v28);
          v127 = sub_1BE92E264(15);
          [v128 composeFormattingController:v154 didSelectTextStyle:?];
          MEMORY[0x1E69E5920](v127);
          swift_unknownObjectRelease();
        }

        else
        {
          sub_1BE92898C(&v177);
        }
      }

      else
      {
        MEMORY[0x1E69E5920](v136);
        MEMORY[0x1E69E5928](v136);
        v123 = *MEMORY[0x1E69DE638];
        MEMORY[0x1E69E5928](v123);
        v124 = v179;
        v179[0] = v123;
        v178[1] = v136;
        v125 = sub_1BE94223C();
        sub_1BE923F04(v124);
        if (v125)
        {
          MEMORY[0x1E69E5920](v136);
          v178[0] = [v154 formattingDelegate];
          if (v178[0])
          {
            v120 = v178;
            v122 = v178[0];
            swift_unknownObjectRetain();
            sub_1BE92898C(v120);
            swift_getObjectType();
            sub_1BE930D64(0, v29);
            v121 = sub_1BE92E264(14);
            [v122 composeFormattingController:v154 didSelectTextStyle:?];
            MEMORY[0x1E69E5920](v121);
            swift_unknownObjectRelease();
          }

          else
          {
            sub_1BE92898C(v178);
          }
        }

        else
        {
          MEMORY[0x1E69E5920](v136);
        }
      }
    }

    MEMORY[0x1E69E5920](v136);
  }

  else if (v171 == *MEMORY[0x1E69DC458])
  {
    (*(v167 + 96))(v170, v169);
    v48 = *v170;
    v49 = *(v170 + 1);
    v211 = v48;
    v212 = v49;
    sub_1BE94203C();
    v50 = sub_1BE92E2B0(v48, v49);
    if (v50 == 5)
    {

      return (*(v167 + 8))(v166, v169);
    }

    v47 = v50;
    v43 = v50;
    v210 = v50;
    v44 = objc_opt_self();
    v45 = sub_1BE92E4C0(v43);
    v46 = [v44 preferredFontForTextStyle_];
    MEMORY[0x1E69E5920](v45);
    v209 = v46;
    v208 = [v154 formattingDelegate];
    if (v208)
    {
      v41 = &v208;
      v42 = v208;
      swift_unknownObjectRetain();
      sub_1BE92898C(v41);
      swift_getObjectType();
      [v42 composeFormattingController:v154 didChangeFont:v46];
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1BE92898C(&v208);
    }

    MEMORY[0x1E69E5920](v46);
  }

  else if (v171 == *MEMORY[0x1E69DC468])
  {
    v202 = [v154 formattingDelegate];
    if (v202)
    {
      v60 = &v202;
      v61 = v202;
      swift_unknownObjectRetain();
      sub_1BE92898C(v60);
      swift_getObjectType();
      [v61 composeFormattingController:v154 didChangeFontSize:sub_1BE92C49C(1)];
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1BE92898C(&v202);
    }
  }

  else if (v171 == *MEMORY[0x1E69DC460])
  {
    v203 = [v154 formattingDelegate];
    if (v203)
    {
      v58 = &v203;
      v59 = v203;
      swift_unknownObjectRetain();
      sub_1BE92898C(v58);
      swift_getObjectType();
      [v59 composeFormattingController:v154 didChangeFontSize:sub_1BE92C49C(0)];
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1BE92898C(&v203);
    }
  }

  else if (v171 == *MEMORY[0x1E69DC488])
  {
    v198 = [v154 formattingDelegate];
    if (v198)
    {
      v71 = &v198;
      v73 = v198;
      swift_unknownObjectRetain();
      sub_1BE92898C(v71);
      swift_getObjectType();
      sub_1BE930D64(0, v36);
      v72 = sub_1BE92E264(10);
      [v73 composeFormattingController:v154 didSelectTextStyle:?];
      MEMORY[0x1E69E5920](v72);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1BE92898C(&v198);
    }
  }

  else if (v171 == *MEMORY[0x1E69DC480])
  {
    v199 = [v154 formattingDelegate];
    if (v199)
    {
      v68 = &v199;
      v70 = v199;
      swift_unknownObjectRetain();
      sub_1BE92898C(v68);
      swift_getObjectType();
      sub_1BE930D64(0, v37);
      v69 = sub_1BE92E264(9);
      [v70 composeFormattingController:v154 didSelectTextStyle:?];
      MEMORY[0x1E69E5920](v69);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1BE92898C(&v199);
    }
  }

  else if (v171 == *MEMORY[0x1E69DC478])
  {
    v200 = [v154 formattingDelegate];
    if (v200)
    {
      v65 = &v200;
      v67 = v200;
      swift_unknownObjectRetain();
      sub_1BE92898C(v65);
      swift_getObjectType();
      sub_1BE930D64(0, v38);
      v66 = sub_1BE92E264(11);
      [v67 composeFormattingController:v154 didSelectTextStyle:?];
      MEMORY[0x1E69E5920](v66);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1BE92898C(&v200);
    }
  }

  else if (v171 == *MEMORY[0x1E69DC470])
  {
    v201 = [v154 formattingDelegate];
    if (v201)
    {
      v62 = &v201;
      v64 = v201;
      swift_unknownObjectRetain();
      sub_1BE92898C(v62);
      swift_getObjectType();
      sub_1BE930D64(0, v39);
      v63 = sub_1BE92E264(12);
      [v64 composeFormattingController:v154 didSelectTextStyle:?];
      MEMORY[0x1E69E5920](v63);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1BE92898C(&v201);
    }
  }

  else
  {
    (*(v167 + 8))(v170, v169);
  }

  return (*(v167 + 8))(v166, v169);
}

id sub_1BE92E264(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() composeTextStyleForTextStyleType_];

  return v1;
}

uint64_t sub_1BE92E2B0(uint64_t a1, uint64_t a2)
{
  sub_1BE94283C();
  *v2 = "title";
  *(v2 + 8) = 5;
  *(v2 + 16) = 2;
  *(v2 + 24) = "headline";
  *(v2 + 32) = 8;
  *(v2 + 40) = 2;
  *(v2 + 48) = "subheadline";
  *(v2 + 56) = 11;
  *(v2 + 64) = 2;
  *(v2 + 72) = "body";
  *(v2 + 80) = 4;
  *(v2 + 88) = 2;
  *(v2 + 96) = "footnote";
  *(v2 + 104) = 8;
  *(v2 + 112) = 2;
  sub_1BE921DF8();
  v6 = sub_1BE9427FC();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_12:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_12;
    case 2:
      v5 = 2;
      goto LABEL_12;
    case 3:
      v5 = 3;
      goto LABEL_12;
    case 4:
      v5 = 4;
      goto LABEL_12;
  }

  return 5;
}

uint64_t sub_1BE92E4C0(char a1)
{
  v3 = a1;
  if (a1)
  {
    switch(a1)
    {
      case 1:
        sub_1BE930C04(MEMORY[0x1E69DDD40], &v2);
        break;
      case 2:
        sub_1BE930C04(MEMORY[0x1E69DDD80], &v2);
        break;
      case 3:
        sub_1BE930C04(MEMORY[0x1E69DDCF8], &v2);
        break;
      default:
        sub_1BE930C04(MEMORY[0x1E69DDD28], &v2);
        break;
    }
  }

  else
  {
    sub_1BE930C04(MEMORY[0x1E69DDDB8], &v2);
  }

  return v2;
}

void sub_1BE92E644(uint64_t a1)
{
  v5 = a1;
  v4 = v1;
  v3 = [v1 formattingDelegate];
  if (v3)
  {
    v2 = v3;
    swift_unknownObjectRetain();
    sub_1BE92898C(&v3);
    swift_getObjectType();
    [v2 composeFormattingControllerDidCancel_];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1BE92898C(&v3);
  }
}

uint64_t sub_1BE92E77C(uint64_t a1, void *a2)
{
  v58 = a1;
  v59 = a2;
  v56 = sub_1BE9310DC;
  v57 = sub_1BE931118;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v67 = 0;
  v61 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB61D0, &qword_1BE985FE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v60, v59, v2, v3);
  v62 = &v19 - v61;
  v71 = v5;
  v70 = v6;
  v69 = v4;
  v68 = [v4 formattingDelegate];
  if (v68)
  {
    v54 = &v68;
    v55 = v68;
    swift_unknownObjectRetain();
    sub_1BE92898C(v54);
    swift_getObjectType();
    if ([v55 respondsToSelector_])
    {
      swift_unknownObjectRetain();
      v52 = 7;
      v53 = swift_allocObject();
      *(v53 + 16) = v55;
      v7 = swift_allocObject();
      v8 = v53;
      v9 = v57;
      *(v7 + 16) = v56;
      *(v7 + 24) = v8;
      v63 = v9;
      v64 = v7;
    }

    else
    {
      v63 = 0;
      v64 = 0;
    }

    v50 = v63;
    v51 = v64;
    if (v63)
    {
      v48 = v50;
      v49 = v51;
      v45 = v51;
      v46 = v50(v60);

      swift_unknownObjectRelease();
      v47 = v46;
      goto LABEL_9;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1BE92898C(&v68);
  }

  v47 = 0;
LABEL_9:
  v44 = v47;
  if (!v47)
  {
    v19 = [v59 configuration];
    [v19 setIncludeFaces_];
    MEMORY[0x1E69E5920](v19);
    v22 = 1;
    return v22 & 1;
  }

  v43 = v44;
  v10 = v60;
  v39 = v44;
  v67 = v44;
  v40 = [v59 configuration];
  v41 = 1;
  [v40 setIncludeFaces_];
  MEMORY[0x1E69E5920](v40);
  MEMORY[0x1E69E5928](v10);
  sub_1BE9425FC();
  v11 = sub_1BE94259C();
  if ((*(*(v11 - 8) + 48))(v62, v41) != 0)
  {
    sub_1BE930C44(v62);
    MEMORY[0x1E69E5920](v60);
LABEL_19:
    v34 = 0;
    goto LABEL_15;
  }

  v37 = sub_1BE94256C();
  sub_1BE930C44(v62);
  MEMORY[0x1E69E5920](v60);
  v66 = v37;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6208, &qword_1BE986000);
  sub_1BE930A64();
  sub_1BE9424CC();
  v38 = v65;

  if (!v38)
  {
    goto LABEL_19;
  }

  v35 = v38;
  v32 = v38;
  v33 = [v38 fontDescriptor];
  MEMORY[0x1E69E5920](v32);
  v34 = v33;
LABEL_15:
  v30 = v34;
  [v59 setSelectedFontDescriptor_];
  MEMORY[0x1E69E5920](v30);
  *&v12 = MEMORY[0x1E69E5928](v60).n128_u64[0];
  [v59 setDelegate_];
  swift_unknownObjectRelease();
  *&v13 = MEMORY[0x1E69E5928](v59).n128_u64[0];
  v31 = [v59 sheetPresentationController];
  MEMORY[0x1E69E5920](v59);
  if (v31)
  {
    v29 = v31;
    v28 = v31;
    v25 = sub_1BE931078(0, v14);
    v24 = sub_1BE94283C();
    v23 = v15;
    v16 = [objc_opt_self() largeDetent];
    *v23 = v16;
    sub_1BE921DF8();
    v26 = v17;
    v27 = sub_1BE94238C();

    [v28 setDetents_];
    MEMORY[0x1E69E5920](v27);
    MEMORY[0x1E69E5920](v28);
  }

  v20 = 1;
  v21 = 0;
  [v60 dismissViewControllerAnimated:1 completion:?];
  [v39 presentViewController:v59 animated:v20 & 1 completion:v21];
  MEMORY[0x1E69E5920](v39);
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_1BE92EF90(uint64_t a1, uint64_t a2)
{
  v76 = a1;
  v77 = a2;
  v74 = sub_1BE9311EC;
  v75 = sub_1BE9311F4;
  v102 = 0;
  v101 = 0;
  v100 = 0;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v93 = 0;
  v85 = 0;
  v82 = 0;
  v78 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB61D0, &qword_1BE985FE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v80, v77, v2, v3);
  v79 = v24 - v78;
  v102 = v5;
  v101 = v6;
  v100 = v4;
  *&v7 = MEMORY[0x1E69E5928](v4).n128_u64[0];
  v81 = [v80 navigationController];
  if (v81)
  {
    v73 = v81;
    v71 = v81;
    v82 = v81;
    MEMORY[0x1E69E5920](v80);
    v9 = [v71 topViewController];
    v72 = v9;
    if (v9)
    {
      v70 = v72;
      v68 = v72;
      objc_opt_self();
      v69 = swift_dynamicCastObjCClass();
      if (v69)
      {
        v67 = v69;
      }

      else
      {
        MEMORY[0x1E69E5920](v68);
        v67 = 0;
      }

      v66 = v67;
    }

    else
    {
      v66 = 0;
    }

    v65 = v66;
    MEMORY[0x1E69E5920](v66);
    if (v65)
    {
      MEMORY[0x1E69E5920](v71);
      v64 = 0;
      return v64 & 1;
    }

    MEMORY[0x1E69E5920](v71);
  }

  else
  {
    MEMORY[0x1E69E5920](v80);
  }

  v10 = v80;
  v62 = 0;
  v61 = sub_1BE931124(0, v8);
  MEMORY[0x1E69E5928](v10);
  sub_1BE9425FC();
  v11 = sub_1BE94259C();
  if ((*(*(v11 - 8) + 48))(v79, 1) == 0)
  {
    v58 = sub_1BE94252C();
    sub_1BE930C44(v79);
    MEMORY[0x1E69E5920](v80);
    v84 = v58;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6278, &qword_1BE986018);
    sub_1BE931260();
    sub_1BE9424CC();
    v59 = v83;

    v60 = v59;
  }

  else
  {
    sub_1BE930C44(v79);
    MEMORY[0x1E69E5920](v80);
    v60 = 0;
  }

  v98 = v60;
  if (v60)
  {
    v99 = v98;
  }

  else
  {
    v99 = [objc_opt_self() labelColor];
    if (v98)
    {
      sub_1BE923F04(&v98);
    }
  }

  v55 = v99;
  *&v12 = MEMORY[0x1E69E5928](v80).n128_u64[0];
  v56 = [v80 navigationController];
  MEMORY[0x1E69E5920](v80);
  v97 = v56;
  v54 = v56 == 0;
  v50 = v54;
  sub_1BE923F04(&v97);
  v51 = sub_1BE92FBA0(v55, v50);
  v96 = v51;
  v52 = *&v80[OBJC_IVAR___MFComposeFormattingViewController_colorPickerDelegate];
  *&v13 = MEMORY[0x1E69E5928](v52).n128_u64[0];
  [v51 setDelegate_];
  swift_unknownObjectRelease();
  *&v14 = MEMORY[0x1E69E5928](v80).n128_u64[0];
  v53 = [v80 navigationController];
  if (v53)
  {
    v49 = v53;
    v48 = v53;
    v85 = v53;
    MEMORY[0x1E69E5920](v80);
    [v48 pushViewController:v51 animated:1];
    MEMORY[0x1E69E5920](v48);
  }

  else
  {
    MEMORY[0x1E69E5920](v80);
    v39 = 0;
    sub_1BE931188(0, v15);
    MEMORY[0x1E69E5928](v51);
    v46 = sub_1BE92FBEC(v51);
    v95 = v46;
    v37 = sub_1BE94229C();
    v38 = v16;
    sub_1BE94203C();
    v44 = sub_1BE94224C();
    MEMORY[0x1E69E5928](v44);

    MEMORY[0x1E69E5920](v44);
    v94 = v44;
    v40 = sub_1BE931078(v39, v17);
    MEMORY[0x1E69E5928](v44);
    v43 = swift_allocObject();
    v41 = v43 + 16;
    MEMORY[0x1E69E5928](v80);
    v42 = v80;
    swift_unknownObjectWeakInit();
    MEMORY[0x1E69E5920](v42);

    v45 = sub_1BE94261C();

    MEMORY[0x1E69E5920](v44);
    v93 = v45;
    *&v18 = MEMORY[0x1E69E5928](v46).n128_u64[0];
    v47 = [v46 sheetPresentationController];
    MEMORY[0x1E69E5920](v46);
    if (v47)
    {
      v36 = v47;
      v35 = v47;
      v32 = sub_1BE94283C();
      v31 = v19;
      MEMORY[0x1E69E5928](v45);
      *v31 = v45;
      sub_1BE921DF8();
      v33 = v20;
      v34 = sub_1BE94238C();

      [v35 setDetents_];
      MEMORY[0x1E69E5920](v34);
      MEMORY[0x1E69E5920](v35);
    }

    *&v21 = MEMORY[0x1E69E5928](v46).n128_u64[0];
    v30 = [v46 sheetPresentationController];
    MEMORY[0x1E69E5920](v46);
    if (v30)
    {
      v29 = v30;
      v28 = v30;
      *&v22 = MEMORY[0x1E69E5928](v44).n128_u64[0];
      [v28 setLargestUndimmedDetentIdentifier_];
      MEMORY[0x1E69E5920](v44);
      MEMORY[0x1E69E5920](v28);
    }

    v26 = swift_allocObject();
    v24[1] = v26 + 16;
    MEMORY[0x1E69E5928](v80);
    v25 = v80;
    swift_unknownObjectWeakInit();
    MEMORY[0x1E69E5920](v25);

    v91 = v75;
    v92 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v87 = 1107296256;
    v88 = 0;
    v89 = sub_1BE92FFE0;
    v90 = &block_descriptor;
    v27 = _Block_copy(&aBlock);

    [v80 presentViewController:v46 animated:1 completion:v27];
    _Block_release(v27);
    MEMORY[0x1E69E5920](v45);
    MEMORY[0x1E69E5920](v44);
    MEMORY[0x1E69E5920](v46);
  }

  MEMORY[0x1E69E5920](v51);
  v64 = 0;
  return v64 & 1;
}

uint64_t sub_1BE92FC2C(uint64_t a1, uint64_t a2)
{
  v9[5] = a1;
  v9[4] = a2 + 16;
  swift_beginAccess();
  v9[0] = swift_unknownObjectWeakLoadStrong();
  if (v9[0])
  {
    v5 = v9[0];
    MEMORY[0x1E69E5928](v9[0]);
    sub_1BE923F04(v9);
    swift_endAccess();
    sub_1BE929F10();
    v6 = v2;
    MEMORY[0x1E69E5920](v5);
    v7 = v6;
    v8 = 0;
  }

  else
  {
    sub_1BE923F04(v9);
    swift_endAccess();
    v7 = 0;
    v8 = 1;
  }

  if (v8)
  {
    return 0x4071800000000000;
  }

  else
  {
    return v7;
  }
}

void *sub_1BE92FD8C(uint64_t a1)
{
  v9 = 0;
  v10 = a1 + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  result = Strong;
  if (Strong)
  {
    v9 = Strong;
    v2 = [Strong formattingDelegate];
    v8 = v2;
    if (v2)
    {
      v5 = v8;
      swift_unknownObjectRetain();
      sub_1BE92898C(&v8);
      swift_getObjectType();
      if ([v5 respondsToSelector_])
      {
        swift_unknownObjectRetain();
        v4 = swift_allocObject();
        *(v4 + 16) = v5;
        v3 = swift_allocObject();
        *(v3 + 16) = sub_1BE932CA8;
        *(v3 + 24) = v4;
        v7 = sub_1BE932CD0;
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        v7(Strong);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      sub_1BE92898C(&v8);
    }

    return MEMORY[0x1E69E5920](Strong);
  }

  return result;
}

uint64_t sub_1BE92FFE0(uint64_t a1)
{
  v3 = *(a1 + 32);

  v3(v1);
}

id sub_1BE9300F0(void *a1)
{
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v13 = a1;
  v8 = [a1 selectedFontDescriptor];
  if (!v8)
  {
    return sub_1BE930264(a1);
  }

  v11 = v8;
  sub_1BE930BA0(0, v1);
  MEMORY[0x1E69E5928](v8);
  v2 = sub_1BE92C21C();
  v5 = sub_1BE92B62C(v8, v2);
  v10 = v5;
  v9 = [v7 formattingDelegate];
  if (v9)
  {
    v4 = v9;
    swift_unknownObjectRetain();
    sub_1BE92898C(&v9);
    swift_getObjectType();
    [v4 composeFormattingController:v7 didChangeFont:v5];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1BE92898C(&v9);
  }

  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v8);
  return sub_1BE930264(a1);
}

id MFComposeFormattingViewController.init(configuration:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration_];
  MEMORY[0x1E69E5920](a1);
  return v3;
}

uint64_t sub_1BE93051C(char a1)
{
  sub_1BE92C02C(a1);
  sub_1BE92157C();
  v2 = sub_1BE9426AC();

  return v2;
}

uint64_t sub_1BE9306A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BE92E2B0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1BE9306E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE92C02C(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1BE9307B4()
{
  v2 = qword_1EBDB61C8;
  if (!qword_1EBDB61C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB61C0, &qword_1BE985FD8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB61C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE93083C()
{
  v2 = qword_1EBDB61E8;
  if (!qword_1EBDB61E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB61D8, &qword_1BE985FE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB61E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for Key(uint64_t a1)
{
  v5 = qword_1EBDB63D0;
  if (!qword_1EBDB63D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EBDB63D0);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1BE93095C()
{
  v2 = qword_1EBDB61F8;
  if (!qword_1EBDB61F8)
  {
    type metadata accessor for Key(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB61F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE9309DC()
{
  v2 = qword_1EBDB6200;
  if (!qword_1EBDB6200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB61F0, &qword_1BE985FF8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6200);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE930A64()
{
  v2 = qword_1EBDB6210;
  if (!qword_1EBDB6210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB6208, &qword_1BE986000);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6210);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE930B18()
{
  v2 = qword_1EBDB6228;
  if (!qword_1EBDB6228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB6220, &qword_1BE986010);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6228);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE930BA0(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EBDB6230;
  if (!qword_1EBDB6230)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBDB6230);
    return ObjCClassMetadata;
  }

  return v4;
}

void *sub_1BE930C04(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  result = a2;
  *a2 = v3;
  return result;
}

uint64_t sub_1BE930C44(uint64_t a1)
{
  v3 = sub_1BE94259C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1BE930CEC()
{
  v2 = qword_1EBDB6238;
  if (!qword_1EBDB6238)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6238);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE930D64(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EBDB6240;
  if (!qword_1EBDB6240)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBDB6240);
    return ObjCClassMetadata;
  }

  return v4;
}

unint64_t type metadata accessor for TextList(uint64_t a1)
{
  v5 = qword_1EBDB63C8;
  if (!qword_1EBDB63C8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EBDB63C8);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1BE930E60()
{
  v2 = qword_1EBDB6248;
  if (!qword_1EBDB6248)
  {
    type metadata accessor for TextList(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6248);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE930EE0()
{
  v2 = qword_1EBDB6250;
  if (!qword_1EBDB6250)
  {
    type metadata accessor for TextList(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6250);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for TextAlignment(uint64_t a1)
{
  v5 = qword_1EBDB63C0;
  if (!qword_1EBDB63C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EBDB63C0);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1BE930FF8()
{
  v2 = qword_1EBDB6258;
  if (!qword_1EBDB6258)
  {
    type metadata accessor for TextAlignment(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6258);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE931078(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EBDB6260;
  if (!qword_1EBDB6260)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBDB6260);
    return ObjCClassMetadata;
  }

  return v4;
}

id sub_1BE9310DC(uint64_t a1)
{
  v2 = [*(v1 + 16) presentingViewControllerForComposeFormattingController_];

  return v2;
}

unint64_t sub_1BE931124(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EBDB6268;
  if (!qword_1EBDB6268)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBDB6268);
    return ObjCClassMetadata;
  }

  return v4;
}

unint64_t sub_1BE931188(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EBDB6270;
  if (!qword_1EBDB6270)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBDB6270);
    return ObjCClassMetadata;
  }

  return v4;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1BE931260()
{
  v2 = qword_1EBDB6280;
  if (!qword_1EBDB6280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB6278, &qword_1BE986018);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6280);
    return WitnessTable;
  }

  return v2;
}

id sub_1BE9312E8(uint64_t a1)
{
  v4 = [v1 initWithSelectedColor_shouldShowTitleBar_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

id sub_1BE931340(uint64_t a1)
{
  v4 = [v1 initWithRootViewController_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

id sub_1BE931390(uint64_t a1, uint64_t a2)
{
  sub_1BE929A5C(0, a2);
  v4 = sub_1BE94238C();
  v5 = [v3 initWithGroups_];
  MEMORY[0x1E69E5920](v4);

  return v5;
}

uint64_t sub_1BE931404(uint64_t a1)
{
  sub_1BE932A30();
  sub_1BE932BB0();
  return sub_1BE9427EC();
}

uint64_t sub_1BE931440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BE932A30();
  sub_1BE932BB0();
  return sub_1BE9427BC();
}

uint64_t sub_1BE93148C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BE932A30();
  sub_1BE932BB0();
  return sub_1BE9427CC() & 1;
}

uint64_t sub_1BE9314DC(uint64_t a1, uint64_t a2)
{
  sub_1BE932A30();
  sub_1BE932BB0();
  return sub_1BE9427DC();
}

uint64_t sub_1BE931644@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BE93167C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1BE93167C(uint64_t a1, uint64_t a2)
{
  sub_1BE94203C();
  v3 = sub_1BE94224C();
  MEMORY[0x1E69E5928](v3);

  MEMORY[0x1E69E5920](v3);
  return v3;
}

uint64_t sub_1BE9316E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE93171C(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BE93171C(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v3 = sub_1BE94225C();
  MEMORY[0x1E69E5920](a1);
  return v3;
}

uint64_t sub_1BE93177C(uint64_t a1)
{
  sub_1BE932B30();
  sub_1BE932BB0();
  return sub_1BE9427EC();
}

uint64_t sub_1BE9317B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BE932B30();
  sub_1BE932BB0();
  return sub_1BE9427BC();
}

uint64_t sub_1BE931804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BE932B30();
  sub_1BE932BB0();
  return sub_1BE9427CC() & 1;
}

uint64_t sub_1BE931854(uint64_t a1, uint64_t a2)
{
  sub_1BE932B30();
  sub_1BE932BB0();
  return sub_1BE9427DC();
}

uint64_t sub_1BE9318EC(uint64_t a1)
{
  sub_1BE932AB0();
  sub_1BE932BB0();
  return sub_1BE9427EC();
}

uint64_t sub_1BE931928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BE932AB0();
  sub_1BE932BB0();
  return sub_1BE9427BC();
}

uint64_t sub_1BE931974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BE932AB0();
  sub_1BE932BB0();
  return sub_1BE9427CC() & 1;
}

uint64_t sub_1BE9319C4(uint64_t a1, uint64_t a2)
{
  sub_1BE932AB0();
  sub_1BE932BB0();
  return sub_1BE9427DC();
}

uint64_t sub_1BE931B2C(uint64_t a1)
{
  sub_1BE93095C();
  sub_1BE932A30();
  return sub_1BE94279C();
}

uint64_t sub_1BE931B78(uint64_t a1)
{
  sub_1BE932C28();
  sub_1BE932B30();
  return sub_1BE94279C();
}

uint64_t sub_1BE931BC4(uint64_t a1)
{
  sub_1BE930E60();
  sub_1BE932AB0();
  return sub_1BE94279C();
}

unint64_t sub_1BE931D08()
{
  v2 = qword_1EBDB6290;
  if (!qword_1EBDB6290)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6290);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE931D9C()
{
  v2 = qword_1EBDB6298;
  if (!qword_1EBDB6298)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6298);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1BE931E34(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *sub_1BE931F84(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for MFComposeFormattingViewController(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EBDB7050[0];
  if (!qword_1EBDB7050[0])
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, qword_1EBDB7050);
    return ObjCClassMetadata;
  }

  return v4;
}

uint64_t sub_1BE9321CC(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFB)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 4) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 251;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 5;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1BE932334(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFB)
  {
    v5 = ((a3 + 4) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFB)
  {
    v4 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

unint64_t sub_1BE93255C()
{
  v2 = qword_1EBDB63D8;
  if (!qword_1EBDB63D8)
  {
    type metadata accessor for Key(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB63D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE9325F4()
{
  v2 = qword_1EBDB63E0;
  if (!qword_1EBDB63E0)
  {
    type metadata accessor for Key(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB63E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE93268C()
{
  v2 = qword_1EBDB63E8;
  if (!qword_1EBDB63E8)
  {
    type metadata accessor for TextList(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB63E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE932724()
{
  v2 = qword_1EBDB63F0;
  if (!qword_1EBDB63F0)
  {
    type metadata accessor for TextList(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB63F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE9327BC()
{
  v2 = qword_1EBDB63F8;
  if (!qword_1EBDB63F8)
  {
    type metadata accessor for TextAlignment(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB63F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE932854()
{
  v2 = qword_1EBDB6400;
  if (!qword_1EBDB6400)
  {
    type metadata accessor for TextAlignment(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6400);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE93291C()
{
  v2 = qword_1EBDB6408;
  if (!qword_1EBDB6408)
  {
    type metadata accessor for Key(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6408);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE9329B4()
{
  v2 = qword_1EBDB7A60[0];
  if (!qword_1EBDB7A60[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EBDB7A60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE932A30()
{
  v2 = qword_1EBDB6410;
  if (!qword_1EBDB6410)
  {
    type metadata accessor for Key(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6410);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE932AB0()
{
  v2 = qword_1EBDB6418;
  if (!qword_1EBDB6418)
  {
    type metadata accessor for TextList(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6418);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE932B30()
{
  v2 = qword_1EBDB6420;
  if (!qword_1EBDB6420)
  {
    type metadata accessor for TextAlignment(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6420);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE932BB0()
{
  v2 = qword_1EBDB6428;
  if (!qword_1EBDB6428)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6428);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE932C28()
{
  v2 = qword_1EBDB6430;
  if (!qword_1EBDB6430)
  {
    type metadata accessor for TextAlignment(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6430);
    return WitnessTable;
  }

  return v2;
}

void *sub_1BE932CDC(void *a1, void *a2)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = v5;
  v3 = a1[4];
  a2[4] = v3;
  (**(v3 - 8))(a2 + 1, a1 + 1, v2);
  return a2;
}

__n128 sub_1BE932D64(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1BE932D80(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

unint64_t sub_1BE932DE4()
{
  v2 = qword_1EBDB6440;
  if (!qword_1EBDB6440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB6438, &unk_1BE986798);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6440);
    return WitnessTable;
  }

  return v2;
}

void *sub_1BE932E6C(void *a1)
{
  MEMORY[0x1E69E5920](*a1);
  __swift_destroy_boxed_opaque_existential_1(a1 + 1);
  return a1;
}

void *sub_1BE932EAC(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];
  sub_1BE94203C();
  a2[1] = v4;
  v2 = a1[5];
  a2[5] = v2;
  (**(v2 - 8))(a2 + 2, a1 + 2);
  return a2;
}

uint64_t sub_1BE933294@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v30 = "Fatal error";
  v31 = "MessageUI/MFPreferencesURL.swift";
  v32 = "Unexpectedly found nil while unwrapping an Optional value";
  v54 = 0;
  v53 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB60D0, &qword_1BE985CC0);
  v33 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2, v3, v4, v5);
  v34 = v23 - v33;
  v36 = 0;
  v46 = sub_1BE941E5C();
  v43 = *(v46 - 8);
  v44 = v46 - 8;
  v35 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v46, v6, v7, v8);
  v45 = v23 - v35;
  v37 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB64B0, &qword_1BE9867A8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36, v9, v10, v11);
  v49 = v23 - v37;
  v51 = sub_1BE941D8C();
  v47 = *(v51 - 8);
  v48 = v51 - 8;
  v39 = *(v47 + 64);
  v38 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v51, v12, v13, v14);
  v40 = v23 - v38;
  v41 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23 - v38, v15, v16, v17);
  v42 = v23 - v41;
  v54 = v23 - v41;
  v53 = v1;
  v52[39] = 2;
  MailSettingsSpecifier.url.getter(v18);
  v50 = 1;
  sub_1BE941D0C();
  (*(v43 + 8))(v45, v46);
  if ((*(v47 + 48))(v49, v50, v51) == 1)
  {
    sub_1BE9337E8(v49);
    sub_1BE9378B0();
    result = sub_1BE94275C();
    __break(1u);
  }

  else
  {
    (*(v47 + 32))(v42, v49, v51);
    v28 = 1;
    v23[1] = sub_1BE94229C();
    v25 = v19;
    v23[2] = v52;
    v20 = sub_1BE941D3C();
    v21 = v40;
    v24 = v20;
    sub_1BE9422BC();
    v24();

    (*(v47 + 16))(v21, v42, v51);
    sub_1BE941D1C();
    v26 = *(v47 + 8);
    v27 = v47 + 8;
    v26(v40, v51);
    if ((*(v43 + 48))(v34, v28, v46) == 1)
    {
      sub_1BE94274C();
      __break(1u);
    }

    (*(v43 + 32))(v29, v34, v46);
    return (v26)(v42, v51);
  }

  return result;
}

uint64_t sub_1BE9337E8(uint64_t a1)
{
  v3 = sub_1BE941D8C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1BE933988@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v30 = "Fatal error";
  v31 = "MessageUI/MFPreferencesURL.swift";
  v32 = "Unexpectedly found nil while unwrapping an Optional value";
  v54 = 0;
  v53 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB60D0, &qword_1BE985CC0);
  v33 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2, v3, v4, v5);
  v34 = v23 - v33;
  v36 = 0;
  v46 = sub_1BE941E5C();
  v43 = *(v46 - 8);
  v44 = v46 - 8;
  v35 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v46, v6, v7, v8);
  v45 = v23 - v35;
  v37 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB64B0, &qword_1BE9867A8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36, v9, v10, v11);
  v49 = v23 - v37;
  v51 = sub_1BE941D8C();
  v47 = *(v51 - 8);
  v48 = v51 - 8;
  v39 = *(v47 + 64);
  v38 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v51, v12, v13, v14);
  v40 = v23 - v38;
  v41 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23 - v38, v15, v16, v17);
  v42 = v23 - v41;
  v54 = v23 - v41;
  v53 = v1;
  v52[39] = 2;
  MailSettingsSpecifier.url.getter(v18);
  v50 = 1;
  sub_1BE941D0C();
  (*(v43 + 8))(v45, v46);
  if ((*(v47 + 48))(v49, v50, v51) == 1)
  {
    sub_1BE9337E8(v49);
    sub_1BE9378B0();
    result = sub_1BE94275C();
    __break(1u);
  }

  else
  {
    (*(v47 + 32))(v42, v49, v51);
    v28 = 1;
    v23[1] = sub_1BE94229C();
    v25 = v19;
    v23[2] = v52;
    v20 = sub_1BE941D3C();
    v21 = v40;
    v24 = v20;
    sub_1BE9422BC();
    v24();

    (*(v47 + 16))(v21, v42, v51);
    sub_1BE941D1C();
    v26 = *(v47 + 8);
    v27 = v47 + 8;
    v26(v40, v51);
    if ((*(v43 + 48))(v34, v28, v46) == 1)
    {
      sub_1BE94274C();
      __break(1u);
    }

    (*(v43 + 32))(v29, v34, v46);
    return (v26)(v42, v51);
  }

  return result;
}

uint64_t sub_1BE933FD8@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v30 = "Fatal error";
  v31 = "MessageUI/MFPreferencesURL.swift";
  v32 = "Unexpectedly found nil while unwrapping an Optional value";
  v54 = 0;
  v53 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB60D0, &qword_1BE985CC0);
  v33 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2, v3, v4, v5);
  v34 = v23 - v33;
  v36 = 0;
  v46 = sub_1BE941E5C();
  v43 = *(v46 - 8);
  v44 = v46 - 8;
  v35 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v46, v6, v7, v8);
  v45 = v23 - v35;
  v37 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB64B0, &qword_1BE9867A8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36, v9, v10, v11);
  v49 = v23 - v37;
  v51 = sub_1BE941D8C();
  v47 = *(v51 - 8);
  v48 = v51 - 8;
  v39 = *(v47 + 64);
  v38 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v51, v12, v13, v14);
  v40 = v23 - v38;
  v41 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23 - v38, v15, v16, v17);
  v42 = v23 - v41;
  v54 = v23 - v41;
  v53 = v1;
  v52[39] = 0;
  MailSettingsSpecifier.url.getter(v18);
  v50 = 1;
  sub_1BE941D0C();
  (*(v43 + 8))(v45, v46);
  if ((*(v47 + 48))(v49, v50, v51) == 1)
  {
    sub_1BE9337E8(v49);
    sub_1BE9378B0();
    result = sub_1BE94275C();
    __break(1u);
  }

  else
  {
    (*(v47 + 32))(v42, v49, v51);
    v28 = 1;
    v23[1] = sub_1BE94229C();
    v25 = v19;
    v23[2] = v52;
    v20 = sub_1BE941D3C();
    v21 = v40;
    v24 = v20;
    sub_1BE9422BC();
    v24();

    (*(v47 + 16))(v21, v42, v51);
    sub_1BE941D1C();
    v26 = *(v47 + 8);
    v27 = v47 + 8;
    v26(v40, v51);
    if ((*(v43 + 48))(v34, v28, v46) == 1)
    {
      sub_1BE94274C();
      __break(1u);
    }

    (*(v43 + 32))(v29, v34, v46);
    return (v26)(v42, v51);
  }

  return result;
}

BOOL sub_1BE93452C(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

void sub_1BE934770(void *a1, int a2)
{
  v219 = v248;
  v223 = a1;
  v220 = a2;
  v221 = 0;
  v255 = 0;
  v247 = 0;
  v246 = 0;
  v245 = 0;
  v244 = 0;
  v243 = 0;
  v242 = 0;
  v241 = 0;
  v240 = 0;
  v239 = 0;
  v238 = 0;
  v237 = 0;
  v236 = 0;
  v235[1] = 0;
  v235[0] = 0;
  v232 = 0;
  v229 = 0;
  v222 = 0;
  v227 = 0;
  v226 = 0;
  v225 = 0;
  v257 = a1;
  v256 = a2;
  v253 = 0;
  v254 = 0;
  v251 = 0;
  v252 = 0;
  v2 = a1;
  objc_opt_self();
  v224 = swift_dynamicCastObjCClass();
  if (v224)
  {
    v218 = v224;
  }

  else
  {

    v218 = 0;
  }

  v217 = v218;
  if (v218)
  {
    v216 = v217;
    v214 = v217;
    v226 = v217;
    v3 = [v217 mailAccountIfAvailable];
    v215 = v3;
    if (v3)
    {
      v213 = v215;
      v212 = v215;
      v225 = v215;
      v4 = v215;
      nullsub_1();
      v6 = v5;
      v8 = v7;
      v9 = v253;
      v10 = v254;
      v253 = v6;
      v254 = v8;
      sub_1BE937C44(v9, v10);
    }
  }

  v210 = v253;
  v211 = v254;
  sub_1BE937964(v253, v254);
  v250[0] = v210;
  v250[1] = v211;
  v209 = v210 == 0;
  v208 = v209;
  sub_1BE9379B4(v250);
  if (!v210)
  {
    v11 = [objc_opt_self() mailAccounts];
    v207 = v11;
    if (v11)
    {
      v206 = v207;
      v203 = v207;
      v202 = sub_1BE937CF8(0, v11);
      v204 = sub_1BE94239C();

      v205 = v204;
    }

    else
    {
      v205 = 0;
    }

    v201 = v205;
    if (v205)
    {
      v200 = v201;
    }

    else
    {
      LODWORD(v77) = 0;
      v76 = 78;
      LOBYTE(v75) = 2;
      sub_1BE94274C();
      __break(1u);
    }

    v234 = v200;
    v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB64B8, &qword_1BE9867B0);
    sub_1BE937AA4();
    sub_1BE9424EC();
    for (i = v222; ; i = v157)
    {
      v196 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB64C8, &qword_1BE9867B8);
      sub_1BE94273C();
      v197 = v233;
      if (!v233)
      {
        v158 = v196;
        goto LABEL_52;
      }

      v195 = v197;
      v193 = v197;
      v232 = v197;
      v194 = sub_1BE937B2C(0, v12);
      if (sub_1BE94265C())
      {
        v13 = v193;
        nullsub_1();
        v15 = v14;
        v17 = v16;
        v18 = v253;
        v19 = v254;
        v253 = v15;
        v254 = v17;
        sub_1BE937C44(v18, v19);
        v192 = v196;
        goto LABEL_48;
      }

      v191 = [v193 deliveryAccount];
      if (!v191)
      {
        goto LABEL_31;
      }

      v190 = v191;
      v189 = v191;
      v227 = v191;
      v20 = sub_1BE94265C();
      if ((v20 & 1) == 0)
      {
        break;
      }

      if ([v193 derivesDeliveryAccountInfoFromMailAccount])
      {
        v21 = v193;
      }

      else
      {
        v28 = v193;
        v29 = v189;
      }

      nullsub_1();
      v23 = v22;
      v25 = v24;
      v26 = v253;
      v27 = v254;
      v253 = v23;
      v254 = v25;
      sub_1BE937C44(v26, v27);

      v188 = v196;
LABEL_47:
      v192 = v188;
LABEL_48:
      v162 = v192;
      v163 = v253;
      v164 = v254;
      sub_1BE937964(v253, v254);
      v230[0] = v163;
      v230[1] = v164;
      v161 = v163 != 0;
      v159 = v161;
      sub_1BE9379B4(v230);
      v160 = v193;
      if (v159)
      {

        v158 = v162;
LABEL_52:
        v155 = v158;
        sub_1BE91F954(v235);
        v156 = v155;
        goto LABEL_54;
      }

      v157 = v162;
    }

LABEL_31:
    v186 = v251;
    v187 = v252;
    sub_1BE937964(v251, v252);
    v231[0] = v186;
    v231[1] = v187;
    v185 = v186 == 0;
    v184 = v185;
    sub_1BE9379B4(v231);
    if (v184)
    {
      v30 = [v193 deliveryAccountAlternates];
      v183 = v30;
      if (v30)
      {
        v182 = v183;
        v179 = v183;
        v178 = sub_1BE937C94(0, v30);
        v180 = sub_1BE94239C();

        v181 = v180;
      }

      else
      {
        v181 = 0;
      }

      v177 = v181;
      if (v181)
      {
        v176 = v177;
        v31 = v196;
        v168 = v177;
        v229 = v177;
        v228 = v177;
        v32 = v223;
        v171 = &v78;
        MEMORY[0x1EEE9AC00](&v78, v33, v34, v35);
        v169 = &v75;
        v77 = v36;
        v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB64D8, qword_1BE9867C0);
        sub_1BE937BBC();
        v37 = sub_1BE94233C();
        v172 = v31;
        v173 = v37;
        v174 = v171;
        if (v31)
        {

          __break(1u);
          return;
        }

        v167 = v173;

        if (v167)
        {
          v38 = v193;
          v39 = v223;
          objc_opt_self();
          v166 = swift_dynamicCastObjCClass();
          if (v166)
          {
            v165 = v166;
          }

          else
          {

            v165 = 0;
          }

          nullsub_1();
          v41 = v40;
          v43 = v42;
          v44 = v251;
          v45 = v252;
          v251 = v41;
          v252 = v43;
          sub_1BE937C44(v44, v45);

          v175 = v172;
        }

        else
        {

          v175 = v172;
        }
      }

      else
      {
        v175 = v196;
      }
    }

    else
    {
      v175 = v196;
    }

    v188 = v175;
    goto LABEL_47;
  }

  v156 = v222;
LABEL_54:
  v153 = v253;
  v154 = v254;
  sub_1BE937964(v253, v254);
  v248[0] = v153;
  v248[1] = v154;
  if (v153)
  {
    v219[1] = *v219;
  }

  else
  {
    sub_1BE937A10(&v251, v249);
    if (v248[0])
    {
      sub_1BE9379B4(v248);
    }
  }

  v151 = v249[0];
  v152 = v249[1];
  if (v249[0])
  {
    v149 = v151;
    v150 = v152;
    v145 = v152;
    v146 = v151;
    v246 = v151;
    v247 = v152;
    v46 = v151;
    v245 = v146;
    v47 = v145;
    v244 = v145;
    v48 = v146;
    v148 = [v146 parentAccount];
    v147 = v148;

    if (v148)
    {
      v144 = v147;
      v141 = v147;
      v142 = [v147 identifier];

      v143 = v142;
    }

    else
    {
      v143 = 0;
    }

    v140 = v143;
    if (v143)
    {
      v139 = v140;
      v134 = v140;
      v236 = v140;
      v49 = v140;
      v132 = sub_1BE94225C();
      v133 = v50;
      v135 = v132;
      v136 = v50;
      sub_1BE94203C();
      v242 = v132;
      v243 = v133;

      v137 = v135;
      v138 = v136;
    }

    else
    {
      v51 = v146;
      v131 = [v146 identifier];
      if (v131)
      {
        v130 = v131;
        v125 = v131;
        v126 = sub_1BE94225C();
        v127 = v52;

        v128 = v126;
        v129 = v127;
      }

      else
      {
        v128 = 0;
        v129 = 0;
      }

      v123 = v129;
      v124 = v128;
      if (!v129)
      {

        sub_1BE9379B4(&v251);
        sub_1BE9379B4(&v253);
        v120 = 0;
        return;
      }

      v121 = v124;
      v122 = v123;
      v119 = v123;
      v118 = v124;
      v240 = v124;
      v241 = v123;

      sub_1BE94203C();
      sub_1BE94203C();
      v242 = v118;
      v243 = v119;

      v137 = v118;
      v138 = v119;
    }

    v115 = v138;
    v114 = v137;
    v116 = MEMORY[0x1E69E6158];
    v117 = 1;
    sub_1BE94283C();
    v53 = v115;
    *v54 = v114;
    v54[1] = v53;
    sub_1BE921DF8();
    v239 = v55;
    if (sub_1BE93452C(v220, v117) || sub_1BE93452C(v220, 2))
    {
      v111 = MEMORY[0x1E69E6158];
      v108 = 1;
      v110 = sub_1BE94283C();
      v109 = v56;
      v57 = sub_1BE94229C();
      v58 = v109;
      *v109 = v57;
      v58[1] = v59;
      sub_1BE921DF8();
      v112 = v60;
      sub_1BE9423DC();
    }

    if (!sub_1BE93452C(v220, 2))
    {
      v61 = v145;
      if (v145)
      {
        v107 = v145;
        v105 = v145;
        v106 = [v145 identifier];
        if (v106)
        {
          v104 = v106;
          v99 = v106;
          v100 = sub_1BE94225C();
          v101 = v62;

          v102 = v100;
          v103 = v101;
        }

        else
        {
          v102 = 0;
          v103 = 0;
        }

        v96 = v103;
        v95 = v102;

        v97 = v95;
        v98 = v96;
      }

      else
      {
        v97 = 0;
        v98 = 0;
      }

      v93 = v98;
      v94 = v97;
      if (v98)
      {
        v91 = v94;
        v92 = v93;
        v90 = v93;
        v86 = v94;
        v237 = v94;
        v238 = v93;
        v88 = MEMORY[0x1E69E6158];
        v85 = sub_1BE94283C();
        v87 = v63;
        v64 = sub_1BE94229C();
        v65 = v87;
        *v87 = v64;
        v65[1] = v66;
        sub_1BE94203C();
        v67 = v87;
        v68 = v90;
        v87[2] = v86;
        v67[3] = v68;
        sub_1BE921DF8();
        v89 = v69;
        sub_1BE9423DC();
      }
    }

    if (sub_1BE93452C(v220, 2))
    {
      v83 = MEMORY[0x1E69E6158];
      v80 = 1;
      v82 = sub_1BE94283C();
      v81 = v70;
      v71 = sub_1BE94229C();
      v72 = v81;
      *v81 = v71;
      v72[1] = v73;
      sub_1BE921DF8();
      v84 = v74;
      sub_1BE9423DC();
    }

    v78 = v239;
    sub_1BE94203C();
    v79 = v78;
    sub_1BE91F954(&v239);
    sub_1BE9215F4(&v242);

    sub_1BE9379B4(&v251);
    sub_1BE9379B4(&v253);
    v120 = v79;
  }

  else
  {
    sub_1BE9379B4(&v251);
    sub_1BE9379B4(&v253);
    v120 = 0;
  }
}

uint64_t sub_1BE9357B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v48 = a1;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v65 = 0;
  v46 = 0;
  v57 = sub_1BE941E5C();
  v54 = *(v57 - 8);
  v55 = v57 - 8;
  v45 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v57, v3, v4, v5);
  v56 = v25 - v45;
  v47 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB64B0, &qword_1BE9867A8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v46, v6, v7, v8);
  v60 = v25 - v47;
  v62 = sub_1BE941D8C();
  v58 = *(v62 - 8);
  v59 = v62 - 8;
  v50 = *(v58 + 64);
  v49 = (v50 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v48, v9, v10, v11);
  v51 = v25 - v49;
  v52 = (v50 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x1EEE9AC00](v12, v25 - v49, v13, v14);
  v53 = v25 - v52;
  v69 = v25 - v52;
  v68 = v15;
  v67 = v2;
  v66 = 0;
  MailSettingsSpecifier.url.getter(v16);
  v61 = 1;
  sub_1BE941D0C();
  (*(v54 + 8))(v56, v57);
  if ((*(v58 + 48))(v60, v61, v62) == 1)
  {
    sub_1BE9337E8(v60);
  }

  else
  {
    (*(v58 + 32))(v53, v60, v62);
    sub_1BE934770(v48, 0);
    v43 = v17;
    if (v17)
    {
      v42 = v43;
      v39 = v43;
      v65 = v43;
      v26 = "/";
      v27 = 1;
      v25[3] = 1;
      v31 = sub_1BE94229C();
      v34 = v18;
      v64 = v39;
      v29 = sub_1BE94229C();
      v30 = v19;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB60E8, &qword_1BE985CF8);
      sub_1BE921F64();
      v32 = sub_1BE94222C();
      v33 = v20;

      v35 = MEMORY[0x1BFB4A0C0](v31, v34, v32, v33);
      v38 = v21;

      v36 = &v63;
      v22 = sub_1BE941D3C();
      v23 = v51;
      v37 = v22;
      sub_1BE9422BC();
      v37();

      (*(v58 + 16))(v23, v53, v62);
      sub_1BE941D1C();
      v41 = *(v58 + 8);
      v40 = v58 + 8;
      v41(v51, v62);

      return (v41)(v53, v62);
    }

    (*(v58 + 8))(v53, v62);
  }

  return (*(v54 + 56))(v44, 1, 1, v57);
}

uint64_t sub_1BE935EE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v48 = a1;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v65 = 0;
  v46 = 0;
  v57 = sub_1BE941E5C();
  v54 = *(v57 - 8);
  v55 = v57 - 8;
  v45 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v57, v3, v4, v5);
  v56 = v25 - v45;
  v47 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB64B0, &qword_1BE9867A8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v46, v6, v7, v8);
  v60 = v25 - v47;
  v62 = sub_1BE941D8C();
  v58 = *(v62 - 8);
  v59 = v62 - 8;
  v50 = *(v58 + 64);
  v49 = (v50 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v48, v9, v10, v11);
  v51 = v25 - v49;
  v52 = (v50 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x1EEE9AC00](v12, v25 - v49, v13, v14);
  v53 = v25 - v52;
  v69 = v25 - v52;
  v68 = v15;
  v67 = v2;
  v66 = 0;
  MailSettingsSpecifier.url.getter(v16);
  v61 = 1;
  sub_1BE941D0C();
  (*(v54 + 8))(v56, v57);
  if ((*(v58 + 48))(v60, v61, v62) == 1)
  {
    sub_1BE9337E8(v60);
  }

  else
  {
    (*(v58 + 32))(v53, v60, v62);
    sub_1BE934770(v48, 1);
    v43 = v17;
    if (v17)
    {
      v42 = v43;
      v39 = v43;
      v65 = v43;
      v26 = "/";
      v27 = 1;
      v25[3] = 1;
      v31 = sub_1BE94229C();
      v34 = v18;
      v64 = v39;
      v29 = sub_1BE94229C();
      v30 = v19;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB60E8, &qword_1BE985CF8);
      sub_1BE921F64();
      v32 = sub_1BE94222C();
      v33 = v20;

      v35 = MEMORY[0x1BFB4A0C0](v31, v34, v32, v33);
      v38 = v21;

      v36 = &v63;
      v22 = sub_1BE941D3C();
      v23 = v51;
      v37 = v22;
      sub_1BE9422BC();
      v37();

      (*(v58 + 16))(v23, v53, v62);
      sub_1BE941D1C();
      v41 = *(v58 + 8);
      v40 = v58 + 8;
      v41(v51, v62);

      return (v41)(v53, v62);
    }

    (*(v58 + 8))(v53, v62);
  }

  return (*(v54 + 56))(v44, 1, 1, v57);
}

uint64_t sub_1BE936618@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v48 = a1;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v65 = 0;
  v46 = 0;
  v57 = sub_1BE941E5C();
  v54 = *(v57 - 8);
  v55 = v57 - 8;
  v45 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v57, v3, v4, v5);
  v56 = v25 - v45;
  v47 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB64B0, &qword_1BE9867A8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v46, v6, v7, v8);
  v60 = v25 - v47;
  v62 = sub_1BE941D8C();
  v58 = *(v62 - 8);
  v59 = v62 - 8;
  v50 = *(v58 + 64);
  v49 = (v50 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v48, v9, v10, v11);
  v51 = v25 - v49;
  v52 = (v50 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x1EEE9AC00](v12, v25 - v49, v13, v14);
  v53 = v25 - v52;
  v69 = v25 - v52;
  v68 = v15;
  v67 = v2;
  v66 = 0;
  MailSettingsSpecifier.url.getter(v16);
  v61 = 1;
  sub_1BE941D0C();
  (*(v54 + 8))(v56, v57);
  if ((*(v58 + 48))(v60, v61, v62) == 1)
  {
    sub_1BE9337E8(v60);
  }

  else
  {
    (*(v58 + 32))(v53, v60, v62);
    sub_1BE934770(v48, 2);
    v43 = v17;
    if (v17)
    {
      v42 = v43;
      v39 = v43;
      v65 = v43;
      v26 = "/";
      v27 = 1;
      v25[3] = 1;
      v31 = sub_1BE94229C();
      v34 = v18;
      v64 = v39;
      v29 = sub_1BE94229C();
      v30 = v19;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB60E8, &qword_1BE985CF8);
      sub_1BE921F64();
      v32 = sub_1BE94222C();
      v33 = v20;

      v35 = MEMORY[0x1BFB4A0C0](v31, v34, v32, v33);
      v38 = v21;

      v36 = &v63;
      v22 = sub_1BE941D3C();
      v23 = v51;
      v37 = v22;
      sub_1BE9422BC();
      v37();

      (*(v58 + 16))(v23, v53, v62);
      sub_1BE941D1C();
      v41 = *(v58 + 8);
      v40 = v58 + 8;
      v41(v51, v62);

      return (v41)(v53, v62);
    }

    (*(v58 + 8))(v53, v62);
  }

  return (*(v54 + 56))(v44, 1, 1, v57);
}

uint64_t sub_1BE936D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21[0] = a4;
  v26 = a1;
  v27 = a2;
  v28 = a3;
  v21[1] = "Fatal error";
  v21[2] = "Unexpectedly found nil while unwrapping an Optional value";
  v21[3] = "MessageUI/MFPreferencesURL.swift";
  v58 = 0;
  v56 = 0;
  v57 = 0;
  v55 = 0;
  v54 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB60D0, &qword_1BE985CC0);
  v22 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4, v5, v6, v7);
  v49 = v21 - v22;
  v47 = 0;
  v44 = sub_1BE941D8C();
  v41 = *(v44 - 8);
  v42 = v44 - 8;
  v24 = *(v41 + 64);
  v23 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v26, v27, v28, v8);
  v43 = v21 - v23;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v9, v10, v11, v21 - v23);
  v40 = v21 - v25;
  v58 = v21 - v25;
  v56 = v12;
  v57 = v13;
  v55 = v14;
  v54 = v15;
  sub_1BE941D7C();
  v48 = 1;
  sub_1BE94229C();
  sub_1BE941D5C();
  sub_1BE94203C();
  MEMORY[0x1BFB49B60](v26, v27);
  v29 = "/";
  v30 = 1;
  v34 = sub_1BE94229C();
  v37 = v16;
  v53 = v28;
  v32 = sub_1BE94229C();
  v33 = v17;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB60E8, &qword_1BE985CF8);
  sub_1BE921F64();
  v35 = sub_1BE94222C();
  v36 = v18;

  v38 = MEMORY[0x1BFB4A0C0](v34, v37, v35, v36);
  v39 = v19;

  MEMORY[0x1BFB49B80](v38, v39);
  (*(v41 + 16))(v43, v40, v44);
  sub_1BE941D1C();
  v45 = *(v41 + 8);
  v46 = v41 + 8;
  v45(v43, v44);
  v50 = sub_1BE941E5C();
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  if ((*(v51 + 48))(v49, v48) == 1)
  {
    sub_1BE94274C();
    __break(1u);
  }

  (*(v51 + 32))(v21[0], v49, v50);
  return (v45)(v40, v44);
}

uint64_t sub_1BE9372E0@<X0>(uint64_t a1@<X8>)
{
  v8 = sub_1BE94229C();
  v9 = v1;
  sub_1BE94283C();
  v6 = v2;
  *v2 = sub_1BE94229C();
  v6[1] = v3;
  sub_1BE921DF8();
  sub_1BE936D48(v8, v9, v4, a1);
}

uint64_t sub_1BE9374B0@<X0>(uint64_t a1@<X8>)
{
  v8 = sub_1BE94229C();
  v9 = v1;
  sub_1BE94283C();
  v6 = v2;
  *v2 = sub_1BE94229C();
  v6[1] = v3;
  sub_1BE921DF8();
  sub_1BE936D48(v8, v9, v4, a1);
}

uint64_t sub_1BE937680@<X0>(uint64_t a1@<X8>)
{
  v9 = sub_1BE94229C();
  v10 = v1;
  sub_1BE94283C();
  v7 = v2;
  *v2 = sub_1BE94229C();
  v7[1] = v3;
  v7[2] = sub_1BE94229C();
  v7[3] = v4;
  sub_1BE921DF8();
  sub_1BE936D48(v9, v10, v5, a1);
}

id MFPreferencesURL.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = MFPreferencesURL;
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x1E69E5928](v1);
  v3 = v1;
  MEMORY[0x1E69E5920](v1);
  return v1;
}

unint64_t sub_1BE9378E8()
{
  v2 = qword_1EBDB7AF0;
  if (!qword_1EBDB7AF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB7AF0);
    return WitnessTable;
  }

  return v2;
}

double sub_1BE937964(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    MEMORY[0x1E69E5928](a1);
    *&result = MEMORY[0x1E69E5928](a2).n128_u64[0];
  }

  return result;
}

void *sub_1BE9379B4(void *a1)
{
  if (*a1)
  {
    MEMORY[0x1E69E5920](*a1);
    MEMORY[0x1E69E5920](a1[1]);
  }

  return a1;
}

void *sub_1BE937A10(void *a1, void *a2)
{
  if (*a1)
  {
    v3 = *a1;
    MEMORY[0x1E69E5928](*a1);
    *a2 = v3;
    v4 = a1[1];
    MEMORY[0x1E69E5928](v4);
    a2[1] = v4;
  }

  else
  {
    *a2 = *a1;
  }

  return a2;
}

unint64_t sub_1BE937AA4()
{
  v2 = qword_1EBDB64C0;
  if (!qword_1EBDB64C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB64B8, &qword_1BE9867B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB64C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1BE937B2C(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EBDB64D0;
  if (!qword_1EBDB64D0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBDB64D0);
    return ObjCClassMetadata;
  }

  return v4;
}

unint64_t sub_1BE937BBC()
{
  v2 = qword_1EBDB64E0;
  if (!qword_1EBDB64E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB64D8, qword_1BE9867C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB64E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1BE937C44(uint64_t result, uint64_t a2)
{
  if (result)
  {
    MEMORY[0x1E69E5920](result);
    return MEMORY[0x1E69E5920](a2);
  }

  return result;
}

unint64_t sub_1BE937C94(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EBDB64E8;
  if (!qword_1EBDB64E8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBDB64E8);
    return ObjCClassMetadata;
  }

  return v4;
}

unint64_t sub_1BE937CF8(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EBDB64F0;
  if (!qword_1EBDB64F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBDB64F0);
    return ObjCClassMetadata;
  }

  return v4;
}

uint64_t sub_1BE937D5C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1BE937EC4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t type metadata accessor for MFPreferencesURL(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EBDB7AF8[0];
  if (!qword_1EBDB7AF8[0])
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, qword_1EBDB7AF8);
    return ObjCClassMetadata;
  }

  return v4;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1BE938144(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1BE938288(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1BE938484()
{
  v2 = qword_1EBDB7B80[0];
  if (!qword_1EBDB7B80[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EBDB7B80);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1BE938500()
{
  result = sub_1BE94229C();
  qword_1EBDB7C18 = result;
  qword_1EBDB7C20 = v1;
  return result;
}

uint64_t *sub_1BE938544()
{
  if (qword_1EBDB7C10 != -1)
  {
    swift_once();
  }

  return &qword_1EBDB7C18;
}

uint64_t sub_1BE9385A4()
{
  v1 = *sub_1BE938544();
  sub_1BE94203C();
  return v1;
}

uint64_t sub_1BE9385E8()
{
  result = sub_1BE94229C();
  qword_1EBDB7C30 = result;
  qword_1EBDB7C38 = v1;
  return result;
}

uint64_t *sub_1BE93862C()
{
  if (qword_1EBDB7C28 != -1)
  {
    swift_once();
  }

  return &qword_1EBDB7C30;
}

uint64_t sub_1BE93868C()
{
  v1 = *sub_1BE93862C();
  sub_1BE94203C();
  return v1;
}

uint64_t PhotoPickerItem.assetIdentifier.getter()
{
  v2 = *(v0 + OBJC_IVAR___MFComposePhotoPickerItem_assetIdentifier);
  sub_1BE94203C();
  return v2;
}

void *sub_1BE938954(const void *a1, void *a2)
{
  v6 = sub_1BE941E5C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB60D0, &qword_1BE985CC0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t PhotoPickerItem.assetData.getter()
{
  v2 = *(v0 + OBJC_IVAR___MFComposePhotoPickerItem_assetData);
  sub_1BE938C20(v2, *(v0 + OBJC_IVAR___MFComposePhotoPickerItem_assetData + 8));
  return v2;
}

uint64_t sub_1BE938BA4(uint64_t result, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return v2;
}

uint64_t sub_1BE938C20(uint64_t result, unint64_t a2)
{
  if ((a2 & 0xF000000000000000) != 0xF000000000000000)
  {
    return sub_1BE938C68(result, a2);
  }

  return result;
}

uint64_t sub_1BE938C68(uint64_t result, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return v2;
}

uint64_t PhotoPickerItem.contentType.getter@<X0>(uint64_t a2@<X8>)
{
  v5 = OBJC_IVAR___MFComposePhotoPickerItem_contentType;
  v3 = sub_1BE941F5C();
  return (*(*(v3 - 8) + 16))(a2, v2 + v5);
}

uint64_t PhotoPickerItem.contentIdentifier.getter()
{
  v2 = *(v0 + OBJC_IVAR___MFComposePhotoPickerItem_contentIdentifier);
  sub_1BE94203C();
  return v2;
}

uint64_t sub_1BE938FA0(uint64_t a1, uint64_t a2)
{
  v21 = 0;
  v17 = sub_1BE941F5C();
  v13 = *(v17 - 8);
  v14 = v17 - 8;
  v10 = *(v13 + 64);
  v9 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17, v2, v17, v3);
  v15 = &v8 - v9;
  v11 = v9;
  MEMORY[0x1EEE9AC00](&v8 - v9, v4, v5, v6);
  v16 = &v8 - v11;
  v21 = v12;
  (*(v13 + 16))(&v8 - v11, v12 + OBJC_IVAR___MFComposePhotoPickerItem_contentType);
  sub_1BE941F3C();
  v20 = sub_1BE941F4C();
  v19 = *(v13 + 8);
  v18 = v13 + 8;
  v19(v15, v17);
  v19(v16, v17);
  return v20 & 1;
}

uint64_t sub_1BE93911C()
{
  result = sub_1BE94229C();
  qword_1EBDB7C48 = result;
  qword_1EBDB7C50 = v1;
  return result;
}

uint64_t *sub_1BE939160()
{
  if (qword_1EBDB7C40 != -1)
  {
    swift_once();
  }

  return &qword_1EBDB7C48;
}

uint64_t static PhotoPickerItem.contentIdentifierPrefix.getter()
{
  v1 = *sub_1BE939160();
  sub_1BE94203C();
  return v1;
}

char *PhotoPickerItem.init(assetIdentifier:assetURL:assetData:contentType:)(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v55 = a1;
  v77 = a2;
  v76 = a3;
  v74 = a4;
  v75 = a5;
  v73 = a6;
  v91 = 0;
  v89 = 0;
  v90 = 0;
  v88 = 0;
  v86 = 0;
  v87 = 0;
  v85 = 0;
  v68 = 0;
  v72 = sub_1BE941F5C();
  v70 = *(v72 - 8);
  v71 = v72 - 8;
  v44 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v72, v7, v8, v9);
  v67 = &v44 - v44;
  v45 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB60D0, &qword_1BE985CC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v77, v10, v76, v74);
  v48 = &v44 - v45;
  v89 = v12;
  v90 = v11;
  v88 = v13;
  v86 = v14;
  v87 = v15;
  v85 = v16;
  v91 = v6;
  v46 = v6;
  sub_1BE94203C();
  v17 = v76;
  v18 = v48;
  v19 = v77;
  v20 = &v46[OBJC_IVAR___MFComposePhotoPickerItem_assetIdentifier];
  *v20 = v55;
  v20[1] = v19;
  v47 = v91;
  sub_1BE938954(v17, v18);
  sub_1BE93981C(v48, &v47[OBJC_IVAR___MFComposePhotoPickerItem_assetURL]);
  v49 = v91;
  sub_1BE938C20(v74, v75);
  v21 = v75;
  v22 = &v49[OBJC_IVAR___MFComposePhotoPickerItem_assetData];
  *v22 = v74;
  *(v22 + 1) = v21;
  v65 = v91;
  v23 = sub_1BE94282C();
  v62 = &v83;
  v83 = v23;
  v84 = v24;
  v59 = "";
  v60 = 1;
  v25 = sub_1BE94229C();
  v50 = v26;
  MEMORY[0x1BFB4A650](v25);

  v27 = sub_1BE939160();
  v51 = *v27;
  v52 = v27[1];
  sub_1BE94203C();
  v53 = v82;
  v82[0] = v51;
  v82[1] = v52;
  v56 = MEMORY[0x1E69E6158];
  v57 = MEMORY[0x1E69E61C8];
  v58 = MEMORY[0x1E69E61C0];
  sub_1BE94280C();
  sub_1BE9215F4(v53);
  v28 = sub_1BE94229C();
  v54 = v29;
  MEMORY[0x1BFB4A650](v28);

  v80 = v55;
  v81 = v77;
  sub_1BE94280C();
  v30 = sub_1BE94229C();
  v61 = v31;
  MEMORY[0x1BFB4A650](v30);

  v64 = v83;
  v63 = v84;
  sub_1BE94203C();
  sub_1BE9215F4(v62);
  v32 = sub_1BE94227C();
  v33 = v70;
  v34 = v72;
  v35 = v32;
  v36 = v67;
  v38 = v37;
  v39 = v73;
  v40 = &v65[OBJC_IVAR___MFComposePhotoPickerItem_contentIdentifier];
  *v40 = v35;
  v40[1] = v38;
  v66 = v91;
  (*(v33 + 16))(v36, v39, v34);
  (*(v70 + 32))(&v66[OBJC_IVAR___MFComposePhotoPickerItem_contentType], v67, v72);
  v69 = v91;
  v41 = type metadata accessor for PhotoPickerItem(v68);
  v79.receiver = v69;
  v79.super_class = v41;
  v78 = objc_msgSendSuper2(&v79, sel_init);
  v42 = MEMORY[0x1E69E5928](v78);
  v91 = v78;
  (*(v70 + 8))(v73, v72, v42);
  sub_1BE9399B8(v74, v75);
  sub_1BE939A00(v76);

  MEMORY[0x1E69E5920](v91);
  return v78;
}

void *sub_1BE93981C(const void *a1, void *a2)
{
  v6 = sub_1BE941E5C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB60D0, &qword_1BE985CC0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t type metadata accessor for PhotoPickerItem(uint64_t a1)
{
  v2 = qword_1EBDB7C58;
  if (!qword_1EBDB7C58)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1BE9399B8(uint64_t result, unint64_t a2)
{
  if ((a2 & 0xF000000000000000) != 0xF000000000000000)
  {
    return sub_1BE938BA4(result, a2);
  }

  return result;
}

uint64_t sub_1BE939A00(uint64_t a1)
{
  v3 = sub_1BE941E5C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1BE939E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v48 = a2;
  v49 = 0;
  v81 = 0;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v52 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6500, &qword_1BE986A28) - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](0, v3, v4, v5);
  v54 = (v52 + 15) & 0xFFFFFFFFFFFFFFF0;
  v50 = &v39 - v54;
  v9 = MEMORY[0x1EEE9AC00](v6, &v39 - v54, v7, v8);
  v51 = &v39 - v54;
  v12 = MEMORY[0x1EEE9AC00](v9, &v39 - v54, v10, v11);
  v53 = &v39 - v54;
  MEMORY[0x1EEE9AC00](v12, &v39 - v54, v13, v14);
  v67 = &v39 - v54;
  v55 = &v39 - v54;
  v57 = sub_1BE941F5C();
  v58 = *(v57 - 8);
  v59 = v58;
  v62 = *(v58 + 64);
  v17 = MEMORY[0x1EEE9AC00](v56, v57, v15, v16);
  v64 = (v62 + 15) & 0xFFFFFFFFFFFFFFF0;
  v60 = &v39 - v64;
  v81 = &v39 - v64;
  v20 = MEMORY[0x1EEE9AC00](v17, &v39 - v64, v18, v19);
  v61 = &v39 - v64;
  v80 = &v39 - v64;
  v23 = MEMORY[0x1EEE9AC00](v20, &v39 - v64, v21, v22);
  v63 = &v39 - v64;
  v79 = &v39 - v64;
  v26 = MEMORY[0x1EEE9AC00](v23, &v39 - v64, v24, v25);
  v65 = &v39 - v64;
  v78 = &v39 - v64;
  v77 = v26;
  v76 = v2;
  v75 = v26;
  v71 = v2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6508, &qword_1BE986A30);
  v66 = v68;
  v69 = sub_1BE93A708();
  sub_1BE94231C();
  v70 = 0;
  v45 = *(v59 + 48);
  v46 = (v59 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v45(v55, 1, v57) != 1)
  {
    v28 = v70;
    (*(v59 + 32))(v65, v55, v57);
    (*(v59 + 16))(v48, v65, v57);
    (*(v59 + 56))(v48, 0, 1, v57);
    (*(v59 + 8))(v65, v57);
    return v28;
  }

  v29 = v70;
  sub_1BE93A790(v55, v27);
  v74 = v56;
  v42 = &v39;
  MEMORY[0x1EEE9AC00](&v39, v30, v66, v69);
  *(&v39 - 2) = v47;
  sub_1BE94231C();
  v43 = v29;
  if (v29)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v45(v53, 1, v57) != 1)
  {
    v32 = v43;
    (*(v59 + 32))(v63, v53, v57);
    (*(v59 + 16))(v48, v63, v57);
    (*(v59 + 56))(v48, 0, 1, v57);
    (*(v59 + 8))(v63, v57);
    return v32;
  }

  v33 = v43;
  sub_1BE93A790(v53, v31);
  v73 = v56;
  sub_1BE94231C();
  v41 = v33;
  if (v33)
  {
    goto LABEL_16;
  }

  if (v45(v51, 1, v57) != 1)
  {
    v35 = v41;
    (*(v59 + 32))(v61, v51, v57);
    (*(v59 + 16))(v48, v61, v57);
    (*(v59 + 56))(v48, 0, 1, v57);
    (*(v59 + 8))(v61, v57);
    return v35;
  }

  v36 = v41;
  sub_1BE93A790(v51, v34);
  v72 = v56;
  sub_1BE94231C();
  v40 = v36;
  if (!v36)
  {
    if (v45(v50, 1, v57) == 1)
    {
      sub_1BE93A790(v50, v37);
      (*(v59 + 56))(v48, 1, 1, v57);
    }

    else
    {
      (*(v59 + 32))(v60, v50, v57);
      (*(v59 + 16))(v48, v60, v57);
      (*(v59 + 56))(v48, 0, 1, v57);
      (*(v59 + 8))(v60, v57);
    }

    return v40;
  }

LABEL_17:
  result = 0;
  __break(1u);
  return result;
}

uint64_t sub_1BE93A640()
{
  v3 = sub_1BE941EFC();
  v6 = v0;
  v1 = sub_1BE938544();
  v4 = *v1;
  v5 = v1[1];
  sub_1BE94203C();
  v7 = MEMORY[0x1BFB4A0E0](v3, v6, v4, v5);

  return v7 & 1;
}

unint64_t sub_1BE93A708()
{
  v2 = qword_1EBDB6510;
  if (!qword_1EBDB6510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB6508, &qword_1BE986A30);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6510);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1BE93A790(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE941F5C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  return a1;
}

uint64_t sub_1BE93A838()
{
  v3 = sub_1BE941EFC();
  v6 = v0;
  v1 = sub_1BE93862C();
  v4 = *v1;
  v5 = v1[1];
  sub_1BE94203C();
  v7 = MEMORY[0x1BFB4A0E0](v3, v6, v4, v5);

  return v7 & 1;
}

uint64_t sub_1BE93A900(uint64_t a1, uint64_t a2)
{
  v13 = 0;
  v10 = sub_1BE941F5C();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10, v3, v4, v5);
  v11 = &v7 - v7;
  v13 = a1;
  sub_1BE941F3C();
  v12 = sub_1BE941F4C();
  (*(v8 + 8))(v11, v10);
  return v12 & 1;
}

uint64_t sub_1BE93A9E8(uint64_t a1, uint64_t a2)
{
  v13 = 0;
  v10 = sub_1BE941F5C();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10, v3, v4, v5);
  v11 = &v7 - v7;
  v13 = a1;
  sub_1BE941F2C();
  v12 = sub_1BE941F4C();
  (*(v8 + 8))(v11, v10);
  return v12 & 1;
}

uint64_t sub_1BE93AC78(uint64_t a1, uint64_t a2)
{
  sub_1BE939160();
  sub_1BE94203C();
  v5 = sub_1BE9422DC();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_1BE94203C();
  sub_1BE939160();
  sub_1BE94203C();
  sub_1BE9422CC();

  sub_1BE93ADCC();
  sub_1BE9424DC();
  v3 = sub_1BE9422EC();

  return v3;
}

unint64_t sub_1BE93ADCC()
{
  v2 = qword_1EBDB6518;
  if (!qword_1EBDB6518)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6518);
    return WitnessTable;
  }

  return v2;
}

id PhotoPickerItem.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotoPickerItem(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BE93B100(uint64_t a1)
{
  if ((*(a1 + 8) & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_1BE938BA4(*a1, *(a1 + 8));
  }

  return a1;
}

unint64_t sub_1BE93B16C(uint64_t a1)
{
  updated = sub_1BE93B3B8(319);
  if (v1 <= 0x3F)
  {
    updated = sub_1BE941F5C();
    if (v2 <= 0x3F)
    {
      updated = swift_updateClassMetadata2();
      if (!updated)
      {
        return 0;
      }
    }
  }

  return updated;
}

unint64_t sub_1BE93B3B8(uint64_t a1)
{
  v5 = qword_1EBDB6520;
  if (!qword_1EBDB6520)
  {
    sub_1BE941E5C();
    v4 = sub_1BE94269C();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EBDB6520);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1BE93B454(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EBDB6530;
  if (!qword_1EBDB6530)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBDB6530);
    return ObjCClassMetadata;
  }

  return v4;
}

uint64_t sub_1BE93B4B8()
{
  v2 = (v0 + OBJC_IVAR___MFComposePhotoPickerProgressManager_progresses);
  swift_beginAccess();
  v3 = *v2;
  sub_1BE94203C();
  swift_endAccess();
  return v3;
}

uint64_t sub_1BE93B520(uint64_t a1)
{
  sub_1BE94203C();
  v3 = (v1 + OBJC_IVAR___MFComposePhotoPickerProgressManager_progresses);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1BE93B678()
{
  v4 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x58))();
  v2 = sub_1BE93B454(0, v1);
  v5 = MEMORY[0x1BFB4A000](v4, MEMORY[0x1E69E6158], v2, MEMORY[0x1E69E6168]);

  return (v5 ^ 1) & 1;
}

uint64_t sub_1BE93B71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  v16 = v3;
  v4 = sub_1BE94203C();
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x58))(v4);
  v14[0] = a2;
  v14[1] = a3;
  sub_1BE93B454(0, a2);
  sub_1BE9421FC();
  sub_1BE9215F4(v14);
  v13 = v15;
  if (v15)
  {

    [v13 cancel];
    v8 = (*((*v10 & *MEMORY[0x1E69E7D40]) + 0x68))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6540, &qword_1BE986A98);
    sub_1BE94218C();
    v8();
    (MEMORY[0x1E69E5920])();
    MEMORY[0x1E69E5920](v13);
  }

  else
  {
  }

  sub_1BE94203C();
  v5 = MEMORY[0x1E69E5928](a1);
  v7 = (*((*v10 & *MEMORY[0x1E69E7D40]) + 0x68))(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6540, &qword_1BE986A98);
  sub_1BE94220C();
  return v7();
}

uint64_t sub_1BE93BAB8(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  v13 = a2;
  v11 = v2;
  v3 = sub_1BE94203C();
  (*((*v2 & *MEMORY[0x1E69E7D40]) + 0x58))(v3);
  v9[0] = a1;
  v9[1] = a2;
  sub_1BE93B454(0, a2);
  sub_1BE9421FC();
  sub_1BE9215F4(v9);
  v8 = v10;
  if (v10)
  {

    return v8;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1BE93BC90(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v14 = a2;
  v12 = v2;
  v3 = sub_1BE94203C();
  (*((*v2 & *MEMORY[0x1E69E7D40]) + 0x58))(v3);
  v10[0] = a1;
  v10[1] = a2;
  sub_1BE93B454(0, a2);
  sub_1BE9421FC();
  sub_1BE9215F4(v10);
  v9 = v11;
  if (!v11)
  {
  }

  [v9 cancel];
  v5 = (*((*v6 & *MEMORY[0x1E69E7D40]) + 0x68))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6540, &qword_1BE986A98);
  sub_1BE94218C();
  v5();
  (MEMORY[0x1E69E5920])();
  return MEMORY[0x1E69E5920](v9);
}

uint64_t sub_1BE93BF1C()
{
  v8 = v0;
  v5 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x58))();
  sub_1BE93B454(0, v1);
  v6 = MEMORY[0x1BFB4A000](v5, MEMORY[0x1E69E6158]);

  result = v6;
  if ((v6 & 1) == 0)
  {
    v7 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x58))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6540, &qword_1BE986A98);
    sub_1BE93C16C();
    sub_1BE94232C();
    sub_1BE91F954(&v7);
    v3 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x68))();
    sub_1BE93C1F4();
    sub_1BE9421DC();
    return v3();
  }

  return result;
}

unint64_t sub_1BE93C16C()
{
  v2 = qword_1EBDB6548;
  if (!qword_1EBDB6548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDB6540, &qword_1BE986A98);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBDB6548);
    return WitnessTable;
  }

  return v2;
}

id PhotoPickerProgressManager.init()()
{
  v6 = 0;
  v3 = OBJC_IVAR___MFComposePhotoPickerProgressManager_progresses;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDB6528, &qword_1BE986A90);
  v2 = sub_1BE94283C();
  sub_1BE93B454(0, v2);
  *v3 = sub_1BE94219C();
  v5.receiver = v6;
  v5.super_class = type metadata accessor for PhotoPickerProgressManager(0, v0);
  v4 = objc_msgSendSuper2(&v5, sel_init);
  MEMORY[0x1E69E5928](v4);
  v6 = v4;
  MEMORY[0x1E69E5920](v4);
  return v4;
}

id PhotoPickerProgressManager.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PhotoPickerProgressManager(0, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

Swift::String __swiftcall SwiftHelloMessageUI.world(truncated:)(Swift::Int truncated)
{
  SwiftHelloMessageUI.world.getter();
  v12 = sub_1BE94224C();
  v13 = [v12 mf:truncated substringTruncatedToIndex:?];
  MEMORY[0x1E69E5920](v12);

  if (v13)
  {
    v7 = sub_1BE94225C();
    v8 = v1;
    MEMORY[0x1E69E5920](v13);
    v9 = v7;
    v10 = v8;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  if (v10)
  {
    v5 = v9;
    v6 = v10;
  }

  else
  {
    sub_1BE94274C();
    __break(1u);
  }

  v2 = v5;
  v3 = v6;
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

id SwiftHelloMessageUI.init()()
{
  v4 = v0;
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  v2 = objc_msgSendSuper2(&v3, sel_init);
  MEMORY[0x1E69E5928](v2);
  v4 = v2;
  MEMORY[0x1E69E5920](v2);
  return v2;
}

id SwiftHelloMessageUI.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BE93CAB4(uint64_t a1, uint64_t a2)
{
  sub_1BE93F33C(0, a2);
  type metadata accessor for ResourceBundleClass(0, v2);
  result = sub_1BE93CAFC();
  qword_1EBDB7C70 = result;
  return result;
}

id sub_1BE93CAFC()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0 = [swift_getObjCClassFromMetadata() bundleForClass_];

  return v0;
}

uint64_t *sub_1BE93CB54()
{
  if (qword_1EBDB7C68 != -1)
  {
    swift_once();
  }

  return &qword_1EBDB7C70;
}

uint64_t sub_1BE93CBB4()
{
  v2 = sub_1BE941ECC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7DB0);
  __swift_project_value_buffer(v2, qword_1EBDB7DB0);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93CC4C()
{
  if (qword_1EBDB7C78 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941ECC();
  return __swift_project_value_buffer(v0, qword_1EBDB7DB0);
}

uint64_t sub_1BE93CCB8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93CC4C();
  v1 = sub_1BE941ECC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93CD1C()
{
  v2 = sub_1BE941ECC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7DC8);
  __swift_project_value_buffer(v2, qword_1EBDB7DC8);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93CDB4()
{
  if (qword_1EBDB7C80 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941ECC();
  return __swift_project_value_buffer(v0, qword_1EBDB7DC8);
}

uint64_t sub_1BE93CE20@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93CDB4();
  v1 = sub_1BE941ECC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93CE84()
{
  v2 = sub_1BE941ECC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7DE0);
  __swift_project_value_buffer(v2, qword_1EBDB7DE0);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93CF1C()
{
  if (qword_1EBDB7C88 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941ECC();
  return __swift_project_value_buffer(v0, qword_1EBDB7DE0);
}

uint64_t sub_1BE93CF88@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93CF1C();
  v1 = sub_1BE941ECC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93CFEC()
{
  v2 = sub_1BE941ECC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7DF8);
  __swift_project_value_buffer(v2, qword_1EBDB7DF8);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93D084()
{
  if (qword_1EBDB7C90 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941ECC();
  return __swift_project_value_buffer(v0, qword_1EBDB7DF8);
}

uint64_t sub_1BE93D0F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93D084();
  v1 = sub_1BE941ECC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93D154()
{
  v2 = sub_1BE941ECC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7E10);
  __swift_project_value_buffer(v2, qword_1EBDB7E10);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93D1EC()
{
  if (qword_1EBDB7C98 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941ECC();
  return __swift_project_value_buffer(v0, qword_1EBDB7E10);
}

uint64_t sub_1BE93D258@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93D1EC();
  v1 = sub_1BE941ECC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93D2BC()
{
  v2 = sub_1BE941ECC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7E28);
  __swift_project_value_buffer(v2, qword_1EBDB7E28);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93D354()
{
  if (qword_1EBDB7CA0 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941ECC();
  return __swift_project_value_buffer(v0, qword_1EBDB7E28);
}

uint64_t sub_1BE93D3C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93D354();
  v1 = sub_1BE941ECC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93D424()
{
  v2 = sub_1BE941ECC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7E40);
  __swift_project_value_buffer(v2, qword_1EBDB7E40);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93D4BC()
{
  if (qword_1EBDB7CA8 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941ECC();
  return __swift_project_value_buffer(v0, qword_1EBDB7E40);
}

uint64_t sub_1BE93D528@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93D4BC();
  v1 = sub_1BE941ECC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93D58C()
{
  v2 = sub_1BE941ECC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7E58);
  __swift_project_value_buffer(v2, qword_1EBDB7E58);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93D624()
{
  if (qword_1EBDB7CB0 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941ECC();
  return __swift_project_value_buffer(v0, qword_1EBDB7E58);
}

uint64_t sub_1BE93D690@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93D624();
  v1 = sub_1BE941ECC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93D6F4()
{
  v2 = sub_1BE941ECC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7E70);
  __swift_project_value_buffer(v2, qword_1EBDB7E70);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93D78C()
{
  if (qword_1EBDB7CB8 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941ECC();
  return __swift_project_value_buffer(v0, qword_1EBDB7E70);
}

uint64_t sub_1BE93D7F8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93D78C();
  v1 = sub_1BE941ECC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93D85C()
{
  v2 = sub_1BE941ECC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7E88);
  __swift_project_value_buffer(v2, qword_1EBDB7E88);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93D8F4()
{
  if (qword_1EBDB7CC0 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941ECC();
  return __swift_project_value_buffer(v0, qword_1EBDB7E88);
}

uint64_t sub_1BE93D960@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93D8F4();
  v1 = sub_1BE941ECC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93D9C4()
{
  v2 = sub_1BE941ECC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7EA0);
  __swift_project_value_buffer(v2, qword_1EBDB7EA0);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93DA5C()
{
  if (qword_1EBDB7CC8 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941ECC();
  return __swift_project_value_buffer(v0, qword_1EBDB7EA0);
}

uint64_t sub_1BE93DAC8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93DA5C();
  v1 = sub_1BE941ECC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93DB2C()
{
  v2 = sub_1BE941EEC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7EB8);
  __swift_project_value_buffer(v2, qword_1EBDB7EB8);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93DBC4()
{
  if (qword_1EBDB7CD0 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941EEC();
  return __swift_project_value_buffer(v0, qword_1EBDB7EB8);
}

uint64_t sub_1BE93DC30@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93DBC4();
  v1 = sub_1BE941EEC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93DC94()
{
  v2 = sub_1BE941EEC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7ED0);
  __swift_project_value_buffer(v2, qword_1EBDB7ED0);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93DD2C()
{
  if (qword_1EBDB7CD8 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941EEC();
  return __swift_project_value_buffer(v0, qword_1EBDB7ED0);
}

uint64_t sub_1BE93DD98@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93DD2C();
  v1 = sub_1BE941EEC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93DDFC()
{
  v2 = sub_1BE941EEC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7EE8);
  __swift_project_value_buffer(v2, qword_1EBDB7EE8);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93DE94()
{
  if (qword_1EBDB7CE0 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941EEC();
  return __swift_project_value_buffer(v0, qword_1EBDB7EE8);
}

uint64_t sub_1BE93DF00@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93DE94();
  v1 = sub_1BE941EEC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93DF64()
{
  v2 = sub_1BE941EEC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7F00);
  __swift_project_value_buffer(v2, qword_1EBDB7F00);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93DFFC()
{
  if (qword_1EBDB7CE8 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941EEC();
  return __swift_project_value_buffer(v0, qword_1EBDB7F00);
}

uint64_t sub_1BE93E068@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93DFFC();
  v1 = sub_1BE941EEC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93E0CC()
{
  v2 = sub_1BE941EEC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7F18);
  __swift_project_value_buffer(v2, qword_1EBDB7F18);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93E164()
{
  if (qword_1EBDB7CF0 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941EEC();
  return __swift_project_value_buffer(v0, qword_1EBDB7F18);
}

uint64_t sub_1BE93E1D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93E164();
  v1 = sub_1BE941EEC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93E234()
{
  v2 = sub_1BE941EEC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7F30);
  __swift_project_value_buffer(v2, qword_1EBDB7F30);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93E2CC()
{
  if (qword_1EBDB7CF8 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941EEC();
  return __swift_project_value_buffer(v0, qword_1EBDB7F30);
}

uint64_t sub_1BE93E338@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93E2CC();
  v1 = sub_1BE941EEC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93E39C()
{
  v2 = sub_1BE941EEC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7F48);
  __swift_project_value_buffer(v2, qword_1EBDB7F48);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93E434()
{
  if (qword_1EBDB7D00 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941EEC();
  return __swift_project_value_buffer(v0, qword_1EBDB7F48);
}

uint64_t sub_1BE93E4A0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93E434();
  v1 = sub_1BE941EEC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93E504()
{
  v2 = sub_1BE941EEC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7F60);
  __swift_project_value_buffer(v2, qword_1EBDB7F60);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93E59C()
{
  if (qword_1EBDB7D08 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941EEC();
  return __swift_project_value_buffer(v0, qword_1EBDB7F60);
}

uint64_t sub_1BE93E608@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93E59C();
  v1 = sub_1BE941EEC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93E66C()
{
  v2 = sub_1BE941EEC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7F78);
  __swift_project_value_buffer(v2, qword_1EBDB7F78);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93E704()
{
  if (qword_1EBDB7D10 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941EEC();
  return __swift_project_value_buffer(v0, qword_1EBDB7F78);
}

uint64_t sub_1BE93E770@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93E704();
  v1 = sub_1BE941EEC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93E7D4()
{
  v2 = sub_1BE941EEC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7F90);
  __swift_project_value_buffer(v2, qword_1EBDB7F90);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93E86C()
{
  if (qword_1EBDB7D18 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941EEC();
  return __swift_project_value_buffer(v0, qword_1EBDB7F90);
}

uint64_t sub_1BE93E8D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93E86C();
  v1 = sub_1BE941EEC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93E93C()
{
  v2 = sub_1BE941EEC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7FA8);
  __swift_project_value_buffer(v2, qword_1EBDB7FA8);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93E9D4()
{
  if (qword_1EBDB7D20 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941EEC();
  return __swift_project_value_buffer(v0, qword_1EBDB7FA8);
}

uint64_t sub_1BE93EA40@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93E9D4();
  v1 = sub_1BE941EEC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93EAA4()
{
  v2 = sub_1BE941EEC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7FC0);
  __swift_project_value_buffer(v2, qword_1EBDB7FC0);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93EB3C()
{
  if (qword_1EBDB7D28 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941EEC();
  return __swift_project_value_buffer(v0, qword_1EBDB7FC0);
}

uint64_t sub_1BE93EBA8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93EB3C();
  v1 = sub_1BE941EEC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93EC0C()
{
  v2 = sub_1BE941EEC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7FD8);
  __swift_project_value_buffer(v2, qword_1EBDB7FD8);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93ECA4()
{
  if (qword_1EBDB7D30 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941EEC();
  return __swift_project_value_buffer(v0, qword_1EBDB7FD8);
}

uint64_t sub_1BE93ED10@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93ECA4();
  v1 = sub_1BE941EEC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93ED74()
{
  v2 = sub_1BE941EEC();
  __swift_allocate_value_buffer(v2, qword_1EBDB7FF0);
  __swift_project_value_buffer(v2, qword_1EBDB7FF0);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93EE0C()
{
  if (qword_1EBDB7D38 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941EEC();
  return __swift_project_value_buffer(v0, qword_1EBDB7FF0);
}

uint64_t sub_1BE93EE78@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93EE0C();
  v1 = sub_1BE941EEC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93EEDC()
{
  v2 = sub_1BE941EEC();
  __swift_allocate_value_buffer(v2, qword_1EBDB8008);
  __swift_project_value_buffer(v2, qword_1EBDB8008);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93EF74()
{
  if (qword_1EBDB7D40 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941EEC();
  return __swift_project_value_buffer(v0, qword_1EBDB8008);
}

uint64_t sub_1BE93EFE0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93EF74();
  v1 = sub_1BE941EEC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93F044()
{
  v2 = sub_1BE941EEC();
  __swift_allocate_value_buffer(v2, qword_1EBDB8020);
  __swift_project_value_buffer(v2, qword_1EBDB8020);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93F0DC()
{
  if (qword_1EBDB7D48 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941EEC();
  return __swift_project_value_buffer(v0, qword_1EBDB8020);
}

uint64_t sub_1BE93F148@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93F0DC();
  v1 = sub_1BE941EEC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1BE93F1AC()
{
  v2 = sub_1BE941EEC();
  __swift_allocate_value_buffer(v2, qword_1EBDB8038);
  __swift_project_value_buffer(v2, qword_1EBDB8038);
  sub_1BE94229C();
  v0 = sub_1BE93CB54();
  MEMORY[0x1E69E5928](*v0);
  return sub_1BE941EBC();
}

uint64_t sub_1BE93F244()
{
  if (qword_1EBDB7D50 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE941EEC();
  return __swift_project_value_buffer(v0, qword_1EBDB8038);
}

uint64_t sub_1BE93F2B0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE93F244();
  v1 = sub_1BE941EEC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

unint64_t sub_1BE93F33C(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EBDB3258;
  if (!qword_1EBDB3258)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBDB3258);
    return ObjCClassMetadata;
  }

  return v4;
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x1EEDD5E20](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSRangeFromString(NSString *aString)
{
  v1 = MEMORY[0x1EEDC70A0](aString);
  result.length = v2;
  result.location = v1;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC7160](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___CKSMSComposeController(double result)
{
  if (!atomic_load(&dlopenHelperFlag_ChatKit))
  {
    return dlopenHelper_ChatKit(result);
  }

  return result;
}

void gotLoadHelper_x25__OBJC_CLASS___CKSMSComposeController(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_ChatKit))
  {
    dlopenHelper_ChatKit(a1);
  }
}

double dlopenHelper_ChatKit(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/ChatKit.framework/ChatKit", 0);
  atomic_store(1u, &dlopenHelperFlag_ChatKit);
  return a1;
}