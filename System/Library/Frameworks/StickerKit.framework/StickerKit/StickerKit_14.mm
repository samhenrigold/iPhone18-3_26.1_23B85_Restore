void sub_19A74BCEC(uint64_t a1)
{
  if (!qword_1EAFCA7C8)
  {
    type metadata accessor for CategoryBar.ScrollPosition(255);
    sub_19A74BE14(&qword_1EAFCAFB0, type metadata accessor for CategoryBar.ScrollPosition, &unk_19A7C0BBC);
    v1 = sub_19A7A9924();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAFCA7C8);
    }
  }
}

void sub_19A74BD80(uint64_t a1)
{
  if (!qword_1EAFCA7D8)
  {
    type metadata accessor for CategoryBar.Configuration(255);
    sub_19A74BE14(&unk_1EAFCAFD0, type metadata accessor for CategoryBar.Configuration, &unk_19A7C0B84);
    v1 = sub_19A7A9924();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAFCA7D8);
    }
  }
}

uint64_t sub_19A74BE14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_19A74BE5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_19A74BEC0()
{
  type metadata accessor for CategoryBar(0);
  v0 = sub_19A652898();
  v1 = sub_19A652F7C(v0);

  if (v1 >> 62)
  {
    sub_19A7ABBE4();
  }
}

void sub_19A74BFBC()
{
  type metadata accessor for CategoryBar(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  if (v2 != 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_19A7A96A4();

    v0 = sub_19A652898();
    v1 = sub_19A652F7C(v0);

    if (v1 >> 62)
    {
      sub_19A7ABBE4();
    }
  }
}

void sub_19A74C134(char a1, double a2, double a3)
{
  v4 = v3;
  LOBYTE(v5) = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v85 = v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v79 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v84 = v79 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (v79 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v83 = v79 - v19;
  v20 = sub_19A7A9094();
  v21 = *(v20 - 8);
  v86 = v20;
  v87 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_19A7A9954();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v79 - v29;
  if ((v5 & 1) != 0 || (v31 = *(v3 + 16), v91 = *(v3 + 8), v92 = v31, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF460, &qword_19A7C3410), sub_19A7AA464(), vabdd_f64(a2, v90) > 5.0))
  {
    v81 = v23;
    v82 = v12;
    v32 = *(v3 + 8);
    v33 = *(v3 + 16);
    v90 = a2;
    v91 = v32;
    v92 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF460, &qword_19A7C3410);
    sub_19A7AA474();
    sub_19A749250(v30);
    (*(v25 + 104))(v27, *MEMORY[0x1E697E7D8], v24);
    v34 = sub_19A7A9944();
    v89 = v4;
    v35 = *(v25 + 8);
    (v35)(v27, v24);
    (v35)(v30, v24);
    v36 = a3 - a2;
    if ((v34 & 1) == 0)
    {
      v36 = a2;
    }

    v37 = v36 / a3;
    v88 = type metadata accessor for CategoryBar(0);
    v38 = *(v89 + *(v88 + 36));
    v39 = sub_19A652898();
    v40 = sub_19A652F7C(v39);

    if (v40 >> 62)
    {
      goto LABEL_61;
    }

    for (i = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_19A7ABBE4())
    {

      *v42.i64 = v37 * i;
      if (COERCE__INT64(fabs(*v42.i64)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (*v42.i64 <= -9.22337204e18)
      {
        goto LABEL_63;
      }

      if (*v42.i64 >= 9.22337204e18)
      {
        goto LABEL_64;
      }

      if (__OFSUB__(i, 1))
      {
        goto LABEL_65;
      }

      if (i - 1 >= *v42.i64)
      {
        v35 = *v42.i64;
      }

      else
      {
        v35 = i - 1;
      }

      v27 = v35 & ~(v35 >> 63);
      if (v5)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v91 = v35 & ~(v35 >> 63);

        sub_19A7A96B4();
        sub_19A74A068();
        return;
      }

      v80 = v42;
      v5 = sub_19A652898();
      i = sub_19A652F7C(v5);

      if ((i & 0xC000000000000001) != 0)
      {
        goto LABEL_66;
      }

      if (v27 >= *((i & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_68;
      }

      v43 = *(i + 8 * v27 + 32);
LABEL_19:
      v5 = v43;

      v44 = sub_19A659730(v5);
      if (v44)
      {
        v40 = v44;
        v45 = [v44 numberOfItemsInCategory_];
        swift_unknownObjectRelease();
      }

      else
      {
        v45 = 0;
      }

      *v46.i64 = *v80.i64 - trunc(*v80.i64);
      v47.f64[0] = NAN;
      v47.f64[1] = NAN;
      v48 = *vbslq_s8(vnegq_f64(v47), v46, v80).i64 * v45;
      if ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      if (v48 <= -9.22337204e18)
      {
        goto LABEL_69;
      }

      if (v48 >= 9.22337204e18)
      {
        goto LABEL_70;
      }

      if (__OFSUB__(v45, 1))
      {
        goto LABEL_71;
      }

      if (v45 - 1 >= v48)
      {
        v12 = v48;
      }

      else
      {
        v12 = v45 - 1;
      }

      v49 = sub_19A652898();
      v5 = sub_19A652F7C(v49);

      v40 = v5 >> 62;
      if (!(v5 >> 62))
      {
        if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) < v27)
        {
          goto LABEL_74;
        }

        goto LABEL_31;
      }

LABEL_72:
      if (sub_19A7ABBE4() < 0)
      {
        __break(1u);
        return;
      }

      if (sub_19A7ABBE4() < v27)
      {
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

LABEL_31:
      v80.i64[0] = v17;
      if ((v5 & 0xC000000000000001) != 0 && v35 > 0)
      {
        type metadata accessor for ImageGlyphCategory(0);

        v50 = 0;
        do
        {
          v51 = v50 + 1;
          sub_19A7ABCE4();
          v50 = v51;
        }

        while (v35 != v51);
      }

      else
      {
      }

      if (v40)
      {
        v40 = sub_19A7ABE54();
        v35 = v54;
        v53 = v55;
        v27 = v56;
      }

      else
      {
        v53 = 0;
        v40 = v5 & 0xFFFFFFFFFFFFFF8;
        v35 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
        v27 = (2 * v27) | 1;
      }

      v17 = v79;
      MEMORY[0x1EEE9AC00](v52);
      v79[-2] = v89;
      sub_19A753E84(sub_19A753E64, &v79[-4], v35, v53, v27);
      v58 = v57;
      swift_unknownObjectRelease();
      v59 = v58;
      v60 = *(v58 + 16);
      if (!v60)
      {
        v5 = 0;
        v23 = v80.i64[0];
LABEL_46:
        v64 = v12 & ~(v12 >> 63);

        v65 = v5 + v64;
        if (!__OFADD__(v5, v64))
        {
          v5 = v83;
          sub_19A657D48(v65, v83);
          v35 = v86;
          v17 = v87;
          v66 = v87 + 48;
          v38 = *(v87 + 6);
          v67 = v38(v5, 1, v86);
          v79[1] = v66;
          v80.i64[0] = v38;
          if (v67 != 1)
          {
            v69 = v81;
            v17[4](v81, v5, v35);
            v70 = v17;
            goto LABEL_52;
          }

          if (qword_1EAFCAFA0 == -1)
          {
LABEL_49:
            v68 = __swift_project_value_buffer(v35, qword_1EAFDD648);
            v69 = v81;
            v17[2](v81, v68, v35);
            v70 = v17;
            if (v38(v5, 1, v35) != 1)
            {
              sub_19A5F2B54(v5, &unk_1EAFCF110, &unk_19A7B6AF0);
            }

LABEL_52:
            swift_getKeyPath();
            swift_getKeyPath();
            sub_19A7A96A4();

            v71 = v84;
            v70[2](v84, v69, v35);
            (v70[7])(v71, 0, 1, v35);
            swift_getKeyPath();
            swift_getKeyPath();
            sub_19A60F0CC(v71, v82, &unk_1EAFCF110, &unk_19A7B6AF0);

            sub_19A7A96B4();
            sub_19A5F2B54(v71, &unk_1EAFCF110, &unk_19A7B6AF0);
            v72 = v85;
            sub_19A60F0CC(v23, v85, &unk_1EAFCF110, &unk_19A7B6AF0);
            if ((v80.i64[0])(v72, 1, v35) == 1)
            {
              sub_19A5F2B54(v72, &unk_1EAFCF110, &unk_19A7B6AF0);
              sub_19A7A9064();
              v73 = v87;
              goto LABEL_55;
            }

            v74 = sub_19A7A9064();
            v73 = v87;
            (*(v87 + 1))(v72, v35);
            if (v74 != sub_19A7A9064())
            {
LABEL_55:
              v75 = (v89 + *(v88 + 48));
              v77 = *v75;
              v76 = v75[1];
              v91 = v77;
              v92 = v76;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF468, &qword_19A7C0FA0);
              sub_19A7AA464();
              v78 = v90;
              if ((*(*&v90 + 24) & 1) == 0)
              {
                sub_19A786230();
              }

              [*(*&v78 + 16) selectionChanged];
            }

            sub_19A5F2B54(v23, &unk_1EAFCF110, &unk_19A7B6AF0);
            v73[1](v69, v35);
            return;
          }

LABEL_76:
          swift_once();
          goto LABEL_49;
        }

LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v5 = 0;
      v61 = (v59 + 32);
      v23 = v80.i64[0];
      while (1)
      {
        v62 = *v61++;
        v63 = __OFADD__(v5, v62);
        v5 += v62;
        if (v63)
        {
          break;
        }

        if (!--v60)
        {
          goto LABEL_46;
        }
      }

      __break(1u);
LABEL_61:
      ;
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    v43 = MEMORY[0x19A906130](v27, i);
    goto LABEL_19;
  }
}

void sub_19A74CBB4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for CategoryBar(0);
  v4 = sub_19A659730(v3);
  if (v4)
  {
    v5 = [v4 numberOfItemsInCategory_];
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

uint64_t sub_19A74CC3C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CategoryBar(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v24 = v1;
  sub_19A754C94(v1, &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CategoryBar);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v23 = swift_allocObject();
  sub_19A753DD4(&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v6, type metadata accessor for CategoryBar);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  sub_19A7AA654();
  sub_19A7A9864();
  v7 = v27;
  v8 = v29;
  v9 = v31;
  v22 = v32;
  v36 = v28;
  v34 = v30;
  KeyPath = swift_getKeyPath();
  v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF368, &qword_19A7C0D08) + 36));
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF370, &qword_19A7C0D10) + 28);
  v13 = *MEMORY[0x1E697E6F8];
  v14 = sub_19A7A9934();
  (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
  *v11 = KeyPath;
  v15 = v23;
  *a1 = sub_19A751BF4;
  *(a1 + 8) = v15;
  *(a1 + 16) = v7;
  *(a1 + 24) = v36;
  *(a1 + 25) = *v35;
  *(a1 + 28) = *&v35[3];
  *(a1 + 32) = v8;
  *(a1 + 40) = v34;
  *(a1 + 41) = *v33;
  *(a1 + 44) = *&v33[3];
  v16 = v22;
  *(a1 + 48) = v9;
  *(a1 + 56) = v16;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  v17 = v25 * 0.5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  v18 = v26 * 0.5;
  v19 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF378, &qword_19A7C0D18) + 36));
  *v19 = v17;
  v19[1] = v18;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  v20 = v25;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF380, &unk_19A7C0D68);
  *(a1 + *(result + 52)) = v20;
  return result;
}

double sub_19A74D060@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v263 = a3;
  v204 = sub_19A7AA6F4();
  v203 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204);
  v202 = &v186 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_19A7AA284();
  v187 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v188 = &v186 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = sub_19A7A97A4();
  v219 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218);
  v216 = &v186 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v215 = &v186 - v9;
  v190 = sub_19A7A9A24();
  MEMORY[0x1EEE9AC00](v190);
  v214 = (&v186 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC2B0, &qword_19A7B7140);
  MEMORY[0x1EEE9AC00](v191);
  v193 = &v186 - v11;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF390, &qword_19A7B7148);
  MEMORY[0x1EEE9AC00](v192);
  v199 = &v186 - v12;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC2B8, &unk_19A7B7150);
  MEMORY[0x1EEE9AC00](v197);
  v198 = &v186 - v13;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF3A0, &qword_19A7C0D78);
  MEMORY[0x1EEE9AC00](v196);
  v195 = &v186 - v14;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF3A8, &qword_19A7C0D80);
  MEMORY[0x1EEE9AC00](v194);
  v217 = &v186 - v15;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF3B0, &qword_19A7C0D88);
  v250 = *(v252 - 8);
  MEMORY[0x1EEE9AC00](v252);
  v201 = &v186 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v200 = &v186 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF3B8, &qword_19A7C0D90);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v251 = &v186 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v253 = &v186 - v22;
  v207 = sub_19A7A9D84();
  MEMORY[0x1EEE9AC00](v207);
  v206 = &v186 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = sub_19A7A97D4();
  v209 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v208 = &v186 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF3C0, &qword_19A7C0D98);
  v212 = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v213);
  v211 = &v186 - v25;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF3C8, &qword_19A7C0DA0);
  MEMORY[0x1EEE9AC00](v243);
  v242 = &v186 - v26;
  v260 = sub_19A7A98B4();
  v272 = *(v260 - 8);
  v27 = *(v272 + 64);
  MEMORY[0x1EEE9AC00](v260);
  v28 = &v186 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for CategoryBar(0);
  v271 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v269 = v30;
  v31 = &v186 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF3D0, &qword_19A7C0DA8);
  v237 = *(v255 - 8);
  MEMORY[0x1EEE9AC00](v255);
  v236 = &v186 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v235 = &v186 - v34;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF3D8, &qword_19A7C0DB0);
  MEMORY[0x1EEE9AC00](v238);
  v257 = (&v186 - v35);
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF3E0, &qword_19A7C0DB8);
  v240 = *(v241 - 8);
  MEMORY[0x1EEE9AC00](v241);
  v258 = &v186 - v36;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF3E8, &qword_19A7C0DC0);
  MEMORY[0x1EEE9AC00](v239);
  v245 = &v186 - v37;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF3F0, &qword_19A7C0DC8);
  MEMORY[0x1EEE9AC00](v244);
  v248 = &v186 - v38;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF3F8, &qword_19A7C0DD0);
  MEMORY[0x1EEE9AC00](v247);
  v249 = &v186 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v246 = &v186 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v262 = &v186 - v43;
  sub_19A7A9894();
  v45 = v44 + -6.0;
  if (v45 > 0.0)
  {
    v46 = v45;
  }

  else
  {
    v46 = 0.0;
  }

  v254 = *(a2 + *(v29 + 36));
  v47 = sub_19A652898();
  v48 = sub_19A652F7C(v47);

  v264 = v31;
  v256 = v27;
  if (v48 >> 62)
  {
    v49 = sub_19A7ABBE4();
  }

  else
  {
    v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v49 <= 1)
  {
    v50 = 1;
  }

  else
  {
    v50 = v49;
  }

  v51 = swift_allocObject();
  *(v51 + 16) = v46 / v50;
  v52 = v51;
  v261 = v51;
  sub_19A7A9894();
  sub_19A74BFBC();
  v54 = v53;
  v55 = fmin(*(v52 + 16) + 6.0, 30.0);
  sub_19A7A9894();
  sub_19A74BEC0();
  v57 = v56;
  sub_19A7A9894();
  sub_19A7A9894();
  v59 = v58;
  sub_19A7A9894();
  v61 = v60;
  v186 = v29;
  v62 = *(a2 + *(v29 + 40) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v259 = v62;
  sub_19A7A96A4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  v63 = sub_19A7AA654();
  v64 = v263;
  *v263 = v63;
  v64[1] = v65;
  v66 = sub_19A7A9BA4();
  v67 = v257;
  *v257 = v66;
  *(v67 + 1) = 0;
  *(v67 + 16) = 0;
  v230 = (v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF400, &qword_19A7C0E20) + 44));
  sub_19A7AA654();
  sub_19A7A9864();
  v229 = v279;
  v228 = v281;
  v227 = v283;
  v226 = v284;
  v275 = 1;
  v274 = v280;
  v273 = v282;
  v68 = sub_19A652898();
  v69 = sub_19A652F7C(v68);
  v205 = 0;

  v70 = sub_19A6B7FA4(v69);

  *&v294 = v70;
  KeyPath = swift_getKeyPath();
  v270 = a2;
  v71 = v264;
  sub_19A754C94(a2, v264, type metadata accessor for CategoryBar);
  v72 = v272;
  v73 = *(v272 + 16);
  v74 = v260;
  v268 = v272 + 16;
  v267 = v73;
  v73(v28, a1, v260);
  v75 = *(v271 + 80);
  v76 = (v75 + 16) & ~v75;
  v233 = v76 + v269;
  v265 = ((v76 + v269 + 7) & 0xFFFFFFFFFFFFFFF8);
  v77 = (v265 + 15) & 0xFFFFFFFFFFFFFFF8;
  v271 = a1;
  v78 = (v77 + 15) & 0xFFFFFFFFFFFFFFF8;
  v79 = *(v72 + 80);
  v231 = ~v79;
  v80 = (v79 + v78 + 8) & ~v79;
  v232 = v79;
  v81 = &v256[v80 + 7] & 0xFFFFFFFFFFFFFFF8;
  v266 = v75 | v79;
  v82 = swift_allocObject();
  v269 = v76;
  sub_19A753DD4(v71, v82 + v76, type metadata accessor for CategoryBar);
  *(v265 + v82) = v57;
  *(v82 + v77) = v261;
  *(v82 + v78) = v59;
  v83 = *(v72 + 32);
  v234 = v28;
  v265 = v83;
  v272 = v72 + 32;
  (v83)(v82 + v80, v28, v74);
  *(v82 + v81) = v54;
  v84 = swift_allocObject();
  *(v84 + 16) = sub_19A7536C8;
  *(v84 + 24) = v82;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF408, &qword_19A7C0E48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF410, &qword_19A7C0E50);
  sub_19A623714(&qword_1EAFCA5A8, &qword_1EAFCF408, &qword_19A7C0E48, MEMORY[0x1E69E6338]);
  sub_19A623714(&qword_1EAFCA630, &qword_1EAFCF410, &qword_19A7C0E50, MEMORY[0x1E6981F48]);
  v85 = v235;
  sub_19A7AA584();
  sub_19A7AA654();
  sub_19A7A9864();
  KeyPath = v285;
  v224 = v287;
  v223 = v289;
  v222 = v290;
  v278 = 1;
  v277 = v286;
  v276 = v288;
  LOBYTE(v74) = v275;
  LOBYTE(v82) = v274;
  LOBYTE(v81) = v273;
  v86 = v237;
  v87 = *(v237 + 2);
  v88 = v236;
  v89 = v255;
  v87(v236, v85, v255);
  LOBYTE(v76) = v278;
  v220 = v277;
  v221 = v276;
  v90 = v230;
  *v230 = 0;
  *(v90 + 8) = v74;
  v90[2] = v229;
  *(v90 + 24) = v82;
  v90[4] = v228;
  *(v90 + 40) = v81;
  v91 = v226;
  v90[6] = v227;
  v90[7] = v91;
  v92 = v90;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF418, &qword_19A7C0E58);
  v87(&v92[*(v93 + 48)], v88, v89);
  v94 = &v92[*(v93 + 64)];
  *v94 = 0;
  v94[8] = v76;
  *(v94 + 2) = KeyPath;
  v94[24] = v220;
  *(v94 + 4) = v224;
  v94[40] = v221;
  v95 = v222;
  *(v94 + 6) = v223;
  *(v94 + 7) = v95;
  v96 = *(v86 + 1);
  v96(v85, v89);
  v96(v88, v89);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  if (v294 == 1)
  {
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF428, &qword_19A7C0EA8);
    v98 = v242;
    (*(*(v97 - 8) + 56))(v242, 1, 1, v97);
    v255 = (v233 + v232) & v231;
    v256 += v255;
    v99 = v270;
    v100 = v260;
    v101 = v234;
  }

  else
  {
    sub_19A7A9DF4();
    v102 = v208;
    sub_19A7A97B4();
    v255 = type metadata accessor for CategoryBar;
    v103 = v264;
    sub_19A754C94(v270, v264, type metadata accessor for CategoryBar);
    v101 = v234;
    v104 = v260;
    v267(v234, v271, v260);
    v105 = (v233 + v232) & v231;
    v106 = &v256[v105];
    v107 = swift_allocObject();
    v237 = type metadata accessor for CategoryBar;
    sub_19A753DD4(v103, v107 + v269, type metadata accessor for CategoryBar);
    v265(v107 + v105, v101, v104);
    sub_19A74BE14(&qword_1EAFCA840, MEMORY[0x1E697BEA8], MEMORY[0x1E697BEA0]);
    sub_19A74BE14(&qword_1EAFCA848, MEMORY[0x1E697BE90], MEMORY[0x1E697BE98]);
    v108 = v211;
    v109 = v210;
    sub_19A7AA5A4();

    (*(v209 + 8))(v102, v109);
    v99 = v270;
    sub_19A754C94(v270, v103, v255);
    v267(v101, v271, v104);
    v256 = v106;
    v110 = swift_allocObject();
    sub_19A753DD4(v103, v110 + v269, v237);
    v255 = v105;
    v265(v110 + v105, v101, v104);
    sub_19A623714(&qword_1EAFCA720, &qword_1EAFCF3C0, &qword_19A7C0D98, MEMORY[0x1E697E8D0]);
    v98 = v242;
    v111 = v213;
    sub_19A7AA594();

    (*(v212 + 8))(v108, v111);
    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF428, &qword_19A7C0EA8);
    (*(*(v112 - 8) + 56))(v98, 0, 1, v112);
    v100 = v104;
  }

  sub_19A7A9804();
  sub_19A623714(&qword_1EAFCA660, &qword_1EAFCF3D8, &qword_19A7C0DB0, MEMORY[0x1E69817F8]);
  sub_19A753C38();
  v113 = v257;
  sub_19A7AA1D4();
  sub_19A5F2B54(v98, &qword_1EAFCF3C8, &qword_19A7C0DA0);
  sub_19A5F2B54(v113, &qword_1EAFCF3D8, &qword_19A7C0DB0);
  swift_beginAccess();
  v114 = v239;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF438, &unk_19A7C0EB0);
  v115 = v245;
  sub_19A7A9674();
  swift_endAccess();
  v116 = v99;
  v117 = v264;
  sub_19A754C94(v116, v264, type metadata accessor for CategoryBar);
  v267(v101, v271, v100);
  v118 = swift_allocObject();
  v257 = type metadata accessor for CategoryBar;
  sub_19A753DD4(v117, v118 + v269, type metadata accessor for CategoryBar);
  v265(v118 + v255, v101, v100);
  (*(v240 + 32))(v115, v258, v241);
  v119 = (v115 + *(v114 + 56));
  *v119 = sub_19A753CE8;
  v119[1] = v118;
  swift_beginAccess();
  v120 = v244;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCDB50, &qword_19A7BBC18);
  v121 = v248;
  sub_19A7A9674();
  swift_endAccess();
  sub_19A754C94(v270, v117, type metadata accessor for CategoryBar);
  v267(v101, v271, v100);
  v122 = swift_allocObject();
  sub_19A753DD4(v117, v122 + v269, v257);
  v265(v122 + v255, v101, v100);
  sub_19A62376C(v115, v121, &qword_1EAFCF3E8, &qword_19A7C0DC0);
  v123 = (v121 + *(v120 + 56));
  *v123 = sub_19A753D00;
  v123[1] = v122;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  v124 = 0.0;
  v125 = v263;
  if (v294 == 1)
  {
    sub_19A7A9894();
    v127 = v126;
    v128 = sub_19A652898();
    v129 = sub_19A652F7C(v128);

    if (v129 >> 62)
    {
      v130 = sub_19A7ABBE4();
    }

    else
    {
      v130 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_19A7A9894();
    v124 = -((v127 + -6.0) * 0.5 / v130 + 3.0 + v131 * 0.5);
  }

  v132 = v246;
  sub_19A62376C(v121, v246, &qword_1EAFCF3F0, &qword_19A7C0DC8);
  v133 = v132 + *(v247 + 36);
  *v133 = v124;
  *(v133 + 8) = 0;
  sub_19A62376C(v132, v262, &qword_1EAFCF3F8, &qword_19A7C0DD0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  if ((v294 & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_19A7A96A4(), , , (v294 & 0x8000000000000000) != 0))
  {
    v145 = 1;
    goto LABEL_42;
  }

  v134 = v61 * 0.5;
  v135 = *(v190 + 20);
  v136 = *MEMORY[0x1E697F468];
  v137 = sub_19A7A9BC4();
  v138 = v214;
  (*(*(v137 - 8) + 104))(v214 + v135, v136, v137);
  *v138 = v55;
  v138[1] = v55;
  v139 = v215;
  sub_19A749048(v215);
  v140 = v219;
  v141 = v216;
  v142 = *MEMORY[0x1E697DBB8];
  v143 = v218;
  v272 = *(v219 + 104);
  (v272)(v216);
  LOBYTE(v135) = sub_19A7A9794();
  v144 = *(v140 + 8);
  v144(v141, v143);
  v219 = v140 + 8;
  v144(v139, v143);
  if (v135)
  {
    if (qword_1EAFCAF98 != -1)
    {
      swift_once();
    }

    if (byte_1EAFDD640)
    {
LABEL_27:
      v146 = [objc_opt_self() tertiarySystemFillColor];
      v147 = sub_19A7AA274();
      LODWORD(v269) = 1;
      goto LABEL_29;
    }
  }

  else
  {
    if (qword_1EAFCAF98 != -1)
    {
      swift_once();
    }

    if (byte_1EAFDD640)
    {
      goto LABEL_27;
    }
  }

  (*(v187 + 104))(v188, *MEMORY[0x1E69814D8], v189);
  v147 = sub_19A7AA334();
  LODWORD(v269) = 0;
LABEL_29:
  v148 = swift_getKeyPath();
  v149 = v193;
  sub_19A753DD4(v214, v193, MEMORY[0x1E697EAF0]);
  v150 = (v149 + *(v191 + 36));
  *v150 = v148;
  v150[1] = v147;
  v151 = sub_19A7AA714();
  LODWORD(v148) = sub_19A7A9E44();
  sub_19A7AA744();
  v153 = v152;
  v155 = v154;
  v156 = v149;
  v157 = v199;
  sub_19A62376C(v156, v199, &qword_1EAFCC2B0, &qword_19A7B7140);
  v158 = v157 + *(v192 + 36);
  *v158 = 0x6867696C68676968;
  *(v158 + 8) = 0xE900000000000074;
  *(v158 + 16) = v151;
  *(v158 + 24) = v148;
  *(v158 + 32) = v153;
  *(v158 + 40) = v155;
  *(v158 + 48) = 1;
  sub_19A7AA654();
  sub_19A7A9864();
  v159 = v157;
  v160 = v198;
  sub_19A62376C(v159, v198, &unk_1EAFCF390, &qword_19A7B7148);
  v161 = (v160 + *(v197 + 36));
  v162 = v295;
  *v161 = v294;
  v161[1] = v162;
  v161[2] = v296;
  v163 = v160;
  v164 = v195;
  sub_19A62376C(v163, v195, &qword_1EAFCC2B8, &unk_19A7B7150);
  v165 = v164 + *(v196 + 36);
  *v165 = v54;
  *(v165 + 8) = v134;
  v166 = v217;
  sub_19A62376C(v164, v217, &qword_1EAFCF3A0, &qword_19A7C0D78);
  *(v166 + *(v194 + 36)) = 0;
  v167 = v215;
  sub_19A749048(v215);
  v168 = v216;
  v169 = v218;
  (v272)(v216, v142, v218);
  LOBYTE(v164) = sub_19A7A9794();
  v144(v168, v169);
  v144(v167, v169);
  if ((v164 & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), sub_19A7A96A4(), , , (v291 & 1) == 0))
  {
    if (qword_1EAFCAF98 != -1)
    {
      swift_once();
    }

    v170 = v203;
    v171 = *(v203 + 104);
    v172 = v204;
    v173 = v202;
    if (v269)
    {
      v174 = MEMORY[0x1E6981DA0];
    }

    else
    {
      v174 = MEMORY[0x1E6981E18];
    }
  }

  else
  {
    if (qword_1EAFCAF98 != -1)
    {
      swift_once();
    }

    v170 = v203;
    v171 = *(v203 + 104);
    v172 = v204;
    v173 = v202;
    if (v269)
    {
      v174 = MEMORY[0x1E6981DB8];
    }

    else
    {
      v174 = MEMORY[0x1E6981E08];
    }
  }

  v171(v173, *v174, v172);
  v175 = v201;
  (*(v170 + 32))(&v201[*(v252 + 36)], v173, v172);
  sub_19A62376C(v217, v175, &qword_1EAFCF3A8, &qword_19A7C0D80);
  v176 = v200;
  sub_19A62376C(v175, v200, &qword_1EAFCF3B0, &qword_19A7C0D88);
  sub_19A62376C(v176, v253, &qword_1EAFCF3B0, &qword_19A7C0D88);
  v145 = 0;
LABEL_42:
  v177 = v253;
  (*(v250 + 56))(v253, v145, 1, v252);
  v178 = v125 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF448, &qword_19A7C0F38) + 44);
  v179 = v262;
  v180 = v249;
  sub_19A60F0CC(v262, v249, &qword_1EAFCF3F8, &qword_19A7C0DD0);
  v181 = v251;
  sub_19A60F0CC(v177, v251, &qword_1EAFCF3B8, &qword_19A7C0D90);
  sub_19A60F0CC(v180, v178, &qword_1EAFCF3F8, &qword_19A7C0DD0);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF450, &qword_19A7C0F40);
  sub_19A60F0CC(v181, v178 + *(v182 + 48), &qword_1EAFCF3B8, &qword_19A7C0D90);
  sub_19A5F2B54(v177, &qword_1EAFCF3B8, &qword_19A7C0D90);
  sub_19A5F2B54(v179, &qword_1EAFCF3F8, &qword_19A7C0DD0);
  sub_19A5F2B54(v181, &qword_1EAFCF3B8, &qword_19A7C0D90);
  sub_19A5F2B54(v180, &qword_1EAFCF3F8, &qword_19A7C0DD0);
  sub_19A7A9894();
  sub_19A7AA654();
  sub_19A7A9864();

  v183 = (v125 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF458, &qword_19A7C0F48) + 36));
  v184 = v292;
  *v183 = v291;
  v183[1] = v184;
  result = *&v293;
  v183[2] = v293;
  return result;
}

uint64_t sub_19A74F5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>)
{
  v119 = a5;
  v127 = a4;
  v144 = a3;
  v141 = a2;
  v129 = a1;
  v135 = a6;
  v10 = sub_19A7A98B4();
  v112 = *(v10 - 8);
  v113 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v110 = v11;
  v111 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF470, &qword_19A7C0FF0);
  MEMORY[0x1EEE9AC00](v114);
  v121 = (&v108 - v12);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF478, &qword_19A7C0FF8);
  MEMORY[0x1EEE9AC00](v115);
  v118 = &v108 - v13;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF480, &qword_19A7C1000);
  v133 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v117 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v116 = &v108 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF488, &qword_19A7C1008);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v134 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v139 = &v108 - v20;
  v131 = sub_19A7A9C14();
  v145 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v130 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v128 = &v108 - v23;
  v136 = type metadata accessor for CategoryBar(0);
  v123 = *(v136 - 8);
  v24 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v136);
  v137 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF490, &qword_19A7C1010);
  v125 = *(v25 - 8);
  v126 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v122 = &v108 - v26;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF498, &qword_19A7C1018);
  MEMORY[0x1EEE9AC00](v143);
  v132 = &v108 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v124 = &v108 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v142 = &v108 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v138 = &v108 - v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF4A0, &qword_19A7C1020);
  v34 = swift_allocObject();
  v120 = xmmword_19A7B6C20;
  *(v34 + 16) = xmmword_19A7B6C20;
  v35 = sub_19A7A9EC4();
  *(v34 + 32) = v35;
  v36 = sub_19A7A9EE4();
  *(v34 + 33) = v36;
  v37 = sub_19A7A9ED4();
  sub_19A7A9ED4();
  if (sub_19A7A9ED4() != v35)
  {
    v37 = sub_19A7A9ED4();
  }

  sub_19A7A9ED4();
  if (sub_19A7A9ED4() != v36)
  {
    v37 = sub_19A7A9ED4();
  }

  v38 = v144;
  sub_19A750658(v144, &v162);
  v156 = v164;
  v157 = v165;
  v158 = v166;
  v159 = v167;
  v154 = v162;
  v155 = v163;
  v161 = v167;
  v160[2] = v164;
  v160[3] = v165;
  v160[4] = v166;
  v160[0] = v162;
  v160[1] = v163;
  sub_19A60F0CC(&v154, v153, &qword_1EAFCF4A8, &qword_19A7C1028);
  sub_19A5F2B54(v160, &qword_1EAFCF4A8, &qword_19A7C1028);
  *(&v171[2] + 7) = v156;
  *(&v171[3] + 7) = v157;
  *(&v171[4] + 7) = v158;
  *(&v171[5] + 7) = v159;
  *(v171 + 7) = v154;
  *(&v171[1] + 7) = v155;
  swift_beginAccess();
  sub_19A7AA654();
  sub_19A7A9864();
  LOBYTE(v153[0]) = v37;
  *(&v153[2] + 1) = v171[2];
  *(&v153[3] + 1) = v171[3];
  *(&v153[4] + 1) = v171[4];
  v153[5] = *(&v171[4] + 15);
  *(v153 + 1) = v171[0];
  *(&v153[1] + 1) = v171[1];
  v39 = v137;
  sub_19A754C94(v38, v137, type metadata accessor for CategoryBar);
  v40 = *(v123 + 80);
  v41 = (v40 + 16) & ~v40;
  v109 = v41 + v24;
  v123 = v40 | 7;
  v42 = swift_allocObject();
  v127 = v41;
  sub_19A753DD4(v39, v42 + v41, type metadata accessor for CategoryBar);
  v43 = v129;
  *(v42 + ((v41 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v129;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF4B0, &qword_19A7C1030);
  v45 = sub_19A7540A8();
  v46 = v122;
  sub_19A7AA104();

  v168 = v153[6];
  v169 = v153[7];
  v170 = v153[8];
  v164 = v153[2];
  v165 = v153[3];
  v166 = v153[4];
  v167 = v153[5];
  v162 = v153[0];
  v163 = v153[1];
  sub_19A5F2B54(&v162, &qword_1EAFCF4B0, &qword_19A7C1030);
  v48 = *(v141 + OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_title);
  v47 = *(v141 + OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_title + 8);
  *&v153[0] = v48;
  *(&v153[0] + 1) = v47;
  v141 = v47;
  v149 = *&v44;
  v150 = v45;
  swift_getOpaqueTypeConformance2();
  sub_19A639920();
  v49 = v124;
  v50 = v126;
  sub_19A7AA154();
  (*(v125 + 8))(v46, v50);
  v51 = v128;
  sub_19A7A9BF4();
  sub_19A7A9984();
  v53 = v145 + 8;
  v52 = *(v145 + 8);
  v54 = v51;
  v55 = v131;
  v52(v54, v131);
  sub_19A5F2B54(v49, &qword_1EAFCF498, &qword_19A7C1018);
  v56 = *(v144 + *(v136 + 40) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v128 = v56;
  sub_19A7A96A4();

  v57 = *&v153[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF4C8, &qword_19A7C1040);
  v145 = v53;
  if (v57 == v43)
  {
    v58 = swift_allocObject();
    *(v58 + 16) = v120;
    sub_19A7A9BD4();
  }

  else
  {
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_19A7B6C30;
  }

  sub_19A7A9BE4();
  *&v153[0] = v58;
  sub_19A74BE14(&qword_1EAFCA710, MEMORY[0x1E697F5E0], MEMORY[0x1E697F5F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF4D8, &qword_19A7C1048);
  sub_19A623714(&qword_1EAFCA5C0, &unk_1EAFCF4D8, &qword_19A7C1048, MEMORY[0x1E69E6328]);
  v59 = v130;
  sub_19A7ABB54();
  v60 = v138;
  v61 = v142;
  sub_19A7A9974();
  v52(v59, v55);
  sub_19A5F2B54(v61, &qword_1EAFCF498, &qword_19A7C1018);
  v62 = v140;
  if (v48 == 0x696A6F6D654DLL && v141 == 0xE600000000000000 || (sub_19A7AC064() & 1) != 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_19A7A96A4();

    v63 = 1;
    v64 = v139;
    if (LOBYTE(v153[0]) == 1)
    {
      v65 = sub_19A7A9C24();
      v66 = v121;
      *v121 = v65;
      v66[1] = 0;
      *(v66 + 16) = 1;
      v67 = (v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF4F0, &qword_19A7C1058) + 44));
      v68 = v144;
      v145 = sub_19A7AA714();
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF4F8, &qword_19A7C1060);
      v70 = *(v69 + 44);
      v71 = v69;
      v143 = v69;
      v72 = v67 + v70;
      *(v72 + 3) = v136;
      *(v72 + 4) = &off_1F0DCD290;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v67 + v70));
      sub_19A754C94(v68, boxed_opaque_existential_1, type metadata accessor for CategoryBar);
      v75 = v112;
      v74 = v113;
      v76 = *(v112 + 16);
      v77 = v67 + *(v71 + 40);
      v78 = v119;
      v76(v77, v119, v113);
      v79 = v137;
      sub_19A754C94(v68, v137, type metadata accessor for CategoryBar);
      v80 = v111;
      v76(v111, v78, v74);
      v81 = (v109 + *(v75 + 80)) & ~*(v75 + 80);
      v82 = swift_allocObject();
      sub_19A753DD4(v79, v82 + v127, type metadata accessor for CategoryBar);
      (*(v75 + 32))(v82 + v81, v80, v74);
      v64 = v139;
      *v67 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF360, &qword_19A7B7740);
      swift_storeEnumTagMultiPayload();
      v83 = v143;
      v84 = (v67 + *(v143 + 52));
      *v84 = 0xD000000000000010;
      v84[1] = 0x800000019A7CCFE0;
      *(v67 + *(v83 + 36)) = v145;
      v85 = (v67 + *(v83 + 48));
      *v85 = sub_19A754160;
      v85[1] = v82;
      sub_19A7A9894();
      sub_19A7AA654();
      sub_19A7A9864();
      v86 = v121;
      v87 = (v121 + *(v114 + 36));
      v88 = v153[1];
      *v87 = v153[0];
      v87[1] = v88;
      v87[2] = v153[2];
      v60 = v138;
      sub_19A7A9894();
      if (v89 >= 375.0)
      {
        v90 = 2.0;
      }

      else
      {
        v90 = 6.0;
      }

      v91 = v118;
      sub_19A62376C(v86, v118, &qword_1EAFCF470, &qword_19A7C0FF0);
      v92 = v91 + *(v115 + 36);
      *v92 = v90;
      *(v92 + 8) = 0;
      v149 = a9;
      v150 = 0;
      v151 = 0;
      v152 = 0x4010000000000000;
      v146 = a9;
      __asm { FMOV            V0.2D, #1.0 }

      v147 = _Q0;
      v148 = 0x4010000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF500, &unk_19A7C1098);
      sub_19A623714(&qword_1EAFCF508, &qword_1EAFCF500, &unk_19A7C1098, &unk_19A7C1470);
      v98 = sub_19A7A9874();
      v99 = v91;
      v62 = v140;
      v100 = v117;
      sub_19A62376C(v99, v117, &qword_1EAFCF478, &qword_19A7C0FF8);
      *(v100 + *(v62 + 36)) = v98;
      v101 = v100;
      v102 = v116;
      sub_19A62376C(v101, v116, &qword_1EAFCF480, &qword_19A7C1000);
      sub_19A62376C(v102, v64, &qword_1EAFCF480, &qword_19A7C1000);
      v63 = 0;
    }
  }

  else
  {
    v63 = 1;
    v64 = v139;
  }

  (*(v133 + 56))(v64, v63, 1, v62);
  v103 = v132;
  sub_19A60F0CC(v60, v132, &qword_1EAFCF498, &qword_19A7C1018);
  v104 = v134;
  sub_19A60F0CC(v64, v134, &qword_1EAFCF488, &qword_19A7C1008);
  v105 = v135;
  sub_19A60F0CC(v103, v135, &qword_1EAFCF498, &qword_19A7C1018);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF4E8, &qword_19A7C1050);
  sub_19A60F0CC(v104, v105 + *(v106 + 48), &qword_1EAFCF488, &qword_19A7C1008);
  sub_19A5F2B54(v64, &qword_1EAFCF488, &qword_19A7C1008);
  sub_19A5F2B54(v60, &qword_1EAFCF498, &qword_19A7C1018);
  sub_19A5F2B54(v104, &qword_1EAFCF488, &qword_19A7C1008);
  return sub_19A5F2B54(v103, &qword_1EAFCF498, &qword_19A7C1018);
}

uint64_t sub_19A750658@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v45 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFFF0, &qword_19A7B7970);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v43 - v6;
  v7 = sub_19A7AA284();
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_19A7A97A4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF520, &qword_19A7C10F8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v43 - v18;
  v46 = v9;

  sub_19A7AA3A4();
  v20 = *MEMORY[0x1E6981698];
  v21 = sub_19A7AA3B4();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v19, v20, v21);
  (*(v22 + 56))(v19, 0, 1, v21);
  v23 = sub_19A7AA394();

  sub_19A5F2B54(v19, &qword_1EAFCF520, &qword_19A7C10F8);
  sub_19A749048(v16);
  (*(v11 + 104))(v13, *MEMORY[0x1E697DBB8], v10);
  LOBYTE(v9) = sub_19A7A9794();
  v24 = *(v11 + 8);
  v24(v13, v10);
  v24(v16, v10);
  if ((v9 & 1) == 0)
  {
    v27 = v46;
    if (qword_1EAFCAF98 != -1)
    {
      swift_once();
    }

    if (byte_1EAFDD640 == 1)
    {
      v26 = sub_19A7AA2E4();
      goto LABEL_11;
    }

    (*(v43 + 104))(v27, *MEMORY[0x1E69814D8], v44);
LABEL_10:
    v26 = sub_19A7AA334();
    goto LABEL_11;
  }

  v25 = sub_19A7AA624();
  (*(v43 + 104))(v46, *MEMORY[0x1E69814D8], v44);
  if ((v25 & 1) == 0)
  {
    goto LABEL_10;
  }

  v26 = sub_19A7AA324();
LABEL_11:
  v28 = v26;
  KeyPath = swift_getKeyPath();
  v30 = sub_19A7A9F04();
  sub_19A7A9754();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v48 = 0;
  v39 = sub_19A7A9F84();
  v40 = v47;
  (*(*(v39 - 8) + 56))(v47, 1, 1, v39);
  v41 = sub_19A7A9FC4();
  sub_19A5F2B54(v40, &qword_1EAFCFFF0, &qword_19A7B7970);
  result = swift_getKeyPath();
  *a3 = v23;
  *(a3 + 8) = KeyPath;
  *(a3 + 16) = v28;
  *(a3 + 24) = v30;
  *(a3 + 32) = v32;
  *(a3 + 40) = v34;
  *(a3 + 48) = v36;
  *(a3 + 56) = v38;
  *(a3 + 64) = 0;
  *(a3 + 72) = result;
  *(a3 + 80) = v41;
  return result;
}

void sub_19A750B94(uint64_t a1, unint64_t a2)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v57 = v52 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v62 = v52 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v52 - v11;
  v13 = sub_19A7A9094();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v60 = v52 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v52 - v20;
  v61 = type metadata accessor for CategoryBar(0);
  v22 = *(a1 + *(v61 + 40) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  if ((v64 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_19A7A96A4();

    v23 = v64;
    v64 = *(a1 + 40);
    v63 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF510, &qword_19A7B7A80);
    sub_19A7AA474();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_19A7A96A4();

    v56 = *(v14 + 48);
    v24 = v56(v12, 1, v13);
    v54 = v5;
    v55 = v22;
    v53 = v16;
    if (v24 == 1)
    {
      if (qword_1EAFCAFA0 != -1)
      {
        swift_once();
      }

      v25 = __swift_project_value_buffer(v13, qword_1EAFDD648);
      v26 = *(v14 + 16);
      v26(v21, v25, v13);
      if (v56(v12, 1, v13) != 1)
      {
        sub_19A5F2B54(v12, &unk_1EAFCF110, &unk_19A7B6AF0);
      }
    }

    else
    {
      (*(v14 + 32))(v21, v12, v13);
      v26 = *(v14 + 16);
    }

    v26(v60, v21, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF340, &qword_19A7C0B00);
    sub_19A7AA474();
    v27 = a1;
    v28 = v21;
    v29 = v14;
    v30 = v14 + 8;
    v31 = *(v14 + 8);
    v31(v28, v13);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_19A7A96A4();

    v52[0] = v64;
    v32 = *(v14 + 56);
    v33 = v62;
    v32(v62, 1, 1, v13);
    v59 = v27;
    v35 = v57;
    v34 = v58;
    sub_19A75C0D0(v58, v57);
    sub_19A754254(v35, v33);
    v36 = v54;
    sub_19A60F0CC(v33, v54, &unk_1EAFCF110, &unk_19A7B6AF0);
    v37 = v56(v36, 1, v13);
    v52[1] = v30;
    if (v37 == 1)
    {
      sub_19A5F2B54(v36, &unk_1EAFCF110, &unk_19A7B6AF0);
      v38 = v52[0];
    }

    else
    {
      v39 = v53;
      (*(v29 + 32))(v53, v36, v13);
      v38 = sub_19A7A9064();
      v31(v39, v13);
    }

    v40 = sub_19A75BDF8(v38);
    v41.n128_u64[0] = 0x3FD999999999999ALL;
    if (!v40)
    {
      v41.n128_f64[0] = 0.0;
    }

    v42 = MEMORY[0x19A904AF0](v41, 0.85, 0.0);
    MEMORY[0x1EEE9AC00](v42);
    v43 = v62;
    v52[-4] = v59;
    v52[-3] = v43;
    v52[-2] = v34;
    sub_19A7A98C4();

    if (v40)
    {
      v44 = v60;
      MEMORY[0x19A903470](0, v38);
      v45 = sub_19A65382C();
      v31(v44, v13);
      if (v45)
      {
        v47 = *&v45[OBJC_IVAR___STKImageGlyph_avatarIdentifier];
        v46 = *&v45[OBJC_IVAR___STKImageGlyph_avatarIdentifier + 8];

        if (v46)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          *&v64 = v47;
          *(&v64 + 1) = v46;

          sub_19A7A96B4();
          swift_getKeyPath();
          swift_getKeyPath();
          sub_19A7A96A4();

          sub_19A74A73C(v64, *(&v64 + 1));
        }
      }
    }

    v48 = (v59 + *(v61 + 48));
    v50 = *v48;
    v49 = v48[1];
    *&v64 = v50;
    *(&v64 + 1) = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF468, &qword_19A7C0FA0);
    sub_19A7AA464();
    v51 = v63;
    sub_19A786230();
    if ((*(v51 + 24) & 1) == 0)
    {
      sub_19A786230();
    }

    [*(v51 + 16) selectionChanged];
    if (*(v51 + 24) == 1)
    {
      *(v51 + 24) = 0;
      [*(v51 + 16) userInteractionEnded];
    }

    sub_19A5F2B54(v62, &unk_1EAFCF110, &unk_19A7B6AF0);
  }
}

void sub_19A75136C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v11 - v9;
  type metadata accessor for CategoryBar(0);
  sub_19A60F0CC(a2, v10, &unk_1EAFCF110, &unk_19A7B6AF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A60F0CC(v10, v7, &unk_1EAFCF110, &unk_19A7B6AF0);

  sub_19A7A96B4();
  sub_19A5F2B54(v10, &unk_1EAFCF110, &unk_19A7B6AF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v11[1] = a3;

  sub_19A7A96B4();
  sub_19A74A068();
}

uint64_t sub_19A751508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *(a3 + 3) = type metadata accessor for CategoryBar(0);
  *(a3 + 4) = &off_1F0DCD2A0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  sub_19A754C94(a1, boxed_opaque_existential_1, type metadata accessor for CategoryBar);
  v7 = type metadata accessor for MemojiPicker(0);
  v8 = v7[5];
  v9 = sub_19A7A98B4();
  (*(*(v9 - 8) + 16))(&a3[v8], a2, v9);
  v10 = &a3[v7[6]];
  type metadata accessor for CategoryBar.ScrollPosition(0);
  sub_19A74BE14(&qword_1EAFCAFB0, type metadata accessor for CategoryBar.ScrollPosition, &unk_19A7C0BBC);

  result = sub_19A7A9914();
  *v10 = result;
  *(v10 + 1) = v12;
  v13 = &a3[v7[7]];
  *v13 = 0;
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  *(v13 + 3) = 0x4000000000000000;
  return result;
}

double sub_19A751650(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CategoryBar(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  if ((v5 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF468, &qword_19A7C0FA0);
    sub_19A7AA464();
    sub_19A786230();
  }

  v3 = MEMORY[0x19A904AF0](v2, 0.4, 0.85, 0.0);
  MEMORY[0x1EEE9AC00](v3);
  sub_19A7A98C4();

  return result;
}

double sub_19A7517B4(uint64_t a1, uint64_t a2)
{
  MEMORY[0x19A904AF0](0.4, 0.85, 0.0);
  sub_19A7A98C4();

  type metadata accessor for CategoryBar(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF468, &qword_19A7C0FA0);
  sub_19A7AA464();
  if (*(v4 + 24) == 1)
  {
    *(v4 + 24) = 0;
    v2 = *(v4 + 16);
    [v2 userInteractionEnded];
  }

  return result;
}

void sub_19A7518B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  type metadata accessor for CategoryBar(0);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_19A7A96B4();
  sub_19A7A97C4();
  v7 = v6;
  sub_19A7A9894();
  sub_19A74C134(a5, v7, v8);
}

uint64_t sub_19A75198C(__n128 a1, uint64_t a2, uint64_t a3)
{
  sub_19A7A9894();
  sub_19A74BFBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF460, &qword_19A7C3410);
  return sub_19A7AA474();
}

uint64_t sub_19A751A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_19A751B18(uint64_t a1)
{
  result = sub_19A7AA624();
  if (result)
  {
    result = itk_isVisionOS();
    v2 = result ^ 1;
  }

  else
  {
    v2 = 0;
  }

  byte_1EAFDD640 = v2;
  return result;
}

double sub_19A751B54()
{
  MEMORY[0x19A904AF0](0.4, 0.85, 0.0);
  sub_19A7A98C4();

  return result;
}

double sub_19A751BF4@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for CategoryBar(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_19A74D060(a1, v6, a2);
}

uint64_t sub_19A751C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v34 = a3;
  v28[4] = a1;
  swift_getWitnessTable();
  v28[1] = sub_19A7A9DB4();
  v4 = sub_19A7A9994();
  v30 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v28 - v5;
  v7 = *(a2 + 24);
  v28[0] = *(a2 + 16);
  v28[2] = v7;
  v28[3] = sub_19A7A9824();
  v8 = sub_19A7A9994();
  v33 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v28 - v9;
  v11 = sub_19A7A9994();
  v29 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v31 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v32 = v28 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF5F8, &qword_19A7C14C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A7B6C20;
  v16 = sub_19A7A9F34();
  *(inited + 32) = v16;
  v17 = sub_19A7A9F54();
  *(inited + 33) = v17;
  sub_19A7A9F44();
  sub_19A7A9F44();
  if (sub_19A7A9F44() != v16)
  {
    sub_19A7A9F44();
  }

  sub_19A7A9F44();
  if (sub_19A7A9F44() != v17)
  {
    sub_19A7A9F44();
  }

  WitnessTable = swift_getWitnessTable();
  sub_19A7AA204();
  v39 = WitnessTable;
  v40 = MEMORY[0x1E697E5D8];
  v19 = swift_getWitnessTable();
  sub_19A7AA254();
  (*(v30 + 8))(v6, v4);
  v20 = swift_getWitnessTable();
  v37 = v19;
  v38 = v20;
  v21 = swift_getWitnessTable();
  v22 = v31;
  sub_19A7AA1F4();
  (*(v33 + 8))(v10, v8);
  v35 = v21;
  v36 = MEMORY[0x1E697E5C0];
  swift_getWitnessTable();
  v23 = v29;
  v24 = *(v29 + 16);
  v25 = v32;
  v24(v32, v22, v11);
  v26 = *(v23 + 8);
  v26(v22, v11);
  v24(v34, v25, v11);
  return (v26)(v25, v11);
}

double sub_19A75214C@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v10 = sub_19A7A9A24();
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  CGRectGetWidth(v28);
  v29.origin.x = a2;
  v29.origin.y = a3;
  v29.size.width = a4;
  v29.size.height = a5;
  CGRectGetMinX(v29);
  v30.origin.x = a2;
  v30.origin.y = a3;
  v30.size.width = a4;
  v30.size.height = a5;
  CGRectGetMinX(v30);
  v31.origin.x = a2;
  v31.origin.y = a3;
  v31.size.width = a4;
  v31.size.height = a5;
  CGRectGetMinY(v31);
  v32.origin.x = a2;
  v32.origin.y = a3;
  v32.size.width = a4;
  v32.size.height = a5;
  CGRectGetHeight(v32);
  v14 = *(v11 + 28);
  v15 = *MEMORY[0x1E697F468];
  v16 = sub_19A7A9BC4();
  (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
  __asm { FMOV            V0.2D, #13.0 }

  *v13 = _Q0;
  sub_19A7A9A04();
  sub_19A754BE4(v13);
  result = *&v25;
  v23 = v26;
  *a1 = v25;
  *(a1 + 16) = v23;
  *(a1 + 32) = v27;
  return result;
}

double sub_19A752334@<D0>(double *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

double sub_19A752340(double *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

uint64_t sub_19A752370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19A754C40();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_19A7523D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19A754C40();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_19A752438(uint64_t a1)
{
  v2 = sub_19A754C40();

  return MEMORY[0x1EEDE4410](a1, v2);
}

uint64_t sub_19A752484()
{
  result = MEMORY[0x19A904AF0](0.45, 0.8, 0.0);
  qword_1EAFDD790 = result;
  return result;
}

uint64_t sub_19A7524B8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v35 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCF638, &qword_19A7C14F8);
  v33 = a1;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  sub_19A7AA4F4();
  swift_getTupleTypeMetadata2();
  sub_19A7AA724();
  swift_getWitnessTable();
  v7 = sub_19A7AA4D4();
  v28 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = sub_19A7A9994();
  v32 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v13 = sub_19A7A9994();
  v29 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v30 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v31 = &v28 - v16;
  v36 = v5;
  v37 = v6;
  v34 = v3;
  v38 = v3;
  sub_19A7A9BA4();
  sub_19A7AA4C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF5F8, &qword_19A7C14C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A7B6C20;
  v18 = sub_19A7A9F14();
  *(inited + 32) = v18;
  v19 = sub_19A7A9F24();
  *(inited + 33) = v19;
  sub_19A7A9F44();
  sub_19A7A9F44();
  if (sub_19A7A9F44() != v18)
  {
    sub_19A7A9F44();
  }

  sub_19A7A9F44();
  if (sub_19A7A9F44() != v19)
  {
    sub_19A7A9F44();
  }

  WitnessTable = swift_getWitnessTable();
  sub_19A7AA204();
  (*(v28 + 8))(v9, v7);
  sub_19A7A9894();
  sub_19A7AA654();
  v41 = WitnessTable;
  v42 = MEMORY[0x1E697E5D8];
  v21 = swift_getWitnessTable();
  v22 = v30;
  sub_19A7AA1C4();
  (*(v32 + 8))(v12, v10);
  v39 = v21;
  v40 = MEMORY[0x1E697E040];
  swift_getWitnessTable();
  v23 = v29;
  v24 = *(v29 + 16);
  v25 = v31;
  v24(v31, v22, v13);
  v26 = *(v23 + 8);
  v26(v22, v13);
  v24(v35, v25, v13);
  return (v26)(v25, v13);
}

uint64_t sub_19A7529A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a4;
  v45 = a3;
  WitnessTable = a2;
  v52 = sub_19A7AA4F4();
  v55 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v43 - v9;
  v11 = type metadata accessor for DrillDownContainer(0, a2, a3, v10);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF638, &qword_19A7C14F8);
  v48 = *(v15 - 8);
  v49 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v47 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v54 = &v43 - v18;
  v19 = *(a1 + *(v11 + 36));

  v20 = sub_19A7AA354();
  v43 = v20;
  v21 = objc_opt_self();
  v22 = [v21 secondaryLabelColor];
  v23 = sub_19A7AA274();
  v24 = [v21 tertiarySystemFillColor];
  v25 = sub_19A7AA274();
  sub_19A7A9FB4();
  v59 = v19;
  v60 = v20;
  v61 = v23;
  v62 = v25;
  v63 = 0x403E000000000000;
  v64 = v26;
  (*(v12 + 16))(v14, a1, v11);
  v27 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v28 = swift_allocObject();
  v29 = v45;
  *(v28 + 16) = WitnessTable;
  *(v28 + 24) = v29;
  (*(v12 + 32))(v28 + v27, v14, v11);
  v44 = sub_19A754DFC();
  sub_19A7AA104();

  sub_19A7A9C24();
  v30 = v50;
  sub_19A7AA4E4();
  v31 = v52;
  WitnessTable = swift_getWitnessTable();
  v32 = v55;
  v33 = *(v55 + 16);
  v34 = v51;
  v33(v51, v30, v31);
  v35 = *(v32 + 8);
  v55 = v32 + 8;
  v36 = v30;
  v35(v30, v31);
  v38 = v47;
  v37 = v48;
  v39 = v54;
  v40 = v49;
  (*(v48 + 16))(v47, v54, v49);
  v59 = v38;
  v33(v36, v34, v31);
  v60 = v36;
  v58[0] = v40;
  v58[1] = v31;
  OpaqueTypeConformance2 = &type metadata for StickerPackStripDrillDownSymbolView;
  v57 = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v57 = WitnessTable;
  sub_19A7475D8(&v59, 2uLL, v58);
  v35(v34, v31);
  v41 = *(v37 + 8);
  v41(v39, v40);
  v35(v36, v31);
  return (v41)(v38, v40);
}

uint64_t sub_19A752EC8(uint64_t a1)
{
  if (qword_1EAFCB6B0 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  MEMORY[0x1EEE9AC00](a1);
  return sub_19A7A98C4();
}

double sub_19A752FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for DrillDownContainer(0, a2, a3, a4);
  __swift_project_boxed_opaque_existential_1((a1 + *(v5 + 44)), *(a1 + *(v5 + 44) + 24));
  type metadata accessor for CategoryBar(0);
  return sub_19A751B54();
}

double sub_19A753004@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = type metadata accessor for MemojiPicker(0);
  *(&v38 + 1) = v5;
  *&v39 = &off_1F0DCD5F8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v37);
  sub_19A754C94(a1, boxed_opaque_existential_1, type metadata accessor for MemojiPicker);
  v7 = *(v5 + 28);
  v8 = *(a1 + *(v5 + 24) + 8);
  v9 = *(a1 + v7);
  v10 = *(a1 + v7 + 8);
  v11 = *(a1 + v7 + 16);
  v12 = *(a1 + v7 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_19A7A96A4();

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  sub_19A754CFC(&v37, a2);
  *(a2 + 48) = v8;
  *(a2 + 40) = v34;
  *(a2 + 41) = 1;
  v13 = [objc_allocWithZone(MEMORY[0x1E698E368]) initWithDelegate:0 allowAddItem:0 allowEditing:0 interItemSpacing:1 shouldReverseNaturalLayout:0.0];
  *(a2 + 56) = v13;
  [v13 setContentInset_];
  sub_19A5F2B54(&v37, &unk_1EAFCF610, &unk_19A7C14D0);
  v14 = sub_19A7AA654();
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDF08, &qword_19A7BCCB0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_19A7BECA0;
  sub_19A7AA2D4();
  *(v17 + 32) = sub_19A7AA5B4();
  *(v17 + 40) = v18;
  sub_19A7AA2E4();
  *(v17 + 48) = sub_19A7AA5B4();
  *(v17 + 56) = v19;
  sub_19A7AA2E4();
  *(v17 + 64) = sub_19A7AA5B4();
  *(v17 + 72) = v20;
  sub_19A7AA2D4();
  *(v17 + 80) = sub_19A7AA5B4();
  *(v17 + 88) = v21;
  sub_19A7AA5C4();
  sub_19A7A9904();
  *(a2 + 64) = v14;
  *(a2 + 72) = v16;
  *(a2 + 80) = v34;
  *(a2 + 88) = v35;
  *(a2 + 104) = v36;
  v22 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF620, &qword_19A7C14E0) + 36));
  v23 = *(sub_19A7A9A24() + 20);
  v24 = *MEMORY[0x1E697F468];
  v25 = sub_19A7A9BC4();
  (*(*(v25 - 8) + 104))(&v22[v23], v24, v25);
  __asm { FMOV            V0.2D, #13.0 }

  *v22 = _Q0;
  *&v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF628, &qword_19A7C14E8) + 36)] = 256;
  sub_19A7AA654();
  sub_19A7A9864();
  v31 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF630, &qword_19A7C14F0) + 36));
  v32 = v38;
  *v31 = v37;
  v31[1] = v32;
  result = *&v39;
  v31[2] = v39;
  return result;
}

double sub_19A753340(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = v4[3];
  v9 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v8);
  (*(v9 + 8))(a1, a2, a3, v8, v9);
  type metadata accessor for MemojiPicker(0);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_19A7A96B4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7A96A4();

  sub_19A74A73C(a2, a3);

  return result;
}

void sub_19A753480(uint64_t a1@<X8>)
{
  sub_19A7A9894();
  v5 = v4 + -44.0;
  *a1 = sub_19A7A9BA4();
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF608, &qword_19A7C14C8);
  sub_19A753004(v2, a1 + *(v6 + 44), v5);
}

uint64_t sub_19A753508(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  return (*(v6 + 16))(a1, a2, v5, v6);
}

uint64_t sub_19A753574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  return (*(v8 + 24))(a1, a2, a3, v7, v8);
}

uint64_t sub_19A7535FC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_19A7A96B4();
}

uint64_t sub_19A753670@<X0>(uint64_t *a1@<X8>)
{
  result = sub_19A7A9A84();
  *a1 = result;
  return result;
}

uint64_t sub_19A7536C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for CategoryBar(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(sub_19A7A98B4() - 8);
  v13 = (*(v12 + 80) + v11 + 8) & ~*(v12 + 80);
  v14 = *(v3 + v9);
  v15 = *(v3 + v10);
  v16 = *(v3 + v11);
  v17 = *(v3 + ((*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_19A74F5F8(a1, a2, (v3 + v8), v15, v3 + v13, a3, v14, v16, v17);
}

uint64_t objectdestroy_58Tm()
{
  v1 = type metadata accessor for CategoryBar(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v17 = *(*(v1 - 1) + 64);
  v4 = sub_19A7A98B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v0 + v3;

  v9 = v0 + v3 + v1[8];
  v10 = sub_19A7A9094();
  (*(*(v10 - 8) + 8))(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF340, &qword_19A7C0B00);

  v11 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD0F0, &qword_19A7B9B50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_19A7A97A4();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  else
  {
  }

  v13 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF360, &qword_19A7B7740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_19A7A9954();
    (*(*(v14 - 8) + 8))(v8 + v13, v14);
  }

  else
  {
  }

  v15 = (v3 + v17 + v6) & ~v6;
  (*(v5 + 8))(v0 + v15, v4);

  return MEMORY[0x1EEE6BDD0](v0, v15 + v7, v2 | v6 | 7);
}

uint64_t sub_19A753B50(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v4 = *(type metadata accessor for CategoryBar(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_19A7A98B4() - 8);
  v8 = v2 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return a2(a1, v2 + v5, v8);
}

unint64_t sub_19A753C38()
{
  result = qword_1EAFCA7E8;
  if (!qword_1EAFCA7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCF3C8, &qword_19A7C0DA0);
    sub_19A623714(&unk_1EAFCA7F0, &unk_1EAFCF428, &qword_19A7C0EA8, MEMORY[0x1E697E238]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCA7E8);
  }

  return result;
}

uint64_t sub_19A753D00(uint64_t a1)
{
  v3 = *(type metadata accessor for CategoryBar(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  sub_19A7A98B4();

  return sub_19A75198C(v5, a1, v1 + v4);
}

uint64_t sub_19A753DD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_19A753E84(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, char *a3, uint64_t a4, unint64_t a5)
{
  v17 = a5 >> 1;
  v7 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = v5;
  if (!v7)
  {
    return;
  }

  v6 = a3;
  v21 = MEMORY[0x1E69E7CC0];
  sub_19A659B5C(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = v21;
    v15 = &v6[8 * a4];
    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if ((a4 + v9) >= v17 || v9 >= v7)
      {
        goto LABEL_14;
      }

      v19 = *&v15[8 * v9];
      v6 = v19;
      a1(&v20, &v19);
      if (v8)
      {
        goto LABEL_17;
      }

      v8 = 0;

      v12 = v20;
      v21 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      v6 = (v14 + 1);
      if (v14 >= v13 >> 1)
      {
        sub_19A659B5C((v13 > 1), v14 + 1, 1);
        v10 = v21;
      }

      *(v10 + 16) = v6;
      *(v10 + 8 * v14 + 32) = v12;
      ++v9;
      if (v11 == v7)
      {
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
LABEL_17:

  __break(1u);
}

void sub_19A75401C()
{
  v1 = *(type metadata accessor for CategoryBar(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_19A750B94(v0 + v2, v3);
}

unint64_t sub_19A7540A8()
{
  result = qword_1EAFCA7A8;
  if (!qword_1EAFCA7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCF4B0, &qword_19A7C1030);
    sub_19A623714(&qword_1EAFCA800, &unk_1EAFCF4B8, &qword_19A7C1038, MEMORY[0x1E697BF80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCA7A8);
  }

  return result;
}

uint64_t sub_19A754160@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for CategoryBar(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_19A7A98B4() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_19A751508(v1 + v4, v7, a1);
}

uint64_t sub_19A754254(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A754300()
{
  v1 = *(sub_19A7A9094() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_19A74A8AC(v2, v3);
}

uint64_t sub_19A75436C(uint64_t a1)
{
  v4 = *(type metadata accessor for CategoryBar(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_19A60F860;

  return sub_19A7496A4(a1, v6, v7, v1 + v5);
}

uint64_t sub_19A754474(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_19A7544FC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_19A754608(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

void sub_19A7547D4(uint64_t a1)
{
  sub_19A7549E4(319, qword_1EAFCAC88, &protocol descriptor for AvatarPickerViewDelegate);
  if (v1 <= 0x3F)
  {
    sub_19A7A98B4();
    if (v2 <= 0x3F)
    {
      sub_19A74BCEC(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for UIEdgeInsets(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_19A7548A0(uint64_t a1)
{
  sub_19A74BE5C(319, &qword_1EAFCA820, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_19A7A98B4();
    if (v2 <= 0x3F)
    {
      sub_19A7549E4(319, &qword_1EAFCAC30, &protocol descriptor for DrillDownContainerDelegate);
      if (v3 <= 0x3F)
      {
        sub_19A631E9C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_19A7549E4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_19A754AF4()
{
  result = qword_1EAFCF5E8;
  if (!qword_1EAFCF5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCF5E8);
  }

  return result;
}

unint64_t sub_19A754B4C()
{
  result = qword_1EAFCF5F0;
  if (!qword_1EAFCF5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCF5F0);
  }

  return result;
}

uint64_t sub_19A754BE4(uint64_t a1)
{
  v2 = sub_19A7A9A24();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_19A754C40()
{
  result = qword_1EAFCF600;
  if (!qword_1EAFCF600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCF600);
  }

  return result;
}

uint64_t sub_19A754C94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A754CFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF610, &unk_19A7C14D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A754D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(type metadata accessor for DrillDownContainer(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_19A752EC8(v6);
}

unint64_t sub_19A754DFC()
{
  result = qword_1EAFCF640;
  if (!qword_1EAFCF640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCF640);
  }

  return result;
}

id StickerPickerViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void StickerPickerViewController.init(coder:)()
{
  v1 = OBJC_IVAR____TtC10StickerKit27StickerPickerViewController_sceneViewController;
  *(v0 + v1) = [objc_allocWithZone(STKStickerPickerSceneViewController) init];
  v2 = OBJC_IVAR____TtC10StickerKit27StickerPickerViewController_sceneViewControllerDelegateProxy;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for StickerPickerSceneViewControllerDelegateProxy()) init];
  sub_19A7ABE34();
  __break(1u);
}

id StickerPickerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_19A7AAFE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void StickerPickerViewController.init(nibName:bundle:)()
{
  v1 = OBJC_IVAR____TtC10StickerKit27StickerPickerViewController_sceneViewController;
  *(v0 + v1) = [objc_allocWithZone(STKStickerPickerSceneViewController) init];
  v2 = OBJC_IVAR____TtC10StickerKit27StickerPickerViewController_sceneViewControllerDelegateProxy;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for StickerPickerSceneViewControllerDelegateProxy()) init];
  sub_19A7ABE34();
  __break(1u);
}

id StickerPickerViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StickerPickerViewController.init()()
{
  v1 = OBJC_IVAR____TtC10StickerKit27StickerPickerViewController_sceneViewController;
  *&v0[v1] = [objc_allocWithZone(STKStickerPickerSceneViewController) init];
  v2 = OBJC_IVAR____TtC10StickerKit27StickerPickerViewController_sceneViewControllerDelegateProxy;
  *&v0[v2] = [objc_allocWithZone(type metadata accessor for StickerPickerSceneViewControllerDelegateProxy()) init];
  v4.receiver = v0;
  v4.super_class = type metadata accessor for StickerPickerViewController();
  return objc_msgSendSuper2(&v4, sel_initWithNibName_bundle_, 0, 0);
}

id sub_19A75537C()
{
  v34.receiver = v0;
  v34.super_class = type metadata accessor for StickerPickerViewController();
  objc_msgSendSuper2(&v34, sel_loadView);
  v1 = *&v0[OBJC_IVAR____TtC10StickerKit27StickerPickerViewController_sceneViewControllerDelegateProxy];
  swift_unknownObjectWeakAssign();
  v2 = *&v0[OBJC_IVAR____TtC10StickerKit27StickerPickerViewController_sceneViewController];
  [v2 setDelegate_];
  [v0 addChildViewController_];
  v3 = [v2 view];
  if (!v3)
  {
    return [v2 didMoveToParentViewController_];
  }

  v4 = v3;
  [v3 setClipsToBounds_];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  [result addSubview_];

  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [objc_opt_self() additionalInsets];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100, &unk_19A7B6CC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_19A7BB2E0;
  v16 = [v4 topAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = result;
  v18 = [result topAnchor];

  v19 = [v16 constraintEqualToAnchor:v18 constant:-v8];
  *(v15 + 32) = v19;
  v20 = [v4 bottomAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v21 = result;
  v22 = [result bottomAnchor];

  v23 = [v20 constraintEqualToAnchor:v22 constant:v12];
  *(v15 + 40) = v23;
  v24 = [v4 leftAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v25 = result;
  v26 = [result leftAnchor];

  v27 = [v24 constraintEqualToAnchor:v26 constant:-v10];
  *(v15 + 48) = v27;
  v28 = [v4 rightAnchor];
  result = [v0 view];
  if (result)
  {
    v29 = result;
    v30 = objc_opt_self();
    v31 = [v29 rightAnchor];

    v32 = [v28 constraintEqualToAnchor:v31 constant:v14];
    *(v15 + 56) = v32;
    sub_19A661654();
    v33 = sub_19A7AB234();

    [v30 activateConstraints_];

    return [v2 didMoveToParentViewController_];
  }

LABEL_13:
  __break(1u);
  return result;
}

id sub_19A7558FC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_19A755944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690, &qword_19A7B6B00);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_19A702E48(a3, v25 - v10);
  v12 = sub_19A7AB394();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_19A5F2B54(v11, &unk_1EAFCD690, &qword_19A7B6B00);
  }

  else
  {
    sub_19A7AB384();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_19A7AB2E4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_19A7AB074() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_19A755BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690, &qword_19A7B6B00);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_19A702E48(a3, v25 - v10);
  v12 = sub_19A7AB394();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_19A5F2B54(v11, &unk_1EAFCD690, &qword_19A7B6B00);
  }

  else
  {
    sub_19A7AB384();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_19A7AB2E4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_19A7AB074() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF6F0, &qword_19A7C1610);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF6F0, &qword_19A7C1610);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_19A755EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690, &qword_19A7B6B00);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_19A702E48(a3, v25 - v10);
  v12 = sub_19A7AB394();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_19A5F2B54(v11, &unk_1EAFCD690, &qword_19A7B6B00);
  }

  else
  {
    sub_19A7AB384();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_19A7AB2E4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_19A7AB074() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCE4F8, &qword_19A7C15F0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCE4F8, &qword_19A7C15F0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id PrewarmingViewController.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (qword_1ED8B3768 != -1)
  {
    swift_once();
  }

  v5 = sub_19A7A9384();
  __swift_project_value_buffer(v5, qword_1ED8B3770);
  v6 = sub_19A7A9364();
  v7 = sub_19A7AB574();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_19A5EE000, v6, v7, "deinit", v8, 2u);
    MEMORY[0x19A907A30](v8, -1, -1);
  }

  v9 = *&v3[OBJC_IVAR___STKPrewarmingViewController_assertion];
  if (v9)
  {
    [v9 invalidate];
  }

  v11.receiver = v3;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_dealloc);
}

id PrewarmingViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_19A7AAFE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id PrewarmingViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___STKPrewarmingViewController_assertion] = 0;
  *&v3[OBJC_IVAR___STKPrewarmingViewController_processHandle] = 0;
  if (a2)
  {
    v7 = sub_19A7AAFE4();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id PrewarmingViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PrewarmingViewController.init(coder:)(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___STKPrewarmingViewController_assertion] = 0;
  *&v2[OBJC_IVAR___STKPrewarmingViewController_processHandle] = 0;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_19A7565C8(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_19A7566BC;

  return v5(v2 + 16);
}

uint64_t sub_19A7566BC()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *v0;

  v4 = *(v1 + 24);
  *v2 = *(v1 + 16);
  *(v2 + 8) = v4;
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_19A7567F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A60FB98;

  return sub_19A69BC70(a1, v4);
}

uint64_t sub_19A7568A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A60F860;

  return sub_19A69BC70(a1, v4);
}

uint64_t sub_19A756960(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A60FB98;

  return sub_19A7565C8(a1, v4);
}

void sub_19A756A2C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_19A757DD8();
  sub_19A7A90C4();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  *(a2 + 8) = v4;
}

double sub_19A756AAC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_19A757DD8();
  sub_19A7A90B4();

  return result;
}

uint64_t sub_19A756B50@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_19A757DD8();
  sub_19A7A90C4();

  if (*(v3 + 104) <= -3)
  {
    v4 = 192.0;
  }

  else
  {
    v4 = 72.0;
  }

  *a1 = sub_19A7A9C24();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF720, &unk_19A7C1760);
  return sub_19A756C30(v1, a1 + *(v5 + 44), v4, 48.0);
}

uint64_t sub_19A756C30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCEA18, &qword_19A7BE4E8);
  v72 = *(v8 - 8);
  v73 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v64 - v12;
  if (qword_1ED8B2A98 != -1)
  {
    swift_once();
  }

  v14 = *(qword_1ED8B2AA0 + OBJC_IVAR___STKImageGlyphDataSource__pendingViewConfig);
  if (v14)
  {
    v15 = *(qword_1ED8B2AA0 + OBJC_IVAR___STKImageGlyphDataSource__pendingViewConfig);
  }

  else
  {
    v15 = *(qword_1ED8B2AA0 + OBJC_IVAR___STKImageGlyphDataSource__activeViewConfig);
  }

  v16 = OBJC_IVAR___STKImageGlyphViewConfiguration_isInPopover;
  swift_beginAccess();
  if (*(v15 + v16) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    v18 = v14;

    LOBYTE(v99) = 1;
    *v100 = 6;
    v100[8] = 0;
    __asm { FMOV            V0.2D, #8.0 }

    *&v100[16] = _Q0;
    *&v100[32] = _Q0;
    *&v100[56] = 0;
    *&v100[48] = 0;
    *&v100[64] = 0x4020000000000000;
    *&v100[72] = 0;
    __asm { FMOV            V0.2D, #18.0 }

    *&v100[88] = _Q0;
    *&v100[80] = 0;
    *&v100[104] = 0x4032000000000000;
    *&v100[112] = v17;
    LOWORD(v101) = 0;
    sub_19A62B87C(&v99);
  }

  else
  {
    sub_19A795104(3, v15, v117);
    v25 = v14;

    sub_19A62B87C(v117);
  }

  sub_19A7AA654();
  sub_19A7A9864();
  v70 = v119;
  v71 = v117[17];
  v68 = v122;
  v69 = v121;
  v116 = 1;
  v115 = v118;
  v114 = v120;
  v26 = [objc_opt_self() localizedSkinToneEmojiDescription];
  if (v26)
  {
    v27 = v26;
    sub_19A7AB014();
  }

  sub_19A7AA004();
  v28 = sub_19A7AA074();
  v79 = v29;
  v80 = v28;
  v31 = v30;
  v81 = v32;

  sub_19A7AA654();
  sub_19A7A9864();
  v78 = v31 & 1;
  v113 = v31 & 1;
  v33 = sub_19A7AA654();
  v35 = v34;
  sub_19A7573C8(a1, v96, a3, a4);
  v86[4] = v96[4];
  v86[5] = v96[5];
  v86[0] = v96[0];
  v86[1] = v96[1];
  *(&v85[4] + 7) = v96[4];
  *(&v85[5] + 7) = v96[5];
  *(&v85[3] + 7) = v96[3];
  *(v85 + 7) = v96[0];
  *(&v85[1] + 7) = v96[1];
  v86[2] = v96[2];
  v86[3] = v96[3];
  *&v87 = v33;
  *(&v87 + 1) = v35;
  LOBYTE(v105[0]) = 1;
  *(&v85[2] + 7) = v96[2];
  *(&v85[6] + 7) = v87;
  v88[4] = v96[4];
  v88[5] = v96[5];
  v88[2] = v96[2];
  v88[3] = v96[3];
  v88[0] = v96[0];
  v88[1] = v96[1];
  v89 = v33;
  v90 = v35;
  sub_19A60F0CC(v86, &v99, &qword_1EAFCF728, &unk_19A7C1770);
  sub_19A5F2B54(v88, &qword_1EAFCF728, &unk_19A7C1770);
  v75 = LOBYTE(v105[0]);
  v36 = sub_19A7AA654();
  v76 = v37;
  v77 = v36;
  v38 = a1[2];
  v123 = *(a1 + 3);
  v39 = swift_allocObject();
  v74 = v39;
  v40 = *(a1 + 1);
  *(v39 + 16) = *a1;
  *(v39 + 32) = v40;
  *(v39 + 48) = a1[4];
  *(swift_allocObject() + 24) = v38;
  swift_unknownObjectWeakInit();

  swift_unknownObjectRetain();
  sub_19A60F0CC(&v123, &v99, &qword_1EAFCF460, &qword_19A7C3410);

  sub_19A7AA4A4();

  v41 = v116;
  LOBYTE(v38) = v115;
  v42 = v13;
  v66 = v10;
  v67 = v13;
  v43 = v114;
  v44 = v72;
  v65 = *(v72 + 16);
  v45 = v10;
  v46 = v73;
  v65(v45, v42, v73);
  *a2 = 0;
  *(a2 + 8) = v41;
  v47 = v70;
  *(a2 + 16) = v71;
  *(a2 + 24) = v38;
  *(a2 + 32) = v47;
  *(a2 + 40) = v43;
  v48 = v68;
  *(a2 + 48) = v69;
  *(a2 + 56) = v48;
  *&v91 = v80;
  *(&v91 + 1) = v79;
  LOBYTE(v92) = v78;
  *(&v92 + 1) = *v112;
  DWORD1(v92) = *&v112[3];
  *(&v92 + 1) = v81;
  v94 = v83;
  v95 = v84;
  v93 = v82;
  v49 = v91;
  v50 = v92;
  v51 = v84;
  *(a2 + 112) = v83;
  *(a2 + 128) = v51;
  v52 = v93;
  *(a2 + 80) = v50;
  *(a2 + 96) = v52;
  *(a2 + 64) = v49;
  *&v96[0] = 0;
  BYTE8(v96[0]) = v75;
  *(&v96[3] + 9) = v85[3];
  *(&v96[2] + 9) = v85[2];
  *(&v96[1] + 9) = v85[1];
  *(v96 + 9) = v85[0];
  *(&v96[7] + 1) = *(&v85[6] + 15);
  *(&v96[6] + 9) = v85[6];
  *(&v96[5] + 9) = v85[5];
  *(&v96[4] + 9) = v85[4];
  *&v97 = sub_19A757E5C;
  *(&v97 + 1) = v74;
  *&v98 = v77;
  *(&v98 + 1) = v76;
  v53 = v96[1];
  *(a2 + 144) = v96[0];
  *(a2 + 160) = v53;
  v54 = v96[2];
  v55 = v96[3];
  v56 = v96[5];
  *(a2 + 208) = v96[4];
  *(a2 + 224) = v56;
  *(a2 + 176) = v54;
  *(a2 + 192) = v55;
  v57 = v96[6];
  v58 = v96[7];
  v59 = v98;
  *(a2 + 272) = v97;
  *(a2 + 288) = v59;
  *(a2 + 240) = v57;
  *(a2 + 256) = v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF730, &qword_19A7C1780);
  v61 = v66;
  v65((a2 + *(v60 + 80)), v66, v46);
  sub_19A60F0CC(&v91, &v99, &qword_1EAFCF738, &qword_19A7C1788);
  sub_19A60F0CC(v96, &v99, &qword_1EAFCF740, &qword_19A7C1790);
  v62 = *(v44 + 8);
  v62(v67, v46);
  v62(v61, v46);
  *&v100[65] = v85[4];
  *&v100[81] = v85[5];
  *&v100[97] = v85[6];
  *&v100[1] = v85[0];
  *&v100[17] = v85[1];
  *&v100[33] = v85[2];
  v99 = 0;
  v100[0] = v75;
  *&v100[49] = v85[3];
  *&v100[112] = *(&v85[6] + 15);
  v101 = sub_19A757E5C;
  v102 = v74;
  v103 = v77;
  v104 = v76;
  sub_19A5F2B54(&v99, &qword_1EAFCF740, &qword_19A7C1790);
  v105[0] = v80;
  v105[1] = v79;
  v106 = v78;
  *v107 = *v112;
  *&v107[3] = *&v112[3];
  v108 = v81;
  v109 = v82;
  v110 = v83;
  v111 = v84;
  return sub_19A5F2B54(v105, &qword_1EAFCF738, &qword_19A7C1788);
}

void sub_19A7573C8(double *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v11 = *a1;
  type metadata accessor for EmojiCellViewModel(0);

  sub_19A7AA454();
  v7 = sub_19A7A9F04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF460, &qword_19A7C3410);
  sub_19A7AA464();
  if (v11 / (a4 + a4 + a3) <= 1.0)
  {
    v8 = v11 / (a4 + a4 + a3);
  }

  else
  {
    v8 = 1.0;
  }

  sub_19A7AA744();
  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = v7;
  *(a2 + 24) = a3;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = v8;
  *(a2 + 72) = v8;
  *(a2 + 80) = v9;
  *(a2 + 88) = v10;
}

uint64_t sub_19A7574B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_19A7A98B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = sub_19A7AA2D4();
  v10 = *(a2 + 1);
  v16 = *(a2 + 3);
  v17 = v10;
  (*(v7 + 16))(&v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v6);
  v11 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v12 = swift_allocObject();
  v13 = *(a2 + 1);
  *(v12 + 16) = *a2;
  *(v12 + 32) = v13;
  *(v12 + 48) = a2[4];
  (*(v7 + 32))(v12 + v11, &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v6);
  *a3 = v9;
  a3[1] = sub_19A757E6C;
  a3[2] = v12;
  a3[3] = 0;
  a3[4] = 0;

  sub_19A60F0CC(&v17, v15, &qword_1EAFCF748, &qword_19A7C1798);
  return sub_19A60F0CC(&v16, v15, &qword_1EAFCF460, &qword_19A7C3410);
}

uint64_t sub_19A757664(uint64_t a1, __n128 a2)
{
  sub_19A7A9894();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF460, &qword_19A7C3410);
  return sub_19A7AA474();
}

double sub_19A7576C4(uint64_t a1)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_19A67D2F4();
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_19A75771C@<X0>(uint64_t a1@<X8>)
{
  sub_19A7A9BB4();
  result = sub_19A7AA084();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

void sub_19A7577C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46.receiver = v2;
  v46.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v46, sel_layoutSubviews);
  v4 = OBJC_IVAR____TtC10StickerKit15VariantHelpView_hostingController;
  v5 = *&v2[OBJC_IVAR____TtC10StickerKit15VariantHelpView_hostingController];
  if (v5)
  {
    goto LABEL_2;
  }

  v12 = &v2[OBJC_IVAR____TtC10StickerKit15VariantHelpView_emoji];
  v13 = *&v2[OBJC_IVAR____TtC10StickerKit15VariantHelpView_emoji + 8];
  if (v13)
  {
    v14 = *(v12 + 2);
    v15 = *(v12 + 3);
    v16 = *(v12 + 4);
    v17 = *(v12 + 5);
    v18 = *(v12 + 24);
    *&v40 = *v12;
    *(&v40 + 1) = v13;
    *&v41 = v14;
    *(&v41 + 1) = v15;
    *&v42 = v16;
    *(&v42 + 1) = v17;
    v43 = v18 & 0x1FF;
    v33 = v14;
    v34 = v40;
    v44[0] = v40;
    v44[1] = v13;
    v44[2] = v14;
    v44[3] = v15;
    v31 = v16;
    v32 = v15;
    v44[4] = v16;
    v44[5] = v17;
    v30 = v17;
    v35 = v18;
    v45 = v18;
    v2[OBJC_IVAR____TtC10StickerKit15VariantHelpView_style + 8] = 1;
    type metadata accessor for EmojiCellViewModel(0);
    swift_allocObject();
    sub_19A60F01C(v44, &v37);
    v19 = sub_19A63FE08();
    v37 = v40;
    *v38 = v41;
    *&v38[16] = v42;
    v39 = v43;
    sub_19A60F01C(&v40, v36);
    sub_19A63F030(&v37);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v37 = v19;
    sub_19A757DD8();
    sub_19A7A90B4();

    sub_19A63F7BC(1);
    v21 = &v2[OBJC_IVAR____TtC10StickerKit15VariantHelpView_delegate];
    Strong = swift_unknownObjectWeakLoadStrong();
    v23 = *(v21 + 1);
    v36[0] = 0;

    sub_19A7AA454();
    v24 = v37;
    v25 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF718, &qword_19A7C1690));
    *&v37 = v19;
    *(&v37 + 1) = Strong;
    *v38 = v23;
    *&v38[8] = v24;
    v26 = sub_19A7A9C84();
    v27 = [v26 view];
    if (!v27)
    {
LABEL_12:
      __break(1u);
      return;
    }

    v28 = v27;
    sub_19A67FECC(v34, v13, v33, v32, v31, v30, v35);
    [v3 addSubview_];

    v29 = *&v3[v4];
    *&v3[v4] = v26;

    v5 = *&v3[v4];
    if (v5)
    {
LABEL_2:
      v6 = [v5 view];
      if (v6)
      {
        v7 = v6;
        v8 = [objc_opt_self() clearColor];
        [v7 setBackgroundColor_];

        v9 = *&v3[v4];
        if (!v9)
        {
          return;
        }

        v10 = [v9 view];
        if (v10)
        {
          v11 = v10;
          [v3 bounds];
          [v11 setFrame_];

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_12;
    }
  }
}

id sub_19A757C5C(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC10StickerKit15VariantHelpView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = &v2[OBJC_IVAR____TtC10StickerKit15VariantHelpView_emoji];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 24) = 0;
  v6 = &v2[OBJC_IVAR____TtC10StickerKit15VariantHelpView_style];
  *v6 = 0;
  v6[8] = 0;
  *&v2[OBJC_IVAR____TtC10StickerKit15VariantHelpView_hostingController] = 0;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

unint64_t sub_19A757DD8()
{
  result = qword_1EAFCADB0;
  if (!qword_1EAFCADB0)
  {
    type metadata accessor for EmojiCellViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCADB0);
  }

  return result;
}

uint64_t sub_19A757E6C()
{
  sub_19A7A98B4();

  return sub_19A757664(v0 + 16, v1);
}

unint64_t sub_19A757ED0()
{
  result = qword_1EAFCF750;
  if (!qword_1EAFCF750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCF758, qword_19A7C17A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCF750);
  }

  return result;
}

uint64_t sub_19A757FB0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_19A7AAA14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ProductionStickerStore();
  v7 = swift_allocObject();
  (*(v3 + 104))(v5, *MEMORY[0x1E69D4638], v2);
  sub_19A7AAAC4();
  swift_allocObject();
  *(v7 + 16) = sub_19A7AAA04();
  a1[3] = v6;
  a1[4] = sub_19A758528();
  *a1 = v7;
  v8 = type metadata accessor for ProductionNotificationCenter();
  v9 = swift_allocObject();
  *(v9 + 16) = [objc_opt_self() defaultCenter];
  a1[8] = v8;
  a1[9] = &off_1F0DCD8A0;
  a1[5] = v9;
  v10 = type metadata accessor for ProductionDeviceLockStateProvider();
  v11 = swift_allocObject();
  a1[13] = v10;
  a1[14] = &off_1F0DCD890;
  a1[10] = v11;
  v12 = type metadata accessor for ProductionGuestModeProvider();
  result = swift_allocObject();
  a1[18] = v12;
  a1[19] = &off_1F0DCD880;
  a1[15] = result;
  return result;
}

uint64_t sub_19A758464()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);

  return swift_deallocClassInstance();
}

unint64_t sub_19A758528()
{
  result = qword_1ED8B33F0;
  if (!qword_1ED8B33F0)
  {
    type metadata accessor for ProductionStickerStore();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8B33F0);
  }

  return result;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_19A7585B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19A758600(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ImageGlyphUIConfiguration.doesSupportImageGlyph.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration_viewConfiguration);
  v2 = OBJC_IVAR___STKImageGlyphViewConfiguration_doesSupportImageGlyph;
  swift_beginAccess();
  return *(v1 + v2);
}

BOOL ImageGlyphUIConfiguration.canDisplayMemoji.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration_viewConfiguration);
  v2 = OBJC_IVAR___STKImageGlyphViewConfiguration_isRunningInGenmoji;
  swift_beginAccess();
  return (*(v1 + v2) & 1) == 0;
}

Swift::Int __swiftcall ImageGlyphUIConfiguration.translatedSectionIndex(_:numberOfSections:)(Swift::Int _, Swift::Int numberOfSections)
{
  result = sub_19A758CA4(v7);
  if (v7[0] == 2 || (v8 & 1) == 0)
  {
    return _;
  }

  v5 = numberOfSections - 1;
  if (__OFSUB__(numberOfSections, 1))
  {
    __break(1u);
  }

  else
  {
    v6 = __OFSUB__(v5, _);
    _ = v5 - _;
    if (!v6)
    {
      return _;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_19A758908@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

id ImageGlyphUIConfiguration.init(_:glyphType:)(id a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration_maxDisplayImageEdgeLength] = 0x4064000000000000;
  v2[OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___sectionType] = 4;
  v2[OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___keyboardType] = 3;
  v2[OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___isMemoji] = 2;
  v2[OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___isStickers] = 2;
  v2[OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___isEmoji] = 2;
  v2[OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___isRecents] = 2;
  v2[OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___isInPopover] = 2;
  v2[OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___isVertical] = 2;
  v2[OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___isHorizontal] = 2;
  v2[OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___isiPad] = 2;
  v2[OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___isLandscapeKeyboard] = 2;
  v2[OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___isPortraitKeyboard] = 2;
  v6 = &v2[OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___gridTranslator];
  *v6 = 3;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *&v2[OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration_paddingUnit] = 0x4020000000000000;
  *&v2[OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration_stickerButtonEdgeLength] = 0x4049000000000000;
  v7 = &v2[OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___rowFractional];
  *v7 = 0;
  v7[8] = 1;
  v8 = &v2[OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___headerHeight];
  *v8 = 0;
  v8[8] = 1;
  *&v2[OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___layoutSection] = 0;
  *&v2[OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___layoutGroup] = 0;
  *&v2[OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___groupSize] = 0;
  *&v2[OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___layoutItem] = 0;
  *&v2[OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___itemSize] = 0;
  if (!a1)
  {
    v9 = type metadata accessor for ImageGlyphViewConfiguration();
    v10 = objc_allocWithZone(v9);
    v10[OBJC_IVAR___STKImageGlyphViewConfiguration_userInterfaceIdiom] = 0;
    *&v10[OBJC_IVAR___STKImageGlyphViewConfiguration_keyboardWidth] = 0;
    v10[OBJC_IVAR___STKImageGlyphViewConfiguration_isKeyboardMinorEdgeWidth] = 0;
    v10[OBJC_IVAR___STKImageGlyphViewConfiguration_isInPopover] = 0;
    v10[OBJC_IVAR___STKImageGlyphViewConfiguration_doesSupportImageGlyph] = 0;
    *&v10[OBJC_IVAR___STKImageGlyphViewConfiguration_scale] = 0x3FF0000000000000;
    *&v10[OBJC_IVAR___STKImageGlyphViewConfiguration_screenToNativeScaleRatio] = 0x3FF0000000000000;
    v10[OBJC_IVAR___STKImageGlyphViewConfiguration_doesSupportStickersApp] = 1;
    v10[OBJC_IVAR___STKImageGlyphViewConfiguration_isRunningInGenmoji] = 0;
    v13.receiver = v10;
    v13.super_class = v9;
    a1 = objc_msgSendSuper2(&v13, sel_init);
  }

  *&v2[OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration_viewConfiguration] = a1;
  *&v2[OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration_glyphType] = a2;
  v12.receiver = v2;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t ImageGlyphUIConfiguration.isReversed.getter()
{
  if ((sub_19A758BF8() & 1) == 0)
  {
    return 0;
  }

  if (sub_19A758C3C())
  {
    return 1;
  }

  return sub_19A758C70();
}

uint64_t sub_19A758BF8()
{
  v1 = OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___isHorizontal;
  v2 = *(v0 + OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___isHorizontal);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_19A758E6C() ^ 1;
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_19A758C3C()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___isMemoji);
  if (v1 == 2)
  {
    LOBYTE(v1) = *(v0 + OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration_glyphType) == 2;
    *(v0 + OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___isMemoji) = v1;
  }

  return v1 & 1;
}

uint64_t sub_19A758C70()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___isStickers);
  if (v1 == 2)
  {
    LOBYTE(v1) = *(v0 + OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration_glyphType) == 1;
    *(v0 + OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___isStickers) = v1;
  }

  return v1 & 1;
}

void *sub_19A758CA4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___gridTranslator;
  v4 = *(v1 + OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___gridTranslator);
  if (v4 == 3)
  {
    result = sub_19A758EAC(v1, v8);
    v6 = v8[1];
    v4 = v8[0];
    v7 = v9;
    *v3 = v8[0];
    *(v3 + 16) = v6;
    *(v3 + 32) = v7;
  }

  else
  {
    v6 = *(v3 + 16);
    v7 = *(v3 + 32);
  }

  *a1 = v4;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  return result;
}

id _s10StickerKit25ImageGlyphUIConfigurationC6layout3forSo25NSCollectionLayoutSectionCSo0hI11Environment_p_tF_0()
{
  v1 = OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___layoutSection;
  v2 = *(v0 + OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___layoutSection);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___layoutSection);
  }

  else
  {
    v4 = sub_19A758F6C();
    v5 = [objc_opt_self() sectionWithGroup_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_19A758DC0()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___isRecents);
  if (v1 == 2)
  {
    LOBYTE(v1) = *(v0 + OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration_glyphType) == 5;
    *(v0 + OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___isRecents) = v1;
  }

  return v1 & 1;
}

uint64_t sub_19A758DF4()
{
  v1 = OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___isInPopover;
  v2 = *(v0 + OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___isInPopover);
  if (v2 == 2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration_viewConfiguration);
    v4 = OBJC_IVAR___STKImageGlyphViewConfiguration_isInPopover;
    swift_beginAccess();
    LOBYTE(v2) = *(v3 + v4);
    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

uint64_t sub_19A758E6C()
{
  v1 = OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___isVertical;
  v2 = *(v0 + OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___isVertical);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_19A758DF4();
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_19A758EAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (sub_19A758C3C() & 1) != 0 || (sub_19A758C70() & 1) != 0 || (result = sub_19A758DC0(), (result))
  {
    result = sub_19A758BF8();
    v5 = result;
    v6 = *(a1 + OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___isHorizontal);
    if (v6)
    {
      if (*(a1 + OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___isMemoji))
      {
        v7 = 256;
      }

      else
      {
        result = sub_19A758C70();
        if (result)
        {
          v7 = 256;
        }

        else
        {
          v7 = 0;
        }
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = v5 & 1;
    v9 = v7 | v6 & 1;
    v10 = 1;
    v11 = 1;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v11 = 0;
    v10 = 2;
  }

  *a2 = v10;
  a2[1] = v8;
  a2[2] = v11;
  a2[3] = v9;
  a2[4] = v11;
  return result;
}

id sub_19A758F6C()
{
  v1 = OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___layoutGroup;
  v2 = *(v0 + OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___layoutGroup);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___layoutGroup);
  }

  else
  {
    v4 = sub_19A758BF8();
    v5 = objc_opt_self();
    v6 = sub_19A7590E4(&OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___groupSize);
    v7 = sub_19A759044();
    v8 = &selRef_verticalGroupWithLayoutSize_repeatingSubitem_count_;
    if ((v4 & 1) == 0)
    {
      v8 = &selRef_horizontalGroupWithLayoutSize_repeatingSubitem_count_;
    }

    v9 = [v5 *v8];

    v10 = *(v0 + v1);
    *(v0 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_19A759044()
{
  v1 = OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___layoutItem;
  v2 = *(v0 + OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___layoutItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___layoutItem);
  }

  else
  {
    v4 = sub_19A7590E4(&OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration____lazy_storage___itemSize);
    v5 = [objc_opt_self() itemWithLayoutSize_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_19A7590E4(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = objc_opt_self();
    v6 = [v5 absoluteDimension_];
    v7 = [v5 absoluteDimension_];
    v8 = [objc_opt_self() sizeWithWidthDimension:v6 heightDimension:v7];

    v9 = *(v1 + v2);
    *(v1 + v2) = v8;
    v4 = v8;

    v3 = 0;
  }

  v10 = v3;
  return v4;
}

id ImageGlyphUIConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ImageGlyphUIConfiguration.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_19A759328()
{
  if ((sub_19A758BF8() & 1) == 0)
  {
    return 0;
  }

  if (sub_19A758C3C())
  {
    return 1;
  }

  return sub_19A758C70();
}

uint64_t sub_19A759378()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration_viewConfiguration);
  v2 = OBJC_IVAR___STKImageGlyphViewConfiguration_doesSupportImageGlyph;
  swift_beginAccess();
  return *(v1 + v2);
}

BOOL sub_19A7593CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration_viewConfiguration);
  v2 = OBJC_IVAR___STKImageGlyphViewConfiguration_isRunningInGenmoji;
  swift_beginAccess();
  return (*(v1 + v2) & 1) == 0;
}

unint64_t sub_19A759514()
{
  result = qword_1EAFCF828;
  if (!qword_1EAFCF828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCF828);
  }

  return result;
}

unint64_t sub_19A75956C()
{
  result = qword_1EAFCF830;
  if (!qword_1EAFCF830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCF830);
  }

  return result;
}

uint64_t sub_19A7595C4()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1ED8B2248);
  __swift_project_value_buffer(v0, qword_1ED8B2248);
  return sub_19A7A9374();
}

uint64_t sub_19A759640()
{
  v0 = type metadata accessor for ImageGlyphDataSource(0);
  v1 = objc_allocWithZone(v0);
  v2 = objc_allocWithZone(v0);
  v3 = sub_19A75A584(0, 0);
  swift_getObjectType();
  result = swift_deallocPartialClassInstance();
  qword_1ED8B2AA0 = v3;
  return result;
}

id static ImageGlyphDataSource.sharedInstance.getter()
{
  if (qword_1ED8B2A98 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED8B2AA0;

  return v1;
}

double sub_19A7597A4@<D0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR___STKImageGlyphDataSource____lazy_storage___notificationCenter;
  swift_beginAccess();
  sub_19A60F0CC(v1 + v3, &v5, &qword_1EAFCF850, &qword_19A7C1D58);
  if (v6)
  {
    sub_19A763088(&v5, a1);
  }

  else
  {
    sub_19A5F2B54(&v5, &qword_1EAFCF850, &qword_19A7C1D58);
    sub_19A75987C(v1, a1);
    sub_19A6C0AB4(a1, &v5);
    swift_beginAccess();
    sub_19A763018(&v5, v1 + v3);
    swift_endAccess();
  }

  return result;
}

id sub_19A75987C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR___STKImageGlyphDataSource_dependencies);
  if (v3)
  {
    sub_19A6C0AB4(v3 + 56, v7);
    return sub_19A763088(v7, a2);
  }

  else
  {
    v5 = type metadata accessor for ProductionNotificationCenter();
    v6 = swift_allocObject();
    result = [objc_opt_self() defaultCenter];
    *(v6 + 16) = result;
    a2[3] = v5;
    a2[4] = &off_1F0DCD8A0;
    *a2 = v6;
  }

  return result;
}

uint64_t sub_19A759928()
{
  v1 = OBJC_IVAR___STKImageGlyphDataSource____lazy_storage___snapshotNotifier;
  if (*&v0[OBJC_IVAR___STKImageGlyphDataSource____lazy_storage___snapshotNotifier])
  {
    v2 = *&v0[OBJC_IVAR___STKImageGlyphDataSource____lazy_storage___snapshotNotifier];
  }

  else
  {
    if (qword_1ED8B2028 != -1)
    {
      swift_once();
    }

    v3 = qword_1ED8B4240;
    v4 = objc_opt_self();
    v5 = v3;
    v6 = v0;
    v7 = [v4 defaultCenter];
    v8 = type metadata accessor for ImageGlyphDataSource(0);
    v18[3] = v8;
    v18[4] = &off_1F0DCDBB8;
    v18[0] = v6;
    _s23NotificationBroadcasterCMa();
    v2 = swift_allocObject();
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v18, v8);
    v10 = MEMORY[0x1EEE9AC00](v9);
    v12 = (&v18[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12, v10);
    v14 = *v12;
    *(v2 + 56) = v8;
    *(v2 + 64) = &off_1F0DCDBB8;
    *(v2 + 32) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF140, &qword_19A7B6AE8);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v2 + 88) = 0;
    *(v2 + 16) = v5;
    *(v2 + 24) = 0x3FF0000000000000;
    *(v2 + 72) = v7;
    *(v2 + 80) = v15;
    __swift_destroy_boxed_opaque_existential_1(v18);
    *&v0[v1] = v2;
  }

  return v2;
}

void (*sub_19A759BA0(BOOL *a1))()
{
  v3 = (*(v1 + OBJC_IVAR___STKImageGlyphDataSource_isConfiguring) & 1) == 0 && sub_19A652488();
  *a1 = v3;
  return CGPointMake;
}

id sub_19A759C00()
{
  v1 = *(v0 + OBJC_IVAR___STKImageGlyphDataSource__pendingViewConfig);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR___STKImageGlyphDataSource__pendingViewConfig);
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR___STKImageGlyphDataSource__activeViewConfig);
    v1 = 0;
  }

  v3 = v1;
  return v2;
}

void sub_19A759DA4()
{
  v1 = *(v0 + OBJC_IVAR___STKImageGlyphDataSource_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_19A5F5790();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_19A759EF0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD6C8, &unk_19A7C1D60);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29[-v5];
  v7 = sub_19A7A9494();
  v8 = MEMORY[0x1E69E7CD0];
  v33 = MEMORY[0x1E69E7CD0];
  v9 = sub_19A75FF0C(v7);

  if (v9)
  {
    v11 = *(v1 + OBJC_IVAR___STKImageGlyphDataSource_lock);
    MEMORY[0x1EEE9AC00](v10);
    *&v29[-16] = v1;
    *&v29[-8] = a1;
    MEMORY[0x1EEE9AC00](v12);
    *&v29[-16] = sub_19A762D1C;
    *&v29[-8] = v13;
    os_unfair_lock_lock(v11 + 4);
    sub_19A763108();
    os_unfair_lock_unlock(v11 + 4);
    return (*(v4 + 8))(a1, v3);
  }

  else
  {
    if (qword_1ED8B2240 != -1)
    {
      swift_once();
    }

    v15 = sub_19A7A9384();
    __swift_project_value_buffer(v15, qword_1ED8B2248);
    (*(v4 + 16))(v6, a1, v3);
    v16 = sub_19A7A9364();
    v17 = sub_19A7AB584();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v33 = v31;
      *v18 = 136315138;
      v30 = v17;
      v19 = sub_19A7A9494();
      v32 = v8;
      sub_19A7620C4(v19);
      v21 = v20;

      v22 = MEMORY[0x19A9056C0](v21, MEMORY[0x1E69E6158]);
      v24 = v23;

      v25 = *(v4 + 8);
      v25(v6, v3);
      v26 = sub_19A62540C(v22, v24, &v33);

      *(v18 + 4) = v26;
      _os_log_impl(&dword_19A5EE000, v16, v30, "Cannot set a snapshot with duplicate identifiers. Will discard. (%s)", v18, 0xCu);
      v27 = v31;
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x19A907A30](v27, -1, -1);
      MEMORY[0x19A907A30](v18, -1, -1);

      return v25(a1, v3);
    }

    else
    {

      v28 = *(v4 + 8);
      v28(v6, v3);
      return v28(a1, v3);
    }
  }
}

void sub_19A75A264(void *a1)
{
  v1 = *(*a1 + OBJC_IVAR___STKImageGlyphDataSource_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_19A763108();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_19A75A2E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD6C8, &unk_19A7C1D60);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return sub_19A759EF0(v5);
}

uint64_t sub_19A75A3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR___STKImageGlyphDataSource__currentSnapshot;
  swift_beginAccess();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD6C8, &unk_19A7C1D60);
  return (*(*(v5 - 8) + 16))(a2, a1 + v4, v5);
}

void sub_19A75A454(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD6C8, &unk_19A7C1D60);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  (*(v5 + 16))(&v10 - v7, a2, v4, v6);
  v9 = OBJC_IVAR___STKImageGlyphDataSource__currentSnapshot;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v9, v8, v4);
  swift_endAccess();
  *(a1 + OBJC_IVAR___STKImageGlyphDataSource_snapshotRetryCount) = 0;
}

id sub_19A75A584(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33 = a1;
  v34 = a2;
  v4 = sub_19A7AB774();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_19A7AB6F4();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_19A7AA7B4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  *&v2[OBJC_IVAR___STKImageGlyphDataSource_dataSourceUpdatedObserver] = 0;
  v8 = &v2[OBJC_IVAR___STKImageGlyphDataSource____lazy_storage___notificationCenter];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  sub_19A5F5028(0, &qword_1ED8B1FE0, 0x1E696AD98);
  sub_19A762B98();
  sub_19A7A94E4();
  *&v2[OBJC_IVAR___STKImageGlyphDataSource____lazy_storage___snapshotNotifier] = 0;
  v9 = OBJC_IVAR___STKImageGlyphDataSource_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF140, &qword_19A7B6AE8);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *&v2[v9] = v10;
  v29 = OBJC_IVAR___STKImageGlyphDataSource_queue;
  v28 = sub_19A5F5028(0, &qword_1ED8B2040, 0x1E69E9610);
  sub_19A7AA784();
  v37[0] = MEMORY[0x1E69E7CC0];
  sub_19A740A38(&unk_1ED8B2050, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF150, &unk_19A7C1DB0);
  sub_19A623714(&unk_1ED8B2070, &unk_1EAFCF150, &unk_19A7C1DB0, MEMORY[0x1E69E6328]);
  sub_19A7ABB54();
  (*(v31 + 104))(v30, *MEMORY[0x1E69E8090], v32);
  v11 = v33;
  *&v2[v29] = sub_19A7AB7B4();
  *&v2[OBJC_IVAR___STKImageGlyphDataSource_waitingSnapshotJobs] = 0;
  *&v2[OBJC_IVAR___STKImageGlyphDataSource_snapshotRetryCount] = 0;
  *&v2[OBJC_IVAR___STKImageGlyphDataSource__pendingViewConfig] = 0;
  v12 = OBJC_IVAR___STKImageGlyphDataSource__activeViewConfig;
  v13 = type metadata accessor for ImageGlyphViewConfiguration();
  v14 = objc_allocWithZone(v13);
  v14[OBJC_IVAR___STKImageGlyphViewConfiguration_userInterfaceIdiom] = 0;
  *&v14[OBJC_IVAR___STKImageGlyphViewConfiguration_keyboardWidth] = 0;
  v14[OBJC_IVAR___STKImageGlyphViewConfiguration_isKeyboardMinorEdgeWidth] = 0;
  v14[OBJC_IVAR___STKImageGlyphViewConfiguration_isInPopover] = 0;
  v14[OBJC_IVAR___STKImageGlyphViewConfiguration_doesSupportImageGlyph] = 0;
  *&v14[OBJC_IVAR___STKImageGlyphViewConfiguration_scale] = 0x3FF0000000000000;
  *&v14[OBJC_IVAR___STKImageGlyphViewConfiguration_screenToNativeScaleRatio] = 0x3FF0000000000000;
  v14[OBJC_IVAR___STKImageGlyphViewConfiguration_doesSupportStickersApp] = 1;
  v14[OBJC_IVAR___STKImageGlyphViewConfiguration_isRunningInGenmoji] = 0;
  v38.receiver = v14;
  v38.super_class = v13;
  *&v3[v12] = objc_msgSendSuper2(&v38, sel_init);
  v15 = v34;
  v3[OBJC_IVAR___STKImageGlyphDataSource_isConfiguring] = 0;
  *&v3[OBJC_IVAR___STKImageGlyphDataSource_dependencies] = v11;
  if (v15)
  {
  }

  else
  {
    type metadata accessor for UnifiedRecentImageGlyphDataSource();
    swift_allocObject();

    v16 = sub_19A646140();
    if (v11)
    {
      type metadata accessor for StickerGlyphDataSource();
      v17 = swift_allocObject();

      v18 = sub_19A761B9C(v11, v17);
    }

    else
    {

      sub_19A757FB0(v37);
      type metadata accessor for StickerGlyphDataSource();
      v19 = swift_allocObject();
      sub_19A762DEC(v37, v36);
      v18 = sub_19A761D74(v36, v19);
      sub_19A762E48(v37);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100, &unk_19A7B6CC0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_19A7BB2E0;
    v20 = objc_allocWithZone(type metadata accessor for AvatarGlyphDataSource());
    swift_unknownObjectRetain();
    *(v15 + 32) = sub_19A733188(MEMORY[0x1E69E7CC0]);
    *(v15 + 40) = v18;
    *(v15 + 48) = v16;
    type metadata accessor for EmojiGlyphDataSource();
    swift_allocObject();
    *(v15 + 56) = sub_19A60EBE0();

    swift_unknownObjectRelease();
  }

  v3[OBJC_IVAR___STKImageGlyphAggregatingDataSource_isEnabled] = 1;
  *&v3[OBJC_IVAR___STKImageGlyphAggregatingDataSource_glyphType] = 0;
  *&v3[OBJC_IVAR___STKImageGlyphAggregatingDataSource_dataSources] = v15;
  v21 = type metadata accessor for ImageGlyphAggregatingDataSource();
  v35.receiver = v3;
  v35.super_class = v21;
  v22 = objc_msgSendSuper2(&v35, sel_init);
  sub_19A75EA54();
  if (qword_1ED8B2240 != -1)
  {
    swift_once();
  }

  v23 = sub_19A7A9384();
  __swift_project_value_buffer(v23, qword_1ED8B2248);
  v24 = sub_19A7A9364();
  v25 = sub_19A7AB574();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_19A5EE000, v24, v25, "makeSnapshot in init()", v26, 2u);
    MEMORY[0x19A907A30](v26, -1, -1);
  }

  sub_19A75C7C0();

  return v22;
}

void sub_19A75ACD8()
{
  swift_unknownObjectRelease();

  sub_19A5F2B54(v0 + OBJC_IVAR___STKImageGlyphDataSource____lazy_storage___notificationCenter, &qword_1EAFCF850, &qword_19A7C1D58);
  v1 = OBJC_IVAR___STKImageGlyphDataSource__currentSnapshot;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD6C8, &unk_19A7C1D60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR___STKImageGlyphDataSource__activeViewConfig);
}

id ImageGlyphDataSource.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR___STKImageGlyphDataSource_dataSourceUpdatedObserver];
  if (v1)
  {
    swift_unknownObjectRetain();
    sub_19A7597A4(v4);
    [*(*__swift_project_boxed_opaque_existential_1(v4 v4[3]) + 16)];
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  v2 = type metadata accessor for ImageGlyphDataSource(0);
  v5.receiver = v0;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void sub_19A75AFA0(uint64_t a1)
{
  v3 = sub_19A652898();
  v4 = sub_19A652F7C(v3);

  v5 = *(v1 + OBJC_IVAR___STKImageGlyphDataSource_lock);
  os_unfair_lock_lock(v5 + 4);
  sub_19A761FCC(&v20);
  os_unfair_lock_unlock(v5 + 4);
  if (v20 == 1)
  {
  }

  else
  {
    MEMORY[0x1EEE9AC00](v6);
    MEMORY[0x1EEE9AC00](v7);
    os_unfair_lock_lock(v5 + 4);
    sub_19A5F5790();
    os_unfair_lock_unlock(v5 + 4);
    sub_19A652B98(a1);
    MEMORY[0x1EEE9AC00](v8);
    MEMORY[0x1EEE9AC00](v9);
    os_unfair_lock_lock(v5 + 4);
    sub_19A763108();
    os_unfair_lock_unlock(v5 + 4);
    if (qword_1ED8B2240 != -1)
    {
      swift_once();
    }

    v10 = sub_19A7A9384();
    __swift_project_value_buffer(v10, qword_1ED8B2248);
    v11 = sub_19A7A9364();
    v12 = sub_19A7AB574();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_19A5EE000, v11, v12, "makeSnapshot in configure()", v13, 2u);
      MEMORY[0x19A907A30](v13, -1, -1);
    }

    sub_19A75C7C0();
    v14 = sub_19A652898();
    v15 = sub_19A652F7C(v14);

    v16 = sub_19A72AF2C(v4, v15);

    if ((v16 & 1) == 0)
    {
      v17 = sub_19A7A9364();
      v18 = sub_19A7AB574();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_19A5EE000, v17, v18, "Categories did change. Will notify", v19, 2u);
        MEMORY[0x19A907A30](v19, -1, -1);
      }

      sub_19A75F05C();
    }
  }
}

void sub_19A75B2C4(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = OBJC_IVAR___STKImageGlyphDataSource__pendingViewConfig;
  v7 = *(a1 + OBJC_IVAR___STKImageGlyphDataSource__pendingViewConfig);
  if (v7)
  {
    v8 = *(a1 + OBJC_IVAR___STKImageGlyphDataSource__pendingViewConfig);
  }

  else
  {
    v8 = *(a1 + OBJC_IVAR___STKImageGlyphDataSource__activeViewConfig);
  }

  v9 = sub_19A797604(v8, a2);
  if (v9)
  {
    v10 = qword_1ED8B2240;
    v11 = v7;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = sub_19A7A9384();
    __swift_project_value_buffer(v12, qword_1ED8B2248);
    v13 = sub_19A7A9364();
    v14 = sub_19A7AB574();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_19A5EE000, v13, v14, "Image glyph configuration did not change", v15, 2u);
      MEMORY[0x19A907A30](v15, -1, -1);
    }
  }

  else
  {
    v16 = v7;

    v8 = *(a1 + v6);
    *(a1 + v6) = a2;
    v17 = a2;
  }

  *a3 = v9 & 1;
}

void sub_19A75B428(uint64_t a1, void *a2)
{
  v3 = *(a1 + OBJC_IVAR___STKImageGlyphDataSource__activeViewConfig);
  *(a1 + OBJC_IVAR___STKImageGlyphDataSource__activeViewConfig) = a2;
  v4 = a2;

  v5 = *(a1 + OBJC_IVAR___STKImageGlyphDataSource__pendingViewConfig);
  *(a1 + OBJC_IVAR___STKImageGlyphDataSource__pendingViewConfig) = 0;
}

uint64_t sub_19A75B4EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690, &qword_19A7B6B00);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  if (([objc_opt_self() useNewCollectionView] & 1) == 0)
  {
    v3 = sub_19A7AB394();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    sub_19A755944(0, 0, v2, &unk_19A7C4410, v4);

    sub_19A5F2B54(v2, &unk_1EAFCD690, &qword_19A7B6B00);
  }

  sub_19A652D38();
  if (qword_1ED8B2D18 != -1)
  {
    swift_once();
  }

  return sub_19A77AAA0();
}

id sub_19A75B7E8(void *a1, uint64_t a2, char *a3)
{
  v4 = a1;
  v5 = sub_19A659378(a3);
  if (v5)
  {
    v6 = [v5 isEnabled];
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_19A75B858(char *a1)
{
  v1 = sub_19A659378(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 isEnabled];
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_19A75B8EC()
{
  result = sub_19A65883C(2);
  if (v1)
  {
    return -1;
  }

  return result;
}

uint64_t sub_19A75B958()
{
  result = sub_19A65883C(1);
  if (v1)
  {
    return -1;
  }

  return result;
}

uint64_t sub_19A75B9C4()
{
  result = sub_19A65883C(5);
  if (v1)
  {
    return -1;
  }

  return result;
}

uint64_t sub_19A75BA30()
{
  result = sub_19A65883C(3);
  if (v1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_19A75BAAC()
{
  if (!sub_19A659378(3))
  {
    return 0;
  }

  v1 = v0;
  swift_unknownObjectRelease();
  return v1;
}

BOOL sub_19A75BAE8(uint64_t a1)
{
  v1 = a1;
  if (sub_19A6532EC() <= a1)
  {
    return 0;
  }

  v2 = sub_19A652898();
  v3 = v2;
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_21:
    v5 = sub_19A7ABBE4();
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {

      return 0;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x19A906130](v6, v3);
      if (__OFADD__(v6, 1))
      {
LABEL_15:
        __break(1u);
        return 0;
      }
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v7 = *(v3 + 8 * v6 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v6, 1))
      {
        goto LABEL_15;
      }
    }

    v8 = [v7 numberOfSections];
    if (v1 < v8)
    {
      break;
    }

    v9 = v8;
    swift_unknownObjectRelease();
    ++v6;
    v10 = __OFSUB__(v1, v9);
    v1 -= v9;
    if (v10)
    {
      goto LABEL_20;
    }
  }

  v12 = [v7 glyphType];
  swift_unknownObjectRelease();
  return v12 == 3;
}

BOOL sub_19A75BC70(uint64_t a1)
{
  v1 = a1;
  if (sub_19A6532EC() <= a1)
  {
    return 0;
  }

  v2 = sub_19A652898();
  v3 = v2;
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_21:
    v5 = sub_19A7ABBE4();
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {

      return 0;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x19A906130](v6, v3);
      if (__OFADD__(v6, 1))
      {
LABEL_15:
        __break(1u);
        return 0;
      }
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v7 = *(v3 + 8 * v6 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v6, 1))
      {
        goto LABEL_15;
      }
    }

    v8 = [v7 numberOfSections];
    if (v1 < v8)
    {
      break;
    }

    v9 = v8;
    swift_unknownObjectRelease();
    ++v6;
    v10 = __OFSUB__(v1, v9);
    v1 -= v9;
    if (v10)
    {
      goto LABEL_20;
    }
  }

  v12 = [v7 glyphType];
  swift_unknownObjectRelease();
  return v12 == 5;
}

BOOL sub_19A75BDF8(uint64_t a1)
{
  v1 = a1;
  if (sub_19A6532EC() <= a1)
  {
    return 0;
  }

  v2 = sub_19A652898();
  v3 = v2;
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_21:
    v5 = sub_19A7ABBE4();
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {

      return 0;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x19A906130](v6, v3);
      if (__OFADD__(v6, 1))
      {
LABEL_15:
        __break(1u);
        return 0;
      }
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v7 = *(v3 + 8 * v6 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v6, 1))
      {
        goto LABEL_15;
      }
    }

    v8 = [v7 numberOfSections];
    if (v1 < v8)
    {
      break;
    }

    v9 = v8;
    swift_unknownObjectRelease();
    ++v6;
    v10 = __OFSUB__(v1, v9);
    v1 -= v9;
    if (v10)
    {
      goto LABEL_20;
    }
  }

  v12 = [v7 glyphType];
  swift_unknownObjectRelease();
  return v12 == 2;
}

BOOL sub_19A75BF84(uint64_t a1)
{
  v1 = a1;
  if (sub_19A6532EC() <= a1)
  {
    return 0;
  }

  v2 = sub_19A652898();
  v3 = v2;
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_21:
    v5 = sub_19A7ABBE4();
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {

      return 0;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x19A906130](v6, v3);
      if (__OFADD__(v6, 1))
      {
LABEL_15:
        __break(1u);
        return 0;
      }
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v7 = *(v3 + 8 * v6 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v6, 1))
      {
        goto LABEL_15;
      }
    }

    v8 = [v7 numberOfSections];
    if (v1 < v8)
    {
      break;
    }

    v9 = v8;
    swift_unknownObjectRelease();
    ++v6;
    v10 = __OFSUB__(v1, v9);
    v1 -= v9;
    if (v10)
    {
      goto LABEL_20;
    }
  }

  v12 = [v7 glyphType];
  swift_unknownObjectRelease();
  return v12 == 1;
}

void sub_19A75C0D0(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  if ((a1 & 0x8000000000000000) == 0)
  {
    v7 = sub_19A652898();
    v8 = sub_19A652F7C(v7);

    v9 = v8 >> 62 ? sub_19A7ABBE4() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v9 > a1)
    {
      v10 = sub_19A652898();
      v11 = sub_19A652F7C(v10);

      if ((v11 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x19A906130](a1, v11);
      }

      else
      {
        if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
        {
          __break(1u);
          return;
        }

        v12 = *(v11 + 8 * a1 + 32);
      }

      v13 = v12;

      sub_19A6579A0(v13, v6);

      v14 = sub_19A7A9094();
      v15 = *(v14 - 8);
      if ((*(v15 + 48))(v6, 1, v14) != 1)
      {
        (*(v15 + 32))(a2, v6, v14);
        (*(v15 + 56))(a2, 0, 1, v14);
        return;
      }

      sub_19A5F2B54(v6, &unk_1EAFCF110, &unk_19A7B6AF0);
    }
  }

  v16 = sub_19A7A9094();
  (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
}

void sub_19A75C450(uint64_t a1)
{
  v1 = sub_19A658B20(a1);
  if ((v1 & 0x8000000000000000) == 0)
  {
    v2 = v1;
    v3 = sub_19A652898();
    v4 = sub_19A652F7C(v3);

    if (v4 >> 62)
    {
      v5 = sub_19A7ABBE4();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v2 < v5)
    {
      v6 = sub_19A652898();
      v7 = sub_19A652F7C(v6);

      if ((v7 & 0xC000000000000001) != 0)
      {
        MEMORY[0x19A906130](v2, v7);

        swift_unknownObjectRelease();
      }

      else if (v2 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      else
      {
        v8 = *(v7 + 8 * v2 + 32);
      }
    }
  }
}

void sub_19A75C58C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_19A652898();
  v5 = sub_19A652F7C(v4);

  v6 = v5;
  v7 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v5 >> 62)
  {
LABEL_20:
    v16 = v6;
    v8 = sub_19A7ABBE4();
    v6 = v16;
  }

  else
  {
    v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v10 = v6 & 0xC000000000000001;
  while (v8 != v9)
  {
    if (v10)
    {
      v12 = v6;
      v13 = *(MEMORY[0x19A906130](v9, v6) + OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_categoryType);
      swift_unknownObjectRelease();
      v6 = v12;
      if (v13 == a1)
      {
LABEL_12:

        sub_19A75C0D0(v9, a2);
        return;
      }
    }

    else
    {
      if (v9 >= *(v7 + 16))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (*(*(v6 + 8 * v9 + 32) + OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_categoryType) == a1)
      {
        goto LABEL_12;
      }
    }

    if (__OFADD__(v9++, 1))
    {
      goto LABEL_19;
    }
  }

  v14 = sub_19A7A9094();
  v15 = *(*(v14 - 8) + 56);

  v15(a2, 1, 1, v14);
}

uint64_t sub_19A75C774()
{
  if (![objc_opt_self() isInternalBuild])
  {
    return 1;
  }

  return sub_19A6DBCD4();
}

double sub_19A75C7C0()
{
  v1 = sub_19A7AA764();
  v13 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_19A7AA7B4();
  v4 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR___STKImageGlyphDataSource_lock);
  v17 = v0;
  v14 = sub_19A762484;
  v15 = &v16;
  os_unfair_lock_lock(v7 + 4);
  sub_19A763108();
  os_unfair_lock_unlock(v7 + 4);
  v11[1] = *(v0 + OBJC_IVAR___STKImageGlyphDataSource_queue);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_19A7624A4;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19A6815D4;
  aBlock[3] = &block_descriptor_32;
  v9 = _Block_copy(aBlock);

  sub_19A7AA784();
  v18 = MEMORY[0x1E69E7CC0];
  sub_19A740A38(&qword_1ED8B20A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECD0, &unk_19A7B9A50);
  sub_19A623714(&qword_1ED8B2090, &unk_1EAFCECD0, &unk_19A7B9A50, MEMORY[0x1E69E6328]);
  sub_19A7ABB54();
  MEMORY[0x19A905BE0](0, v6, v3, v9);
  _Block_release(v9);
  (*(v13 + 8))(v3, v1);
  (*(v4 + 8))(v6, v12);

  return result;
}

void sub_19A75CAF8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD6C8, &unk_19A7C1D60);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v120[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v120[-v6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v9 = Strong;
  v124 = v2;
  v10 = OBJC_IVAR___STKImageGlyphDataSource_lock;
  v11 = *(Strong + OBJC_IVAR___STKImageGlyphDataSource_lock);
  MEMORY[0x1EEE9AC00](Strong);
  *&v120[-16] = v12;
  MEMORY[0x1EEE9AC00](v12);
  *&v120[-16] = sub_19A7630DC;
  *&v120[-8] = v13;
  os_unfair_lock_lock(v11 + 4);
  sub_19A60EFE4(&v152);
  os_unfair_lock_unlock(v11 + 4);
  v142 = v152;
  if (v152 < 1)
  {

    return;
  }

  v122 = v4;
  v141 = v10;
  v15 = *&v9[v10];
  MEMORY[0x1EEE9AC00](v14);
  *&v120[-16] = v9;
  MEMORY[0x1EEE9AC00](v16);
  *&v120[-16] = sub_19A762F50;
  *&v120[-8] = v17;
  os_unfair_lock_lock(v15 + 4);
  sub_19A7630A8(&v152);
  os_unfair_lock_unlock(v15 + 4);
  v121 = v152;
  v133 = OBJC_IVAR___STKImageGlyphDataSource__activeViewConfig;
  v18 = *&v9[OBJC_IVAR___STKImageGlyphDataSource__activeViewConfig];
  v154 = MEMORY[0x1E69E7CC0];
  v19 = qword_1ED8B2240;
  v20 = v18;
  if (v19 != -1)
  {
    goto LABEL_112;
  }

LABEL_4:
  v21 = sub_19A7A9384();
  v138 = __swift_project_value_buffer(v21, qword_1ED8B2248);
  v22 = sub_19A7A9364();
  v23 = sub_19A7AB5A4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_19A5EE000, v22, v23, "will make snapshot", v24, 2u);
    MEMORY[0x19A907A30](v24, -1, -1);
  }

  v25 = sub_19A5F5028(0, &qword_1ED8B1FE0, 0x1E696AD98);
  sub_19A762B98();
  v140 = v25;
  sub_19A7A94E4();
  v26 = v9;
  v27 = sub_19A652898();
  v148 = v26;

  if (v27 >> 62)
  {
    v28 = sub_19A7ABBE4();
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v136 = v20;
  v137 = v9;
  if (v28)
  {
    v29 = 0;
    v143 = OBJC_IVAR___STKImageGlyphDataSource__pendingViewConfig;
    v130 = v27 & 0xC000000000000001;
    v127 = v27 & 0xFFFFFFFFFFFFFF8;
    v126 = v27 + 32;
    v125 = MEMORY[0x1E69E7CC0];
    v150 = 1;
    *(&v30 + 1) = 3;
    v139 = xmmword_19A7B6C40;
    *&v30 = 138412546;
    v131 = v30;
    *&v30 = 134218242;
    v123 = v30;
    v146 = v1;
    v132 = v7;
    v128 = v27;
    v129 = v28;
    while (1)
    {
      if (v130)
      {
        v149 = MEMORY[0x19A906130](v29, v27);
        v32 = __OFADD__(v29, 1);
        v33 = (&v29->_os_unfair_lock_opaque + 1);
        if (v32)
        {
          goto LABEL_109;
        }
      }

      else
      {
        if (v29 >= *(v127 + 16))
        {
          goto LABEL_111;
        }

        v149 = *(v126 + 8 * v29);
        swift_unknownObjectRetain();
        v32 = __OFADD__(v29, 1);
        v33 = (&v29->_os_unfair_lock_opaque + 1);
        if (v32)
        {
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          swift_once();
          goto LABEL_4;
        }
      }

      v145 = sub_19A7A94A4();
      v34 = [v149 numberOfSections];
      if ((v34 & 0x8000000000000000) != 0)
      {
        goto LABEL_110;
      }

      v35 = v34;
      v134 = v33;
      if (!v34)
      {
        goto LABEL_11;
      }

      v36 = 0;
      v144 = v34;
      do
      {
        v37 = v36;
        while (1)
        {
          if (v37 >= v35)
          {
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
            goto LABEL_101;
          }

          if (__OFADD__(v37, 1))
          {
            goto LABEL_99;
          }

          if ((v150 & 1) == 0)
          {
            swift_unknownObjectRelease();
            v150 = 0;
            goto LABEL_73;
          }

          v40 = *&v148[v143];
          if (v40)
          {
            v41 = *&v148[v143];
          }

          else
          {
            v41 = *&v9[v133];
          }

          type metadata accessor for ImageGlyphViewConfiguration();
          v42 = v40;
          v43 = sub_19A7AB924();

          if ((v43 & 1) == 0 || (v33 = *&v9[v141], MEMORY[0x1EEE9AC00](v44), *&v120[-16] = v148, MEMORY[0x1EEE9AC00](v45), *&v120[-16] = sub_19A763000, *&v120[-8] = v46, os_unfair_lock_lock(v33 + 4), sub_19A60FBA4(&v152), os_unfair_lock_unlock(v33 + 4), v142 != v152))
          {
            swift_unknownObjectRelease();
            v150 = 1;
LABEL_73:
            v29 = v134;
            v31 = v134 == v129;
            v27 = v128;
            goto LABEL_12;
          }

          if (__OFADD__(v37, v145))
          {
            goto LABEL_100;
          }

          v147 = v37 + 1;
          v47 = v9;
          v48 = v20;
          v49 = sub_19A7AB904();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100, &unk_19A7B6CC0);
          v50 = swift_allocObject();
          *(v50 + 16) = v139;
          *(v50 + 32) = v49;
          v51 = v49;
          sub_19A7A9444();

          v52 = [v149 snapshotIdentifiersInSection_];
          v33 = sub_19A7AB254();

          v53 = MEMORY[0x1E69E7CD0];
          v152 = MEMORY[0x1E69E7CD0];
          LOBYTE(v52) = sub_19A75FF0C(v33);

          if ((v52 & 1) == 0)
          {
            break;
          }

          v152 = sub_19A7A9494();

          sub_19A5F62AC(v54);
          v55 = v152;
          v152 = v53;
          v56 = sub_19A75FF0C(v55);

          v150 = v56;
          if (v56)
          {
            v152 = v51;
            v38 = v51;
            sub_19A7A9424();

            v20 = v48;
          }

          else
          {

            v57 = v51;
            v58 = v149;
            swift_unknownObjectRetain();
            v59 = sub_19A7A9364();
            v60 = sub_19A7AB5A4();
            swift_unknownObjectRelease();

            if (os_log_type_enabled(v59, v60))
            {
              v61 = swift_slowAlloc();
              v62 = swift_slowAlloc();
              v33 = swift_slowAlloc();
              v152 = v33;
              *v61 = v131;
              *(v61 + 4) = v57;
              *v62 = v57;
              *(v61 + 12) = 2082;
              v63 = v57;
              v64 = [v58 glyphType];
              v135 = v63;
              if (v64 <= 2)
              {
                if (v64 == 1)
                {
                  v65 = 0xE700000000000000;
                  v66 = 0x72656B63697473;
                  v39 = v147;
                  goto LABEL_51;
                }

                v39 = v147;
                if (v64 == 2)
                {
                  v65 = 0xE600000000000000;
                  v66 = 0x696A6F6D656DLL;
                  goto LABEL_51;
                }
              }

              else
              {
                if (v64 == 3)
                {
                  v65 = 0xE500000000000000;
                  v66 = 0x696A6F6D65;
                  v39 = v147;
                  goto LABEL_51;
                }

                v39 = v147;
                if (v64 == 4)
                {
                  v66 = 0x6574636172616863;
                  v65 = 0xE900000000000072;
                  goto LABEL_51;
                }

                if (v64 == 5)
                {
                  v65 = 0xE600000000000000;
                  v66 = 0x746E65636572;
LABEL_51:
                  v67 = sub_19A62540C(v66, v65, &v152);

                  *(v61 + 14) = v67;
                  _os_log_impl(&dword_19A5EE000, v59, v60, "Duplicate identifiers detected in section %@ (%{public}s). Marking snapshot as invalid.", v61, 0x16u);
                  sub_19A5F2B54(v62, &unk_1EAFCD7D0, &qword_19A7BB5F0);
                  MEMORY[0x19A907A30](v62, -1, -1);
                  __swift_destroy_boxed_opaque_existential_1(v33);
                  MEMORY[0x19A907A30](v33, -1, -1);
                  MEMORY[0x19A907A30](v61, -1, -1);

                  v7 = v132;
                  v20 = v136;
                  v9 = v137;
                  v35 = v144;
                  goto LABEL_25;
                }
              }

              v65 = 0xE700000000000000;
              v66 = 0x6E776F6E6B6E75;
              goto LABEL_51;
            }

            v20 = v136;
            v9 = v137;
          }

          v35 = v144;
          v39 = v147;
LABEL_25:
          ++v37;
          if (v39 == v35)
          {
            v27 = v128;
            goto LABEL_11;
          }
        }

        v68 = v51;
        v69 = v149;
        swift_unknownObjectRetain();
        v70 = sub_19A7A9364();
        v71 = sub_19A7AB5A4();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v152 = v33;
          *v72 = v123;
          *(v72 + 4) = [v68 integerValue];

          *(v72 + 12) = 2082;
          v73 = [v69 glyphType];
          v35 = v144;
          if (v73 <= 2)
          {
            v36 = v147;
            if (v73 == 1)
            {
              v74 = 0xE700000000000000;
              v75 = 0x72656B63697473;
            }

            else
            {
              if (v73 != 2)
              {
                goto LABEL_65;
              }

              v74 = 0xE600000000000000;
              v75 = 0x696A6F6D656DLL;
            }
          }

          else
          {
            v36 = v147;
            switch(v73)
            {
              case 3:
                v74 = 0xE500000000000000;
                v75 = 0x696A6F6D65;
                break;
              case 4:
                v75 = 0x6574636172616863;
                v74 = 0xE900000000000072;
                break;
              case 5:
                v74 = 0xE600000000000000;
                v75 = 0x746E65636572;
                break;
              default:
LABEL_65:
                v74 = 0xE700000000000000;
                v75 = 0x6E776F6E6B6E75;
                break;
            }
          }

          v76 = sub_19A62540C(v75, v74, &v152);

          *(v72 + 14) = v76;
          _os_log_impl(&dword_19A5EE000, v70, v71, "Duplicates found in initial snapshot of section %ld (%{public}s). Will retry this section.", v72, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v33);
          MEMORY[0x19A907A30](v33, -1, -1);
          MEMORY[0x19A907A30](v72, -1, -1);

          v7 = v132;
          v20 = v136;
          v9 = v137;
        }

        else
        {
          v20 = v48;

          v9 = v47;
          v35 = v144;
          v36 = v147;
        }

        v77 = v68;
        MEMORY[0x19A905660]();
        if (*((v154 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v154 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_19A7AB274();
        }

        sub_19A7AB2A4();

        v125 = v154;
        v150 = 1;
        v27 = v128;
      }

      while (v36 != v35);
LABEL_11:
      swift_unknownObjectRelease();
      v29 = v134;
      v31 = v134 == v129;
LABEL_12:
      v1 = v146;
      if (v31)
      {
        goto LABEL_76;
      }
    }
  }

  v125 = MEMORY[0x1E69E7CC0];
  v150 = 1;
LABEL_76:

  v33 = v148;
  sub_19A762384(v125, v33, v7);

  v78 = *(&v33->_os_unfair_lock_opaque + OBJC_IVAR___STKImageGlyphDataSource__pendingViewConfig);
  if (v78)
  {
    v79 = *(&v33->_os_unfair_lock_opaque + OBJC_IVAR___STKImageGlyphDataSource__pendingViewConfig);
  }

  else
  {
    v79 = *&v9[v133];
  }

  type metadata accessor for ImageGlyphViewConfiguration();
  v80 = v78;
  v81 = sub_19A7AB924();

  if ((v81 & 1) == 0)
  {

    v97 = sub_19A7A9364();
    v98 = sub_19A7AB5A4();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      v100 = "Our view configuration was updated while this making snapshot. Will discard and try again.";
LABEL_89:
      _os_log_impl(&dword_19A5EE000, v97, v98, v100, v99, 2u);
      v101 = v99;
LABEL_90:
      MEMORY[0x19A907A30](v101, -1, -1);
    }

LABEL_91:

    sub_19A75E7E0();
    goto LABEL_92;
  }

  if ((v150 & 1) == 0)
  {

    v97 = sub_19A7A9364();
    v98 = sub_19A7AB5A4();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      v100 = "Created snapshot is invalid. Will discard and try again.";
      goto LABEL_89;
    }

    goto LABEL_91;
  }

  v82 = sub_19A7A9494();
  v83 = MEMORY[0x1E69E7CD0];
  v152 = MEMORY[0x1E69E7CD0];
  v84 = sub_19A75FF0C(v82);

  if (!v84)
  {

    v97 = sub_19A7A9364();
    v103 = sub_19A7AB584();
    if (!os_log_type_enabled(v97, v103))
    {
      goto LABEL_91;
    }

    v104 = swift_slowAlloc();
    v105 = v7;
    v106 = v1;
    v107 = swift_slowAlloc();
    v153 = v107;
    *v104 = 136315138;
    swift_beginAccess();
    v108 = sub_19A7A9494();
    v151 = v83;
    sub_19A7620C4(v108);
    v110 = v109;

    v111 = MEMORY[0x19A9056C0](v110, MEMORY[0x1E69E6158]);
    v113 = v112;

    v114 = sub_19A62540C(v111, v113, &v153);

    *(v104 + 4) = v114;
    _os_log_impl(&dword_19A5EE000, v97, v103, "The newly created snapshot contains duplicate identifiers. Will discard and try again. (%s)", v104, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v107);
    v115 = v107;
    v1 = v106;
    v7 = v105;
    MEMORY[0x19A907A30](v115, -1, -1);
    v101 = v104;
    v20 = v136;
    goto LABEL_90;
  }

  v9 = v1;
  v86 = v137;
  v87 = *&v137[v141];
  MEMORY[0x1EEE9AC00](v85);
  v88 = v142;
  *&v120[-16] = v33;
  *&v120[-8] = v88;
  MEMORY[0x1EEE9AC00](v89);
  *&v120[-16] = sub_19A762F68;
  *&v120[-8] = v90;

  os_unfair_lock_lock(v87 + 4);
  sub_19A7630A8(&v152);
  os_unfair_lock_unlock(v87 + 4);
  v91 = v152;

  if (v91)
  {
    v92 = v122;
    (*(v124 + 16))(v122, v7, v9);
    v93 = sub_19A759EF0(v92);
    if (v121)
    {
      v94 = *&v86[v141];
      MEMORY[0x1EEE9AC00](v93);
      *&v120[-16] = v33;
      MEMORY[0x1EEE9AC00](v95);
      *&v120[-16] = sub_19A762FEC;
      *&v120[-8] = v96;

      os_unfair_lock_lock(v94 + 4);
      sub_19A763108();
      os_unfair_lock_unlock(v94 + 4);
    }

    else
    {
LABEL_101:
    }

    v1 = v9;
    v116 = sub_19A759928();
    if ((*(*__swift_project_boxed_opaque_existential_1((v116 + 32), *(v116 + 56)) + OBJC_IVAR___STKImageGlyphDataSource_isConfiguring) & 1) != 0 || !sub_19A652488())
    {
      sub_19A7125D4();
    }

    else
    {
      sub_19A712A58();
    }

    v117 = sub_19A7A9364();
    v118 = sub_19A7AB5A4();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 134218240;
      swift_beginAccess();
      *(v119 + 4) = sub_19A7A9434();
      *(v119 + 12) = 2048;
      *(v119 + 14) = sub_19A7A94A4();
      _os_log_impl(&dword_19A5EE000, v117, v118, "datasource was updated with %ld items in %ld sections", v119, 0x16u);
      MEMORY[0x19A907A30](v119, -1, -1);
    }

LABEL_92:
    v102 = v124;
  }

  else
  {

    v102 = v124;
    v1 = v9;
  }

  (*(v102 + 8))(v7, v1);
}

void sub_19A75DDE0(id *a1, void *a2, uint64_t a3)
{
  v77 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD6C8, &unk_19A7C1D60);
  v76 = *(v5 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v8 = &v71 - v7;
  v9 = &selRef_entitlementValueForBalloonHost_expectedClass_;
  v79 = *a1;
  v10 = [v79 integerValue];
  v78 = a2;
  v11 = sub_19A6590E0(v10);
  if (v11)
  {
    v13 = [v11 snapshotIdentifiersInSection_];
    v14 = sub_19A7AB254();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v15 = MEMORY[0x1E69E7CD0];
  v81 = MEMORY[0x1E69E7CD0];

  v17 = sub_19A75FF0C(v16);

  if (v17)
  {
    goto LABEL_5;
  }

  if (!sub_19A75BC70([v79 integerValue]))
  {
    if (qword_1ED8B2240 != -1)
    {
      swift_once();
    }

    v34 = sub_19A7A9384();
    __swift_project_value_buffer(v34, qword_1ED8B2248);

    v35 = v79;
    v36 = v78;
    v37 = sub_19A7A9364();
    v38 = sub_19A7AB584();

    LODWORD(v75) = v38;
    if (!os_log_type_enabled(v37, v38))
    {

      v18 = v77;
      v9 = 0x1FABBB000uLL;
      goto LABEL_22;
    }

    v74 = v37;
    v39 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v81 = v73;
    *v39 = 136446466;
    v40 = sub_19A658EB4([v35 integerValue]);
    if (v40 <= 2)
    {
      if (v40 == 1)
      {
        v42 = 0x72656B63697473;
        v41 = 0xE700000000000000;
        goto LABEL_48;
      }

      if (v40 == 2)
      {
        v41 = 0xE600000000000000;
        v42 = 0x696A6F6D656DLL;
        goto LABEL_48;
      }
    }

    else
    {
      switch(v40)
      {
        case 3:
          v41 = 0xE500000000000000;
          v42 = 0x696A6F6D65;
          goto LABEL_48;
        case 4:
          v42 = 0x6574636172616863;
          v41 = 0xE900000000000072;
          goto LABEL_48;
        case 5:
          v41 = 0xE600000000000000;
          v42 = 0x746E65636572;
LABEL_48:
          v61 = sub_19A62540C(v42, v41, &v81);

          *(v39 + 4) = v61;
          *(v39 + 12) = 2082;
          v80 = v15;
          sub_19A7620C4(v14);
          v63 = v62;

          v80 = v63;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE8F0, &qword_19A7BE0D0);
          v72 = v39;
          sub_19A623714(&qword_1ED8B2080, &qword_1EAFCE8F0, &qword_19A7BE0D0, MEMORY[0x1E69E6310]);
          v64 = sub_19A7AAF94();
          v66 = v65;

          v67 = sub_19A62540C(v64, v66, &v81);

          v68 = v72;
          *(v72 + 14) = v67;
          v69 = v74;
          _os_log_impl(&dword_19A5EE000, v74, v75, "Duplicates detected in %{public}s. %{public}s", v68, 0x16u);
          v70 = v73;
          swift_arrayDestroy();
          MEMORY[0x19A907A30](v70, -1, -1);
          MEMORY[0x19A907A30](v68, -1, -1);

          v9 = 0x1FABBB000;
LABEL_5:
          v18 = v77;
          goto LABEL_22;
      }
    }

    v41 = 0xE700000000000000;
    v42 = 0x6E776F6E6B6E75;
    goto LABEL_48;
  }

  if (qword_1ED8B2240 != -1)
  {
    swift_once();
  }

  v19 = sub_19A7A9384();
  __swift_project_value_buffer(v19, qword_1ED8B2248);
  v20 = sub_19A7A9364();
  v21 = sub_19A7AB5A4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v74 = v22;
    v75 = swift_slowAlloc();
    v81 = v75;
    LODWORD(v22->isa) = 136446210;
    v80 = v15;

    sub_19A7620C4(v23);
    LODWORD(v73) = v21;
    v25 = v24;

    v80 = v25;
    v72 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE8F0, &qword_19A7BE0D0);
    sub_19A623714(&qword_1ED8B2080, &qword_1EAFCE8F0, &qword_19A7BE0D0, MEMORY[0x1E69E6310]);
    v9 = 0x1FABBB000;
    v26 = sub_19A7AAF94();
    v28 = v27;

    v29 = sub_19A62540C(v26, v28, &v81);

    v30 = v74;
    *(&v74->isa + 4) = v29;
    v31 = v72;
    v32 = v30;
    _os_log_impl(&dword_19A5EE000, v72, v73, "Duplicates detected in recents. Will remove identifiers %{public}s", v30, 0xCu);
    v33 = v75;
    __swift_destroy_boxed_opaque_existential_1(v75);
    MEMORY[0x19A907A30](v33, -1, -1);
    MEMORY[0x19A907A30](v32, -1, -1);
  }

  else
  {
  }

  v18 = v77;
  v81 = v15;

  sub_19A762224(v43);

LABEL_22:
  v44 = v76;
  (*(v76 + 16))(v8, v18, v5);
  v45 = sub_19A7A9494();
  (*(v44 + 8))(v8, v5);
  v81 = v45;

  sub_19A5F62AC(v46);
  v47 = v81;
  v81 = v15;
  LOBYTE(v44) = sub_19A75FF0C(v47);

  if (v44)
  {
    v81 = v79;
    v48 = v79;

    sub_19A7A9424();

    swift_bridgeObjectRelease_n();
    return;
  }

  v49 = v9;
  if (qword_1ED8B2240 != -1)
  {
    swift_once();
  }

  v50 = sub_19A7A9384();
  __swift_project_value_buffer(v50, qword_1ED8B2248);
  v51 = v79;
  v52 = v78;
  v53 = sub_19A7A9364();
  v54 = sub_19A7AB584();

  if (!os_log_type_enabled(v53, v54))
  {

    return;
  }

  v55 = swift_slowAlloc();
  v79 = swift_slowAlloc();
  v81 = v79;
  *v55 = 134218242;
  *(v55 + 4) = [v51 (v49 + 120)];

  *(v55 + 12) = 2082;
  v56 = sub_19A658EB4([v51 (v49 + 120)]);
  if (v56 <= 2)
  {
    if (v56 == 1)
    {
      v59 = 0x72656B63697473;
      v58 = 0xE700000000000000;
      v57 = v79;
      goto LABEL_43;
    }

    v57 = v79;
    if (v56 == 2)
    {
      v58 = 0xE600000000000000;
      v59 = 0x696A6F6D656DLL;
      goto LABEL_43;
    }

LABEL_42:
    v58 = 0xE700000000000000;
    v59 = 0x6E776F6E6B6E75;
    goto LABEL_43;
  }

  if (v56 == 3)
  {
    v58 = 0xE500000000000000;
    v59 = 0x696A6F6D65;
    v57 = v79;
    goto LABEL_43;
  }

  v57 = v79;
  if (v56 == 4)
  {
    v59 = 0x6574636172616863;
    v58 = 0xE900000000000072;
    goto LABEL_43;
  }

  if (v56 != 5)
  {
    goto LABEL_42;
  }

  v58 = 0xE600000000000000;
  v59 = 0x746E65636572;
LABEL_43:
  v60 = sub_19A62540C(v59, v58, &v81);

  *(v55 + 14) = v60;
  _os_log_impl(&dword_19A5EE000, v53, v54, "Duplicates detected in snapshot retry for section %ld (%{public}s). Items in this section will not be displayed.", v55, 0x16u);
  __swift_destroy_boxed_opaque_existential_1(v57);
  MEMORY[0x19A907A30](v57, -1, -1);
  MEMORY[0x19A907A30](v55, -1, -1);
}

void sub_19A75E7E0()
{
  v1 = *(v0 + OBJC_IVAR___STKImageGlyphDataSource_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_19A7630A8(&v12);
  os_unfair_lock_unlock(v1 + 4);
  if (v12 == 1)
  {
    MEMORY[0x1EEE9AC00](v2);
    MEMORY[0x1EEE9AC00](v3);
    os_unfair_lock_lock(v1 + 4);
    sub_19A763108();
    os_unfair_lock_unlock(v1 + 4);
    if (qword_1ED8B2240 != -1)
    {
      swift_once();
    }

    v4 = sub_19A7A9384();
    __swift_project_value_buffer(v4, qword_1ED8B2248);
    v5 = sub_19A7A9364();
    v6 = sub_19A7AB574();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_19A5EE000, v5, v6, "makeSnapshot in retrySnapshot()", v7, 2u);
      MEMORY[0x19A907A30](v7, -1, -1);
    }

    sub_19A75C7C0();
  }

  else
  {
    if (qword_1ED8B2240 != -1)
    {
      swift_once();
    }

    v8 = sub_19A7A9384();
    __swift_project_value_buffer(v8, qword_1ED8B2248);
    v9 = sub_19A7A9364();
    v10 = sub_19A7AB584();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_19A5EE000, v9, v10, "Have failed to make a snapshot after multiple attempts. Will not retry this snapshot again.", v11, 2u);
      MEMORY[0x19A907A30](v11, -1, -1);
    }
  }
}

void sub_19A75EA54()
{
  v1 = OBJC_IVAR___STKImageGlyphDataSource_dataSourceUpdatedObserver;
  if (!*(v0 + OBJC_IVAR___STKImageGlyphDataSource_dataSourceUpdatedObserver))
  {
    sub_19A7597A4(v20);
    v2 = __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    if (qword_1ED8B2020 != -1)
    {
      swift_once();
    }

    v3 = qword_1ED8B4238;
    memset(v19, 0, sizeof(v19));
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = *(*v2 + 16);
    sub_19A60F0CC(v19, aBlock, &unk_1EAFCD750, &unk_19A7B87D0);
    v6 = v16;
    if (v16)
    {
      v7 = __swift_project_boxed_opaque_existential_1(aBlock, v16);
      v8 = *(v6 - 1);
      v9 = MEMORY[0x1EEE9AC00](v7);
      v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v8 + 16))(v11, v9);

      v12 = sub_19A7AC054();
      (*(v8 + 8))(v11, v6);
      __swift_destroy_boxed_opaque_existential_1(aBlock);
    }

    else
    {

      v12 = 0;
    }

    v17 = sub_19A762C00;
    v18 = v4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19A77855C;
    v16 = &block_descriptor_48;
    v13 = _Block_copy(aBlock);

    v14 = [v5 addObserverForName:v3 object:v12 queue:0 usingBlock:v13];
    _Block_release(v13);

    swift_unknownObjectRelease();
    sub_19A5F2B54(v19, &unk_1EAFCD750, &unk_19A7B87D0);

    *(v0 + v1) = v14;
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v20);
  }
}

void sub_19A75ED28(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690, &qword_19A7B6B00);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_19A7AB394();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v8;
    sub_19A6816F0(0, 0, v4, &unk_19A7C1D78, v9);
  }
}

uint64_t sub_19A75EE98()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_1ED8B2240 != -1)
    {
      swift_once();
    }

    v3 = sub_19A7A9384();
    __swift_project_value_buffer(v3, qword_1ED8B2248);
    v4 = sub_19A7A9364();
    v5 = sub_19A7AB574();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_19A5EE000, v4, v5, "makeSnapshot in registerForStoreNotifications()", v6, 2u);
      MEMORY[0x19A907A30](v6, -1, -1);
    }

    sub_19A75C7C0();
    v7 = sub_19A7A9364();
    v8 = sub_19A7AB574();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_19A5EE000, v7, v8, "datasource was updated in response to notification from child datasource", v9, 2u);
      MEMORY[0x19A907A30](v9, -1, -1);
    }
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_19A75F05C()
{
  v0 = sub_19A7A8C04();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED8B2010 != -1)
  {
    swift_once();
  }

  v8 = 0u;
  v9 = 0u;
  v4 = qword_1ED8B4230;
  sub_19A7A8BD4();
  sub_19A7597A4(&v8);
  v5 = *(*__swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1)) + 16);
  v6 = sub_19A7A8BB4();
  [v5 postNotification_];

  (*(v1 + 8))(v3, v0);
  return __swift_destroy_boxed_opaque_existential_1(&v8);
}

uint64_t sub_19A75F1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_19A7A8F64();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v6 = sub_19A7AAA14();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v7 = sub_19A7AAC14();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A75F340, 0, 0);
}

uint64_t sub_19A75F340()
{
  v33 = v0;
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  (*(v2 + 104))(v1, *MEMORY[0x1E69D4708], v3);
  v4 = sub_19A768F20(v1);
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = v0[10];
    v7 = v0[7];
    v6 = v0[8];
    (*(v0[12] + 104))(v0[13], *MEMORY[0x1E69D4638], v0[11]);
    sub_19A7AAAC4();
    swift_allocObject();
    sub_19A7AAA04();
    sub_19A7AAE24();
    sub_19A7A8F14();
    v31 = *(v6 + 8);
    v31(v5, v7);
    sub_19A7AAD94();
    sub_19A7AAEB4();
    sub_19A7AAC04();
    sub_19A7AAE34();
    sub_19A7AADC4();
    v8 = sub_19A7AAEF4();
    v29 = v9;
    v30 = sub_19A7AAD84();
    sub_19A7AA9D4();

    sub_19A612F00(v8, v29);

    if (qword_1ED8B2240 != -1)
    {
      swift_once();
    }

    v10 = sub_19A7A9384();
    __swift_project_value_buffer(v10, qword_1ED8B2248);
    v11 = v4;
    v12 = sub_19A7A9364();
    v13 = sub_19A7AB564();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[9];
      v15 = v0[7];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v32 = v17;
      *v16 = 136315138;
      MEMORY[0x19A905020](v17, v18, v19, v20, v21, v22);
      sub_19A740A38(&qword_1EAFCCE28, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v23 = sub_19A7AC024();
      v25 = v24;
      v31(v14, v15);
      v26 = sub_19A62540C(v23, v25, &v32);

      *(v16 + 4) = v26;
      _os_log_impl(&dword_19A5EE000, v12, v13, "Donated sticker to recents (%s)", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x19A907A30](v17, -1, -1);
      MEMORY[0x19A907A30](v16, -1, -1);
    }

    else
    {
    }
  }

  v27 = v0[1];

  return v27();
}

id sub_19A75FAC8()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC810]) init];
  v2 = *(v0 + OBJC_IVAR___STKImageGlyphDataSource__pendingViewConfig);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___STKImageGlyphDataSource__pendingViewConfig);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR___STKImageGlyphDataSource__activeViewConfig);
  }

  v4 = OBJC_IVAR___STKImageGlyphViewConfiguration_isInPopover;
  swift_beginAccess();
  LOBYTE(v4) = v3[v4];
  v5 = v2;

  [v1 setScrollDirection_];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = objc_allocWithZone(type metadata accessor for ImageGlyphCollectionViewLayout());
  aBlock[4] = sub_19A7624B4;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19A726068;
  aBlock[3] = &block_descriptor_10;
  v8 = _Block_copy(aBlock);

  v9 = [v7 initWithSectionProvider:v8 configuration:v1];
  _Block_release(v8);

  v10 = sub_19A725FAC();
  sub_19A6D8040();

  aBlock[0] = [objc_opt_self() standardUserDefaults];
  EmojiKeyboardPrewarmAuditor.emojiKeyboardDidLaunch()();

  return v9;
}

id sub_19A75FCB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v6 = Strong;
  v7 = sub_19A6590E0(a1);
  if (v7)
  {
    v9 = [v7 sectionLayoutForSectionIndex:v8 environment:a2];
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = objc_allocWithZone(type metadata accessor for ImageGlyphUIConfiguration());
    v11 = ImageGlyphUIConfiguration.init(_:glyphType:)(0, 3);
    v9 = _s10StickerKit25ImageGlyphUIConfigurationC6layout3forSo25NSCollectionLayoutSectionCSo0hI11Environment_p_tF_0();
  }

  return v9;
}

uint64_t sub_19A75FE2C()
{
  result = sub_19A7AAFE4();
  qword_1ED8B4238 = result;
  return result;
}

uint64_t sub_19A75FE64()
{
  result = sub_19A7AAFE4();
  qword_1ED8B4240 = result;
  return result;
}

uint64_t sub_19A75FE9C()
{
  result = sub_19A7AAFE4();
  qword_1ED8B4230 = result;
  return result;
}

uint64_t sub_19A75FED4()
{
  result = sub_19A7AAFE4();
  qword_1EAFDD4E8 = result;
  return result;
}

BOOL sub_19A75FF0C(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 16) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = v1 + 2;
    v5 = *(v1 - 1);
    v4 = *v1;
    swift_bridgeObjectRetain_n();
    LOBYTE(v5) = sub_19A7600FC(&v7, v5, v4);

    v1 = v3;
  }

  while ((v5 & 1) != 0);
  return v2 == 0;
}

uint64_t type metadata accessor for ImageGlyphDataSource(uint64_t a1)
{
  result = qword_1ED8B2938;
  if (!qword_1ED8B2938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19A76001C(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_19A7AC174();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_19A76179C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_19A7600FC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_19A7AC184();
  sub_19A7AB0B4();
  v8 = sub_19A7AC1B4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_19A7AC064() & 1) != 0)
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

    sub_19A7618BC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_19A76024C(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_19A7ABBF4();

    if (v9)
    {

      type metadata accessor for ImageGlyphLayoutSection();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_19A7ABBE4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_19A760464(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_19A760AC8(v20 + 1);
    }

    v18 = v8;
    sub_19A760CF0(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for ImageGlyphLayoutSection();
  v11 = sub_19A7AB914();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_19A761A3C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_19A7AB924();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_19A760464(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE5F8, &qword_19A7BDB18);
    v2 = sub_19A7ABC84();
    v15 = v2;
    sub_19A7ABBA4();
    if (sub_19A7ABC14())
    {
      type metadata accessor for ImageGlyphLayoutSection();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_19A760AC8(v9 + 1);
        }

        v2 = v15;
        result = sub_19A7AB914();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_19A7ABC14());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

void sub_19A760644(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC898, &qword_19A7C1DE0);
  v4 = sub_19A7ABC74();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v26 = v2;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = sub_19A7AC174();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
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

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_19A760868(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF858, &unk_19A7C1D80);
  v4 = sub_19A7ABC74();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_19A7AC184();
      sub_19A7AB0B4();
      v21 = sub_19A7AC1B4();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_19A760AC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE5F8, &qword_19A7BDB18);
  v4 = sub_19A7ABC74();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = sub_19A7AB914();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

unint64_t sub_19A760CF0(uint64_t a1, uint64_t a2)
{
  sub_19A7AB914();
  result = sub_19A7ABB84();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_19A760D74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC898, &qword_19A7C1DE0);
  v2 = *v0;
  v3 = sub_19A7ABC64();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
}

void sub_19A760EB4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF858, &unk_19A7C1D80);
  v2 = *v0;
  v3 = sub_19A7ABC64();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
}

void sub_19A761010()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE5F8, &qword_19A7BDB18);
  v2 = *v0;
  v3 = sub_19A7ABC64();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v19 = v18;
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
}

void sub_19A761160(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC898, &qword_19A7C1DE0);
  v4 = sub_19A7ABC74();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = sub_19A7AC174();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

void sub_19A761350(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF858, &unk_19A7C1D80);
  v4 = sub_19A7ABC74();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_19A7AC184();

      sub_19A7AB0B4();
      v20 = sub_19A7AC1B4();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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
}

void sub_19A761588(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE5F8, &qword_19A7BDB18);
  v4 = sub_19A7ABC74();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = sub_19A7AB914();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v25;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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
}

void sub_19A76179C(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_19A760644(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_19A760D74();
      a2 = v7;
      goto LABEL_12;
    }

    sub_19A761160(v5 + 1);
  }

  v8 = *v3;
  v9 = sub_19A7AC174();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = a1;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_19A7AC0B4();
  __break(1u);
}

void sub_19A7618BC(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_19A760868(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_19A760EB4();
      goto LABEL_16;
    }

    sub_19A761350(v8 + 1);
  }

  v10 = *v4;
  sub_19A7AC184();
  sub_19A7AB0B4();
  v11 = sub_19A7AC1B4();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == a1 && v14[1] == a2;
      if (v15 || (sub_19A7AC064() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = a1;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_19A7AC0B4();
  __break(1u);
}

void sub_19A761A3C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_19A760AC8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_19A761010();
      goto LABEL_12;
    }

    sub_19A761588(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_19A7AB914();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for ImageGlyphLayoutSection();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_19A7AB924();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_19A7AC0B4();
  __break(1u);
}

uint64_t sub_19A761B9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690, &qword_19A7B6B00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14[-1] - v5;
  v14[3] = &type metadata for StickerGlyphDataSourceDependenciesAdapter;
  v14[4] = &off_1F0DCD998;
  v14[0] = a1;
  *(a2 + 56) = 0;
  *(a2 + 58) = 0;
  v7 = MEMORY[0x1E69E7CC0];
  *(a2 + 64) = 0;
  *(a2 + 72) = v7;
  *(a2 + 80) = v7;
  *(a2 + 88) = sub_19A69CCA4(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF860, &unk_19A7C1DC0);
  v8 = swift_allocObject();
  v8[2] = sub_19A69CE8C(v7);
  v8[3] = 0;
  v8[6] = 0;
  v8[7] = 0;
  v8[4] = 0;
  v8[5] = 100;
  *(a2 + 96) = v8;
  *(a2 + 104) = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF140, &qword_19A7B6AE8);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(a2 + 112) = v9;
  *(a2 + 120) = 0;
  sub_19A6C0AB4(v14, a2 + 16);
  sub_19A6FA314();
  v10 = sub_19A7AB394();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a2;

  sub_19A6816F0(0, 0, v6, &unk_19A7BE830, v11);

  __swift_destroy_boxed_opaque_existential_1(v14);
  return a2;
}

uint64_t sub_19A761D74(_OWORD *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690, &qword_19A7B6B00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20[-1] - v5;
  v20[3] = &type metadata for ProductionStickerGlyphDataSourceDependencies;
  v20[4] = &off_1F0DCD970;
  v7 = swift_allocObject();
  v20[0] = v7;
  v8 = a1[7];
  v7[7] = a1[6];
  v7[8] = v8;
  v9 = a1[9];
  v7[9] = a1[8];
  v7[10] = v9;
  v10 = a1[3];
  v7[3] = a1[2];
  v7[4] = v10;
  v11 = a1[5];
  v7[5] = a1[4];
  v7[6] = v11;
  v12 = a1[1];
  v7[1] = *a1;
  v7[2] = v12;
  *(a2 + 56) = 0;
  *(a2 + 58) = 0;
  v13 = MEMORY[0x1E69E7CC0];
  *(a2 + 64) = 0;
  *(a2 + 72) = v13;
  *(a2 + 80) = v13;
  *(a2 + 88) = sub_19A69CCA4(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF860, &unk_19A7C1DC0);
  v14 = swift_allocObject();
  v14[2] = sub_19A69CE8C(v13);
  v14[3] = 0;
  v14[6] = 0;
  v14[7] = 0;
  v14[4] = 0;
  v14[5] = 100;
  *(a2 + 96) = v14;
  *(a2 + 104) = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF140, &qword_19A7B6AE8);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(a2 + 112) = v15;
  *(a2 + 120) = 0;
  sub_19A6C0AB4(v20, a2 + 16);
  sub_19A6FA314();
  v16 = sub_19A7AB394();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a2;

  sub_19A6816F0(0, 0, v6, &unk_19A7C1DD0, v17);

  __swift_destroy_boxed_opaque_existential_1(v20);
  return a2;
}

void *sub_19A761F88@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, _BYTE *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_19A762018(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_19A60FB98;

  return sub_19A786B34();
}

void sub_19A7620C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 40;
    v4 = MEMORY[0x1E69E7CC0];
    v14 = a1 + 40;
    do
    {
      v5 = (v3 + 16 * v2);
      for (i = v2; ; ++i)
      {
        if (i >= v1)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return;
        }

        v2 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        v8 = *(v5 - 1);
        v7 = *v5;
        swift_bridgeObjectRetain_n();
        v9 = sub_19A7600FC(&v15, v8, v7);

        if ((v9 & 1) == 0)
        {
          break;
        }

        v5 += 2;
        if (v2 == v1)
        {
          return;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_19A5F6074(0, *(v4 + 16) + 1, 1);
        v4 = v16;
      }

      v12 = *(v4 + 16);
      v11 = *(v4 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_19A5F6074((v11 > 1), v12 + 1, 1);
        v4 = v16;
      }

      *(v4 + 16) = v12 + 1;
      v13 = v4 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v7;
      v3 = v14;
    }

    while (v2 != v1);
  }
}

void sub_19A762224(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 40;
    v4 = MEMORY[0x1E69E7CC0];
    v14 = a1 + 40;
    do
    {
      v5 = (v3 + 16 * v2);
      for (i = v2; ; ++i)
      {
        if (i >= v1)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return;
        }

        v2 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        v8 = *(v5 - 1);
        v7 = *v5;
        swift_bridgeObjectRetain_n();
        v9 = sub_19A7600FC(&v15, v8, v7);

        if (v9)
        {
          break;
        }

        v5 += 2;
        if (v2 == v1)
        {
          return;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_19A5F6074(0, *(v4 + 16) + 1, 1);
        v4 = v16;
      }

      v12 = *(v4 + 16);
      v11 = *(v4 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_19A5F6074((v11 > 1), v12 + 1, 1);
        v4 = v16;
      }

      *(v4 + 16) = v12 + 1;
      v13 = v4 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v7;
      v3 = v14;
    }

    while (v2 != v1);
  }
}

void sub_19A762384(unint64_t a1, void *a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_19A7ABBE4())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x19A906130](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      sub_19A75DDE0(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_19A7624C4(uint64_t a1)
{
  sub_19A762B08(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_19A762B08(uint64_t a1)
{
  if (!qword_1ED8B2108[0])
  {
    sub_19A5F5028(255, &qword_1ED8B1FE0, 0x1E696AD98);
    sub_19A762B98();
    v1 = sub_19A7A94F4();
    if (!v2)
    {
      atomic_store(v1, qword_1ED8B2108);
    }
  }
}

unint64_t sub_19A762B98()
{
  result = qword_1ED8B1FD8;
  if (!qword_1ED8B1FD8)
  {
    sub_19A5F5028(255, &qword_1ED8B1FE0, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8B1FD8);
  }

  return result;
}

uint64_t sub_19A762C08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_19A60FB98;

  return sub_19A75EE78(a1, v4, v5, v6);
}

void *sub_19A762CFC(void *result)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + *result);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v2 + *result) = v5;
  }

  return result;
}

uint64_t sub_19A762D38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_19A60FB98;

  return sub_19A75F1BC(a1, v4, v5, v6);
}

uint64_t sub_19A762E9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_19A60F860;

  return sub_19A6F1CD4(a1, v4, v5, v6);
}

void sub_19A762F68(char *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + OBJC_IVAR___STKImageGlyphDataSource_waitingSnapshotJobs);
  if (v3 == *(v1 + 24))
  {
    v4 = 0;
    v5 = 1;
LABEL_5:
    *(v2 + OBJC_IVAR___STKImageGlyphDataSource_waitingSnapshotJobs) = v4;
    *a1 = v5;
    return;
  }

  v6 = __OFSUB__(v3, 1);
  v4 = v3 - 1;
  if (!v6)
  {
    v5 = 0;
    goto LABEL_5;
  }

  __break(1u);
}

void *sub_19A762FA8@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_19A763018(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF850, &qword_19A7C1D58);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A763088(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

double sub_19A763138(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

id sub_19A7632E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlayerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_19A763384()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCF868);
  __swift_project_value_buffer(v0, qword_1EAFCF868);
  return sub_19A7A9374();
}

id sub_19A763400()
{
  v1 = OBJC_IVAR____TtC10StickerKit13LivePhotoView_playerView;
  v2 = *(*&v0[OBJC_IVAR____TtC10StickerKit13LivePhotoView_playerView] + OBJC_IVAR____TtC10StickerKit10PlayerView_player);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC10StickerKit13LivePhotoView_playerObserver;
    swift_beginAccess();
    sub_19A6A60B4(&v0[v3], &v7);
    if (*(&v8 + 1))
    {
      sub_19A625DC4(&v7, &v9);
      __swift_project_boxed_opaque_existential_1(&v9, v10);
      v4 = v2;
      [v4 removeTimeObserver_];
      swift_unknownObjectRelease();
      v7 = 0u;
      v8 = 0u;
      swift_beginAccess();
      sub_19A765C0C(&v7, &v0[v3]);
      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_1(&v9);
    }

    else
    {
      sub_19A5F2B54(&v7, &unk_1EAFCD750, &unk_19A7B87D0);
    }
  }

  [*(*&v0[v1] + OBJC_IVAR____TtC10StickerKit10PlayerView_player) pause];
  v5 = type metadata accessor for LivePhotoView();
  v11.receiver = v0;
  v11.super_class = v5;
  return objc_msgSendSuper2(&v11, sel_dealloc);
}

char *sub_19A76360C(void *a1, void *a2)
{
  v5 = &v2[OBJC_IVAR____TtC10StickerKit13LivePhotoView_playerObserver];
  *v5 = 0u;
  v5[1] = 0u;
  *&v2[OBJC_IVAR____TtC10StickerKit13LivePhotoView_playerItemContext] = 0;
  v2[OBJC_IVAR____TtC10StickerKit13LivePhotoView_startPlaybackWhenReady] = 0;
  *&v2[OBJC_IVAR____TtC10StickerKit13LivePhotoView_stillImage] = a1;
  *&v2[OBJC_IVAR____TtC10StickerKit13LivePhotoView_livePhoto] = a2;
  v6 = objc_allocWithZone(MEMORY[0x1E69DCAE0]);
  v7 = a1;
  v8 = a2;
  v9 = [v6 initWithImage_];
  *&v2[OBJC_IVAR____TtC10StickerKit13LivePhotoView_stillImageView] = v9;
  [v9 setContentMode_];
  type metadata accessor for PlayerView();
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v2[OBJC_IVAR____TtC10StickerKit13LivePhotoView_playerView] = v10;
  [v10 setContentMode_];
  v40.receiver = v2;
  v40.super_class = type metadata accessor for LivePhotoView();
  v11 = objc_msgSendSuper2(&v40, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v11 setContentMode_];
  v12 = OBJC_IVAR____TtC10StickerKit13LivePhotoView_stillImageView;
  [*&v11[OBJC_IVAR____TtC10StickerKit13LivePhotoView_stillImageView] setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = OBJC_IVAR____TtC10StickerKit13LivePhotoView_playerView;
  [*&v11[OBJC_IVAR____TtC10StickerKit13LivePhotoView_playerView] setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 addSubview_];
  [v11 addSubview_];
  v14 = *&v11[v13];
  sub_19A763FDC(v14);

  v15 = *&v11[v12];
  v16 = sub_19A763FDC(v15);

  sub_19A616CE8(v16);
  v17 = objc_opt_self();
  sub_19A5F5028(0, &qword_1ED8B2030, 0x1E696ACD8);
  v18 = sub_19A7AB234();

  [v17 activateConstraints_];

  v19 = [v8 videoAsset];
  if (v19)
  {
    v20 = v19;
    v21 = [objc_allocWithZone(MEMORY[0x1E69880B0]) initWithAsset_];
    v22 = sub_19A7AAFE4();
    v39 = v21;
    [v21 addObserver:v11 forKeyPath:v22 options:1 context:&v11[OBJC_IVAR____TtC10StickerKit13LivePhotoView_playerItemContext]];

    v23 = objc_allocWithZone(MEMORY[0x1E6988098]);
    v24 = v21;
    v38 = v8;
    v25 = [v23 initWithPlayerItem_];
    [v25 setActionAtItemEnd_];
    [v25 setMuted_];
    v26 = *&v11[v13];
    v27 = OBJC_IVAR____TtC10StickerKit10PlayerView_player;
    v37 = v7;
    v28 = *&v26[OBJC_IVAR____TtC10StickerKit10PlayerView_player];
    *&v26[OBJC_IVAR____TtC10StickerKit10PlayerView_player] = v25;
    v29 = v26;
    v30 = v25;

    v31 = [v29 layer];
    objc_opt_self();
    v32 = swift_dynamicCastObjCClassUnconditional();
    v33 = *&v26[v27];
    [v32 setPlayer_];

    v34 = *&v11[v13];
    v35 = *&v34[OBJC_IVAR____TtC10StickerKit10PlayerView_playerItem];
    *&v34[OBJC_IVAR____TtC10StickerKit10PlayerView_playerItem] = v39;
  }

  else
  {

    v35 = v11;
  }

  return v11;
}

void sub_19A763A24(uint64_t a1, uint64_t a2, char *a3, void *a4, char *a5)
{
  if (!a5 || &v5[OBJC_IVAR____TtC10StickerKit13LivePhotoView_playerItemContext] != a5)
  {
    if (a2)
    {
      v18 = sub_19A7AAFE4();
    }

    else
    {
      v18 = 0;
    }

    sub_19A6A60B4(a3, &v32);
    v19 = *(&v33 + 1);
    if (*(&v33 + 1))
    {
      v20 = __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
      v21 = *(v19 - 8);
      v22 = MEMORY[0x1EEE9AC00](v20);
      v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v24, v22);
      v25 = sub_19A7AC054();
      (*(v21 + 8))(v24, v19);
      __swift_destroy_boxed_opaque_existential_1(&v32);
      if (!a4)
      {
LABEL_21:
        v26 = type metadata accessor for LivePhotoView();
        v39.receiver = v5;
        v39.super_class = v26;
        objc_msgSendSuper2(&v39, sel_observeValueForKeyPath_ofObject_change_context_, v18, v25, a4, a5);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v25 = 0;
      if (!a4)
      {
        goto LABEL_21;
      }
    }

    type metadata accessor for NSKeyValueChangeKey(0);
    sub_19A765C84();
    a4 = sub_19A7AAF34();
    goto LABEL_21;
  }

  if (a2 && (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_19A7AC064() & 1) != 0))
  {
    sub_19A6A60B4(a3, &v37);
    if (!v38)
    {
      sub_19A5F2B54(&v37, &unk_1EAFCD750, &unk_19A7B87D0);
      return;
    }

    sub_19A625DC4(&v37, &v32);
    sub_19A5F5028(0, &qword_1EAFCF8C8, 0x1E69880B0);
    swift_dynamicCast();
    v9 = v36;
    if ([v36 status] != 1)
    {
      goto LABEL_32;
    }

    v10 = [v9 loadedTimeRanges];
    sub_19A5F5028(0, &qword_1EAFCDAD0, 0x1E696B098);
    v11 = sub_19A7AB254();

    if (v11 >> 62)
    {
      if (sub_19A7ABBE4())
      {
        goto LABEL_11;
      }
    }

    else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_11:
      if ((v11 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x19A906130](0, v11);
        goto LABEL_14;
      }

      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v12 = *(v11 + 32);
LABEL_14:
        v13 = v12;

        [v13 CMTimeRangeValue];
        v14 = v32;
        v15 = v35;
        v16 = v34;
        v31 = v33;
        v17 = *(&v32 + 1);

        *&v32 = v14;
        *(&v32 + 1) = v17;
        v33 = v31;
        v34 = v16;
        v35 = v15;
        [v9 setLoopTimeRange_];
LABEL_30:
        if (v5[OBJC_IVAR____TtC10StickerKit13LivePhotoView_startPlaybackWhenReady] == 1)
        {
          sub_19A765330();
        }

LABEL_32:

        return;
      }

      __break(1u);
      goto LABEL_36;
    }

    a3 = v5;

    if (qword_1EAFCB6C0 == -1)
    {
LABEL_27:
      v27 = sub_19A7A9384();
      __swift_project_value_buffer(v27, qword_1EAFCF868);
      v28 = sub_19A7A9364();
      v29 = sub_19A7AB584();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_19A5EE000, v28, v29, "Could not set loopTimeRange", v30, 2u);
        MEMORY[0x19A907A30](v30, -1, -1);
      }

      v5 = a3;
      goto LABEL_30;
    }

LABEL_36:
    swift_once();
    goto LABEL_27;
  }
}

uint64_t sub_19A763FDC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100, &unk_19A7B6CC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_19A7BB2E0;
  v4 = [a1 leftAnchor];
  v5 = [v1 leftAnchor];
  v6 = [v4 constraintEqualToAnchor_];

  *(v3 + 32) = v6;
  v7 = [a1 rightAnchor];
  v8 = [v1 rightAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v3 + 40) = v9;
  v10 = [a1 topAnchor];
  v11 = [v1 topAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v3 + 48) = v12;
  v13 = [a1 bottomAnchor];
  v14 = [v1 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v3 + 56) = v15;
  return v3;
}

void sub_19A76425C(void *a1, _OWORD *a2, double a3)
{
  v4 = v3;
  v5 = a2[1];
  v95 = *a2;
  v96 = v5;
  v97 = a2[2];
  if (!a1)
  {
    if (qword_1EAFCB6C0 != -1)
    {
      swift_once();
    }

    v15 = sub_19A7A9384();
    __swift_project_value_buffer(v15, qword_1EAFCF868);
    v16 = v3;
    oslog = sub_19A7A9364();
    v17 = sub_19A7AB584();

    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v16;
      *v19 = v16;
      v20 = v16;
      _os_log_impl(&dword_19A5EE000, oslog, v17, "Nil video composition for LivePhotoAuditionView %@.", v18, 0xCu);
      sub_19A5F2B54(v19, &unk_1EAFCD7D0, &qword_19A7BB5F0);
      MEMORY[0x19A907A30](v19, -1, -1);
      MEMORY[0x19A907A30](v18, -1, -1);
    }

    goto LABEL_14;
  }

  v88 = a1;
  if (sub_19A7AB4F4() & 1) == 0 || (sub_19A7AB4E4() & 1) != 0 || (sub_19A7AB4C4())
  {
    if (qword_1EAFCB6C0 != -1)
    {
      swift_once();
    }

    v8 = sub_19A7A9384();
    __swift_project_value_buffer(v8, qword_1EAFCF868);
    v9 = v4;
    oslog = sub_19A7A9364();
    v10 = sub_19A7AB584();

    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v9;
      *v12 = v9;
      v13 = v9;
      _os_log_impl(&dword_19A5EE000, oslog, v10, "invalid time range for video composition for LivePhotoAuditionView. %@", v11, 0xCu);
      sub_19A5F2B54(v12, &unk_1EAFCD7D0, &qword_19A7BB5F0);
      MEMORY[0x19A907A30](v12, -1, -1);
      v14 = v11;
LABEL_9:
      MEMORY[0x19A907A30](v14, -1, -1);

LABEL_14:
      v21 = oslog;
LABEL_25:

      return;
    }

    goto LABEL_24;
  }

  v22 = *&v4[OBJC_IVAR____TtC10StickerKit13LivePhotoView_livePhoto];
  v23 = [v22 videoAsset];
  if (!v23)
  {
LABEL_20:
    if (qword_1EAFCB6C0 != -1)
    {
      swift_once();
    }

    v53 = sub_19A7A9384();
    __swift_project_value_buffer(v53, qword_1EAFCF868);
    v54 = v4;
    oslog = sub_19A7A9364();
    v55 = sub_19A7AB584();

    if (os_log_type_enabled(oslog, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 138412802;
      v58 = [v22 videoAsset];
      *(v56 + 4) = v58;
      *v57 = v58;
      *(v56 + 12) = 2112;
      v59 = *(*&v54[OBJC_IVAR____TtC10StickerKit13LivePhotoView_playerView] + OBJC_IVAR____TtC10StickerKit10PlayerView_player);
      *(v56 + 14) = v59;
      *(v56 + 22) = 2112;
      *(v56 + 24) = v54;
      v57[1] = v59;
      v57[2] = v54;
      v60 = v54;
      v61 = v59;
      _os_log_impl(&dword_19A5EE000, oslog, v55, "Either live photo asset %@ or player %@ are nil. %@", v56, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD7D0, &qword_19A7BB5F0);
      swift_arrayDestroy();
      MEMORY[0x19A907A30](v57, -1, -1);
      v14 = v56;
      goto LABEL_9;
    }

LABEL_24:

    v21 = v88;
    goto LABEL_25;
  }

  v24 = v23;
  v25 = OBJC_IVAR____TtC10StickerKit13LivePhotoView_playerView;
  v26 = *(*&v4[OBJC_IVAR____TtC10StickerKit13LivePhotoView_playerView] + OBJC_IVAR____TtC10StickerKit10PlayerView_player);
  if (!v26)
  {

    goto LABEL_20;
  }

  v27 = swift_allocObject();
  *(v27 + 16) = *a2;
  v28 = v27;
  *(v27 + 32) = *(a2 + 2);
  v29 = v26;
  sub_19A7AB4D4();
  osloga = v24;
  v30 = [objc_allocWithZone(MEMORY[0x1E69880B0]) initWithAsset_];
  *lhs = v95;
  *&lhs[16] = v96;
  v94 = v97;
  [v30 setLoopTimeRange_];
  [v30 setVideoComposition_];
  v31 = objc_allocWithZone(MEMORY[0x1E6988098]);
  v87 = v30;
  v32 = [v31 initWithPlayerItem_];
  [v32 setActionAtItemEnd_];
  [v32 setMuted_];
  type metadata accessor for PlayerView();
  v33 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v33 setContentMode_];
  [v33 setHidden_];
  [v33 setTranslatesAutoresizingMaskIntoConstraints_];

  [v4 insertSubview:v33 aboveSubview:*&v4[v25]];
  v34 = objc_opt_self();
  sub_19A763FDC(v33);
  sub_19A5F5028(0, &qword_1ED8B2030, 0x1E696ACD8);
  v35 = sub_19A7AB234();

  [v34 activateConstraints_];

  v36 = OBJC_IVAR____TtC10StickerKit10PlayerView_player;
  v37 = *&v33[OBJC_IVAR____TtC10StickerKit10PlayerView_player];
  *&v33[OBJC_IVAR____TtC10StickerKit10PlayerView_player] = v32;
  v38 = v32;

  v39 = [v33 layer];
  objc_opt_self();
  v40 = swift_dynamicCastObjCClassUnconditional();
  v41 = *&v33[v36];
  [v40 setPlayer_];

  v42 = *&v33[OBJC_IVAR____TtC10StickerKit10PlayerView_playerItem];
  *&v33[OBJC_IVAR____TtC10StickerKit10PlayerView_playerItem] = v30;

  v43 = v29;
  [v29 currentTime];
  v44 = *lhs;
  v45 = *&lhs[8];
  v46 = *&lhs[12];
  v47 = *&lhs[16];
  sub_19A7AB8C4();
  v49 = v48;
  sub_19A7AB8C4();
  if (a3 + a3 <= v49 - v50)
  {
    v62 = sub_19A7AB8B4();
    rhs.epoch = v63;
    *lhs = v44;
    *&lhs[8] = v45;
    *&lhs[12] = v46;
    *&lhs[16] = v47;
    rhs.value = v62;
    rhs.timescale = v64;
    rhs.flags = v65;
    CMTimeAdd(&v91, lhs, &rhs);
    v51 = *&v91.timescale;
    epoch = v91.epoch;
    value = v91.value;
    v28[2] = v91.value;
    v28[3] = v51;
    v28[4] = epoch;
  }

  else
  {
    value = v28[2];
    v51 = v28[3];
    epoch = v28[4];
  }

  v66 = sub_19A7AB8A4();
  v68 = v67;
  v85 = v69;
  v83 = v66;
  v84 = HIDWORD(v67);
  v70 = sub_19A7AB8A4();
  v72 = v71;
  v82 = v73;
  v80 = v70;
  v81 = HIDWORD(v71);
  v74 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v75 = swift_allocObject();
  v75[2] = v74;
  v75[3] = v28;
  v75[4] = v33;
  v75[5] = v43;
  v75[6] = v38;
  *&v94 = sub_19A765BE8;
  *(&v94 + 1) = v75;
  *lhs = MEMORY[0x1E69E9820];
  *&lhs[8] = 1107296256;
  *&lhs[16] = sub_19A765D14;
  *&lhs[24] = &block_descriptor_54;
  v76 = _Block_copy(lhs);
  v77 = v43;
  v78 = v33;
  v79 = v38;

  *&lhs[8] = v51;
  *&lhs[16] = epoch;
  rhs.timescale = v68;
  rhs.flags = v84;
  rhs.epoch = v85;
  *lhs = value;
  v91.value = v80;
  v91.timescale = v72;
  v91.flags = v81;
  v91.epoch = v82;
  rhs.value = v83;
  [v79 seekToTime:lhs toleranceBefore:&rhs toleranceAfter:&v91 completionHandler:v76];
  _Block_release(v76);
}

void sub_19A764BB0(char a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    sub_19A7AB8C4();
    if (v13 == 0.0)
    {
      v14 = sub_19A7AB8A4();
      v16 = v15;
      v18 = v17;
      v19 = HIDWORD(v15);
      swift_beginAccess();
      *(a3 + 16) = v14;
      *(a3 + 24) = v16;
      *(a3 + 28) = v19;
      *(a3 + 32) = v18;
    }

    [a4 setHidden_];
    [a4 setAlpha_];
    swift_beginAccess();
    sub_19A7AB8C4();
    if (v20 > 0.2)
    {
      swift_beginAccess();
      v21 = *(a3 + 32);
      v22 = *(a3 + 24);
      lhs.value = *(a3 + 16);
      *&lhs.timescale = v22;
      lhs.epoch = v21;
      rhs.value = sub_19A7AB8B4();
      rhs.timescale = v23;
      rhs.flags = v24;
      rhs.epoch = v25;
      CMTimeSubtract(&v54, &lhs, &rhs);
      value = v54.value;
      epoch = v54.epoch;
      v28 = *&v54.timescale;
      swift_beginAccess();
      *(a3 + 16) = value;
      *(a3 + 24) = v28;
      *(a3 + 32) = epoch;
    }

    swift_beginAccess();
    sub_19A7AB8C4();
    if (v29 == 0.0)
    {
      v30 = sub_19A7AB8A4();
      v32 = v31;
      v34 = v33;
      v35 = HIDWORD(v31);
      swift_beginAccess();
      *(a3 + 16) = v30;
      *(a3 + 24) = v32;
      *(a3 + 28) = v35;
      *(a3 + 32) = v34;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100, &unk_19A7B6CC0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_19A7B6C40;
    swift_beginAccess();
    v37 = *(a3 + 16);
    v38 = *(a3 + 32);
    v39 = *(a3 + 24);
    v40 = objc_opt_self();
    lhs.value = v37;
    *&lhs.timescale = v39;
    lhs.epoch = v38;
    *(v36 + 32) = [v40 valueWithCMTime_];
    sub_19A5F5028(0, &qword_1EAFCDAD0, 0x1E696B098);
    v41 = sub_19A7AB234();

    v42 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v43 = swift_allocObject();
    *(v43 + 16) = v42;
    *(v43 + 24) = a1 & 1;
    *(v43 + 32) = a5;
    *(v43 + 40) = a6;
    *(v43 + 48) = a4;
    v52 = sub_19A765BF8;
    v53 = v43;
    lhs.value = MEMORY[0x1E69E9820];
    *&lhs.timescale = 1107296256;
    lhs.epoch = sub_19A6815D4;
    v51 = &block_descriptor_61;
    v44 = _Block_copy(&lhs);
    v45 = a5;
    v46 = a6;
    v47 = a4;

    v48 = [v45 addBoundaryTimeObserverForTimes:v41 queue:0 usingBlock:v44];
    _Block_release(v44);

    sub_19A7ABB44();
    swift_unknownObjectRelease();
    v49 = OBJC_IVAR____TtC10StickerKit13LivePhotoView_playerObserver;
    swift_beginAccess();
    sub_19A765C0C(&lhs, v12 + v49);
    swift_endAccess();
  }
}