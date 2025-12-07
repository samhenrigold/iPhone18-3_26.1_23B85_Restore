uint64_t sub_19749244C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9)
{
  v42 = a8;
  v15 = *(a5 - 8);
  v41 = a9;
  MEMORY[0x1EEE9AC00](a1, a2);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_197522B2C();
  v19 = swift_dynamicCastClass();
  if (v19)
  {
    v20 = v19;
    (*(v15 + 16))(v17, a3, a5);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    type metadata accessor for _KKMDBackingData(0, AssociatedTypeWitness, AssociatedConformanceWitness, v22);

    if (swift_dynamicCast())
    {
      sub_197512340(v20, v41, v48);
    }

    else
    {
      v31 = v41;
      (*(a7 + 72))(v20, a6, v41, a5, a7);
      PersistentModel.persistentModelID.getter(a6, v31, v48);
      swift_unknownObjectRelease();
    }

    v33 = *&v48[0];
    v34 = BYTE8(v48[0]);
    goto LABEL_11;
  }

  v23 = sub_1973F8364(a2);
  v25 = *(a4 + 16);
  if (*(v25 + 16))
  {
    v26 = sub_1973F4028(v23, v24);
    v28 = v27;

    if (v28)
    {
      v29 = *(*(v25 + 56) + 8 * v26);
      swift_beginAccess();
      if ((v29 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v30 = *(a4 + 32);
        if (v29 < *(v30 + 16))
        {
          sub_1973FE14C(v30 + 32 * v29 + 32, v48, &qword_1EAF2AF20, &unk_19752F320);
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_24:
      sub_1973FE58C(&v45, &qword_1EAF2AF20, &unk_19752F320);
      goto LABEL_25;
    }
  }

  else
  {
  }

  memset(v48, 0, sizeof(v48));
LABEL_14:
  sub_1973FE14C(v48, &v45, &qword_1EAF2AF20, &unk_19752F320);
  if (v47)
  {
    if (swift_dynamicCast())
    {
      PersistentModel.persistentModelID.getter(a6, v41, &v45);
      swift_unknownObjectRelease();
      result = sub_1973FE58C(v48, &qword_1EAF2AF20, &unk_19752F320);
      v33 = v45;
      v34 = v46;
LABEL_11:
      v35 = v42;
      *v42 = v33;
      *(v35 + 8) = v34;
      return result;
    }
  }

  else
  {
    sub_1973FE58C(&v45, &qword_1EAF2AF20, &unk_19752F320);
  }

  sub_1973FE14C(v48, &v45, &qword_1EAF2AF20, &unk_19752F320);
  if (!v47)
  {
    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5F0, &qword_19752EA48);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_1975221EC();
    v43 = v45;
    v44 = v46;
    MEMORY[0x19A8DFF80](0xD00000000000001ALL, 0x8000000197525A50);
    v45 = a2;
    sub_19752202C();
    sub_19752235C();
    MEMORY[0x19A8DFF80](0xD000000000000024, 0x8000000197525A70);
    sub_1973FE14C(v48, &v45, &qword_1EAF2AF20, &unk_19752F320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
    v39 = sub_1975217CC();
    MEMORY[0x19A8DFF80](v39);

    result = sub_1975223EC();
    __break(1u);
    return result;
  }

  sub_1973FE58C(v48, &qword_1EAF2AF20, &unk_19752F320);
  v36 = v43;
  v37 = v44;
  result = swift_unknownObjectRelease();
  v38 = v42;
  *v42 = v36;
  *(v38 + 8) = v37;
  return result;
}

char *sub_19749295C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = sub_1975214DC();
  if (v17 < 1)
  {
    __break(1u);
  }

  else
  {
    v18 = *v16;
    v19 = swift_conformsToProtocol2();
    if (v19)
    {
      v20 = v18 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      return sub_197492AE8(v18, a2, a3, a4, a5, a6, a7, v18, a8, a9, v19);
    }
  }

  sub_1975221EC();
  MEMORY[0x19A8DFF80](0x742064656C696146, 0xEF2074736163206FLL);
  v22 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v22);

  MEMORY[0x19A8DFF80](0xD000000000000023, 0x8000000197524F60);
  result = sub_1975223EC();
  __break(1u);
  return result;
}

char *sub_197492AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v56 = a11;
  v16 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v18 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = a8;
  v55 = sub_197521AAC();
  sub_197522B2C();
  v20 = swift_dynamicCastClass();
  if (v20)
  {
    v21 = v20;
    v22 = *(v16 + 16);
    v53[1] = a3;
    v22(v18, a3, a5);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    type metadata accessor for _KKMDBackingData(0, AssociatedTypeWitness, AssociatedConformanceWitness, v24);

    if (swift_dynamicCast())
    {
      v57 = v56;
      WitnessTable = swift_getWitnessTable();
      v26 = sub_197512784(v21, v54, WitnessTable);

LABEL_25:

      return v26;
    }

    v53[0] = a2;
    v38 = sub_1973F8364(a2);
    v40 = *(a4 + 16);
    if (*(v40 + 16))
    {
      v41 = sub_1973F4028(v38, v39);
      v43 = v42;

      if (v43)
      {
        v44 = *(*(v40 + 56) + 8 * v41);
        swift_beginAccess();
        if ((v44 & 0x8000000000000000) == 0)
        {
          v45 = *(a4 + 32);
          if (v44 < *(v45 + 16))
          {
            sub_1973FE14C(v45 + 32 * v44 + 32, &v62, &qword_1EAF2AF20, &unk_19752F320);
            if (*(&v63 + 1))
            {
              sub_1974028B8(&v62, v68);
              sub_197404860(v68, v67);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B600, &qword_19752EA58);
              if (swift_dynamicCast())
              {
                __swift_destroy_boxed_opaque_existential_1Tm_1(v68);

                goto LABEL_18;
              }

              v65 = 0u;
              v66 = 0u;
              v63 = 0u;
              v64 = 0u;
              v62 = 0u;
              sub_1973FE58C(&v62, &qword_1EAF2B5F8, &qword_19752EA50);
              sub_197404860(v68, &v62);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
              if (swift_dynamicCast())
              {
                __swift_destroy_boxed_opaque_existential_1Tm_1(v68);

                return *&v60[0];
              }

              sub_197404860(v68, &v62);
              v51 = v55;
              if (swift_dynamicCast())
              {
                *&v62 = *&v60[0];
                v58 = v56;
                v52 = swift_getWitnessTable();
                v26 = sub_19743055C(1, v51, v52);

                goto LABEL_35;
              }

              goto LABEL_40;
            }

LABEL_24:
            sub_1973FE58C(&v62, &qword_1EAF2AF20, &unk_19752F320);
            v46 = *(a9 + 88);
            v47 = v55;
            v59 = v56;
            v48 = swift_getWitnessTable();
            v46(&v62, v21, v47, v54, v48, a5, a9);
            *&v60[0] = v62;
            v26 = sub_19743055C(1, v47, v48);

            goto LABEL_25;
          }

LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

LABEL_38:
        __break(1u);
        goto LABEL_39;
      }
    }

    else
    {
    }

    v63 = 0u;
    v62 = 0u;
    goto LABEL_24;
  }

  v27 = sub_1973F8364(a2);
  v29 = *(a4 + 16);
  if (!*(v29 + 16))
  {

    goto LABEL_20;
  }

  v30 = a4;
  v31 = v56;
  v32 = sub_1973F4028(v27, v28);
  v34 = v33;

  if ((v34 & 1) == 0)
  {
LABEL_20:
    v63 = 0u;
    v62 = 0u;
    goto LABEL_21;
  }

  v35 = *(*(v29 + 56) + 8 * v32);
  swift_beginAccess();
  if ((v35 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  v36 = *(v30 + 32);
  if (v35 >= *(v36 + 16))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  sub_1973FE14C(v36 + 32 * v35 + 32, &v62, &qword_1EAF2AF20, &unk_19752F320);
  v37 = v55;
  if (!*(&v63 + 1))
  {
LABEL_21:
    sub_1973FE58C(&v62, &qword_1EAF2AF20, &unk_19752F320);
    return MEMORY[0x1E69E7CC0];
  }

  sub_1974028B8(&v62, v68);
  sub_197404860(v68, v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B600, &qword_19752EA58);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm_1(v68);
LABEL_18:
    v60[3] = v65;
    v60[4] = v66;
    v60[0] = v62;
    v60[1] = v63;
    v60[2] = v64;
    v26 = v62;
    sub_1974416CC(v65, *(&v65 + 1), v66, *(&v66 + 1));
    __swift_destroy_boxed_opaque_existential_1Tm_1(v60 + 1);
    return v26;
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v62 = 0u;
  sub_1973FE58C(&v62, &qword_1EAF2B5F8, &qword_19752EA50);
  sub_197404860(v68, &v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm_1(v68);
    return *&v60[0];
  }

  sub_197404860(v68, &v62);
  if (swift_dynamicCast())
  {
    v61 = v31;
    *&v62 = *&v60[0];
    v50 = swift_getWitnessTable();
    v26 = sub_19743055C(1, v37, v50);
LABEL_35:
    __swift_destroy_boxed_opaque_existential_1Tm_1(v68);

    return v26;
  }

LABEL_40:
  *&v62 = 0;
  *(&v62 + 1) = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000027, 0x8000000197525AD0);
  sub_19752235C();
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_197493308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v112 = a4;
  v110 = a6;
  v119 = 0u;
  v120 = 0u;
  v10 = sub_1973F8364(a1);
  v12 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for Schema.Entity();
  v15 = sub_1973FDF38(AssociatedTypeWitness, AssociatedConformanceWitness);
  swift_beginAccess();
  v16 = *(v15 + 96);
  if (*(v16 + 16) && (v17 = sub_1973F4028(v10, v12), (v18 & 1) != 0))
  {
    v19 = *(*(v16 + 56) + 8 * v17);
    swift_endAccess();
    if ((*(v19 + 120) & 0x90) != 0)
    {

      *&v113 = a2;
      MetatypeMetadata = swift_getMetatypeMetadata();
      if (sub_1974482A8(&v113, MetatypeMetadata))
      {
        *&v113 = a2;
        v21 = swift_conformsToProtocol2();
        if (v21 && a2)
        {
          v22 = v21;
          do
          {
            sub_1973F732C(a2, &v113, a2, v22);
            a2 = v113;
            v22 = swift_conformsToProtocol2();
            if (v22)
            {
              v23 = a2 == 0;
            }

            else
            {
              v23 = 1;
            }
          }

          while (!v23);
        }

        v24 = sub_197521F5C();
        v25 = *(v24 - 8);
        MEMORY[0x1EEE9AC00](v24, v26);
        v28 = &v109 - v27;
        v29 = a3;
        v30 = v112;
        sub_197494C0C(a2, a1, v111, v29, v112, a2, a5);
        v31 = *(a2 - 8);
        if ((*(v31 + 48))(v28, 1, a2) == 1)
        {
          sub_1973FE58C(&v119, &qword_1EAF2AF20, &unk_19752F320);

          (*(v25 + 8))(v28, v24);
          v113 = 0u;
          v114 = 0u;
        }

        else
        {
          *(&v114 + 1) = a2;
          boxed_opaque_existential_2Tm_0 = __swift_allocate_boxed_opaque_existential_2Tm_0(&v113);
          (*(v31 + 32))(boxed_opaque_existential_2Tm_0, v28, a2);

          sub_1973FE58C(&v119, &qword_1EAF2AF20, &unk_19752F320);
        }

        v119 = v113;
        v120 = v114;
      }

      else
      {
        sub_197522B2C();
        v67 = swift_dynamicCastClassUnconditional();
        v68 = *(a5 + 104);
        *(&v114 + 1) = v112;
        __swift_allocate_boxed_opaque_existential_2Tm_0(&v113);
        v68(v67, v112, a3, a5);

        sub_1973FE58C(&v119, &qword_1EAF2AF20, &unk_19752F320);
        v119 = v113;
        v120 = v114;
        v30 = v112;
      }

      goto LABEL_61;
    }
  }

  else
  {
    swift_endAccess();
  }

  v32 = swift_conformsToProtocol2();
  if (v32 && a2)
  {
    v33 = v32;

    v34 = a3;
    v30 = v112;
    v35 = sub_1974945E4(a2, a1, v111, v34, v112, a2, a5, v33);
    v36 = v110;
    if (v35)
    {
      ObjectType = swift_getObjectType();

      sub_1973FE58C(&v119, &qword_1EAF2AF20, &unk_19752F320);
    }

    else
    {
      sub_1973FE58C(&v119, &qword_1EAF2AF20, &unk_19752F320);

      ObjectType = 0;
    }

    goto LABEL_64;
  }

  v38 = swift_conformsToProtocol2();
  if (v38 && a2)
  {
    v39 = v38;
    *&v113 = a2;
    v40 = a2;
    do
    {
      sub_1973F732C(v40, &v113, v40, v39);
      v40 = v113;
      v39 = swift_conformsToProtocol2();
      if (v39)
      {
        v41 = v40 == 0;
      }

      else
      {
        v41 = 1;
      }
    }

    while (!v41);
    v42 = swift_conformsToProtocol2();
    if (v42)
    {
      v43 = v40 == 0;
    }

    else
    {
      v43 = 1;
    }

    if (!v43)
    {
      v64 = v42;

      v65 = a3;
      v30 = v112;
      v66 = sub_197494B40(v40, a1, v111, v65, v112, v40, a5, v64);
      v35 = v66;
      if (!v66)
      {
        sub_1973FE58C(&v119, &qword_1EAF2AF20, &unk_19752F320);

        ObjectType = 0;
        goto LABEL_63;
      }

      v49 = swift_getObjectType();
LABEL_55:
      ObjectType = v49;

      sub_1973FE58C(&v119, &qword_1EAF2AF20, &unk_19752F320);
LABEL_63:
      v36 = v110;
LABEL_64:
      *&v120 = 0;
      v119 = v35;
      *(&v120 + 1) = ObjectType;
      goto LABEL_78;
    }

    if (!swift_conformsToProtocol2() || !v40)
    {
      v69 = dynamic_cast_existential_2_conditional(v40, v40, MEMORY[0x1E69E6440], MEMORY[0x1E69E5E78]);
      if (!v69)
      {
        *&v113 = 0;
        *(&v113 + 1) = 0xE000000000000000;
        sub_1975221EC();

        *&v113 = 0xD000000000000029;
        *(&v113 + 1) = 0x8000000197524E40;
        v72 = sub_197522B8C();
        MEMORY[0x19A8DFF80](v72);

        goto LABEL_99;
      }

LABEL_71:
      v75 = v69;
      v76 = v70;
      v77 = v71;

      v78 = sub_197521F5C();
      v109 = &v109;
      v79 = *(v78 - 8);
      MEMORY[0x1EEE9AC00](v78, v84);
      v82 = &v109 - v85;
      v86 = a3;
      v30 = v112;
      sub_197494A30(v75, a1, v111, v86, v112, v75, a5);
      goto LABEL_72;
    }

    sub_1975214DC();
    if ((v44 & 0x8000000000000000) == 0)
    {
      if (v44)
      {
        v45 = sub_1975214DC();
        if (v46 >= 1)
        {
          v47 = *v45;
          if (swift_conformsToProtocol2() && v47)
          {

            v48 = a3;
            v30 = v112;
            ObjectType = sub_197494CDC(v47, a1, v111, v48, v112, v47, a5);
            if (!ObjectType)
            {
              sub_1973FE58C(&v119, &qword_1EAF2AF20, &unk_19752F320);

              v35 = 0;
              goto LABEL_63;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
            v35 = sub_19752234C();

            v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B560, &unk_19752F330);
            goto LABEL_55;
          }

          if (dynamic_cast_existential_2_conditional(v47, v47, MEMORY[0x1E69E6440], MEMORY[0x1E69E5E78]))
          {
            v94 = dynamic_cast_existential_2_conditional(v40, v40, MEMORY[0x1E69E6440], MEMORY[0x1E69E5E78]);
            if (v94)
            {
              v75 = v94;
              v97 = v95;
              v98 = v96;

              v99 = sub_197521F5C();
              v109 = &v109;
              v100 = *(v99 - 8);
              MEMORY[0x1EEE9AC00](v99, v101);
              v82 = &v109 - v102;
              v103 = a3;
              v30 = v112;
              sub_197494A30(v75, a1, v111, v103, v112, v75, a5);
              v87 = *(v75 - 8);
              if ((*(v87 + 48))(v82, 1, v75) == 1)
              {
                sub_1973FE58C(&v119, &qword_1EAF2AF20, &unk_19752F320);

                (*(v100 + 8))(v82, v99);
                goto LABEL_74;
              }

              *(&v114 + 1) = v75;
              v115 = v97;
              v116 = v98;
              goto LABEL_76;
            }
          }

          *&v113 = 0;
          *(&v113 + 1) = 0xE000000000000000;
          sub_1975221EC();

          *&v113 = 0xD00000000000001ALL;
          *(&v113 + 1) = 0x8000000197524F40;
          v107 = sub_197522B8C();
          MEMORY[0x19A8DFF80](v107);

LABEL_99:
          result = sub_1975223EC();
          __break(1u);
          return result;
        }

        goto LABEL_94;
      }

      v69 = dynamic_cast_existential_2_conditional(v40, v40, MEMORY[0x1E69E6440], MEMORY[0x1E69E5E78]);
      if (!v69)
      {
        *&v113 = 0;
        *(&v113 + 1) = 0xE000000000000000;
        sub_1975221EC();

        *&v113 = 0xD00000000000001DLL;
        *(&v113 + 1) = 0x8000000197524E70;
        v108 = sub_197522B8C();
        MEMORY[0x19A8DFF80](v108);

        goto LABEL_99;
      }

      goto LABEL_71;
    }

LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v50 = swift_conformsToProtocol2();
  if (!v50 || !a2)
  {
    v60 = dynamic_cast_existential_2_conditional(a2, a2, MEMORY[0x1E69E6440], MEMORY[0x1E69E5E78]);
    if (!v60)
    {
      sub_1975221EC();

      *&v113 = 0xD000000000000029;
      *(&v113 + 1) = 0x8000000197524E40;
      v63 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v63);

      goto LABEL_99;
    }

    goto LABEL_69;
  }

  v51 = v50;
  sub_1975214DC();
  if (v52 < 0)
  {
    __break(1u);
    goto LABEL_92;
  }

  if (!v52)
  {
    v60 = dynamic_cast_existential_2_conditional(a2, a2, MEMORY[0x1E69E6440], MEMORY[0x1E69E5E78]);
    if (!v60)
    {
      sub_1975221EC();

      *&v113 = 0xD00000000000001DLL;
      *(&v113 + 1) = 0x8000000197524E70;
      v74 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v74);

      goto LABEL_99;
    }

LABEL_69:
    v75 = v60;
    v76 = v61;
    v77 = v62;

    v78 = sub_197521F5C();
    v109 = &v109;
    v79 = *(v78 - 8);
    MEMORY[0x1EEE9AC00](v78, v80);
    v82 = &v109 - v81;
    v83 = a3;
    v30 = v112;
    sub_1974944E0(v83, v75, a5, v76, &v109 - v81);
LABEL_72:
    v87 = *(v75 - 8);
    if ((*(v87 + 48))(v82, 1, v75) == 1)
    {
      sub_1973FE58C(&v119, &qword_1EAF2AF20, &unk_19752F320);

      (*(v79 + 8))(v82, v78);
LABEL_74:
      v117 = 0u;
      v118 = 0u;
LABEL_77:
      v36 = v110;
      v119 = v117;
      v120 = v118;
      goto LABEL_78;
    }

    *(&v114 + 1) = v75;
    v115 = v76;
    v116 = v77;
LABEL_76:
    v88 = __swift_allocate_boxed_opaque_existential_2Tm_0(&v113);
    (*(v87 + 32))(v88, v82, v75);
    v89 = *(&v114 + 1);
    v90 = __swift_project_boxed_opaque_existential_1Tm_0(&v113, *(&v114 + 1));
    *(&v118 + 1) = v89;
    v91 = __swift_allocate_boxed_opaque_existential_2Tm_0(&v117);
    (*(*(v89 - 8) + 16))(v91, v90, v89);

    sub_1973FE58C(&v119, &qword_1EAF2AF20, &unk_19752F320);
    __swift_destroy_boxed_opaque_existential_1Tm_1(&v113);
    goto LABEL_77;
  }

  v53 = sub_1975214DC();
  if (v54 < 1)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v55 = *v53;
  if (!swift_conformsToProtocol2() || !v55)
  {
    if (!dynamic_cast_existential_2_conditional(v55, v55, MEMORY[0x1E69E6440], MEMORY[0x1E69E5E78]))
    {
LABEL_95:
      *&v113 = 0;
      *(&v113 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000039, 0x8000000197524E90);
      v104 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v104);

      goto LABEL_99;
    }

    v60 = dynamic_cast_existential_2_conditional(a2, a2, MEMORY[0x1E69E6440], MEMORY[0x1E69E5E78]);
    if (!v60)
    {
      *&v113 = 0;
      *(&v113 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000001ALL, 0x8000000197524ED0);
      v105 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v105);

      MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
      MEMORY[0x19A8DFF80](0xD000000000000015, 0x8000000197524EF0);
      MEMORY[0x19A8DFF80](0xD000000000000025, 0x8000000197524F10);
      v106 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v106);

      goto LABEL_99;
    }

    goto LABEL_69;
  }

  *(&v114 + 1) = a2;
  v115 = v51;
  __swift_allocate_boxed_opaque_existential_2Tm_0(&v113);
  v56 = a3;
  v30 = v112;
  sub_197494698(a2, a1, v111, v56, v112, a2, a5);
  v57 = *(&v114 + 1);
  v58 = __swift_project_boxed_opaque_existential_1Tm_0(&v113, *(&v114 + 1));
  *(&v118 + 1) = v57;
  v59 = __swift_allocate_boxed_opaque_existential_2Tm_0(&v117);
  (*(*(v57 - 8) + 16))(v59, v58, v57);

  sub_1973FE58C(&v119, &qword_1EAF2AF20, &unk_19752F320);
  v119 = v117;
  v120 = v118;
  __swift_destroy_boxed_opaque_existential_1Tm_1(&v113);
LABEL_61:
  v36 = v110;
LABEL_78:
  sub_1973FE14C(&v119, &v113, &qword_1EAF2AF20, &unk_19752F320);
  if (*(&v114 + 1))
  {
    sub_1973FE58C(&v113, &qword_1EAF2AF20, &unk_19752F320);
    v117 = v119;
    v118 = v120;
    if (*(&v120 + 1))
    {
      sub_1974028B8(&v117, &v113);
      swift_dynamicCast();
      return (*(*(v30 - 8) + 56))(v36, 0, 1, v30);
    }

    v93 = &v117;
  }

  else
  {
    sub_1973FE58C(&v119, &qword_1EAF2AF20, &unk_19752F320);
    v93 = &v113;
  }

  sub_1973FE58C(v93, &qword_1EAF2AF20, &unk_19752F320);
  return (*(*(v30 - 8) + 56))(v36, 1, 1, v30);
}

uint64_t sub_1974944E0@<X0>(uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  swift_getAssociatedTypeWitness();
  sub_197522B2C();
  v11 = swift_dynamicCastClassUnconditional();
  (*(a4 + 64))(v11, a3, a5, a2, a4);
  v12 = *(*(a3 - 8) + 56);

  return v12(a6, 0, 1, a3);
}

uint64_t sub_1974945E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_getAssociatedTypeWitness();
  sub_197522B2C();
  v12 = swift_dynamicCastClassUnconditional();
  return (*(a7 + 72))(v12, a6, a8, a4, a7);
}

uint64_t sub_197494698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = sub_1975214DC();
  if (v16 < 1)
  {
    __break(1u);
  }

  else
  {
    v17 = *v15;
    if (swift_conformsToProtocol2())
    {
      v18 = v17 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      sub_197494884(v17, a2, a3, a4, a5, a6, v17, a7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
      sub_19752234C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B560, &unk_19752F330);
      return swift_dynamicCast();
    }
  }

  sub_1975221EC();
  MEMORY[0x19A8DFF80](0x742064656C696146, 0xEF2074736163206FLL);
  v20 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v20);

  MEMORY[0x19A8DFF80](0xD000000000000023, 0x8000000197524F60);
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_197494884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_getAssociatedTypeWitness();
  v11 = sub_197521AAC();
  sub_197522B2C();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    v14 = *(a8 + 88);

    WitnessTable = swift_getWitnessTable();
    v14(&v17, v13, v11, a7, WitnessTable, a4, a8);

    return v17;
  }

  else
  {
    MEMORY[0x19A8DFF80](0x6961662074736143, 0xEC0000002064656CLL);
    sub_19752202C();
    sub_19752235C();
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_197494A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getAssociatedTypeWitness();
  v9 = sub_197521F5C();
  sub_197522B2C();
  v10 = swift_dynamicCastClassUnconditional();
  v11 = *(a7 + 64);
  WitnessTable = swift_getWitnessTable();
  return v11(v10, v9, WitnessTable, a4, a7);
}

uint64_t sub_197494B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_getAssociatedTypeWitness();
  sub_197521F5C();
  sub_197522B2C();
  v12 = swift_dynamicCastClassUnconditional();
  return (*(a7 + 80))(v12, a6, a8, a4, a7);
}

uint64_t sub_197494C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getAssociatedTypeWitness();
  v9 = sub_197521F5C();
  sub_197522B2C();
  v10 = swift_dynamicCastClassUnconditional();
  return (*(a7 + 104))(v10, v9, a4, a7);
}

uint64_t sub_197494CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getAssociatedTypeWitness();
  sub_197521AAC();
  v10 = sub_197521F5C();
  sub_197522B2C();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    v13 = *(a7 + 88);

    swift_getWitnessTable();
    WitnessTable = swift_getWitnessTable();
    v13(&v16, v12, v10, a6, WitnessTable, a4, a7);

    return v16;
  }

  else
  {
    MEMORY[0x19A8DFF80](0x6961662074736143, 0xEC0000002064656CLL);
    sub_19752202C();
    sub_19752235C();
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_197494EB8@<X0>(char *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = sub_1974A280C(a1, a2, AssociatedTypeWitness, AssociatedConformanceWitness);
  sub_197493308(v16, a3, a4, a5, a6, a7);
}

uint64_t sub_197494FA4(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  sub_197438DC8(a1, v6 + 32);
  return v6;
}

uint64_t sub_197494FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*v3 + 88);
  *&v9 = *(*v3 + 80);
  *(&v9 + 1) = v9;
  v10 = a2;
  v11 = v4;
  v12 = v4;
  v13 = a3;
  type metadata accessor for BackingDataDecoder.BackingDataKeyedDecoding(0, &v9);
  v5 = v3[2];

  v6 = sub_197521A1C();
  sub_19749B32C((v3 + 4), &v9);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  sub_197438DC8(&v9, v7 + 32);
  *&v9 = v7;
  swift_getWitnessTable();
  return sub_19752265C();
}

uint64_t sub_197495114(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_197438DC8(a3, v6 + 32);
  return v6;
}

void sub_19749516C()
{
  sub_1975221EC();

  v0 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v0);

  sub_1975223EC();
  __break(1u);
}

void sub_197495238()
{
  sub_1975221EC();

  v0 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v0);

  sub_1975223EC();
  __break(1u);
}

BOOL sub_197495304()
{
  sub_19749B32C(v0 + 32, v9);
  v1 = v10;
  v2 = v11;
  __swift_project_boxed_opaque_existential_1Tm_0(v9, v10);
  v3 = sub_197522B4C();
  sub_197494EB8(v3, v4, MEMORY[0x1E69E7CA0] + 8, v1, MEMORY[0x1E69E7CA0] + 8, v2, v7);

  v5 = v8 != 0;
  sub_1973FE58C(v7, &qword_1EAF2AF20, &unk_19752F320);
  __swift_destroy_boxed_opaque_existential_1Tm_1(v9);
  return v5;
}

BOOL sub_1974953F0()
{
  sub_19749B32C(v0 + 32, v9);
  v1 = v10;
  v2 = v11;
  __swift_project_boxed_opaque_existential_1Tm_0(v9, v10);
  v3 = sub_197522B4C();
  sub_197494EB8(v3, v4, MEMORY[0x1E69E7CA0] + 8, v1, MEMORY[0x1E69E7CA0] + 8, v2, v7);

  v5 = v8 == 0;
  sub_1973FE58C(v7, &qword_1EAF2AF20, &unk_19752F320);
  __swift_destroy_boxed_opaque_existential_1Tm_1(v9);
  return v5;
}

uint64_t sub_1974954EC()
{
  sub_19749B32C(v0 + 32, v7);
  v1 = v8;
  v2 = v9;
  __swift_project_boxed_opaque_existential_1Tm_0(v7, v8);
  v3 = sub_197522B4C();
  sub_197494EB8(v3, v4, MEMORY[0x1E69E6370], v1, MEMORY[0x1E69E6370], v2, &v10);

  v6 = v10;
  if (v10 == 2)
  {
    __break(1u);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_1(v7);
    return v6 & 1;
  }

  return result;
}

uint64_t sub_1974955D0()
{
  sub_19749B32C(v0 + 32, v8);
  v1 = v9;
  v2 = v10;
  __swift_project_boxed_opaque_existential_1Tm_0(v8, v9);
  v3 = sub_197522B4C();
  sub_197494EB8(v3, v4, MEMORY[0x1E69E6158], v1, MEMORY[0x1E69E6158], v2, v7);

  if (v7[1])
  {
    v6 = v7[0];
    __swift_destroy_boxed_opaque_existential_1Tm_1(v8);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1974956B8()
{
  sub_19749B32C(v0 + 32, v8);
  v1 = v9;
  v2 = v10;
  __swift_project_boxed_opaque_existential_1Tm_0(v8, v9);
  v3 = sub_197522B4C();
  sub_197494EB8(v3, v4, MEMORY[0x1E69E63B0], v1, MEMORY[0x1E69E63B0], v2, &v6);

  if ((v7 & 1) == 0)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm_1(v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1974957A4()
{
  sub_19749B32C(v0 + 32, v8);
  v1 = v9;
  v2 = v10;
  __swift_project_boxed_opaque_existential_1Tm_0(v8, v9);
  v3 = sub_197522B4C();
  sub_197494EB8(v3, v4, MEMORY[0x1E69E6448], v1, MEMORY[0x1E69E6448], v2, &v6);

  if ((v7 & 1) == 0)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm_1(v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_197495890(uint64_t a1, uint64_t a2)
{
  sub_19749B32C(v2 + 32, v12);
  v4 = v13;
  v5 = v14;
  __swift_project_boxed_opaque_existential_1Tm_0(v12, v13);
  v6 = sub_197522B4C();
  sub_197494EB8(v6, v7, a2, v4, a2, v5, &v10);

  if (v11)
  {
    __break(1u);
  }

  else
  {
    v9 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm_1(v12);
    return v9;
  }

  return result;
}

uint64_t sub_197495974(uint64_t a1, uint64_t a2)
{
  sub_19749B32C(v2 + 32, v11);
  v4 = v12;
  v5 = v13;
  __swift_project_boxed_opaque_existential_1Tm_0(v11, v12);
  v6 = sub_197522B4C();
  sub_197494EB8(v6, v7, a2, v4, a2, v5, v10);

  if (v10[1])
  {
    __break(1u);
  }

  else
  {
    v9 = v10[0];
    __swift_destroy_boxed_opaque_existential_1Tm_1(v11);
    return v9;
  }

  return result;
}

uint64_t sub_197495A58(uint64_t a1, uint64_t a2)
{
  sub_19749B32C(v2 + 32, v12);
  v4 = v13;
  v5 = v14;
  __swift_project_boxed_opaque_existential_1Tm_0(v12, v13);
  v6 = sub_197522B4C();
  sub_197494EB8(v6, v7, a2, v4, a2, v5, &v10);

  if (v11)
  {
    __break(1u);
  }

  else
  {
    v9 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm_1(v12);
    return v9;
  }

  return result;
}

uint64_t sub_197495B3C(uint64_t a1, uint64_t a2)
{
  sub_19749B32C(v2 + 32, v12);
  v4 = v13;
  v5 = v14;
  __swift_project_boxed_opaque_existential_1Tm_0(v12, v13);
  v6 = sub_197522B4C();
  sub_197494EB8(v6, v7, a2, v4, a2, v5, &v10);

  if (v11)
  {
    __break(1u);
  }

  else
  {
    v9 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm_1(v12);
    return v9;
  }

  return result;
}

uint64_t sub_197495C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v16 = a3;
  v6 = sub_197521F5C();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v17[-1] - v8;
  sub_19749B32C(v3 + 32, v17);
  v11 = v18;
  v10 = v19;
  __swift_project_boxed_opaque_existential_1Tm_0(v17, v18);
  v12 = sub_197522B4C();
  sub_197494EB8(v12, v13, a1, v11, a2, v10, v9);

  v14 = *(a2 - 8);
  result = (*(v14 + 48))(v9, 1, a2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v14 + 32))(v16, v9, a2);
    return __swift_destroy_boxed_opaque_existential_1Tm_1(v17);
  }

  return result;
}

uint64_t sub_197495DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v5 = *v4;
  v10 = *(*v4 + 80);
  v11 = a3;
  v12 = *(v5 + 104);
  type metadata accessor for BackingDataDecoder.BackingDataKeyedDecoding(0, &v10);
  v6 = v4[2];

  v7 = sub_197521A1C();
  sub_19749B32C((v4 + 4), &v10);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  sub_197438DC8(&v10, v8 + 32);
  *&v10 = v8;
  swift_getWitnessTable();
  return sub_19752265C();
}

void sub_197495ED4()
{
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000025, 0x8000000197524E10);
  sub_1975227FC();
  sub_1975223EC();
  __break(1u);
}

uint64_t sub_197495FA0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 96);
  v4 = sub_197521F5C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - v6;
  sub_197522B5C();
  v8 = *(v3 - 8);
  result = (*(v8 + 48))(v7, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_197496100(a1, v10);
    return (*(v8 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_197496100@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X3>)
{
  v4 = type metadata accessor for BackingDataDecoder(0, *(*v2 + 88), *(*v2 + 112), a2);
  sub_19749B32C((v2 + 4), v9);
  v5 = v2[2];

  v6 = sub_197441730(MEMORY[0x1E69E7CC0]);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  sub_197438DC8(v9, v7 + 32);
  a1[3] = v4;
  result = swift_getWitnessTable();
  a1[4] = result;
  *a1 = v7;
  return result;
}

void *sub_1974961EC()
{

  __swift_destroy_boxed_opaque_existential_1Tm_1((v0 + 32));
  return v0;
}

uint64_t sub_19749621C()
{
  sub_1974961EC();

  return swift_deallocClassInstance();
}

uint64_t sub_19749656C()
{
  result = sub_1975228BC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1974965BC()
{
  result = sub_1975228CC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_197496664()
{
  result = sub_1975228FC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1974966B4()
{
  result = sub_1975228DC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1974967F4()
{
  result = sub_19752290C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_197496844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(a1, a2, a3);
  if (v4)
  {
    return v6;
  }

  return result;
}

void *sub_19749692C()
{

  __swift_destroy_boxed_opaque_existential_1Tm_1((v0 + 32));
  return v0;
}

uint64_t sub_19749695C()
{
  sub_19749692C();

  return swift_deallocClassInstance();
}

uint64_t sub_197496AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v15 = sub_197499D5C(v3[9], v3[2], v3[3], a2, a3);

  v7 = *(v6 + 96);
  v10 = *(v6 + 80);
  v9 = v10;
  v11 = a2;
  v12 = v7;
  v13 = v7;
  v14 = a3;
  type metadata accessor for BackingDataEncoder.BackingDataKeyedEncoding(0, &v9);
  swift_getWitnessTable();
  return sub_19752279C();
}

void *sub_197496CA0()
{

  __swift_destroy_boxed_opaque_existential_1Tm_1((v0 + 32));

  return v0;
}

uint64_t sub_197496CD8()
{
  sub_197496CA0();

  return swift_deallocClassInstance();
}

uint64_t sub_197496D7C()
{
  sub_19749B32C(*(v0 + 32) + 32, v7);
  v1 = v8;
  v2 = v9;
  __swift_project_boxed_opaque_existential_1Tm_0(v7, v8);
  v3 = sub_197522B4C();
  memset(v6, 0, sizeof(v6));
  sub_19748F0AC(v3, v4, v6, v1, v2);

  sub_1973FE58C(v6, &qword_1EAF2AF20, &unk_19752F320);
  return __swift_destroy_boxed_opaque_existential_1Tm_1(v7);
}

uint64_t sub_197496E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[1] = a2;
  v4[0] = a1;
  return sub_197498390(v4, a3, MEMORY[0x1E69E6158]);
}

uint64_t sub_19749718C(ValueMetadata *a1, uint64_t a2, ValueMetadata *a3)
{
  v5 = v3;
  v8 = *v5;
  v154 = a1;
  v155 = v8;
  Description = a3[-1].Description;
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v12 = (&v145 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v145 - v15;
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v145 - v18;
  v21 = *(v20 + 112);
  v152 = *(v20 + 152);
  v153 = v21;
  if (sub_197522B4C() == 0xD000000000000014 && 0x8000000197524BA0 == v22)
  {
  }

  v151 = a2;
  v24 = sub_19752282C();

  if (v24)
  {
    return result;
  }

  v150 = v4;
  sub_19749B32C(v5[4] + 32, &v158);
  v26 = v155;
  v27 = *(v155 + 96);
  v162 = v27;
  ExtendedExistentialTypeMetadata = swift_getExtendedExistentialTypeMetadata();
  type metadata accessor for _StitchedBackingData(0, *(v26 + 80), *(v26 + 120), v29);
  v149 = ExtendedExistentialTypeMetadata;
  if (swift_dynamicCast())
  {

    v30 = sub_197522B4C();
    v32 = v31;
    v161 = a3;
    boxed_opaque_existential_2Tm_0 = __swift_allocate_boxed_opaque_existential_2Tm_0(&v158);
    Description[2](boxed_opaque_existential_2Tm_0, v154, a3);
    sub_197511DB4(&v158, v30, v32);
LABEL_8:
  }

  v147 = v27;
  v148 = v5;
  v158 = a3;
  v34 = &protocol descriptor for _Optional;
  v35 = swift_conformsToProtocol2();
  if (v35)
  {
    v36 = v35;
    v37 = a3;
    do
    {
      sub_1973F732C(v37, &v158, v37, v36);
      v37 = v158;
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

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B588, &unk_19752E9B0);
  v40 = sub_1975214EC();
  v146 = v39;
  v41 = sub_1975214EC();
  if (!v40)
  {
    if (!v41)
    {
      goto LABEL_21;
    }

LABEL_29:
    v47 = swift_dynamicCastMetatype();
    v48 = v148;
    if (v47)
    {
      v49 = Description[2];
      Description += 2;
      v49(v16, v154, a3);
      v12 = &type metadata for PersistentIdentifier;
      result = swift_dynamicCast();
      if ((result & 1) == 0)
      {
        return result;
      }

      v50 = v158;
      v34 = v159;
      if (v159)
      {
        if (v159 == 1)
        {
          v51 = *(v158 + 72);
          v52 = *(v158 + 80);
        }

        else
        {
          v51 = sub_19750A588();
          v52 = v79;
        }
      }

      else
      {
        v77 = [v158 entityName];
        v51 = sub_1975217BC();
        v52 = v78;
      }

      v80 = *(v48[4] + 24);
      if (*(v80 + 16))
      {
        v81 = *(v80 + 16);
      }

      else
      {
        Strong = swift_weakLoadStrong();
        if (!Strong)
        {
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

        v81 = Strong;
      }

      v83 = *(v81 + 16);

      v84 = *(v83 + 72);

      if (*(v84 + 16))
      {
        sub_1973F4028(v51, v52);
        if (v85)
        {

          sub_19749B32C(v48[4] + 32, &v158);
          v86 = *(v155 + 136);
          type metadata accessor for _KKMDBackingData(0, v147, v86, v87);
          if (swift_dynamicCast())
          {
            if (v156[48] == 1)
            {

              v88 = sub_197522B4C();
              v90 = v89;
              v161 = &type metadata for PersistentIdentifier;
              v158 = v50;
              LOBYTE(v159) = v34;
              sub_1974028EC(v50, v34);
              sub_197511DB4(&v158, v88, v90);
              sub_1974028C8(v50, v34);
              goto LABEL_8;
            }
          }

          v101 = v48[4];
          v102 = *(v101 + 72);
          v103 = *(v101 + 80);

          sub_1974028EC(v102, v103);
          v104 = sub_197522B4C();
          v106 = sub_1974A280C(v104, v105, v147, v86);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3C0, &qword_19752D580);
          v107 = swift_allocObject();
          *(v107 + 16) = xmmword_19752C280;
          *(v107 + 32) = v50;
          *(v107 + 40) = v34;
          type metadata accessor for BackingDataEncodingRelationshipLink();
          v108 = swift_allocObject();
          *(v108 + 16) = v102;
          *(v108 + 24) = v103;
          *(v108 + 32) = v106;
          *(v108 + 40) = v107;
          sub_1974028EC(v50, v34);
          sub_197499498(v108, v109, v110, v111);
          sub_1974028C8(v50, v34);
          goto LABEL_8;
        }
      }

      v158 = 0;
      v159 = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x8000000197525390);
      MEMORY[0x19A8DFF80](v51, v52);
      MEMORY[0x19A8DFF80](0xD000000000000011, 0x80000001975253B0);
      v156 = v50;
      LOBYTE(v157) = v34;
      sub_19752235C();
      goto LABEL_117;
    }

    if (swift_dynamicCastMetatype())
    {
      Description[2](&v12->Kind, v154, a3);
      if (swift_dynamicCast())
      {
        v53 = v158;
        v54 = v159;
        v55 = v160;
        sub_19749B32C(v48[4] + 32, &v158);
        type metadata accessor for _KKMDBackingData(0, v147, *(v155 + 136), v56);
        if (swift_dynamicCast())
        {

          v57 = sub_197522B4C();
          v161 = &type metadata for DefaultStore.DefaultStoreSnapshotValueFuture;
          v158 = v53;
          v159 = v54;
          v160 = v55;
          sub_197511DB4(&v158, v57, v58);
        }

        v158 = 0;
        v159 = 0xE000000000000000;
        sub_1975221EC();
        v156 = v158;
        v157 = v159;
        MEMORY[0x19A8DFF80](0xD000000000000043, 0x8000000197525340);
        sub_19749B32C(v48[4] + 32, &v158);
        sub_1975227FC();
        __swift_destroy_boxed_opaque_existential_1Tm_1(&v158);
      }

      else
      {
        v158 = 0;
        v159 = 0xE000000000000000;
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0xD000000000000027, 0x8000000197525310);
        sub_1975227FC();
      }

      goto LABEL_117;
    }

    v59 = v154;
    return sub_197498390(v59, v151, a3);
  }

  if (!v41 || v40 != v41)
  {
    goto LABEL_29;
  }

LABEL_21:
  sub_1975214DC();
  v42 = v148;
  if (v43 < 1)
  {
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v44 = swift_dynamicCastMetatype();
  v12 = v154;
  if (!v44)
  {
    v59 = v154;
    return sub_197498390(v59, v151, a3);
  }

  Description[2](v19, v154, a3);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
  if (!swift_dynamicCast())
  {
    v158 = 0;
    v159 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000002FLL, 0x80000001975253D0);
    sub_1975227FC();
    goto LABEL_117;
  }

  Description = v158;
  if (!*(v158 + 16))
  {
    v60 = *(v42[4] + 24);
    if (*(v60 + 16))
    {
      v61 = *(v60 + 16);
    }

    else
    {
      v112 = swift_weakLoadStrong();
      if (!v112)
      {
LABEL_104:
        __break(1u);
LABEL_105:

        v158 = 0;
        v159 = 0xE000000000000000;
        sub_1975221EC();

        v158 = 0xD00000000000001DLL;
        v159 = 0x8000000197525390;
        MEMORY[0x19A8DFF80](v34, v12);
        MEMORY[0x19A8DFF80](0xD000000000000011, 0x80000001975253B0);
        v142 = MEMORY[0x19A8E0100](Description, &type metadata for PersistentIdentifier);
        MEMORY[0x19A8DFF80](v142);

LABEL_117:
        result = sub_1975223EC();
        __break(1u);
        return result;
      }

      v61 = v112;
    }

    v113 = *(v61 + 16);

    v114 = *(v113 + 72);

    v115 = sub_1973F7AAC(v147);
    if (*(v114 + 16))
    {
      v117 = sub_1973F4028(v115, v116);
      v119 = v118;

      if (v119)
      {
        v120 = *(*(v114 + 56) + 8 * v117);

        v121 = sub_197522B4C();
        v123 = v122;
        swift_beginAccess();
        v124 = *(v120 + 104);
        if (*(v124 + 16))
        {
          v125 = sub_1973F4028(v121, v123);
          v127 = v126;

          if (v127)
          {
            v128 = *(*(v124 + 56) + 8 * v125);
            swift_endAccess();
            swift_beginAccess();
            v129 = *(v128 + 48);
            if (v129)
            {

              if (sub_197521FFC() != v147)
              {
                v156 = 0;
                v157 = 0xE000000000000000;
                sub_1975221EC();
                MEMORY[0x19A8DFF80](0xD000000000000027, 0x8000000197525450);
                v144 = sub_197522B8C();
                MEMORY[0x19A8DFF80](v144);

                MEMORY[0x19A8DFF80](0x74796E61206F7420, 0xEF202D20676E6968);
                v162 = v129;
                sub_19752202C();
                sub_19752235C();
                goto LABEL_117;
              }

              sub_197521FFC();
              v131 = v130;
              v156 = v130;
              v132 = swift_conformsToProtocol2();
              if (v132)
              {
                v133 = v131 == 0;
              }

              else
              {
                v133 = 1;
              }

              if (v133)
              {
                v12 = v146;
              }

              else
              {
                v134 = v132;
                v12 = v146;
                do
                {
                  sub_1973F732C(v131, &v156, v131, v134);
                  v131 = v156;
                  v134 = swift_conformsToProtocol2();
                  if (v134)
                  {
                    v135 = v131 == 0;
                  }

                  else
                  {
                    v135 = 1;
                  }
                }

                while (!v135);
              }

              v34 = sub_1975214EC();
              v136 = sub_1975214EC();
              if (v34)
              {
                if (v136 && v34 == v136)
                {
LABEL_92:
                  v137 = sub_1975214DC();
                  if (v138 >= 1)
                  {
                    v139 = *v137;
                    if (swift_conformsToProtocol2())
                    {
                      v140 = v139 == 0;
                    }

                    else
                    {
                      v140 = 1;
                    }

                    if (!v140)
                    {

                      v156 = sub_1975215CC();
                      v141 = sub_197521AAC();
                      sub_197498390(&v156, v151, v141);

                      goto LABEL_8;
                    }

                    v156 = 0;
                    v157 = 0xE000000000000000;
                    sub_1975221EC();
                    MEMORY[0x19A8DFF80](0xD000000000000020, 0x8000000197525480);
                    v162 = v129;
                    sub_19752202C();
                    sub_19752235C();
                    goto LABEL_117;
                  }

                  goto LABEL_101;
                }
              }

              else if (!v136)
              {
                goto LABEL_92;
              }
            }

LABEL_114:
            v156 = 0;
            v157 = 0xE000000000000000;
            sub_1975221EC();
            MEMORY[0x19A8DFF80](0xD000000000000022, 0x8000000197525420);
            sub_19752280C();
            MEMORY[0x19A8DFF80](544108320, 0xE400000000000000);
            v162 = v120;
            type metadata accessor for Schema.Entity();
            sub_19752235C();
            goto LABEL_117;
          }
        }

        else
        {
        }

        swift_endAccess();
        goto LABEL_114;
      }
    }

    else
    {
    }

    v158 = 0;
    v159 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001FLL, 0x8000000197525400);
    v143 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v143);

    MEMORY[0x19A8DFF80](544106784, 0xE400000000000000);
    v156 = *(v42[4] + 24);
    type metadata accessor for ModelContext(0);
    sub_19752235C();
    goto LABEL_117;
  }

  v46 = *(v158 + 32);
  if (*(v158 + 40))
  {
    if (*(v158 + 40) == 1)
    {
      v34 = v46[9];
      v12 = v46[10];

      goto LABEL_46;
    }

    sub_1974028EC(*(v158 + 32), 2);
    v34 = sub_19750A588();
    v12 = v66;
    v64 = v46;
    v65 = 2;
  }

  else
  {
    sub_1974028EC(*(v158 + 32), 0);
    v62 = [v46 entityName];
    v34 = sub_1975217BC();
    v12 = v63;

    v64 = v46;
    v65 = 0;
  }

  sub_1974028C8(v64, v65);
LABEL_46:
  v67 = *(v42[4] + 24);
  if (!*(v67 + 16))
  {
    v69 = swift_weakLoadStrong();
    if (v69)
    {
      v68 = v69;
      goto LABEL_50;
    }

    goto LABEL_102;
  }

  v68 = *(v67 + 16);
LABEL_50:
  v70 = *(v68 + 16);

  v71 = *(v70 + 72);

  if (!*(v71 + 16))
  {
    goto LABEL_105;
  }

  sub_1973F4028(v34, v12);
  if ((v72 & 1) == 0)
  {
    goto LABEL_105;
  }

  sub_19749B32C(v42[4] + 32, &v158);
  v73 = *(v155 + 136);
  type metadata accessor for _KKMDBackingData(0, v147, v73, v74);
  if (swift_dynamicCast())
  {
    if (v156[48] == 1)
    {

      v75 = sub_197522B4C();
      v161 = v45;
      v158 = Description;
      sub_197511DB4(&v158, v75, v76);
    }
  }

  v91 = v42[4];
  v92 = *(v91 + 72);
  v93 = *(v91 + 80);

  sub_1974028EC(v92, v93);
  v94 = sub_197522B4C();
  v96 = sub_1974A280C(v94, v95, v147, v73);

  type metadata accessor for BackingDataEncodingRelationshipLink();
  v97 = swift_allocObject();
  *(v97 + 16) = v92;
  *(v97 + 24) = v93;
  *(v97 + 32) = v96;
  *(v97 + 40) = Description;
  sub_197499498(v97, v98, v99, v100);
}

uint64_t sub_197498390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_19749B32C(*(v3 + 32) + 32, v14);
  v6 = v15;
  v7 = v16;
  __swift_project_boxed_opaque_existential_1Tm_0(v14, v15);
  v8 = sub_197522B4C();
  v10 = v9;
  v13[3] = a3;
  boxed_opaque_existential_2Tm_0 = __swift_allocate_boxed_opaque_existential_2Tm_0(v13);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_2Tm_0, a1, a3);
  sub_19748F0AC(v8, v10, v13, v6, v7);

  sub_1973FE58C(v13, &qword_1EAF2AF20, &unk_19752F320);
  return __swift_destroy_boxed_opaque_existential_1Tm_1(v14);
}

void sub_197498518()
{
  v1 = *v0;
  *&v4[0] = 0;
  *(&v4[0] + 1) = 0xE000000000000000;
  sub_1975221EC();
  v6 = v4[0];
  v5 = v0;
  v2 = v1[6];
  v4[0] = v1[5];
  v4[1] = v2;
  v3 = v1[8];
  v4[2] = v1[7];
  v4[3] = v3;
  v4[4] = v1[9];
  type metadata accessor for BackingDataEncoder.BackingDataKeyedEncoding(0, v4);
  sub_1975227FC();
  MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x8000000197524FE0);
  sub_1975223EC();
  __break(1u);
}

uint64_t sub_197498604@<X0>(uint64_t **a1@<X8>)
{
  v3 = *(*v1 + 112);
  v4 = sub_197521F5C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  sub_197522B5C();
  v8 = *(v3 - 8);
  result = (*(v8 + 48))(v7, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_197498748(a1);
    return (*(v8 + 8))(v7, v3);
  }

  return result;
}

uint64_t *sub_197498748@<X0>(uint64_t **a1@<X8>)
{
  v3 = *(*v1 + 136);
  v13[0] = *(*v1 + 96);
  v13[1] = v3;
  v4 = type metadata accessor for BackingDataEncoder(0, v13);
  v5 = v1[4];
  sub_19749B32C(v5 + 32, v13);
  v8 = v5 + 16;
  v7 = *(v5 + 16);
  v6 = *(v8 + 8);
  v10 = v1[2];
  v9 = v1[3];

  v11 = sub_19749A79C(v13, v6, v7, v10, v9);

  __swift_destroy_boxed_opaque_existential_1Tm_1(v13);
  a1[3] = v4;
  result = swift_getWitnessTable();
  a1[4] = result;
  *a1 = v11;
  return result;
}

void *sub_197498858()
{

  return v0;
}

uint64_t sub_197498888()
{
  sub_197498858();

  return swift_deallocClassInstance();
}

uint64_t sub_1974988D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FetchDescriptor(255, *(a1 + 96), *(a1 + 128), a4);
  result = sub_197521F5C();
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_197498C1C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = a4[6];
  v15[0] = a4[5];
  v15[1] = v11;
  v12 = a4[8];
  v15[2] = a4[7];
  v15[3] = v12;
  v15[4] = a4[9];
  v13 = type metadata accessor for BackingDataEncoder.BackingDataKeyedEncoding(0, v15);
  return a6(a1, a2, a3, v13, a5);
}

uint64_t sub_197498CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6)
{
  v6 = a5[6];
  v9[0] = a5[5];
  v9[1] = v6;
  v7 = a5[8];
  v9[2] = a5[7];
  v9[3] = v7;
  v9[4] = a5[9];
  type metadata accessor for BackingDataEncoder.BackingDataKeyedEncoding(0, v9);
  return sub_19752296C();
}

uint64_t sub_197498D60(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  v4 = a3[6];
  v7[0] = a3[5];
  v7[1] = v4;
  v5 = a3[8];
  v7[2] = a3[7];
  v7[3] = v5;
  v7[4] = a3[9];
  type metadata accessor for BackingDataEncoder.BackingDataKeyedEncoding(0, v7);
  return sub_19752294C();
}

uint64_t sub_197498DD8(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  v5 = a4[6];
  v8[0] = a4[5];
  v8[1] = v5;
  v6 = a4[8];
  v8[2] = a4[7];
  v8[3] = v6;
  v8[4] = a4[9];
  type metadata accessor for BackingDataEncoder.BackingDataKeyedEncoding(0, v8);
  return sub_19752293C();
}

uint64_t sub_197499018(__int16 a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v9 = a3[6];
  v13[0] = a3[5];
  v13[1] = v9;
  v10 = a3[8];
  v13[2] = a3[7];
  v13[3] = v10;
  v13[4] = a3[9];
  v11 = type metadata accessor for BackingDataEncoder.BackingDataKeyedEncoding(0, v13);
  return a5(a1 & 0x1FF, a2, v11, a4);
}

uint64_t sub_1974990CC(int a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v9 = a3[6];
  v13[0] = a3[5];
  v13[1] = v9;
  v10 = a3[8];
  v13[2] = a3[7];
  v13[3] = v10;
  v13[4] = a3[9];
  v11 = type metadata accessor for BackingDataEncoder.BackingDataKeyedEncoding(0, v13);
  return a5(a1 & 0x1FFFF, a2, v11, a4);
}

uint64_t sub_197499180(unint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a3[6];
  v13[0] = a3[5];
  v13[1] = v9;
  v10 = a3[8];
  v13[2] = a3[7];
  v13[3] = v10;
  v13[4] = a3[9];
  v11 = type metadata accessor for BackingDataEncoder.BackingDataKeyedEncoding(0, v13);
  return a5(a1 | ((HIDWORD(a1) & 1) << 32), a2, v11, a4);
}

uint64_t sub_19749923C(uint64_t a1, char a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t (*a6)(uint64_t, void, uint64_t, uint64_t, uint64_t))
{
  v11 = a4[6];
  v15[0] = a4[5];
  v15[1] = v11;
  v12 = a4[8];
  v15[2] = a4[7];
  v15[3] = v12;
  v15[4] = a4[9];
  v13 = type metadata accessor for BackingDataEncoder.BackingDataKeyedEncoding(0, v15);
  return a6(a1, a2 & 1, a3, v13, a5);
}

uint64_t sub_1974992F8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t))
{
  v13 = a5[6];
  v17[0] = a5[5];
  v17[1] = v13;
  v14 = a5[8];
  v17[2] = a5[7];
  v17[3] = v14;
  v17[4] = a5[9];
  v15 = type metadata accessor for BackingDataEncoder.BackingDataKeyedEncoding(0, v17);
  return a7(a1, a2, a3 & 1, a4, v15, a6);
}

uint64_t sub_197499398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6)
{
  v6 = a5[6];
  v9[0] = a5[5];
  v9[1] = v6;
  v7 = a5[8];
  v9[2] = a5[7];
  v9[3] = v7;
  v9[4] = a5[9];
  type metadata accessor for BackingDataEncoder.BackingDataKeyedEncoding(0, v9);
  return sub_19752295C();
}

uint64_t sub_197499498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v4;
  Descriptor = type metadata accessor for FetchDescriptor(255, *(*v4 + 96), *(*v4 + 128), a4);
  v9 = sub_197521F5C();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v34[-v13];
  v15 = *(Descriptor - 8);
  MEMORY[0x1EEE9AC00](v12, v16);
  v18 = &v34[-v17];
  (*(v10 + 16))(v14, v4 + *(v7 + 176), v9);
  if ((*(v15 + 48))(v14, 1, Descriptor) == 1)
  {
    return (*(v10 + 8))(v14, v9);
  }

  (*(v15 + 32))(v18, v14, Descriptor);
  sub_19752228C();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    return (*(v15 + 8))(v18, Descriptor);
  }

  v38[0] = *&v18[*(Descriptor + 56)];
  v37 = v20;
  sub_197521AAC();

  swift_getWitnessTable();
  if ((sub_19752197C() & 1) == 0)
  {
    (*(v15 + 8))(v18, Descriptor);
  }

  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  v23 = *(*v4 + 184);
  swift_beginAccess();
  v24 = *(v4 + v23);
  if (!*(v24 + 16))
  {
    goto LABEL_10;
  }

  sub_1974028EC(v21, v22);

  v25 = sub_197403C30(v21, v22);
  if ((v26 & 1) == 0)
  {

    sub_1974028C8(v21, v22);
LABEL_10:
    v28 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  v27 = *(v24 + 56);
  v35 = v22;
  v28 = *(v27 + 8 * v25);

  sub_1974028C8(v21, v35);

LABEL_11:
  v39 = v28;

  MEMORY[0x19A8E00D0](v29);
  if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1975219FC();
  }

  sub_197521A4C();
  v30 = v39;
  v31 = *(a1 + 16);
  v32 = *(a1 + 24);
  swift_beginAccess();
  sub_1974028EC(v31, v32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *(v5 + v23);
  *(v5 + v23) = 0x8000000000000000;
  sub_19747CCF0(v30, v31, v32, isUniquelyReferenced_nonNull_native);
  sub_1974028C8(v31, v32);
  *(v5 + v23) = v36;
  swift_endAccess();

  return (*(v15 + 8))(v18, Descriptor);
}

uint64_t *sub_1974998D8()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_1Tm_1(v0 + 4);
  sub_1974028C8(v0[9], *(v0 + 80));
  v2 = *(*v0 + 176);
  type metadata accessor for FetchDescriptor(255, *(v1 + 96), *(v1 + 128), v3);
  v4 = sub_197521F5C();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return v0;
}

uint64_t sub_1974999C4()
{
  sub_1974998D8();

  return swift_deallocClassInstance();
}

uint64_t sub_197499A78()
{
  sub_1974028C8(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_197499AFC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_197499B38(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
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

      MEMORY[0x19A8E0830](a1, a2, v7);
      sub_197438EA8(0, &qword_1ED7C9360, 0x1E695D620);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_197438EA8(0, &qword_1ED7C9360, 0x1E695D620);
    if (sub_1975220CC() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1975220DC();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_197521F2C();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_197521F3C();

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

void *sub_197499D5C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v9 = *(*a1 + 96);
  v12[0] = *(*a1 + 80);
  v12[1] = v9;
  v10 = *(v8 + 128);
  v14 = *(v8 + 112);
  v13 = a4;
  v15 = v10;
  v16 = a5;
  type metadata accessor for BackingDataEncoder.BackingDataKeyedEncoding(0, v12);
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a3;
  result[4] = a1;
  return result;
}

uint64_t sub_197499DF4()
{
  v1 = sub_197487350();
  v2 = *(v0 + 16);
  *&v7 = v1;
  *(&v7 + 1) = v3;

  v4 = [v2 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (v4)
  {

    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v6, &v7);
    return swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_197499EDC()
{
  v1 = sub_197487350();
  v2 = *(v0 + 16);
  *&v7 = v1;
  *(&v7 + 1) = v3;

  v4 = [v2 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (v4)
  {

    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v6, &v7);
    return swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_197499FC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v4 + 48) = MEMORY[0x1E69E7CD0];
  v6 = v4 + 48;
  *(v6 - 8) = a1;
  *(v6 - 32) = a2;
  *(v6 - 24) = a3;
  v7 = a1;

  v8 = [v7 allKeys];
  v9 = sub_1975219CC();

  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v9 + 32;
    while (v11 < *(v9 + 16))
    {
      sub_197404860(v12, v18);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_8;
      }

      ++v11;
      v13 = v17[0];
      v14 = v17[1];
      swift_beginAccess();
      sub_197414EA0(v17, v13, v14);
      swift_endAccess();

      v12 += 32;
      if (v10 == v11)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_8:
    result = sub_1975223EC();
    __break(1u);
  }

  else
  {
LABEL_6:

    *(v5 + 32) = a4;
    return v5;
  }

  return result;
}

uint64_t sub_19749A170(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CompositeKeyedDecoding(0, *(v4 + 80), *(v4 + 88), a4);
  swift_allocObject();
  return sub_197499FC4(a1, a2, a3, a4);
}

uint64_t sub_19749A1DC(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v10 = *a3;
  v11 = *(a3 + 8);
  *(v6 + 56) = MEMORY[0x1E69E7CD0];
  *(v6 + 64) = v10;
  *(v6 + 72) = v11;
  *(v6 + 32) = a2;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a6;
  swift_beginAccess();
  v12 = *(a2 + 64);
  swift_beginAccess();
  v24[0] = v12;
  v13 = a1;

  sub_1974EE570(v14);

  sub_1974EEA08(v24);

  v15 = *(v24[0] + 16);
  if (v15)
  {
    v16 = v24[0] + 32;
    do
    {
      sub_19749B32C(v16, v24);
      v17 = v25;
      v18 = v26;
      __swift_project_boxed_opaque_existential_1Tm_0(v24, v25);
      v19 = (*(v18 + 32))(v17, v18);
      v21 = v20;
      __swift_destroy_boxed_opaque_existential_1Tm_1(v24);
      swift_beginAccess();
      sub_197414EA0(&v23, v19, v21);
      swift_endAccess();

      v16 += 40;
      --v15;
    }

    while (v15);
  }

  return v7;
}

uint64_t sub_19749A398(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6 + 96);
  v15[0] = *(v6 + 80);
  v15[1] = v13;
  type metadata accessor for ManagedObjectKeyedDecoding(0, v15);
  swift_allocObject();
  return sub_19749A1DC(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_19749A42C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(*v5 + 176);
  Descriptor = type metadata accessor for FetchDescriptor(0, *(*v5 + 96), *(*v5 + 128), a4);
  (*(*(Descriptor - 8) + 56))(v5 + v10, 1, 1, Descriptor);
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + *(*v5 + 184)) = a4;
  sub_19749B32C(a1, v5 + 32);
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm_0(a1, v12);
  v14 = *(v13 + 32);

  v14(&v17, v12, v13);
  v15 = v18;
  if (v18 == 255)
  {
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000040, 0x8000000197524F90);
    swift_getExtendedExistentialTypeMetadata();
    sub_1975227FC();
    result = sub_1975223EC();
    __break(1u);
  }

  else
  {
    *(v5 + 72) = v17;
    *(v5 + 80) = v15;
    return v5;
  }

  return result;
}

uint64_t sub_19749A644(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[6];
  v12[0] = v4[5];
  v12[1] = v9;
  v10 = v4[8];
  v12[2] = v4[7];
  v12[3] = v10;
  type metadata accessor for BackingDataEncoder.BackingDataEncodingContext(0, v12);
  swift_allocObject();
  return sub_19749A42C(a1, a2, a3, a4);
}

uint64_t *sub_19749A6C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = *v6;
  *(v6 + 80) = 0;
  v6[2] = a4;
  v6[3] = a5;
  v11 = v10;
  sub_19749B32C(a1, (v6 + 4));
  v12 = *(v11 + 96);
  v16[0] = *(v11 + 80);
  v16[1] = v16[0];
  v16[2] = v12;
  v16[3] = v12;
  type metadata accessor for BackingDataEncoder.BackingDataEncodingContext(0, v16);
  v13 = sub_1974BFAC4(MEMORY[0x1E69E7CC0]);
  v14 = sub_19749A644(a1, a3, a2, v13);

  v6[9] = v14;
  return v6;
}

uint64_t *sub_19749A79C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 96);
  v13[0] = *(v5 + 80);
  v13[1] = v11;
  type metadata accessor for BackingDataEncoder(0, v13);
  swift_allocObject();
  return sub_19749A6C8(a1, a2, a3, a4, a5);
}

uint64_t sub_19749A820()
{
  v1 = sub_197487350();
  v2 = *(v0 + 16);
  *&v7 = v1;
  *(&v7 + 1) = v3;

  v4 = [v2 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (v4)
  {

    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v6, &v7);
    swift_dynamicCast();
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19749A908()
{
  v1 = sub_197487350();
  v2 = *(v0 + 16);
  *&v8 = v1;
  *(&v8 + 1) = v3;

  v4 = [v2 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (v4)
  {

    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v7, &v8);
    swift_dynamicCast();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19749A9F0(uint64_t a1)
{
  v2 = sub_197487350();
  v3 = *(v1 + 16);
  *&v9 = v2;
  *(&v9 + 1) = v4;

  v5 = [v3 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (v5)
  {

    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v8, &v9);
    swift_dynamicCast();
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19749AAD8(uint64_t a1)
{
  v2 = sub_197487350();
  v3 = *(v1 + 16);
  *&v9 = v2;
  *(&v9 + 1) = v4;

  v5 = [v3 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (v5)
  {

    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v8, &v9);
    swift_dynamicCast();
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19749ABC0(uint64_t a1)
{
  v2 = sub_197487350();
  v3 = *(v1 + 16);
  *&v9 = v2;
  *(&v9 + 1) = v4;

  v5 = [v3 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (v5)
  {

    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v8, &v9);
    swift_dynamicCast();
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19749ACA8(uint64_t a1)
{
  v2 = sub_197487350();
  v3 = *(v1 + 16);
  *&v9 = v2;
  *(&v9 + 1) = v4;

  v5 = [v3 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (v5)
  {

    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1974028B8(&v8, &v9);
    swift_dynamicCast();
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19749AD90(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  *(v3 + 24) = sub_197441730(v7);
  *(v3 + 32) = a1;
  *(v3 + 40) = a3;
  *(v3 + 48) = a2;
  v8 = a1;

  *(v3 + 56) = [v8 objectID];
  *(v3 + 64) = 0;
  v9 = [*(v3 + 32) entity];
  v10 = [v9 relationshipsByName];

  sub_197438EA8(0, &qword_1ED7C9350, 0x1E695D6E8);
  v11 = sub_1975215FC();

  *(v3 + 72) = sub_1974EE374(v11);
  return v3;
}

uint64_t sub_19749AE94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ManagedObjectDecoder(0, *(v4 + 80), *(v4 + 88), a4);
  swift_allocObject();
  return sub_19749AD90(a1, a2, a3);
}

uint64_t sub_19749AEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_197521F5C();
  sub_197522B2C();
  result = swift_dynamicCastClass();
  if (!result)
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000019, 0x8000000197525240);
    v5 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v5);

    MEMORY[0x19A8DFF80](8236, 0xE200000000000000);
    v6 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v6);

    MEMORY[0x19A8DFF80](0xD000000000000011, 0x8000000197525260);
    sub_19752202C();
    sub_19752235C();
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_19749B068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_197522B2C();
  result = swift_dynamicCastClass();
  if (!result)
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000019, 0x8000000197525240);
    v5 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v5);

    MEMORY[0x19A8DFF80](8236, 0xE200000000000000);
    v6 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v6);

    MEMORY[0x19A8DFF80](0xD000000000000010, 0x8000000197525280);
    sub_19752202C();
    sub_19752235C();
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

id sub_19749B1D8@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_197487DF0(*a1);
  result = [v3 objectID];
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_19749B23C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

unint64_t sub_19749B2B0()
{
  result = qword_1EAF2B5C0;
  if (!qword_1EAF2B5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2B5B8, &qword_19752EA08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B5C0);
  }

  return result;
}

_OWORD *sub_19749B314(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_19749B32C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_19749B3F4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19749B4B8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (*a1)
  {
    v7 = 0;
  }

  else
  {
    v7 = a1[1] == 1;
  }

  if (v7)
  {
    sub_197448384(a1, &qword_1EAF2B660, qword_19752F190);
    v10 = sub_1973F7ADC(a2, a3);
    if (v11)
    {
      v12 = v10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1974795F4();
        v14 = v16;
      }

      sub_197480ED0(*(v14 + 56) + 16 * v12, &v17);
      sub_19749F6CC(v12, v14);
      *v4 = v14;
    }

    else
    {
      v17 = xmmword_19752EA60;
    }

    return sub_197448384(&v17, &qword_1EAF2B660, qword_19752F190);
  }

  else
  {
    sub_197480ED0(a1, &v17);
    v8 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    result = sub_19747C374(&v17, a2, a3, v8);
    *v3 = v15;
  }

  return result;
}

uint64_t sub_19749B5D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1974028A0(a1, &v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    v7 = v18;
    v8 = v19;
    v9 = v20;
    v10 = __swift_mutable_project_boxed_opaque_existential_2(&v17, v18);
    MEMORY[0x1EEE9AC00](v10, v10);
    v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v12);
    sub_19743B06C(v12, a2, a3, isUniquelyReferenced_nonNull_native, &v16, v7, v8, v9);
    __swift_destroy_boxed_opaque_existential_1Tm_2(&v17);

    *v3 = v16;
  }

  else
  {
    sub_197448384(a1, &qword_1EAF2B5E8, &qword_19752EA40);
    sub_19749F3EC(a2, a3, &v17);

    return sub_197448384(&v17, &qword_1EAF2B5E8, &qword_19752EA40);
  }

  return result;
}

void sub_19749B7C4(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t, void *, uint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    sub_1974028C8(a2, a3);
    *v5 = v18;
  }

  else
  {
    v13 = sub_197403C30(a2, a3);
    if (v14)
    {
      v15 = v13;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v5;
      v19 = *v6;
      if (!v16)
      {
        a5();
        v17 = v19;
      }

      sub_1974028C8(*(*(v17 + 48) + 16 * v15), *(*(v17 + 48) + 16 * v15 + 8));

      sub_19749FDE8(v15, v17);
      sub_1974028C8(a2, a3);
      *v6 = v17;
    }

    else
    {

      sub_1974028C8(a2, a3);
    }
  }
}

uint64_t sub_19749B95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B658, &unk_19752F180);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v24 - v10;
  v12 = sub_1975213EC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1, v12) == 1)
  {
    sub_197448384(a1, &qword_1EAF2B658, &unk_19752F180);
    v17 = sub_1973F7ADC(a2, a3);
    if (v18)
    {
      v19 = v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v4;
      v25 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_19747B898();
        v21 = v25;
      }

      (*(v13 + 32))(v11, *(v21 + 56) + *(v13 + 72) * v19, v12);
      sub_1974A02EC(v19, v21);
      *v4 = v21;
      (*(v13 + 56))(v11, 0, 1, v12);
    }

    else
    {
      (*(v13 + 56))(v11, 1, 1, v12);
    }

    return sub_197448384(v11, &qword_1EAF2B658, &unk_19752F180);
  }

  else
  {
    (*(v13 + 32))(v16, a1, v12);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v4;
    result = sub_19747CD18(v16, a2, a3, v22);
    *v4 = v25;
  }

  return result;
}

void *DataStoreSaveChangesResult.__allocating_init(for:remappedIdentifiers:snapshotsToReregister:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a3;
  result[3] = a1;
  result[4] = a2;
  result[5] = a4;
  return result;
}

uint64_t sub_19749BC0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_197521F5C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v20[-v9 - 8];
  v11 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v8, v12);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_197413B90(a1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B170, &qword_19752D118);
  v15 = swift_dynamicCast();
  v16 = *(v11 + 56);
  if (v15)
  {
    v16(v10, 0, 1, a2);
    (*(v11 + 32))(v14, v10, a2);
    v17 = sub_19752173C();
    (*(v11 + 8))(v14, a2);
  }

  else
  {
    v16(v10, 1, 1, a2);
    (*(v6 + 8))(v10, v5);
    v17 = 0;
  }

  return v17 & 1;
}

unint64_t DataStoreSnapshotCodingKey.stringValue.getter()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0xD000000000000014;
  }

  return v1;
}

uint64_t DataStore.fetchCount<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20[0] = a3;
  v20[1] = AssociatedTypeWitness;
  v20[2] = a5;
  v20[3] = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for DataStoreFetchResult(0, v20);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v20 - v14;
  v16 = v20[5];
  (*(a4 + 80))(a1, a3, a5, a2, a4);
  if (!v16)
  {
    v17 = *(v12 + 8);

    v17(v15, v11);
    AssociatedTypeWitness = sub_197521A5C();
  }

  return AssociatedTypeWitness;
}

uint64_t DataStore.fetchIdentifiers<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28[0] = a3;
  v28[1] = swift_getAssociatedTypeWitness();
  v28[2] = a5;
  v28[3] = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for DataStoreFetchResult(0, v28);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v26 - v13;
  v15 = v29;
  (*(a4 + 80))(a1, a3, a5, a2, a4);
  if (!v15)
  {
    v16 = *&v14[*(v10 + 52)];
    v17 = *(v11 + 8);
    v27 = a5;
    v18 = v16;

    v19 = v17(v14, v10);
    v29 = &v26;
    v28[0] = v18;
    MEMORY[0x1EEE9AC00](v19, v20);
    *(&v26 - 4) = a2;
    *(&v26 - 3) = a3;
    v21 = v27;
    *(&v26 - 2) = a4;
    *(&v26 - 1) = v21;
    v22 = sub_197521AAC();
    WitnessTable = swift_getWitnessTable();
    v11 = sub_1974048EC(sub_1974A0B48, (&v26 - 6), v22, &type metadata for PersistentIdentifier, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v24);
  }

  return v11;
}

uint64_t DataStoreError.hashValue.getter()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

uint64_t sub_19749C3D0()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

uint64_t sub_19749C444(uint64_t a1)
{
  v2 = *v1;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v2);
  return sub_197522A9C();
}

uint64_t DataStoreSnapshotCodingKey.init(stringValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  if (a1 == 0xD000000000000014 && 0x8000000197524BA0 == a2 || (result = sub_19752282C(), (result & 1) != 0))
  {

    v4 = 0;
    v3 = 0;
  }

  *a3 = v4;
  a3[1] = v3;
  return result;
}

double DataStoreSnapshotCodingKey.init(intValue:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_19752EA60;
  return result;
}

uint64_t sub_19749C544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  if (a1 == 0xD000000000000014 && 0x8000000197524BA0 == a2 || (result = sub_19752282C(), (result & 1) != 0))
  {

    v4 = 0;
    v3 = 0;
  }

  *a3 = v4;
  a3[1] = v3;
  return result;
}

double sub_19749C5D8@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_19752EA60;
  return result;
}

uint64_t sub_19749C5E8(uint64_t a1)
{
  v2 = sub_197442414();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19749C624(uint64_t a1)
{
  v2 = sub_197442414();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id DefaultSnapshot.persistentIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  v3 = *(v1 + 16);
  *(a1 + 8) = v3;
  return sub_1974028EC(v2, v3);
}

void *DefaultSnapshot.init(from:relatedBackingDatas:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = MEMORY[0x1E69E7CC8];
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm_1(a1, v6);
  result = (*(v7 + 32))(&v12, v6, v7);
  if (v13 == 255)
  {
    __break(1u);
  }

  else
  {
    v15 = v12;
    v16 = v13;
    __swift_project_boxed_opaque_existential_1Tm_1(a1, a1[3]);
    DynamicType = swift_getDynamicType();
    sub_19743E484(DynamicType, a1, a2, &v14, DynamicType, a1[4]);
    v10 = v15;
    v11 = v16;
    *a3 = v14;
    *(a3 + 8) = v10;
    *(a3 + 16) = v11;
    return __swift_destroy_boxed_opaque_existential_1Tm_2(a1);
  }

  return result;
}

void *sub_19749C758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, _BYTE *a7, uint64_t a8, uint64_t a9)
{
  v34[1] = a5;
  v35 = a7;
  v37 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_197521F5C();
  v36 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = v34 - v15;
  v38 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = v34 - v18;
  v39[0] = a3;
  v39[1] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B618, &qword_19752EA88);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = *(AssociatedConformanceWitness + 8);
  v22 = v40;
  result = sub_19752255C();
  if (!v22)
  {
    v25 = v36;
    v24 = v37;
    v40 = 0;
    if ((*(v38 + 48))(v16, 1, AssociatedTypeWitness) == 1)
    {
      return (*(v25 + 8))(v16, v12);
    }

    else
    {
      v26 = v38;
      (*(v38 + 32))(v19, v16, AssociatedTypeWitness);
      v27 = v24[3];
      v28 = v24[4];
      __swift_project_boxed_opaque_existential_1Tm_1(v24, v27);
      v29 = (*(v28 + 32))(v27, v28);
      v31 = v30;
      v39[3] = AssociatedTypeWitness;
      v39[4] = v21;
      v39[5] = *(AssociatedConformanceWitness + 16);
      boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v39);
      (*(v26 + 16))(boxed_opaque_existential_2, v19, AssociatedTypeWitness);
      sub_19749B5D4(v39, v29, v31);
      (*(v26 + 8))(v19, AssociatedTypeWitness);
      v33 = v35;
      result = swift_beginAccess();
      *v33 = 1;
    }
  }

  return result;
}

uint64_t sub_19749CA50(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v137 = a1;
  v11 = swift_conformsToProtocol2();
  v12 = a1;
  if (v11)
  {
    v12 = a1;
    if (a1)
    {
      v13 = v11;
      v12 = a1;
      do
      {
        sub_1973F732C(v12, &v137, v12, v13);
        v12 = v137;
        v13 = swift_conformsToProtocol2();
        if (v13)
        {
          v14 = v12 == 0;
        }

        else
        {
          v14 = 1;
        }
      }

      while (!v14);
    }
  }

  if (swift_dynamicCastMetatype())
  {
    v15 = a3[3];
    v16 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v15);
    v17 = (*(v16 + 32))(v15, v16);
    v19 = v18;
    v20 = a3[3];
    v21 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v20);
    (*(v21 + 32))(v20, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B618, &qword_19752EA88);
    v22 = sub_19752250C();
    if (!v5)
    {
      v23 = v22;

      if (v23 != 2)
      {
        LOBYTE(v137) = v23 & 1;
        v26 = MEMORY[0x1E69E6378];
        v25 = MEMORY[0x1E69E6390];
        v24 = MEMORY[0x1E69E6370];
        goto LABEL_28;
      }

      goto LABEL_12;
    }

    goto LABEL_68;
  }

  if (swift_dynamicCastMetatype())
  {
    v27 = a3[3];
    v28 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v27);
    v17 = (*(v28 + 32))(v27, v28);
    v19 = v29;
    v30 = a3[3];
    v31 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v30);
    (*(v31 + 32))(v30, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B618, &qword_19752EA88);
    v32 = sub_1975224FC();
    if (!v5)
    {
      v34 = v33;
      v35 = v32;

      if (v34)
      {
        v26 = MEMORY[0x1E69E6160];
        v25 = MEMORY[0x1E69E6190];
        v24 = MEMORY[0x1E69E6158];
      }

      else
      {
        v35 = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v139 = 0;
      }

      v137 = v35;
      v138 = v34;
      goto LABEL_28;
    }

    goto LABEL_68;
  }

  if (swift_dynamicCastMetatype())
  {
    v36 = a3[3];
    v37 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v36);
    v17 = (*(v37 + 32))(v36, v37);
    v19 = v38;
    v39 = a3[3];
    v40 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v39);
    (*(v40 + 32))(v39, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B618, &qword_19752EA88);
    v41 = sub_19752251C();
    if (!v5)
    {
      v43 = v42;
      v44 = v41;

      if ((v43 & 1) == 0)
      {
        v26 = MEMORY[0x1E69E63C0];
        v25 = MEMORY[0x1E69E63E8];
        v24 = MEMORY[0x1E69E63B0];
        v137 = v44;
        goto LABEL_28;
      }

      goto LABEL_20;
    }

LABEL_68:
  }

  if (swift_dynamicCastMetatype())
  {
    v45 = a3[3];
    v46 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v45);
    v17 = (*(v46 + 32))(v45, v46);
    v19 = v47;
    v48 = a3[3];
    v49 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v48);
    (*(v49 + 32))(v48, v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B618, &qword_19752EA88);
    v50 = sub_19752252C();
    if (v5)
    {
      goto LABEL_68;
    }

    v51 = v50;

    if ((v51 & 0x100000000) == 0)
    {
      LODWORD(v137) = v51;
      v26 = MEMORY[0x1E69E6458];
      v25 = MEMORY[0x1E69E6478];
      v24 = MEMORY[0x1E69E6448];
      goto LABEL_28;
    }

LABEL_12:
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v137 = 0;
    v138 = 0;
    v139 = 0;
LABEL_28:
    v140 = v24;
    v141 = v25;
    v142 = v26;
    return sub_19749B5D4(&v137, v17, v19);
  }

  if (swift_dynamicCastMetatype())
  {
    v53 = a3[3];
    v54 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v53);
    v17 = (*(v54 + 32))(v53, v54);
    v19 = v55;
    v56 = a3[3];
    v57 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v56);
    (*(v57 + 32))(v56, v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B618, &qword_19752EA88);
    v58 = sub_19752253C();
    if (!v5)
    {
      v60 = v59;
      v61 = v58;

      if ((v60 & 1) == 0)
      {
        v26 = MEMORY[0x1E69E6538];
        v25 = MEMORY[0x1E69E6560];
        v24 = MEMORY[0x1E69E6530];
        v137 = v61;
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    goto LABEL_68;
  }

  if (swift_dynamicCastMetatype())
  {
    v62 = a3[3];
    v63 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v62);
    v17 = (*(v63 + 32))(v62, v63);
    v19 = v64;
    v65 = a3[3];
    v66 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v65);
    (*(v66 + 32))(v65, v66);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B618, &qword_19752EA88);
    v67 = sub_19752256C();
    if (v5)
    {
      goto LABEL_68;
    }

    v68 = v67;

    if ((v68 & 0x100) == 0)
    {
      LOBYTE(v137) = v68;
      v26 = MEMORY[0x1E69E7238];
      v25 = MEMORY[0x1E69E7250];
      v24 = MEMORY[0x1E69E7230];
      goto LABEL_28;
    }

    goto LABEL_12;
  }

  if (swift_dynamicCastMetatype())
  {
    v69 = a3[3];
    v70 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v69);
    v17 = (*(v70 + 32))(v69, v70);
    v19 = v71;
    v72 = a3[3];
    v73 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v72);
    (*(v73 + 32))(v72, v73);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B618, &qword_19752EA88);
    v74 = sub_19752257C();
    if (v5)
    {
      goto LABEL_68;
    }

    v75 = v74;

    if ((v75 & 0x10000) == 0)
    {
      LOWORD(v137) = v75;
      v26 = MEMORY[0x1E69E7298];
      v25 = MEMORY[0x1E69E72B0];
      v24 = MEMORY[0x1E69E7290];
      goto LABEL_28;
    }

    goto LABEL_12;
  }

  if (swift_dynamicCastMetatype())
  {
    v76 = a3[3];
    v77 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v76);
    v17 = (*(v77 + 32))(v76, v77);
    v19 = v78;
    v79 = a3[3];
    v80 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v79);
    (*(v80 + 32))(v79, v80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B618, &qword_19752EA88);
    v81 = sub_19752258C();
    if (v5)
    {
      goto LABEL_68;
    }

    v82 = v81;

    if ((v82 & 0x100000000) == 0)
    {
      LODWORD(v137) = v82;
      v26 = MEMORY[0x1E69E72F8];
      v25 = MEMORY[0x1E69E7320];
      v24 = MEMORY[0x1E69E72F0];
      goto LABEL_28;
    }

    goto LABEL_12;
  }

  if (swift_dynamicCastMetatype())
  {
    v83 = a3[3];
    v84 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v83);
    v17 = (*(v84 + 32))(v83, v84);
    v19 = v85;
    v86 = a3[3];
    v87 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v86);
    (*(v87 + 32))(v86, v87);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B618, &qword_19752EA88);
    v88 = sub_19752259C();
    if (v5)
    {
      goto LABEL_68;
    }

    v90 = v89;
    v91 = v88;

    if ((v90 & 1) == 0)
    {
      v26 = MEMORY[0x1E69E7368];
      v25 = MEMORY[0x1E69E7390];
      v24 = MEMORY[0x1E69E7360];
      v137 = v91;
      goto LABEL_28;
    }

LABEL_20:
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v138 = 0;
    v139 = 0;
    v137 = 0;
    goto LABEL_28;
  }

  if (swift_dynamicCastMetatype())
  {
    v92 = a3[3];
    v93 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v92);
    v17 = (*(v93 + 32))(v92, v93);
    v19 = v94;
    v95 = a3[3];
    v96 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v95);
    (*(v96 + 32))(v95, v96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B618, &qword_19752EA88);
    v97 = sub_19752254C();
    if (v5)
    {
      goto LABEL_68;
    }

    v99 = v97;
    v100 = v98;

    if ((v100 & 1) == 0)
    {
      v26 = MEMORY[0x1E69E6818];
      v25 = MEMORY[0x1E69E6840];
      v24 = MEMORY[0x1E69E6810];
      v137 = v99;
      goto LABEL_28;
    }

    goto LABEL_20;
  }

  if (swift_dynamicCastMetatype())
  {
    v101 = a3[3];
    v102 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v101);
    v17 = (*(v102 + 32))(v101, v102);
    v19 = v103;
    v104 = a3[3];
    v105 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v104);
    (*(v105 + 32))(v104, v105);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B618, &qword_19752EA88);
    v106 = sub_1975225AC();
    if (v5)
    {
      goto LABEL_68;
    }

    v107 = v106;

    if ((v107 & 0x100) == 0)
    {
      LOBYTE(v137) = v107;
      v26 = MEMORY[0x1E69E7510];
      v25 = MEMORY[0x1E69E7528];
      v24 = MEMORY[0x1E69E7508];
      goto LABEL_28;
    }

    goto LABEL_12;
  }

  if (swift_dynamicCastMetatype())
  {
    v108 = a3[3];
    v109 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v108);
    v17 = (*(v109 + 32))(v108, v109);
    v19 = v110;
    v111 = a3[3];
    v112 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v111);
    (*(v112 + 32))(v111, v112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B618, &qword_19752EA88);
    v113 = sub_1975225BC();
    if (v5)
    {
      goto LABEL_68;
    }

    v114 = v113;

    if ((v114 & 0x10000) == 0)
    {
      LOWORD(v137) = v114;
      v26 = MEMORY[0x1E69E7600];
      v25 = MEMORY[0x1E69E7628];
      v24 = MEMORY[0x1E69E75F8];
      goto LABEL_28;
    }

    goto LABEL_12;
  }

  if (swift_dynamicCastMetatype())
  {
    v115 = a3[3];
    v116 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v115);
    v17 = (*(v116 + 32))(v115, v116);
    v19 = v117;
    v118 = a3[3];
    v119 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v118);
    (*(v119 + 32))(v118, v119);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B618, &qword_19752EA88);
    v120 = sub_1975225CC();
    if (v5)
    {
      goto LABEL_68;
    }

    v121 = v120;

    if ((v121 & 0x100000000) == 0)
    {
      LODWORD(v137) = v121;
      v26 = MEMORY[0x1E69E7670];
      v25 = MEMORY[0x1E69E7698];
      v24 = MEMORY[0x1E69E7668];
      goto LABEL_28;
    }

    goto LABEL_12;
  }

  if (swift_dynamicCastMetatype())
  {
    v122 = a3[3];
    v123 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v122);
    v17 = (*(v123 + 32))(v122, v123);
    v19 = v124;
    v125 = a3[3];
    v126 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v125);
    (*(v126 + 32))(v125, v126);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B618, &qword_19752EA88);
    v127 = sub_1975225DC();
    if (v5)
    {
      goto LABEL_68;
    }

    v132 = v127;
    v133 = v128;

    if ((v133 & 1) == 0)
    {
      v26 = MEMORY[0x1E69E76E0];
      v25 = MEMORY[0x1E69E7708];
      v24 = MEMORY[0x1E69E76D8];
      v137 = v132;
      goto LABEL_28;
    }

    goto LABEL_20;
  }

  if (dynamic_cast_existential_2_conditional(v12, v12, MEMORY[0x1E69E6440], MEMORY[0x1E69E5E78]))
  {
    v129 = dynamic_cast_existential_2_unconditional(a1, a1, MEMORY[0x1E69E6440], MEMORY[0x1E69E5E78]);
    return sub_19749D920(v129, a4, a3, a2, a5, v129, v130, v131);
  }

  else
  {
    v137 = 0;
    v138 = 0xE000000000000000;
    sub_1975221EC();

    v137 = 0xD000000000000023;
    v138 = 0x8000000197525D70;
    v134 = a3[3];
    v135 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm_1(a3, v134);
    (*(v135 + 80))(v134, v135);
    v136 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v136);

    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_19749D920(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a2;
  v30 = a8;
  v31 = a4;
  v40 = a7;
  v36 = a1;
  v29 = sub_197521F5C();
  v33 = *(v29 - 8);
  v11 = MEMORY[0x1EEE9AC00](v29, v10);
  v13 = &v29 - v12;
  v34 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v32 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3[3];
  v16 = a3[4];
  __swift_project_boxed_opaque_existential_1Tm_1(a3, v17);
  v18 = *(v16 + 32);
  v39[0] = v18(v17, v16);
  v39[1] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B618, &qword_19752EA88);
  v35 = v13;
  v20 = v38;
  sub_19752255C();
  if (v20)
  {
  }

  v37 = v16;
  v38 = 0;
  v23 = v32;
  v22 = v33;

  if ((*(v34 + 48))(v35, 1, a6) == 1)
  {
    return (*(v22 + 8))(v35, v29);
  }

  v24 = v34;
  (*(v34 + 32))(v23, v35, a6);
  v25 = v18(v17, v37);
  v27 = v26;
  v39[3] = a6;
  v39[4] = v40;
  v39[5] = v30;
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v39);
  (*(v24 + 16))(boxed_opaque_existential_2, v23, a6);
  sub_19749B5D4(v39, v25, v27);
  return (*(v24 + 8))(v23, a6);
}

id DefaultSnapshot.copy(persistentIdentifier:remappedIdentifiers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  LODWORD(v6) = *(a1 + 8);
  v7 = *v3;
  if (a2 && *(a2 + 16))
  {
    v8 = *(v3 + 8);
    v9 = *(v3 + 16);
    v82 = *v3;
    v74 = a2;
    if (v6)
    {
      if (v6 == 1)
      {
        v11 = v5[9];
        v10 = v5[10];
      }

      else
      {

        v11 = sub_19750A588();
        v10 = v14;
      }
    }

    else
    {

      v12 = [v5 entityName];
      v11 = sub_1975217BC();
      v10 = v13;

      v7 = v82;
    }

    v15 = sub_197442240(v11, v10);

    if (v15)
    {
      v77 = v6;
      v78 = a3;
      v79 = v5;
      swift_beginAccess();
      v76 = v15;
      v6 = *(v15 + 88);
      v73 = v9;
      v72 = v8;
      if ((v6 & 0xC000000000000001) != 0)
      {

        sub_1975220AC();
        type metadata accessor for Schema.Relationship();
        sub_197404DE0(&qword_1ED7C91A8, type metadata accessor for Schema.Relationship, &protocol conformance descriptor for Schema.Relationship);
        sub_197521C1C();
        v6 = v94;
        v16 = v95;
        v17 = v96;
        v18 = v97;
        v19 = v98;
      }

      else
      {
        v20 = -1 << *(v6 + 32);
        v16 = v6 + 56;
        v17 = ~v20;
        v21 = -v20;
        if (v21 < 64)
        {
          v22 = ~(-1 << v21);
        }

        else
        {
          v22 = -1;
        }

        v19 = v22 & *(v6 + 56);

        v18 = 0;
      }

      v75 = v17;
      v23 = (v17 + 64) >> 6;
      v80 = v7;
      v81 = v16;
      while (2)
      {
        while (2)
        {
          v24 = v18;
          v25 = v19;
          while (1)
          {
            if (v6 < 0)
            {
              v28 = sub_19752212C();
              if (!v28 || (*&v88 = v28, type metadata accessor for Schema.Relationship(), swift_dynamicCast(), v19 = *&v93[0], v18 = v24, v83 = v25, !*&v93[0]))
              {
LABEL_38:
                sub_1974A1090(v6);

                a3 = v78;
                v5 = v79;
                LOBYTE(v6) = v77;
                v7 = v80;
                goto LABEL_39;
              }
            }

            else
            {
              v26 = v24;
              v27 = v25;
              v18 = v24;
              if (!v25)
              {
                while (1)
                {
                  v18 = v26 + 1;
                  if (__OFADD__(v26, 1))
                  {
                    break;
                  }

                  if (v18 >= v23)
                  {
                    goto LABEL_38;
                  }

                  v27 = *(v16 + 8 * v18);
                  ++v26;
                  if (v27)
                  {
                    goto LABEL_24;
                  }
                }

                __break(1u);
                goto LABEL_41;
              }

LABEL_24:
              v83 = (v27 - 1) & v27;
              v19 = *(*(v6 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v27)))));

              if (!v19)
              {
                goto LABEL_38;
              }
            }

            v29 = v6;
            swift_beginAccess();
            v30 = v82;
            if (*(v82 + 2))
            {
              v31 = *(v19 + 16);
              v32 = *(v19 + 24);

              v33 = sub_1973F4028(v31, v32);
              v35 = v34;

              if (v35)
              {
                break;
              }
            }

            v24 = v18;
            v25 = v83;
            v6 = v29;
            v16 = v81;
          }

          sub_1973FDED4(*(v30 + 7) + 48 * v33, &v88);
          sub_1974028A0(&v88, v93);
          if (*(v19 + 168))
          {
            sub_1973FDED4(v93, &v88);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B610, &unk_19752EA78);
            if (swift_dynamicCast())
            {
              v6 = v29;
              v36 = v85;
              v37 = BYTE8(v85);
              v16 = v81;
              if (*(v74 + 16) && (v38 = sub_197403C30(v85, BYTE8(v85)), (v39 & 1) != 0))
              {
                v40 = *(v74 + 56) + 16 * v38;
                v43 = *(v19 + 16);
                v42 = *(v19 + 24);
                v68 = *v40;
                v41 = v68;
                v69 = v43;
                v71 = v42;
                v70 = v37;
                v44 = *(v40 + 8);
                v90 = &type metadata for PersistentIdentifier;
                v91 = sub_197412644();
                v92 = sub_197411E68();
                *&v88 = v41;
                BYTE8(v88) = v44;
                sub_1974028A0(&v88, &v85);
                sub_1974028EC(v41, v44);
                sub_1974028EC(v41, v44);

                v45 = v80;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v87 = v45;
                v67 = v36;
                v46 = __swift_mutable_project_boxed_opaque_existential_2(&v85, v86);
                v80 = v65;
                MEMORY[0x1EEE9AC00](v46, v46);
                v48 = &v65[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
                (*(v49 + 16))(v48);
                sub_197422EA0(*v48, v48[8], v69, v71, isUniquelyReferenced_nonNull_native, &v87);
                sub_1974028C8(v67, v70);

                sub_1974028C8(v68, v44);
                __swift_destroy_boxed_opaque_existential_1Tm_2(v93);
                __swift_destroy_boxed_opaque_existential_1Tm_2(&v85);
                v80 = v87;
                v19 = v83;
              }

              else
              {
                sub_1974028C8(v36, v37);

                __swift_destroy_boxed_opaque_existential_1Tm_2(v93);
                v19 = v83;
              }

              continue;
            }

LABEL_41:
            *&v88 = 0;
            *(&v88 + 1) = 0xE000000000000000;
            sub_1975221EC();
            v85 = v88;
            MEMORY[0x19A8DFF80](0xD00000000000002FLL, 0x8000000197525D00);
            v61 = *(v19 + 16);
            v62 = *(v19 + 24);

            MEMORY[0x19A8DFF80](v61, v62);

            MEMORY[0x19A8DFF80](0x70616E73206E6920, 0xEE00203A746F6873);
            *&v88 = v82;
            *(&v88 + 1) = v72;
            v89 = v73;
            sub_19752235C();
            MEMORY[0x19A8DFF80](10, 0xE100000000000000);
            sub_19752235C();
            goto LABEL_44;
          }

          break;
        }

        sub_1973FDED4(v93, &v88);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B610, &unk_19752EA78);
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
        if (swift_dynamicCast())
        {
          v6 = v29;
          v51 = v85;
          v87 = MEMORY[0x1E69E7CC0];
          v52 = v74;

          sub_1974A0E58(v51, v52, &v87);

          v53 = *(v19 + 24);
          v71 = *(v19 + 16);
          v54 = v87;
          v90 = v50;
          v91 = sub_197412788(&qword_1ED7C77C0, sub_197412644, MEMORY[0x1E69E6330]);
          v92 = sub_197412788(&qword_1ED7C77C8, sub_197411E68, MEMORY[0x1E69E6300]);
          *&v88 = v54;
          sub_1974028A0(&v88, &v85);

          v55 = v80;
          v70 = swift_isUniquelyReferenced_nonNull_native();
          v84 = v55;
          v56 = __swift_mutable_project_boxed_opaque_existential_2(&v85, v86);
          v80 = v65;
          MEMORY[0x1EEE9AC00](v56, v56);
          v58 = &v65[-((v57 + 15) & 0xFFFFFFFFFFFFFFF0)];
          (*(v59 + 16))(v58);
          sub_197412800(*v58, v71, v53, v70, &v84);

          __swift_destroy_boxed_opaque_existential_1Tm_2(v93);
          __swift_destroy_boxed_opaque_existential_1Tm_2(&v85);

          v16 = v81;
          v19 = v83;
          v80 = v84;
          continue;
        }

        break;
      }

      *&v88 = 0;
      *(&v88 + 1) = 0xE000000000000000;
      sub_1975221EC();
      v85 = v88;
      MEMORY[0x19A8DFF80](0xD000000000000030, 0x8000000197525CC0);
      v63 = *(v19 + 16);
      v64 = *(v19 + 24);

      MEMORY[0x19A8DFF80](v63, v64);

      MEMORY[0x19A8DFF80](0x70616E73206E6920, 0xEE00203A746F6873);
      *&v88 = v82;
      *(&v88 + 1) = v72;
      v89 = v73;
      sub_19752235C();
      MEMORY[0x19A8DFF80](10, 0xE100000000000000);
      sub_19752235C();
    }

    else
    {
      *&v93[0] = 0;
      *(&v93[0] + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000058, 0x8000000197525B80);
      *&v88 = v8;
      BYTE8(v88) = v9;
      sub_19752235C();
    }

LABEL_44:
    result = sub_1975223EC();
    __break(1u);
  }

  else
  {

LABEL_39:
    *(a3 + 16) = v6;
    *a3 = v7;
    *(a3 + 8) = v5;
    return sub_1974028EC(v5, v6);
  }

  return result;
}

char *sub_19749E6C0(uint64_t a1, uint64_t a2, char **a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (*(a2 + 16))
  {
    v7 = sub_197403C30(*a1, v5);
    if (v8)
    {
      v9 = *(a2 + 56) + 16 * v7;
      v4 = *v9;
      LOBYTE(v5) = *(v9 + 8);
    }
  }

  v10 = *a3;
  sub_1974028EC(v4, v5);
  result = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v10;
  if ((result & 1) == 0)
  {
    result = sub_197445BA8(0, *(v10 + 2) + 1, 1, v10);
    v10 = result;
    *a3 = result;
  }

  v13 = *(v10 + 2);
  v12 = *(v10 + 3);
  if (v13 >= v12 >> 1)
  {
    result = sub_197445BA8((v12 > 1), v13 + 1, 1, v10);
    v10 = result;
    *a3 = result;
  }

  *(v10 + 2) = v13 + 1;
  v14 = &v10[16 * v13];
  *(v14 + 4) = v4;
  v14[40] = v5;
  return result;
}

uint64_t DataStoreFetchRequest.descriptor.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 36);
  Descriptor = type metadata accessor for FetchDescriptor(0, *(a1 + 16), *(a1 + 24), a2);
  v7 = *(*(Descriptor - 8) + 16);

  return v7(a3, v3 + v5, Descriptor);
}

uint64_t sub_19749E874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  Request = type metadata accessor for DataStoreBatchFetchRequest(0, a4, a5, a4);
  sub_1974074E0(a1, a6 + *(Request + 40));
  Descriptor = type metadata accessor for FetchDescriptor(0, a4, a5, v13);
  result = (*(*(Descriptor - 8) + 32))(a6, a2, Descriptor);
  *(a6 + *(Request + 36)) = a3;
  return result;
}

uint64_t DataStoreFetchResult.descriptor.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  Descriptor = type metadata accessor for FetchDescriptor(0, *(a1 + 16), *(a1 + 32), a2);
  v6 = *(*(Descriptor - 8) + 16);

  return v6(a3, v3, Descriptor);
}

uint64_t DataStoreSaveChangesResult.storeIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void *DataStoreSaveChangesResult.init(for:remappedIdentifiers:snapshotsToReregister:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a4;
  return v4;
}

uint64_t DataStoreBatchDeleteRequest.predicate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  sub_19752139C();
  v5 = sub_197521F5C();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t EditingState.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19752135C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t EditingState.author.getter()
{
  v1 = *(v0 + *(type metadata accessor for EditingState(0) + 20));

  return v1;
}

uint64_t EditingState.author.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for EditingState(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_19749EC04@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19752135C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_19749EC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 24);
  v6 = swift_checkMetadataState();
  return v5(v6, AssociatedConformanceWitness);
}

uint64_t sub_19749ED2C(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  while (v3 != v2)
  {
    v4 = *(result + 16);
    if (v2 == v4)
    {
      return 0;
    }

    if (v2 >= v4)
    {
      __break(1u);
      goto LABEL_13;
    }

    v5 = *(a2 + 32 + 8 * v2);
    v6 = *(result + 32 + 8 * v2);
    if (v5 < v6)
    {
      return 1;
    }

    ++v2;
    if (v6 < v5)
    {
      return 0;
    }
  }

  v7 = *(result + 16);
  if (v3 == v7)
  {
    return 0;
  }

  if (v3 < v7)
  {
    return 1;
  }

LABEL_13:
  __break(1u);
  return result;
}

unint64_t sub_19749ED9C(uint64_t a1, __n128 a2)
{
  v3 = sub_197522A4C();

  return sub_19749EF54(a1, v3);
}

unint64_t sub_19749EDE0(uint64_t a1)
{
  sub_197522A5C();
  type metadata accessor for CFRunLoopObserver(0);
  sub_197404DE0(&qword_1ED7C7338, type metadata accessor for CFRunLoopObserver, &unk_19752BA6C);
  sub_19752140C();
  v2 = sub_197522A9C();

  return sub_19749EFC0(a1, v2);
}

unint64_t sub_19749EE94(uint64_t a1)
{
  sub_19752239C();
  v2 = sub_1975216AC();

  return sub_19749F0CC(a1, v2);
}

unint64_t sub_19749EEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1975216AC();

  return sub_19749F264(a1, v6, a2, a3);
}

unint64_t sub_19749EF54(uint64_t a1, uint64_t a2)
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

unint64_t sub_19749EFC0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFRunLoopObserver(0);
    sub_197404DE0(&qword_1ED7C7338, type metadata accessor for CFRunLoopObserver, &unk_19752BA6C);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1975213FC();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_19749F0CC(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_19752239C();
  MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = sub_19752173C();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_19749F264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_19752173C();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

double sub_19749F3EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1973F4028(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_19747A934();
      v10 = v12;
    }

    sub_1974028A0((*(v10 + 56) + 48 * v8), a3);
    sub_19749FA7C(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

double sub_19749F498@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1973F4028(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_197422CFC();
      v10 = v12;
    }

    sub_1974028B8((*(v10 + 56) + 32 * v8), a3);
    sub_19749FC38(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_19749F53C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  result = sub_1973F4028(a1, a2);
  if (v7)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v13 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_19747BB04();
      v10 = v13;
    }

    v11 = (*(v10 + 56) + 32 * v8);
    v12 = v11[1];
    *a3 = *v11;
    *(a3 + 16) = v12;
    result = sub_1974A04C0(v8, v10);
    *v4 = v10;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 1;
  }

  return result;
}

double sub_19749F5E4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1974079DC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v16 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_19747C0E8();
      v9 = v16;
    }

    v10 = *(v9 + 48);
    v11 = sub_197520DAC();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = (*(v9 + 56) + (v7 << 6));
    v13 = v12[1];
    *a2 = *v12;
    a2[1] = v13;
    v14 = v12[3];
    a2[2] = v12[2];
    a2[3] = v14;
    sub_1974A0820(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

unint64_t sub_19749F6CC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19752207C() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + 16 * v6);
      sub_197522A5C();
      MEMORY[0x19A8E1190](v9);
      result = sub_197522A9C();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      result = v14 + 16 * v3;
      if (v3 < v6 || result >= v14 + 16 * v6 + 16)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_18:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v15 = *(a2 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v17;
    ++*(a2 + 36);
  }

  return result;
}

void sub_19749F884(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19752207C() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_197522A5C();
      type metadata accessor for CFRunLoopObserver(0);
      sub_197404DE0(&qword_1ED7C7338, type metadata accessor for CFRunLoopObserver, &unk_19752BA6C);
      v10 = v9;
      sub_19752140C();
      v11 = sub_197522A9C();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

uint64_t sub_19749FA7C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19752207C() + 1) & ~v5;
    do
    {
      sub_197522A5C();

      sub_19752180C();
      v11 = sub_197522A9C();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 48 * v3);
        v18 = (v16 + 48 * v6);
        if (v3 != v6 || v17 >= v18 + 3)
        {
          v9 = *v18;
          v10 = v18[2];
          v17[1] = v18[1];
          v17[2] = v10;
          *v17 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_19749FC38(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19752207C() + 1) & ~v5;
    do
    {
      sub_197522A5C();

      sub_19752180C();
      v10 = sub_197522A9C();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_19749FDE8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19752207C() + 1) & ~v5;
    v24 = v8;
    do
    {
      v9 = 16 * v6;
      v10 = *(a2 + 48) + 16 * v6;
      v11 = *v10;
      v12 = *(v10 + 8);
      sub_197522A5C();
      if (v12)
      {
        if (v12 == 1)
        {
          MEMORY[0x19A8E1190](1);
          sub_1974028EC(v11, 1);
          sub_19752180C();
          sub_19752180C();
          if (v11[3])
          {
            sub_197522A7C();
            sub_19752180C();
          }

          else
          {
            sub_197522A7C();
          }

          sub_197522A7C();
          v8 = v24;
        }

        else
        {
          MEMORY[0x19A8E1190](2);
          sub_1974028EC(v11, 2);
          sub_19750A470();
          sub_19752180C();

          sub_19750A588();
        }

        sub_19752180C();
      }

      else
      {
        MEMORY[0x19A8E1190](0);
        sub_1974028EC(v11, 0);
        sub_197521F4C();
      }

      v13 = sub_197522A9C();
      sub_1974028C8(v11, v12);
      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_19;
      }

      if (v3 >= v14)
      {
LABEL_19:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + v9);
        if (16 * v3 != v9 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_1974A013C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19752207C() + 1) & ~v5;
    do
    {
      sub_197522A5C();

      sub_19752180C();
      v9 = sub_197522A9C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1974A02EC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19752207C() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + 16 * v6);
      sub_197522A5C();
      MEMORY[0x19A8E1190](v9);
      result = sub_197522A9C();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_1975213EC() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1974A04C0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19752207C() + 1) & ~v5;
    do
    {
      sub_197522A5C();

      sub_19752180C();
      v10 = sub_197522A9C();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1974A0670(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19752207C() + 1) & ~v5;
    do
    {
      sub_197522A5C();

      sub_19752180C();
      v9 = sub_197522A9C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1974A0820(int64_t a1, uint64_t a2)
{
  v44 = sub_197520DAC();
  v4 = *(v44 - 8);
  result = MEMORY[0x1EEE9AC00](v44, v5);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v45 = v7;
    v13 = sub_19752207C();
    v14 = v44;
    v7 = v45;
    v15 = v12;
    v42 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v40 = a2 + 64;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v43;
      v22 = v15;
      v23 = v16;
      v41(v43, *(v7 + 48) + v18 * v11, v14);
      sub_197404DE0(qword_1ED7C9228, MEMORY[0x1E6968B10], MEMORY[0x1E6968B18]);
      v24 = sub_1975216AC();
      result = (*v39)(v21, v14);
      v15 = v22;
      v25 = v24 & v22;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v7 = v45;
          v28 = *(v45 + 48);
          result = v28 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v28 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v45;
            v18 = v19;
            v15 = v22;
            v9 = v40;
          }

          else
          {
            v9 = v40;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v45;
              v18 = v19;
              v15 = v22;
            }
          }

          v29 = *(v7 + 56);
          v30 = (v29 + (a1 << 6));
          v31 = (v29 + (v11 << 6));
          if (a1 != v11 || v30 >= v31 + 4)
          {
            v32 = *v31;
            v33 = v31[1];
            v34 = v31[3];
            v30[2] = v31[2];
            v30[3] = v34;
            *v30 = v32;
            v30[1] = v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v40;
      v18 = v19;
      v7 = v45;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(v7 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v37;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_1974A0B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v11);
  v13 = v24 - v12;
  if (sub_197521A5C())
  {
    sub_19752246C();
    v14 = sub_19752245C();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC8];
  }

  result = sub_197521A5C();
  if (result)
  {
    if (result >= 1)
    {
      v24[0] = v10;
      v28 = a4;
      v16 = 0;
      v17 = *(TupleTypeMetadata2 + 48);
      v26 = a3;
      v27 = (v9 + 16);
      v24[2] = a2 - 8;
      v25 = v17;
      v24[1] = a3 - 8;
      while (1)
      {
        v18 = result;
        if (sub_197521A3C())
        {
          (*(v9 + 16))(v13, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, TupleTypeMetadata2);
        }

        else
        {
          result = sub_19752222C();
          if (v24[0] != 8)
          {
            goto LABEL_19;
          }

          v29 = result;
          (*v27)(v13, &v29, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_19749EEF8(v13, a2, v28);
        if (v19)
        {
          break;
        }

        v20 = result;
        *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v14[6] + *(*(a2 - 8) + 72) * result, v13, a2);
        result = (*(*(v26 - 8) + 32))(v14[7] + *(*(v26 - 8) + 72) * v20, &v13[v25]);
        v21 = v14[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_17;
        }

        ++v16;
        v14[2] = v23;
        result = v18;
        if (v18 == v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v14;
  }

  return result;
}

void sub_1974A0E58(uint64_t a1, uint64_t a2, char **a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = v4 - 1;
    v8 = (a1 + 40);
    do
    {
      v9 = v7;
      v10 = *v8;
      v11 = *(v8 - 1);
      v12 = v10;
      sub_1974028EC(v11, v10);
      sub_19749E6C0(&v11, a2, a3);
      sub_1974028C8(v11, v12);
      if (v3)
      {
        break;
      }

      v7 = v9 - 1;
      v8 += 16;
    }

    while (v9);
  }
}

unint64_t sub_1974A0EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v4 = sub_197521A1C();
  v5 = sub_197405108();
  v6 = sub_1974A0B6C(v4, &type metadata for PersistentIdentifier, AssociatedTypeWitness, v5);

  return v6;
}

uint64_t sub_1974A0FA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B630, &qword_19752EAA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1974A1014(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_1974028C8(a1, a2);
  }
}

uint64_t __swift_deallocate_boxed_opaque_existential_2(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x19A8E1B50);
  }

  return result;
}

uint64_t sub_1974A1078(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_1974A109C()
{
  result = qword_1EAF2B638;
  if (!qword_1EAF2B638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B638);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataStoreError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DataStoreError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1974A14D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1974A1528(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1974A157C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1974A1598(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1974A1634(uint64_t a1)
{
  result = type metadata accessor for EditingState(319);
  if (v2 <= 0x3F)
  {
    sub_19752139C();
    result = sub_197521F5C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1974A172C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for FetchDescriptor(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for EditingState(319);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t dynamic_cast_existential_2_unconditional(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    result = swift_conformsToProtocol2();
    if (result)
    {
      return a1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1974A18AC(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v115 = a2;
  v119 = a1;
  v128 = *MEMORY[0x1E69E9840];
  v108 = sub_19752120C();
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108, v4);
  v106 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1975212CC();
  v6 = *(v123 - 8);
  v8 = MEMORY[0x1EEE9AC00](v123, v7);
  v120 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v104 = &v99 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v103 = &v99 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v109 = &v99 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v105 = &v99 - v21;
  MEMORY[0x1EEE9AC00](v20, v22);
  v110 = &v99 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE78, &qword_19752C290);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v112 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v111 = &v99 - v30;
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = &v99 - v32;
  v118 = sub_19752157C();
  v34 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118, v35);
  v121 = &v99 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *a3;
  v38 = *(a3 + 2);
  v122 = *(a3 + 1);
  if (qword_1ED7C6D20 != -1)
  {
    swift_once();
  }

  v39 = v118;
  v40 = __swift_project_value_buffer(v118, qword_1ED7CE5A0);
  (*(v34 + 16))(v121, v40, v39);
  v41 = *(v6 + 56);
  v41(v33, 1, 1, v123);
  v42 = [objc_opt_self() defaultManager];
  v116 = v42;
  v117 = v33;
  v114 = v34;
  if (v37)
  {
    v122 = sub_1974A98BC();
    if (v43)
    {
      v38 = v43;
      goto LABEL_8;
    }

    LODWORD(v110) = 0;
LABEL_14:
    v113 = 0;
    goto LABEL_15;
  }

  if (!v38)
  {
    LODWORD(v110) = 0;
    v122 = 0;
    goto LABEL_14;
  }

LABEL_8:

  v44 = sub_19752178C();
  v45 = [v42 containerURLForSecurityApplicationGroupIdentifier_];

  v113 = v38;
  if (v45)
  {

    sub_19752127C();

    v124 = 0x7972617262694CLL;
    v125 = 0xE700000000000000;
    v46 = *MEMORY[0x1E6968F58];
    v101 = v6 + 56;
    v47 = v107;
    v48 = *(v107 + 104);
    v102 = v6;
    v49 = v106;
    v100 = v41;
    v50 = v108;
    v48(v106, v46, v108);
    sub_197416D54();
    v51 = v105;
    sub_1975212BC();
    v52 = *(v47 + 8);
    v52(v49, v50);
    v124 = 0xD000000000000013;
    v125 = 0x80000001975263B0;
    v48(v49, v46, v50);
    v33 = v117;
    v53 = v109;
    sub_1975212BC();
    v54 = v49;
    v6 = v102;
    v55 = v50;
    v41 = v100;
    v52(v54, v55);
    v56 = *(v6 + 8);
    v57 = v123;
    v56(v51, v123);
    v56(v110, v57);
    sub_1973F7DA4(v33, &qword_1EAF2AE78, &qword_19752C290);
    v58 = *(v6 + 32);
    v58(v51, v53, v57);
    v59 = v51;
    v42 = v116;
    v58(v33, v59, v57);
    v41(v33, 0, 1, v57);
    LODWORD(v110) = 0;
  }

  else
  {
    if ((sub_19752188C() & 1) == 0)
    {
      v124 = 0;
      v125 = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000034, 0x8000000197526370);
      MEMORY[0x19A8DFF80](v122, v38);
      MEMORY[0x19A8DFF80](41, 0xE100000000000000);
      goto LABEL_34;
    }

    LODWORD(v110) = 1;
  }

LABEL_15:
  v60 = v111;
  sub_1973FE1B4(v33, v111, &qword_1EAF2AE78, &qword_19752C290);
  v109 = *(v6 + 48);
  v61 = (v109)(v60, 1, v123);
  sub_1973F7DA4(v60, &qword_1EAF2AE78, &qword_19752C290);
  if (v61 == 1)
  {
    v62 = [v42 URLsForDirectory:14 inDomains:1];
    v63 = sub_1975219CC();

    if (*(v63 + 16))
    {
      v64 = v104;
      v65 = v123;
      (*(v6 + 16))(v104, v63 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v123);

      v33 = v117;
      sub_1973F7DA4(v117, &qword_1EAF2AE78, &qword_19752C290);
      v66 = *(v6 + 32);
      v67 = v103;
      v66(v103, v64, v65);
      v66(v33, v67, v65);
      v41(v33, 0, 1, v65);
    }

    else
    {

      v68 = sub_19752155C();
      v69 = sub_197521DDC();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_1973F2000, v68, v69, "File Manager was unable to find Application Support in the User Domain", v70, 2u);
        MEMORY[0x19A8E1B50](v70, -1, -1);
      }

      v33 = v117;
    }
  }

  v71 = v112;
  sub_1973FE1B4(v33, v112, &qword_1EAF2AE78, &qword_19752C290);
  if ((v109)(v71, 1, v123) == 1)
  {
    sub_1973F7DA4(v71, &qword_1EAF2AE78, &qword_19752C290);
  }

  else
  {
    v72 = *(v6 + 32);
    v73 = v120;
    v74 = v71;
    v75 = v123;
    v72(v120, v74, v123);
    (*(v6 + 16))(v119, v73, v75);
    if (v110)
    {
      v124 = 0x646572616873;
      v125 = 0xE600000000000000;
      v76 = v107;
      v77 = v6;
      v78 = v106;
      v79 = v108;
      (*(v107 + 104))(v106, *MEMORY[0x1E6968F58], v108);
      sub_197416D54();
      v80 = v105;
      v81 = v119;
      sub_1975212BC();
      v82 = v78;
      v6 = v77;
      v83 = v123;
      (*(v76 + 8))(v82, v79);
      (*(v77 + 8))(v81, v83);
      v72(v81, v80, v83);
    }

    v84 = v114;
    v85 = v116;
    v86 = v117;
    if ((v115 & 1) == 0)
    {
      goto LABEL_27;
    }

    v87 = sub_19752124C();
    v124 = 0;
    v88 = [v85 createDirectoryAtURL:v87 withIntermediateDirectories:1 attributes:0 error:&v124];

    if (v88)
    {
      v89 = v124;
LABEL_27:

      (*(v6 + 8))(v120, v123);
      sub_1973F7DA4(v86, &qword_1EAF2AE78, &qword_19752C290);
      (*(v84 + 8))(v121, v118);
      return v122;
    }

    v91 = v124;
    v92 = sub_1975211DC();

    swift_willThrow();
    (*(v6 + 8))(v120, v123);
    (*(v84 + 8))(v121, v118);
    v124 = 0;
    v125 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000033, 0x8000000197526310);
    v93 = [objc_opt_self() mainBundle];
    v94 = [v93 bundleIdentifier];

    if (v94)
    {
      v95 = sub_1975217BC();
      v97 = v96;
    }

    else
    {
      v95 = 0;
      v97 = 0;
    }

    v126 = v95;
    v127 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE58, &unk_19752F390);
    v98 = sub_1975217CC();
    MEMORY[0x19A8DFF80](v98);

    MEMORY[0x19A8DFF80](2108704, 0xE300000000000000);
    v126 = v92;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE98, &unk_19752E9E0);
    sub_19752235C();
  }

LABEL_34:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

void sub_1974A2604(uint64_t a1, uint64_t *a2)
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

  v8 = 0;
  if (v6)
  {
    goto LABEL_8;
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

      return;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      do
      {
LABEL_8:
        v10 = (*(a1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v6)))));
        v11 = *v10;
        v12 = v10[1];
        v13 = *a2;
        swift_unknownObjectRetain_n();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v13 = sub_197433F80(0, v13[2] + 1, 1, v13);
          *a2 = v13;
        }

        v16 = v13[2];
        v15 = v13[3];
        if (v16 >= v15 >> 1)
        {
          *a2 = sub_197433F80((v15 > 1), v16 + 1, 1, v13);
        }

        v6 &= v6 - 1;
        ObjectType = swift_getObjectType();
        sub_19743F3E4(v16, v11, a2, ObjectType, v12);
        swift_unknownObjectRelease();
      }

      while (v6);
    }
  }

  __break(1u);
}

uint64_t sub_1974A2780(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      swift_unknownObjectRetain_n();
      sub_1974327FC(&v5, v4, v3);
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1974A280C(char *a1, unint64_t a2, char *a3, char *a4)
{
  v5 = v4;
  if (qword_1ED7C9850 != -1)
  {
    swift_once();
  }

  sub_1973F79C8(a3, a4);

  v10 = sub_1974D4E08(a1, a2);
  if (v10)
  {
    v11 = v10;

    return v11;
  }

  else
  {

    v13 = sub_1974D6808(a1, a2, v5, a4);

    return v13;
  }
}

BOOL sub_1974A2910(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a1);
  (*(v3 + 16))(&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B6A8, &unk_19752F380);
  swift_dynamicCast();
  v4 = v11;
  v10 = v11;
  if (swift_conformsToProtocol2())
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    do
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      swift_beginAccess();
      v10 = AssociatedTypeWitness;
      if (swift_conformsToProtocol2())
      {
        v7 = AssociatedTypeWitness == 0;
      }

      else
      {
        v7 = 1;
      }
    }

    while (!v7);
  }

  if (swift_dynamicCastMetatype())
  {
    return 1;
  }

  if (swift_dynamicCastMetatype())
  {
    return 1;
  }

  sub_19752132C();
  if (swift_dynamicCastMetatype())
  {
    return 1;
  }

  sub_19752135C();
  if (swift_dynamicCastMetatype())
  {
    return 1;
  }

  sub_1975212CC();
  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    return 1;
  }

  type metadata accessor for Decimal(0);
  return swift_dynamicCastMetatype() != 0;
}

BOOL sub_1974A2C24(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a1);
  (*(v3 + 16))(&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B6A8, &unk_19752F380);
  swift_dynamicCast();
  v4 = v11;
  v10 = v11;
  if (swift_conformsToProtocol2())
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    do
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      swift_beginAccess();
      v10 = AssociatedTypeWitness;
      if (swift_conformsToProtocol2())
      {
        v7 = AssociatedTypeWitness == 0;
      }

      else
      {
        v7 = 1;
      }
    }

    while (!v7);
  }

  sub_197520C6C();
  return swift_dynamicCastMetatype() != 0;
}

uint64_t sub_1974A2DB8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = PersistentModel.persistentModelID.getter(*(a1 + a2 - 16), *(a1 + a2 - 8), &v6);
  v5 = v7;
  *a3 = v6;
  *(a3 + 8) = v5;
  return result;
}

uint64_t sub_1974A2E08(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_19752202C();
  KeyPath = swift_getKeyPath();
  v7 = MEMORY[0x19A8E0730](a1, KeyPath);

  if (v7)
  {
    return 0;
  }

  v9 = sub_1973F68A4(a2, a3);
  v10 = v9;
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = v9 + 32;
    while (v12 < *(v10 + 16))
    {
      sub_1973F7E64(v13, &v48);
      if (MEMORY[0x19A8E0730](v50, a1))
      {

        v18 = v48;

        sub_1973F82A8(&v48);
        return v18;
      }

      ++v12;
      sub_1973F82A8(&v48);
      v13 += 96;
      if (v11 == v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

LABEL_8:
  v14 = sub_1974A33B8(MEMORY[0x1E69E7CC0], a2, a3);
  if (!v14[2] || (v15 = sub_1973F7814(a1), (v16 & 1) == 0))
  {
    v48 = sub_197521FEC();
    v49 = v19;
    v46 = 63;
    v47 = 0xE100000000000000;
    v44 = 0;
    v45 = 0xE000000000000000;
    v20 = sub_197416D54();
    v21 = MEMORY[0x1E69E6158];
    v22 = sub_197521FBC(&v46, &v44, 0, 0, 0, 1, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], v20, v20, v20);
    v43 = v14;
    v24 = v23;

    v48 = v22;
    v49 = v24;
    v45 = 0xE000000000000000;
    v46 = 33;
    v47 = 0xE100000000000000;
    v44 = 0;
    v25 = sub_197521FBC(&v46, &v44, 0, 0, 0, 1, v21, v21, v21, v20, v20, v20);
    v27 = v26;

    v28 = sub_1974A3A00(v25, v27, v43);
    v30 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v30 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (v30)
    {
      v31 = v28;

      return v31;
    }

    if ((sub_19752189C() & 1) == 0)
    {
      goto LABEL_28;
    }

    v48 = v25;
    v49 = v27;
    v46 = 46;
    v47 = 0xE100000000000000;
    v32 = *(sub_197521F9C() + 16);

    if (v32 < 3)
    {

      return 0;
    }

    if (!__OFSUB__(0, sub_19752181C()))
    {
      sub_19752183C();
      v33 = sub_1975218DC();
      v34 = MEMORY[0x19A8DFF20](v33);
      v36 = v35;

      v37 = sub_1974A3A00(v34, v36, v43);
      v39 = HIBYTE(v38) & 0xF;
      if ((v38 & 0x2000000000000000) == 0)
      {
        v39 = v37 & 0xFFFFFFFFFFFFLL;
      }

      if (v39)
      {
        v40 = v37;

        return v40;
      }

      v48 = 0;
      v49 = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197525E50);
      v46 = a1;
      sub_19752235C();
      goto LABEL_30;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0x74276E646C756F43, 0xEE0020646E696620);
    v46 = a1;
    sub_19752235C();
    MEMORY[0x19A8DFF80](544108320, 0xE400000000000000);
    v41 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v41);

    MEMORY[0x19A8DFF80](0x6966206874697720, 0xED00002073646C65);
    v42 = MEMORY[0x19A8E0100](v10, &type metadata for Schema.PropertyMetadata);
    MEMORY[0x19A8DFF80](v42);

LABEL_30:
    result = sub_1975223EC();
    __break(1u);
    return result;
  }

  v17 = v15;

  v18 = *(v14[7] + 16 * v17);

  return v18;
}

uint64_t *sub_1974A33B8(uint64_t AssociatedTypeWitness, uint64_t *a2, uint64_t a3)
{
  v3 = a2;
  v5 = sub_1973F68A4(a2, a3);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = AssociatedTypeWitness;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_2;
  }

LABEL_69:
  v7 = sub_1973FA32C(0, *(AssociatedTypeWitness + 16) + 1, 1, AssociatedTypeWitness);
LABEL_2:
  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1973FA32C((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  *&v7[8 * v9 + 32] = v3;
  v70 = *(v5 + 16);
  if (!v70)
  {

    return MEMORY[0x1E69E7CC8];
  }

  v65 = v7;
  v10 = 0;
  v68 = v5 + 32;
  v69 = *(AssociatedTypeWitness + 16);
  v67 = (AssociatedTypeWitness + 32);
  v11 = MEMORY[0x1E69E7CC8];
  v64 = v5;
  do
  {
    if (v10 >= *(v5 + 16))
    {
      goto LABEL_64;
    }

    v12 = v5;
    sub_1973F7E64(v68 + 96 * v10, v76);
    v13 = v76[0];
    v14 = v76[1];
    v15 = v76[2];

    sub_1973F82A8(v76);
    v74 = v15;
    sub_197521FFC();
    v17 = v16;
    v75 = v16;
    if (swift_conformsToProtocol2())
    {
      v18 = v17 == 0;
    }

    else
    {
      v18 = 1;
    }

    AssociatedTypeWitness = v17;
    if (!v18)
    {
      do
      {
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        swift_beginAccess();
        v75 = AssociatedTypeWitness;
        if (swift_conformsToProtocol2())
        {
          v19 = AssociatedTypeWitness == 0;
        }

        else
        {
          v19 = 1;
        }
      }

      while (!v19);
    }

    ++v10;

    v20 = swift_isUniquelyReferenced_nonNull_native();
    v75 = v11;
    v3 = &v75;
    sub_19747C4B0(v13, v14, v74, v20);

    v11 = v75;
    v21 = v69;
    v22 = v67;
    while (v21)
    {
      v23 = *v22++;
      --v21;
      if (v23 == AssociatedTypeWitness)
      {

        goto LABEL_59;
      }
    }

    v5 = sub_1974A3E2C(v17, v13, v14, v74, v65);

    if (v5)
    {
      v66 = v10;
      v24 = 0;
      v25 = v5 + 64;
      v26 = 1 << *(v5 + 32);
      if (v26 < 64)
      {
        v27 = ~(-1 << v26);
      }

      else
      {
        v27 = -1;
      }

      v28 = v27 & *(v5 + 64);
      v29 = (v26 + 63) >> 6;
      v71 = v5;
      if (v28)
      {
        goto LABEL_30;
      }

      do
      {
LABEL_31:
        v31 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
          goto LABEL_69;
        }

        if (v31 >= v29)
        {

          v5 = v64;
          v10 = v66;
          goto LABEL_7;
        }

        v28 = *(v25 + 8 * v31);
        ++v24;
      }

      while (!v28);
      while (1)
      {
        v32 = __clz(__rbit64(v28));
        v28 &= v28 - 1;
        v33 = v32 | (v31 << 6);
        v34 = *(*(v5 + 48) + 8 * v33);
        v35 = (*(v5 + 56) + 16 * v33);
        AssociatedTypeWitness = v35[1];
        v72 = *v35;
        sub_19752202C();

        v73 = AssociatedTypeWitness;

        v36 = sub_1975224AC();
        if (v36)
        {
          break;
        }

        v45 = swift_isUniquelyReferenced_nonNull_native();
        v75 = v11;
        v46 = v34;
        v47 = v34;
        v3 = v11;
        v48 = sub_1973F7814(v47);
        v50 = v11[2];
        v51 = (v49 & 1) == 0;
        v52 = __OFADD__(v50, v51);
        v53 = v50 + v51;
        if (v52)
        {
          goto LABEL_66;
        }

        AssociatedTypeWitness = v49;
        if (v11[3] >= v53)
        {
          if ((v45 & 1) == 0)
          {
            v3 = &v75;
            v62 = v48;
            sub_197479770();
            v48 = v62;
          }
        }

        else
        {
          sub_197477E60(v53, v45);
          v3 = v75;
          v48 = sub_1973F7814(v46);
          if ((AssociatedTypeWitness & 1) != (v54 & 1))
          {
LABEL_70:
            result = sub_1975229CC();
            __break(1u);
            return result;
          }
        }

        v11 = v75;
        if (AssociatedTypeWitness)
        {
          v58 = (*(v75 + 56) + 16 * v48);
          AssociatedTypeWitness = v58[1];
          *v58 = v72;
          v58[1] = v73;
        }

        else
        {
          *(v75 + 8 * (v48 >> 6) + 64) |= 1 << v48;
          *(v11[6] + 8 * v48) = v46;
          v59 = (v11[7] + 16 * v48);
          *v59 = v72;
          v59[1] = v73;
          v60 = v11[2];
          v52 = __OFADD__(v60, 1);
          v61 = v60 + 1;
          if (v52)
          {
            goto LABEL_68;
          }

          v11[2] = v61;
        }

        v24 = v31;
        if (!v28)
        {
          goto LABEL_31;
        }

LABEL_30:
        v31 = v24;
      }

      AssociatedTypeWitness = v36;
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v75 = v11;
      v3 = v11;
      v5 = sub_1973F7814(AssociatedTypeWitness);
      v39 = v11[2];
      v40 = (v38 & 1) == 0;
      v41 = v39 + v40;
      if (__OFADD__(v39, v40))
      {
        goto LABEL_65;
      }

      v42 = v38;
      if (v11[3] < v41)
      {
        sub_197477E60(v41, v37);
        v3 = v75;
        v43 = sub_1973F7814(AssociatedTypeWitness);
        if ((v42 & 1) != (v44 & 1))
        {
          goto LABEL_70;
        }

        v5 = v43;
        v11 = v75;
        if ((v42 & 1) == 0)
        {
          goto LABEL_46;
        }

LABEL_28:
        v30 = (v11[7] + 16 * v5);
        v3 = v30[1];
        *v30 = v72;
        v30[1] = v73;

LABEL_29:
        v24 = v31;
        v5 = v71;
        if (!v28)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      if (v37)
      {
        v11 = v75;
        if (v38)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v3 = &v75;
        sub_197479770();
        v11 = v75;
        if (v42)
        {
          goto LABEL_28;
        }
      }

LABEL_46:
      v11[(v5 >> 6) + 8] |= 1 << v5;
      *(v11[6] + 8 * v5) = AssociatedTypeWitness;
      v55 = (v11[7] + 16 * v5);
      *v55 = v72;
      v55[1] = v73;

      v56 = v11[2];
      v52 = __OFADD__(v56, 1);
      v57 = v56 + 1;
      if (v52)
      {
        goto LABEL_67;
      }

      v11[2] = v57;
      goto LABEL_29;
    }

LABEL_59:
    v5 = v12;
LABEL_7:
    ;
  }

  while (v10 != v70);

  return v11;
}

uint64_t sub_1974A3A00(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  v12 = 0xE000000000000000;
  v33 = v9;
  v34 = v5;
  if (v8)
  {
    while (1)
    {
      v38 = v10;
      v13 = v11;
LABEL_9:
      v14 = (*(a3 + 56) + 16 * (__clz(__rbit64(v8)) | (v13 << 6)));
      v15 = *v14;
      v16 = v14[1];

      v18 = sub_197521FEC() == a1 && v17 == a2;
      v36 = v15;
      if (v18 || (sub_19752282C() & 1) != 0)
      {

        v38 = v15;
        v12 = v16;
      }

      v37 = v12;
      v19 = sub_1974A3D3C(46, 0xE100000000000000, a1, a2);
      if (v20)
      {
        break;
      }

      v21 = v19;

      v22 = a1;
      sub_1974A3CF0(v21, a1, a2);
      a1 = v23;
      if (v23 >> 14 < sub_197521F6C() >> 14)
      {
        goto LABEL_23;
      }

      v8 &= v8 - 1;
      v24 = sub_197521F7C();
      v26 = v25;
      v28 = v27;
      v29 = a2;
      v31 = v30;

      LOBYTE(v24) = sub_1974ACA50(v24, v26, v28, v31, v36, v16);
      a2 = v29;

      v12 = v37;
      v10 = v38;
      if (v24)
      {
        v10 = v36;
        v12 = v16;
      }

      v11 = v13;
      a1 = v22;
      v9 = v33;
      v5 = v34;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v9)
      {

        return v10;
      }

      v8 = *(v5 + 8 * v13);
      ++v11;
      if (v8)
      {
        v38 = v10;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  sub_1975221EC();

  MEMORY[0x19A8DFF80](a1, a2);
  result = sub_1975223EC();
  __break(1u);
  return result;
}

unint64_t sub_1974A3CF0(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1975218DC();
  }

  __break(1u);
  return result;
}

unint64_t sub_1974A3D3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_1975218BC() != a1 || v9 != a2)
  {
    v10 = sub_19752282C();

    if (v10)
    {
      return v8;
    }

    v8 = sub_19752182C();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

void *sub_1974A3E2C(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (sub_1973F6EEC(a1))
  {
    return 0;
  }

  v60 = a1;
  if (swift_conformsToProtocol2())
  {
    v12 = a1 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;
  AssociatedTypeWitness = a1;
  if (!v12)
  {
    do
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      swift_beginAccess();
      v60 = AssociatedTypeWitness;
      if (swift_conformsToProtocol2())
      {
        v15 = AssociatedTypeWitness == 0;
      }

      else
      {
        v15 = 1;
      }
    }

    while (!v15);
  }

  v16 = *AssociatedTypeWitness;
  if (*AssociatedTypeWitness > 0x7FF)
  {
    if ((sub_19752148C() - 2048) < 0xFFFFFFFFFFFFF801)
    {
      return MEMORY[0x1E69E7CC8];
    }
  }

  else
  {
    v57 = v13;
    v10 = MEMORY[0x1E69E7CC8];
    if ((v16 - 513) < 2)
    {
      return v10;
    }

    if (v16 == 512)
    {
      if (swift_conformsToProtocol2())
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60 = v10;
        sub_19747C4B0(a2, a3, a4, isUniquelyReferenced_nonNull_native);

        return v10;
      }

      if (!sub_19752154C())
      {
        return v10;
      }

      v28 = 0;
      v29 = 0xEC00000061746144;
      while (1)
      {
        if (v28 >= sub_19752154C())
        {
          __break(1u);
LABEL_89:
          v60 = 0;
          v61 = 0xE000000000000000;
          sub_1975221EC();

          v60 = 0xD000000000000017;
          v61 = 0x8000000197525EB0;
          v48 = sub_197522B8C();
          MEMORY[0x19A8DFF80](v48);

          while (1)
          {
LABEL_92:
            sub_1975223EC();
            __break(1u);
          }
        }

        v30 = *AssociatedTypeWitness;
        v31 = sub_19752148C();
        if (v30 > 0x7FF)
        {
          if (v31 - 2048 < 0xFFFFFFFFFFFFF801)
          {
            goto LABEL_54;
          }
        }

        else if (v31 >= 0x800)
        {
          if (!v30)
          {
LABEL_54:
            sub_19752145C();
            sub_19752144C();
            v32 = sub_19752142C();
            goto LABEL_57;
          }
        }

        else if (v30 == v31)
        {
          goto LABEL_54;
        }

        sub_19752146C();
        v32 = sub_19752186C();
LABEL_57:
        if (v32 == 0x676E696B6361625FLL && v33 == v29)
        {
        }

        else
        {
          v35 = a2;
          v36 = v29;
          v37 = sub_19752282C();

          if (v37)
          {
            goto LABEL_66;
          }

          if (sub_19752151C() == 0xD000000000000016 && 0x8000000197525EF0 == v38)
          {
            goto LABEL_64;
          }

          v39 = sub_19752282C();

          if (v39)
          {
            goto LABEL_66;
          }

          if (sub_19752151C() == 0x7265666675625FLL && v40 == 0xE700000000000000)
          {
LABEL_64:

LABEL_66:
            v29 = v36;
            a2 = v35;
            goto LABEL_47;
          }

          v41 = sub_19752282C();

          if (v41)
          {
            goto LABEL_66;
          }

          v42 = sub_19752151C();
          v56 = v43;
          v53 = v42;
          if (v57)
          {
            sub_1974AA070(AssociatedTypeWitness, v28, AssociatedTypeWitness, AssociatedTypeWitness);
          }

          else
          {
            sub_19752150C();
          }

          v58 = v35;
          v59 = a3;

          MEMORY[0x19A8DFF80](46, 0xE100000000000000);

          MEMORY[0x19A8DFF80](v53, v56);

          v44 = v59;
          v50 = v58;
          v45 = sub_19752152C();
          v58 = v45;
          v51 = v44;
          v54 = v45;
          v29 = v36;
          if (swift_conformsToProtocol2() && v45)
          {
            a2 = v35;
            do
            {
              v45 = swift_getAssociatedTypeWitness();
              swift_beginAccess();
              v58 = v45;
            }

            while (swift_conformsToProtocol2() && v45);
          }

          else
          {
            a2 = v35;
          }

          sub_19752202C();
          v52 = sub_1975224AC();
          if (!v52)
          {
            v58 = 0;
            v59 = 0xE000000000000000;
            sub_1975221EC();
            MEMORY[0x19A8DFF80](0xD00000000000001BLL, 0x8000000197525F10);
            sub_19752235C();
            MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
            sub_19752235C();
            goto LABEL_92;
          }

          if (sub_1973F6EEC(v54) || swift_conformsToProtocol2() && v45)
          {

            v46 = swift_isUniquelyReferenced_nonNull_native();
            v58 = v10;
            sub_19747C4B0(v50, v51, v52, v46);
          }

          else
          {
            v55 = sub_1974A3E2C(v54, v50, v51, v52, a5);
            if (!v55)
            {
              goto LABEL_92;
            }

            v47 = swift_isUniquelyReferenced_nonNull_native();
            v58 = v10;
            sub_1974ACAC8(v55, sub_1974ACA08, 0, v47, &v58);
          }

          v10 = v58;
        }

LABEL_47:
        if (++v28 == sub_19752154C())
        {
          return v10;
        }
      }
    }

    v18 = sub_19752148C();
    if (v18 >= 0x800)
    {
      if (!v16)
      {
        return v10;
      }
    }

    else if (v16 == v18)
    {
      return v10;
    }
  }

  v19 = *AssociatedTypeWitness;
  if ((*AssociatedTypeWitness - 2048) >= 0xFFFFFFFFFFFFF801)
  {
    v20 = sub_19752147C();
    v21 = v20 < 0x800 && v20 == v19;
    v22 = v21;
    if ((v19 - 515) >= 2 && !v22)
    {
      sub_1975221EC();

      v60 = 0xD00000000000001FLL;
      v61 = 0x8000000197525ED0;
      v49 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v49);

      goto LABEL_92;
    }
  }

  v24 = *(a5 + 16);
  v25 = 32;
  while (v24)
  {
    v26 = *(a5 + v25);
    v25 += 8;
    --v24;
    if (v26 == AssociatedTypeWitness)
    {
      return 0;
    }
  }

  v27 = swift_conformsToProtocol2();
  if (!v27)
  {
    goto LABEL_89;
  }

  return sub_1974A92C4(AssociatedTypeWitness, a5, a2, a3, AssociatedTypeWitness, v27);
}

uint64_t sub_1974A46D0(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_1973FE074(a1, a2) + 32);
  swift_unknownObjectRetain();

  return v2;
}

uint64_t sub_1974A4718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1973FE074(a3, a4);
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t sub_1974A4780(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_1973FE074(a1, a2) + 48);
  swift_unknownObjectRetain();

  return v2;
}

uint64_t sub_1974A47C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a5 + 16))
  {
    v15 = *(a5 + 16);
  }

  else
  {
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      __break(1u);
LABEL_10:

      sub_1975221EC();
      MEMORY[0x19A8DFF80](0x69746E6520656854, 0xEF20726F66207974);
      v28 = *(a4 + 72);
      v27 = *(a4 + 80);

      MEMORY[0x19A8DFF80](v28, v27);

      MEMORY[0x19A8DFF80](0xD00000000000002ELL, 0x8000000197526030);
      goto LABEL_12;
    }

    v15 = Strong;
  }

  v17 = *(v15 + 16);

  v18 = *(v17 + 72);

  swift_beginAccess();
  if (!*(v18 + 16))
  {
    goto LABEL_10;
  }

  v20 = *(a4 + 72);
  v19 = *(a4 + 80);

  v21 = sub_1973F4028(v20, v19);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
    goto LABEL_10;
  }

  v24 = *(*(v18 + 56) + 8 * v21);

  v25 = *(v24 + 144);
  if (v25)
  {
    sub_1974A4A64(v25, a2, a1, a3, a4, a5, a6, a7, v25, a8, a9, *(v24 + 152));
  }

  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000044, 0x8000000197526060);
  type metadata accessor for Schema.Entity();
  sub_19752235C();
LABEL_12:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974A4A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  swift_unknownObjectRetain();
  v17 = a7;
  if (swift_dynamicCast())
  {
    v18 = swift_allocObject();
    v18[2] = a7;
    v18[3] = a10;
    v18[4] = a11;
    v18[5] = a12;
    v18[6] = v27;
    v18[7] = a3;
    v18[8] = a2;
    v18[9] = a5;
    v19 = a5;
    v20 = swift_allocObject();
    v20[2] = a7;
    v20[3] = a10;
    v20[4] = a11;
    v20[5] = a12;
    v20[6] = v27;
    v20[7] = a3;
    v20[8] = a2;
    v20[9] = a5;
    v21 = swift_allocObject();
    v21[2] = v17;
    v21[3] = a10;
    v21[4] = a11;
    v21[5] = a12;
    v21[6] = v27;
    v21[7] = a3;
    v21[8] = a6;
    v21[9] = a2;
    v21[10] = a5;
    v22 = swift_allocObject();
    v22[2] = v17;
    v22[3] = a10;
    v22[4] = a11;
    v22[5] = a12;
    v22[6] = v27;
    v22[7] = a3;
    v22[8] = a6;
    v22[9] = a2;
    v22[10] = v19;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    sub_1974CE198(a3, a4, sub_1974AD3CC, v18, sub_1974AD42C, v20, sub_1974AD480, v21, sub_1974AD4E8, v22, v17, a8, a9);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000018, 0x80000001975260B0);
    v24 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v24);

    MEMORY[0x19A8DFF80](0xD00000000000001ELL, 0x80000001975260D0);
    sub_1975227FC();
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1974A4D84(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26 = a5;
  v27 = a7;
  v12 = *a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B658, &unk_19752F180);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v25 - v15;
  v17 = MEMORY[0x1E69E77B0];
  sub_197434244(*(v12 + *MEMORY[0x1E69E77B0]), *(v12 + *MEMORY[0x1E69E77B0]), a8, a8, v28);
  v18 = v29;
  v19 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v20 = *(v12 + *v17 + 8);
  v21 = (*(v19 + 72))(a1, v20, a9, v18, v19);
  __swift_destroy_boxed_opaque_existential_1(v28);
  v22 = v27;
  sub_197454D38(v26, v21, a6, v20, v27, a9);
  v23 = sub_1975213EC();
  (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
  sub_1974C1E20(a1, v16, a6, v22);
  swift_unknownObjectRelease();
  return sub_1973F7DA4(v16, &qword_1EAF2B658, &unk_19752F180);
}

uint64_t sub_1974A4F70(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26[1] = a4;
  v27 = a7;
  v26[0] = a5;
  v12 = *a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B658, &unk_19752F180);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = v26 - v15;
  v17 = MEMORY[0x1E69E77B0];
  sub_197434244(*(v12 + *MEMORY[0x1E69E77B0]), *(v12 + *MEMORY[0x1E69E77B0]), a8, a8, v28);
  v19 = v29;
  v18 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v20 = *(*(v12 + *v17 + 8) + 16);
  v21 = (*(v18 + 80))(a1, v20, a9, v19, v18);
  if (!v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v22 = v21;
  __swift_destroy_boxed_opaque_existential_1(v28);
  v23 = v27;
  sub_197454D38(v26[0], v22, a6, v20, v27, a9);
  v24 = sub_1975213EC();
  (*(*(v24 - 8) + 56))(v16, 1, 1, v24);
  sub_1974C1E20(a1, v16, a6, v23);
  swift_unknownObjectRelease();
  return sub_1973F7DA4(v16, &qword_1EAF2B658, &unk_19752F180);
}

uint64_t sub_1974A5170(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v39 = a5;
  v33[1] = a4;
  v38 = a1;
  v13 = *a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B658, &unk_19752F180);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v34 = v33 - v16;
  v17 = MEMORY[0x1E69E77B0];
  v36 = *(v13 + *MEMORY[0x1E69E77B0]);
  v37 = a9;
  sub_197434244(v36, v36, v37, v37, v48);
  v19 = v49;
  v18 = v50;
  __swift_project_boxed_opaque_existential_1(v48, v49);
  v35 = *(v18 + 88);
  v20 = *(v13 + *v17 + 8);
  v21 = *(v20 + 16);
  WitnessTable = swift_getWitnessTable();
  v35(&v47, v38, v20, v21, WitnessTable, v19, v18);
  v23 = v47;
  __swift_destroy_boxed_opaque_existential_1(v48);
  v47 = v23;
  v48[0] = MEMORY[0x1E69E7CC0];
  v40 = a7;
  v41 = v36;
  v42 = v21;
  v43 = a8;
  v44 = v37;
  v45 = a10;
  v46 = v48;
  swift_getWitnessTable();
  sub_19752195C();
  v24 = v48[0];
  if (*(v48[0] + 16))
  {
    sub_1974BD348(v21, v48[0], v21, a10);
  }

  v37 = v24;
  if (sub_197521A5C())
  {
    v25 = 4;
    do
    {
      v26 = v25 - 4;
      v27 = sub_197521A3C();
      sub_1975219EC();
      if (v27)
      {
        v28 = *(v23 + 8 * v25);
        swift_unknownObjectRetain();
        v29 = v25 - 3;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_11;
        }
      }

      else
      {
        v28 = sub_19752222C();
        v29 = v25 - 3;
        if (__OFADD__(v26, 1))
        {
LABEL_11:
          __break(1u);
          break;
        }
      }

      sub_197454D38(a6, v28, a7, v21, a8, a10);
      swift_unknownObjectRelease();
      ++v25;
    }

    while (v29 != sub_197521A5C());
  }

  v30 = sub_1975213EC();
  v31 = v34;
  (*(*(v30 - 8) + 56))(v34, 1, 1, v30);
  sub_1974C1E20(v38, v31, a7, a8);
  sub_1973F7DA4(v31, &qword_1EAF2B658, &unk_19752F180);
}

uint64_t sub_1974A54EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v46 = a5;
  v37 = a4;
  v14 = *a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B658, &unk_19752F180);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v38 = &v37 - v17;
  v18 = MEMORY[0x1E69E77B0];
  v42 = *(v14 + *MEMORY[0x1E69E77B0]);
  v43 = a9;
  sub_197434244(v42, v42, v43, v43, v50);
  v19 = v52;
  v45 = v51;
  __swift_project_boxed_opaque_existential_1(v50, v51);
  v44 = *(v19 + 88);
  v20 = *(v14 + *v18 + 8);
  v21 = *(*(v20 + 16) + 16);
  v41 = *(v20 + 16);
  WitnessTable = swift_getWitnessTable();
  v47 = WitnessTable;
  v48 = a10;
  v22 = swift_getWitnessTable();
  v39 = a1;
  v44(&v49, a1, v20, v21, v22, v45, v19);
  v23 = v49;
  if (!v49)
  {
    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  v24 = __swift_destroy_boxed_opaque_existential_1(v50);
  v49 = v23;
  v50[0] = MEMORY[0x1E69E7CC0];
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = v42;
  v26 = v43;
  *(&v37 - 8) = a7;
  *(&v37 - 7) = v27;
  *(&v37 - 6) = v21;
  *(&v37 - 5) = a8;
  *(&v37 - 4) = v26;
  *(&v37 - 3) = a10;
  *(&v37 - 2) = v50;
  sub_19752195C();
  v28 = v50[0];
  if (*(v50[0] + 16))
  {
    sub_1974BD348(v21, v50[0], v21, a10);
  }

  v45 = v28;
  if (sub_197521A5C())
  {
    v29 = 4;
    do
    {
      v30 = v29 - 4;
      v31 = sub_197521A3C();
      sub_1975219EC();
      if (v31)
      {
        v32 = *(v23 + 8 * v29);
        swift_unknownObjectRetain();
        v33 = v29 - 3;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_12;
        }
      }

      else
      {
        v32 = sub_19752222C();
        v33 = v29 - 3;
        if (__OFADD__(v30, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      sub_197454D38(a6, v32, a7, v21, a8, a10);
      swift_unknownObjectRelease();
      ++v29;
    }

    while (v33 != sub_197521A5C());
  }

  v34 = sub_1975213EC();
  v35 = v38;
  (*(*(v34 - 8) + 56))(v38, 1, 1, v34);
  sub_1974C1E20(v39, v35, a7, a8);
  sub_1973F7DA4(v35, &qword_1EAF2B658, &unk_19752F180);
}

uint64_t sub_1974A5890(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(sub_1973FE074(a5, a8) + 112);

  if (v11 == 1)
  {
    PersistentModel.persistentModelID.getter(a5, a8, &v19);
    v13 = v19;
    v14 = v20;
    v15 = *a2;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v15;
    if ((result & 1) == 0)
    {
      result = sub_197445BA8(0, *(v15 + 16) + 1, 1, v15);
      v15 = result;
      *a2 = result;
    }

    v17 = *(v15 + 16);
    v16 = *(v15 + 24);
    if (v17 >= v16 >> 1)
    {
      result = sub_197445BA8((v16 > 1), v17 + 1, 1, v15);
      v15 = result;
      *a2 = result;
    }

    *(v15 + 16) = v17 + 1;
    v18 = v15 + 16 * v17;
    *(v18 + 32) = v13;
    *(v18 + 40) = v14;
  }

  return result;
}

uint64_t sub_1974A5994(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v19 = *a1;
  v20 = a2[3];
  v21 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v20);
  v22 = *(v19 + *MEMORY[0x1E69E77B0] + 8);
  v23 = (*(v21 + 72))(a1, v22, a14, v20, v21);
  swift_beginAccess();
  v24 = *(a3 + 16);

  PersistentModel.persistentModelID.getter(v22, a14, &v33);
  v25 = v33;
  LOBYTE(v21) = v34;
  LOBYTE(a3) = sub_197455CE4(v33, v34, v24);

  sub_1974028C8(v25, v21);
  if ((a3 & 1) == 0)
  {
    if (a4)
    {
      swift_beginAccess();
      v26 = *(a5 + 16);
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a5 + 16) = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = sub_197433F80(0, v26[2] + 1, 1, v26);
        *(a5 + 16) = v26;
      }

      v28 = v26[2];
      v29 = v26[3];
      if (v28 >= v29 >> 1)
      {
        v31 = v26[2];
        v26 = sub_197433F80((v29 > 1), v28 + 1, 1, v26);
        v28 = v31;
        *(a5 + 16) = v26;
      }

      sub_19743F3E4(v28, v23, (a5 + 16), v22, a14);
      *(a5 + 16) = v26;
      swift_endAccess();
    }

    swift_unknownObjectRetain();
    a6(a8, v23, a14);
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1974A5BC0(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  v14 = *a1;
  v16 = a2[3];
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v16);
  v17 = *(v15 + 88);
  v18 = *(v14 + *MEMORY[0x1E69E77B0] + 8);
  v19 = *(v18 + 16);
  WitnessTable = swift_getWitnessTable();
  v17(&v22, a1, v18, v19, WitnessTable, v16, v15);
  swift_getWitnessTable();
  sub_19752195C();
}

void *sub_1974A5D94(uint64_t *a1, void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = *a1;
  v16 = a2[3];
  v17 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v16);
  v18 = *(v17 + 88);
  v19 = *(v15 + *MEMORY[0x1E69E77B0] + 8);
  v20 = *(*(v19 + 16) + 16);
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  result = v18(&v25, a1, v19, v20, WitnessTable, v16, v17);
  if (v25)
  {
    MEMORY[0x1EEE9AC00](a5 + 16, v23);
    sub_19752195C();
  }

  return result;
}

void sub_1974A5F84(uint64_t *a1, uint64_t *a2, char a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v18 = *a1;
  swift_beginAccess();
  v19 = *a2;

  PersistentModel.persistentModelID.getter(a11, a15, &v29);
  v20 = v29;
  v21 = v30;
  v22 = sub_197455CE4(v29, v30, v19);

  sub_1974028C8(v20, v21);
  if ((v22 & 1) == 0)
  {
    if (a3)
    {
      swift_beginAccess();
      v23 = *a4;
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v23 = sub_197433F80(0, v23[2] + 1, 1, v23);
        *a4 = v23;
      }

      v26 = v23[2];
      v25 = v23[3];
      if (v26 >= v25 >> 1)
      {
        v23 = sub_197433F80((v25 > 1), v26 + 1, 1, v23);
        *a4 = v23;
      }

      sub_19743F3E4(v26, v18, a4, a11, a15);
      *a4 = v23;
      swift_endAccess();
    }

    a5(a7, v18, a15);
  }
}

void sub_1974A6128(char a1, uint64_t a2, uint64_t a3)
{
  if (PersistentModel.modelContext.getter(a2, a3))
  {

    v6 = *(sub_1973FE074(a2, a3) + 112);

    if (v6 == 1 && (a1 & 1) == 0)
    {
      sub_1974258A4(a2, a3);
    }

    type metadata accessor for ModelSnapshot(0, a2, a3, v7);
    v8 = swift_unknownObjectRetain();
    sub_1975122EC(v8, v9, v10, v11);
    swift_unknownObjectRelease();
    swift_getWitnessTable();

    sub_19751206C();
  }

  else
  {
    sub_1975223EC();
    __break(1u);
  }
}

uint64_t sub_1974A6264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1973FE074(a2, a3);
  *(v8 + 24) |= 0x800u;

  v9 = sub_1973F68A4(a2, a3);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v9 + 32;
    do
    {
      sub_1973F7E64(v11, v17);
      v12 = sub_197521FFC();
      v13 = swift_conformsToProtocol2();
      if (v13)
      {
        v14 = v12 == 0;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        sub_1974A63B4(v12, a1, v17, v4, a2, v12, a3, v13);
      }

      sub_1973F82A8(v17);
      v11 += 96;
      --v10;
    }

    while (v10);
  }

  v15 = sub_1973FE074(a2, a3);
  *(v15 + 24) &= ~0x800u;
}

uint64_t sub_1974A63B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B658, &unk_19752F180);
  result = MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v19 = v31 - v18;
  if (*(a2 + 16))
  {
    v20 = *a3;
    v21 = a3[1];
    result = sub_1973F4028(*a3, v21);
    if (v22)
    {
      sub_1973FE1B4(*(a2 + 56) + 32 * result, v42, &qword_1EAF2AF20, &unk_19752F320);
      sub_197434244(a5, a6, a7, a8, &v37);
      v31[0] = a6;
      swift_getExtendedExistentialTypeMetadata();
      type metadata accessor for _KKMDBackingData(0, a6, a8, v23);
      if (!swift_dynamicCast())
      {
        result = sub_1975223EC();
        __break(1u);
        return result;
      }

      v24 = v32;
      sub_1973FE1B4(v42, v31, &qword_1EAF2AF20, &unk_19752F320);
      if (v31[3])
      {
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B600, &qword_19752EA58);
        if (swift_dynamicCast())
        {
          if (v32)
          {
            v39 = v34;
            v40 = v35;
            v41 = v36;
            v37 = v32;
            v38 = v33;
            sub_1973FE1B4(&v37, &v32, &qword_1EAF2B600, &qword_19752EA58);

            v26 = v35;
            if (v35 == 1)
            {
              __swift_destroy_boxed_opaque_existential_1(&v32 + 1);
              *(&v33 + 1) = v25;
              *&v32 = swift_allocObject();
              sub_1973FE1B4(&v37, v32 + 16, &qword_1EAF2B600, &qword_19752EA58);

              sub_197511DB4(&v32, v20, v21);
            }

            else
            {
              v29 = v36;
              v30 = *(&v35 + 1);
              __swift_destroy_boxed_opaque_existential_1(&v32 + 1);
              sub_1974AD580(v26, v30, v29, a3, v24, a4, a5, a7);
            }

            sub_1973F7DA4(&v37, &qword_1EAF2B600, &qword_19752EA58);
            goto LABEL_17;
          }
        }

        else
        {
          v35 = 0u;
          v36 = 0u;
          v34 = 0u;
          v33 = 0u;
          v32 = 0u;
        }
      }

      else
      {
        sub_1973F7DA4(v31, &qword_1EAF2AF20, &unk_19752F320);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
      }

      sub_1973F7DA4(&v32, &qword_1EAF2B5F8, &qword_19752EA50);
      sub_1973FE1B4(v42, &v37, &qword_1EAF2AF20, &unk_19752F320);
      if (*(&v38 + 1))
      {
        if (swift_dynamicCast())
        {
          sub_1974AD580(v32, *(&v32 + 1), v33, a3, v24, a4, a5, a7);

LABEL_17:
          v27 = a3[2];
          v28 = sub_1975213EC();
          (*(*(v28 - 8) + 56))(v19, 1, 1, v28);
          sub_1974C1E20(v27, v19, a5, a7);

          sub_1973F7DA4(v19, &qword_1EAF2B658, &unk_19752F180);
          return sub_1973F7DA4(v42, &qword_1EAF2AF20, &unk_19752F320);
        }
      }

      else
      {
        sub_1973F7DA4(&v37, &qword_1EAF2AF20, &unk_19752F320);
      }

      sub_1973FE1B4(v42, &v37, &qword_1EAF2AF20, &unk_19752F320);

      sub_197511DB4(&v37, v20, v21);

      goto LABEL_17;
    }
  }

  return result;
}

uint64_t sub_1974A6950(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];
      swift_unknownObjectRetain();
      sub_1974327FC(&v13, v11, v12);
      result = swift_unknownObjectRelease();
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

unint64_t sub_1974A6A54(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_1974A4780(a1, a2);
  v29 = v8;
  if (!v7)
  {
    goto LABEL_20;
  }

  v9 = v7;
  v10 = PersistentModel.modelContext.getter(a1, a2);
  if (!v10)
  {
    goto LABEL_20;
  }

  v11 = v10;
  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
LABEL_15:
      __break(1u);

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v30);
      __break(1u);
      goto LABEL_20;
    }

    v13 = Strong;
  }

  v3 = *(v13 + 80);

  v15 = sub_1973F7AAC(a1);
  if (v3[2])
  {
    v17 = sub_1973F4028(v15, v16);
    v19 = v18;

    if (v19)
    {
      v20 = *(v3[7] + 8 * v17);

      v31 = sub_1974BFAD8(MEMORY[0x1E69E7CC0]);
      swift_beginAccess();
      v21 = *(v20 + 64);
      swift_beginAccess();
      v30[0] = v21;

      sub_1974EE570(v22);

      v3 = 0;
      sub_1974EEA08(v30);

      v23 = v30[0];
      v24 = *(v30[0] + 16);
      if (!v24)
      {
LABEL_13:

        swift_unknownObjectRelease();

        swift_beginAccess();
        return v31;
      }

      v25 = 0;
      v26 = v30[0] + 32;
      while (v25 < *(v23 + 16))
      {
        sub_197413BF4(v26, v30);
        sub_1974A6DF4(v30, v4, v9, v29, v11, &v31, a1, a2);
        ++v25;
        __swift_destroy_boxed_opaque_existential_1(v30);
        v26 += 40;
        if (v24 == v25)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_15;
    }
  }

  else
  {
  }

  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000040, 0x8000000197526220);
  v28 = sub_1973F7AAC(a1);
  MEMORY[0x19A8DFF80](v28);

LABEL_20:
  sub_1975223EC();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1974A6DF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_197413BF4(a1, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
  type metadata accessor for Schema.Relationship();
  if (!swift_dynamicCast())
  {
    goto LABEL_4;
  }

  if (*(v28 + 168))
  {

LABEL_4:
    v14 = a1[3];
    v15 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v14);
    v16 = (*(v15 + 32))(v14, v15);
    v18 = v17;
    swift_getObjectType();
    v20 = a1[3];
    v19 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v20);
    v21 = (*(v19 + 32))(v20, v19);
    (*(a4 + 24))(v29, v21);

    swift_beginAccess();
    sub_19743A964(v29, v16, v18);
    return swift_endAccess();
  }

  swift_beginAccess();
  if (*(v28 + 48))
  {

    v23 = sub_197521FFC();
    v24 = swift_conformsToProtocol2();
    if (v24)
    {
      v25 = v23 == 0;
    }

    else
    {
      v25 = 1;
    }

    if (!v25)
    {
      sub_1974A70EC(v23, a2, a3, a4, v28, a5, a6, a7, v23, a8, v24);
    }
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000026, 0x8000000197526270);
    v29[6] = v28;
    sub_19752235C();
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1974A70EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a8;
  v15 = a10;
  sub_197434244(a8, a9, a10, a11, &v96);
  *&v85 = a9;
  swift_getExtendedExistentialTypeMetadata();
  type metadata accessor for _KKMDBackingData(0, a9, a11, v16);
  if (!swift_dynamicCast())
  {
    goto LABEL_92;
  }

  v17 = v90;
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  v19 = *(a5 + 16);
  v20 = *(a5 + 24);
  v82 = a5;
  v21 = *(a4 + 24);

  v21(v101, v19, v20, ObjectType, a4);

  sub_1973FE1B4(v101, &v90, &qword_1EAF2AF20, &unk_19752F320);
  v22 = MEMORY[0x1E69E7CA0];
  if (!*(&v91 + 1))
  {
    sub_1973F7DA4(&v90, &qword_1EAF2AF20, &unk_19752F320);
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
LABEL_8:
    v23 = v82;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B600, &qword_19752EA58);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v96 = 0u;
    goto LABEL_8;
  }

  v23 = v82;
  if (v96)
  {
    v90 = v96;
    v91 = v97;
    v92 = v98;
    v93 = v99;
    v94 = v100;

    sub_1974416CC(v93, *(&v93 + 1), v94, *(&v94 + 1));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B680, &unk_197534B40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B560, &unk_19752F330);
    v24 = swift_dynamicCast();
    v25 = v96;
LABEL_20:
    if (v24)
    {
      v28 = v25;
    }

    else
    {
      v28 = 0;
    }

    goto LABEL_25;
  }

LABEL_9:
  sub_1973F7DA4(&v96, &qword_1EAF2B5F8, &qword_19752EA50);
  sub_1973FE1B4(v101, &v96, &qword_1EAF2AF20, &unk_19752F320);
  if (!*(&v97 + 1))
  {
    sub_1973F7DA4(&v96, &qword_1EAF2AF20, &unk_19752F320);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    sub_1973FE1B4(v101, &v96, &qword_1EAF2AF20, &unk_19752F320);
    if (!*(&v97 + 1))
    {
      sub_1973F7DA4(&v96, &qword_1EAF2AF20, &unk_19752F320);
      v28 = 0;
      goto LABEL_25;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B560, &unk_19752F330);
    v24 = swift_dynamicCast();
    v25 = v90;
    goto LABEL_20;
  }

  v26 = v90;
  v27 = *(v90 + 16);
  if (v27)
  {
    v81 = v17;
    *&v90 = MEMORY[0x1E69E7CC0];
    sub_197444B2C(0, v27, 0);
    v28 = v90;
    v29 = (v26 + 40);
    do
    {
      v30 = *(v29 - 1);
      v31 = *v29;
      *&v96 = v30;
      BYTE8(v96) = v31;
      sub_1974028EC(v30, v31);
      v32 = sub_1974309B4(&v96);
      v34 = v33;
      sub_1974028C8(v30, v31);
      *&v90 = v28;
      v36 = *(v28 + 16);
      v35 = *(v28 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_197444B2C((v35 > 1), v36 + 1, 1);
        v28 = v90;
      }

      v29 += 16;
      *(v28 + 16) = v36 + 1;
      v37 = v28 + 16 * v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v34;
      --v27;
    }

    while (v27);

    v17 = v81;
    v23 = v82;
    v22 = MEMORY[0x1E69E7CA0];
  }

  else
  {

    v28 = MEMORY[0x1E69E7CC0];
  }

LABEL_25:
  v11 = a6;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v96 = 0u;
  v38 = *(v17 + 16);
  v39 = *(v38 + 16);
  if (*(v39 + 16))
  {
    v40 = v22;
    v41 = *(v23 + 16);
    v42 = *(v23 + 24);
    v43 = v23;

    v44 = sub_1973F4028(v41, v42);
    v46 = v45;
    v15 = v40;

    if (v46)
    {
      v47 = *(*(v39 + 56) + 8 * v44);
      swift_beginAccess();
      if ((v47 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v48 = *(v38 + 32);
        if (v47 < *(v48 + 16))
        {
          sub_1973FE1B4(v48 + 32 * v47 + 32, v95, &qword_1EAF2AF20, &unk_19752F320);
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_92:
      *&v96 = 0;
      *(&v96 + 1) = 0xE000000000000000;
      sub_1975221EC();
      v90 = v96;
      MEMORY[0x19A8DFF80](0xD00000000000003FLL, 0x80000001975262A0);
      (*(v15 + 56))(&v96, v11, v15);
      swift_getExtendedExistentialTypeMetadata();
      sub_1975227FC();
      __swift_destroy_boxed_opaque_existential_1(&v96);
      result = sub_1975223EC();
      __break(1u);
      return result;
    }
  }

  else
  {
    v43 = v23;
  }

  memset(v95, 0, sizeof(v95));
LABEL_32:

  sub_1973FE1B4(v95, v84, &qword_1EAF2AF20, &unk_19752F320);
  v49 = v43;
  if (v84[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B600, &qword_19752EA58);
    if (swift_dynamicCast())
    {
      if (v85)
      {
        sub_1973F7DA4(&v96, &qword_1EAF2B5F8, &qword_19752EA50);
        v92 = v87;
        v93 = v88;
        v94 = v89;
        v90 = v85;
        v91 = v86;
        sub_1973FE1B4(&v90, &v96, &qword_1EAF2B600, &qword_19752EA58);
        v85 = v90;
        v86 = v91;
        v87 = v92;
        v88 = v93;
        v89 = v94;

        sub_1974416CC(v88, *(&v88 + 1), v89, *(&v89 + 1));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B680, &unk_197534B40);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B560, &unk_19752F330);
        if (swift_dynamicCast())
        {
          v50 = v84[0];
        }

        else
        {
          v50 = 0;
        }

LABEL_57:
        if (v28)
        {
          goto LABEL_58;
        }

        goto LABEL_60;
      }
    }

    else
    {
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v85 = 0u;
    }
  }

  else
  {
    sub_1973F7DA4(v84, &qword_1EAF2AF20, &unk_19752F320);
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
  }

  sub_1973F7DA4(&v85, &qword_1EAF2B5F8, &qword_19752EA50);
  sub_1973FE1B4(v95, &v90, &qword_1EAF2AF20, &unk_19752F320);
  if (*(&v91 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
    if (swift_dynamicCast())
    {
      v51 = v85;
      v52 = *(v85 + 16);
      if (!v52)
      {

        v50 = MEMORY[0x1E69E7CC0];
        if (v28)
        {
          goto LABEL_58;
        }

        goto LABEL_60;
      }

      *&v85 = MEMORY[0x1E69E7CC0];
      sub_197444B2C(0, v52, 0);
      v50 = v85;
      v53 = (v51 + 40);
      do
      {
        v54 = *(v53 - 1);
        v55 = *v53;
        *&v90 = v54;
        BYTE8(v90) = v55;
        sub_1974028EC(v54, v55);
        v56 = sub_1974309B4(&v90);
        v58 = v57;
        sub_1974028C8(v54, v55);
        *&v85 = v50;
        v60 = *(v50 + 16);
        v59 = *(v50 + 24);
        if (v60 >= v59 >> 1)
        {
          sub_197444B2C((v59 > 1), v60 + 1, 1);
          v50 = v85;
        }

        v53 += 16;
        *(v50 + 16) = v60 + 1;
        v61 = v50 + 16 * v60;
        *(v61 + 32) = v56;
        *(v61 + 40) = v58;
        --v52;
      }

      while (v52);

      v49 = v82;
      goto LABEL_57;
    }
  }

  else
  {
    sub_1973F7DA4(&v90, &qword_1EAF2AF20, &unk_19752F320);
  }

  sub_1973FE1B4(v95, &v90, &qword_1EAF2AF20, &unk_19752F320);
  if (*(&v91 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B560, &unk_19752F330);
    if (swift_dynamicCast())
    {
      v50 = v85;
    }

    else
    {
      v50 = 0;
    }

    if (v28)
    {
      goto LABEL_58;
    }
  }

  else
  {
    sub_1973F7DA4(&v90, &qword_1EAF2AF20, &unk_19752F320);
    v50 = 0;
    if (v28)
    {
LABEL_58:
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B560, &unk_19752F330);
      v63 = v28;
      goto LABEL_61;
    }
  }

LABEL_60:
  v63 = 0;
  v62 = 0;
  *(&v90 + 1) = 0;
  *&v91 = 0;
LABEL_61:
  *&v90 = v63;
  *(&v91 + 1) = v62;
  if (v50)
  {
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B560, &unk_19752F330);
    v65 = v50;
  }

  else
  {
    v65 = 0;
    v64 = 0;
    *(&v85 + 1) = 0;
    *&v86 = 0;
  }

  *&v85 = v65;
  *(&v86 + 1) = v64;

  sub_1973F7DA4(&v85, &qword_1EAF2AF20, &unk_19752F320);
  sub_1973F7DA4(&v90, &qword_1EAF2AF20, &unk_19752F320);
  if (v50)
  {
    if (*(v65 + 16))
    {
      *&v90 = MEMORY[0x1E69E7CD0];
      sub_1974A2780(v65);

      v66 = v90;
      if (!v28)
      {
        goto LABEL_74;
      }

      goto LABEL_70;
    }
  }

  v66 = 0;
  if (!v28)
  {
    goto LABEL_74;
  }

LABEL_70:
  if (*(v28 + 16))
  {
    *&v90 = MEMORY[0x1E69E7CD0];
    sub_1974A2780(v28);

    v67 = v90;
    v83 = 0;
    if (!v66)
    {
      goto LABEL_79;
    }

    goto LABEL_75;
  }

LABEL_74:
  v67 = 0;
  v83 = 0;
  if (!v66)
  {
LABEL_79:
    if (!v67)
    {
      goto LABEL_85;
    }

    goto LABEL_81;
  }

LABEL_75:
  if (!*(v66 + 16))
  {
    goto LABEL_79;
  }

  v83 = v66;
  if (!v67)
  {
    goto LABEL_86;
  }

  v68 = *(v67 + 16);

  if (v68)
  {
    sub_1974AA194(v67);
  }

LABEL_81:
  v69 = *(v67 + 16);

  if (!v69)
  {
    goto LABEL_85;
  }

  if (v66)
  {
    if (*(v66 + 16))
    {
      sub_1974AA194(v66);

      goto LABEL_86;
    }

LABEL_85:
  }

LABEL_86:
  sub_1973FE1B4(&v96, &v85, &qword_1EAF2B5F8, &qword_19752EA50);
  if (v85)
  {
    v93 = v88;
    v94 = v89;
    v91 = v86;
    v92 = v87;
    v90 = v85;
    v70 = v88;
    v71 = v89;

    sub_1974416CC(v70, *(&v70 + 1), v71, *(&v71 + 1));
    *&v93 = v83;
    *(&v93 + 1) = v67;
    v94 = 0uLL;
    v72 = *(v49 + 16);
    v73 = *(v49 + 24);
    *(&v86 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B600, &qword_19752EA58);
    *&v85 = swift_allocObject();
    sub_1973FE1B4(&v90, v85 + 16, &qword_1EAF2B600, &qword_19752EA58);
    swift_beginAccess();

    sub_19743A964(&v85, v72, v73);
    swift_endAccess();

    sub_1973F7DA4(v95, &qword_1EAF2AF20, &unk_19752F320);
    sub_1973F7DA4(&v96, &qword_1EAF2B5F8, &qword_19752EA50);
    sub_1973F7DA4(v101, &qword_1EAF2AF20, &unk_19752F320);
    v74 = &v90;
    v75 = &qword_1EAF2B600;
    v76 = &qword_19752EA58;
  }

  else
  {

    sub_1973F7DA4(&v85, &qword_1EAF2B5F8, &qword_19752EA50);
    v77 = *(v49 + 16);
    v78 = *(v49 + 24);
    *(&v91 + 1) = &type metadata for _UnorderedCollectionDeltaSnapshot;
    v79 = swift_allocObject();
    *&v90 = v79;
    v79[2] = v83;
    v79[3] = v67;
    v79[4] = 0;
    v79[5] = 0;
    swift_beginAccess();

    sub_19743A964(&v90, v77, v78);
    swift_endAccess();

    sub_1973F7DA4(v95, &qword_1EAF2AF20, &unk_19752F320);
    sub_1973F7DA4(&v96, &qword_1EAF2B5F8, &qword_19752EA50);
    v74 = v101;
    v75 = &qword_1EAF2AF20;
    v76 = &unk_19752F320;
  }

  sub_1973F7DA4(v74, v75, v76);
}

BOOL sub_1974A7EA0(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_1973FE074(a1, a2) + 24);

  return (v2 & 0x38) != 0;
}

uint64_t sub_1974A7ED0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1973FE074(a1, a2);
  *(v2 + 24) &= 0xFFFFFFC7;
}

uint64_t sub_1974A7F04(uint64_t a1, uint64_t a2)
{
  v2 = sub_1973FE074(a1, a2);
  *(v2 + 24) &= 0xFFFFFFF8;
}

uint64_t sub_1974A7F38(uint64_t a1, uint64_t a2)
{
  v2 = sub_1973FE074(a1, a2);
  *(v2 + 24) &= 0xFFFFFFC0;
}

uint64_t sub_1974A7F6C(char a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1973FE074(a2, a3);
  if (a1)
  {
    v5 = 32;
  }

  else
  {
    v5 = 0;
  }

  *(v4 + 24) = *(v4 + 24) & 0xFFFFFFDF | v5;
}

uint64_t sub_1974A7FC4(char a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1973FE074(a2, a3);
  if (a1)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  *(v4 + 24) = *(v4 + 24) & 0xFFFFFFFB | v5;
}

uint64_t sub_1974A801C(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_1973FE074(a1, a2) + 24);

  return (v2 >> 1) & 1;
}

uint64_t sub_1974A8048(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_1973FE074(a1, a2) + 24);

  return v2 & 1;
}

uint64_t sub_1974A8074(uint64_t a1, uint64_t a2)
{
  result = PersistentModel.modelContext.getter(a1, a2);
  if (result)
  {
    v4 = result;
    v5 = *(result + 16);
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      Strong = swift_weakLoadStrong();
      if (!Strong)
      {
        goto LABEL_41;
      }

      v6 = Strong;
    }

    v8 = *(v6 + 16);

    v9 = *(v8 + 72);

    v10 = sub_1973F7AAC(a1);
    if (!*(v9 + 16))
    {
      goto LABEL_37;
    }

    v12 = sub_1973F4028(v10, v11);
    v14 = v13;

    if (v14)
    {
      v15 = *(*(v9 + 56) + 8 * v12);

      swift_beginAccess();
      v16 = *(v15 + 88);
      v38 = v4;
      if ((v16 & 0xC000000000000001) != 0)
      {

        sub_1975220AC();
        type metadata accessor for Schema.Relationship();
        sub_1973FA5E0(&qword_1ED7C91A8, type metadata accessor for Schema.Relationship, &protocol conformance descriptor for Schema.Relationship);
        sub_197521C1C();
        v16 = v43;
        v17 = v44;
        v4 = v45;
        v18 = v46;
        v19 = v47;
      }

      else
      {
        v20 = -1 << *(v16 + 32);
        v17 = v16 + 56;
        v4 = ~v20;
        v21 = -v20;
        if (v21 < 64)
        {
          v22 = ~(-1 << v21);
        }

        else
        {
          v22 = -1;
        }

        v19 = v22 & *(v16 + 56);

        v18 = 0;
      }

      v23 = (v4 + 64) >> 6;
      while (1)
      {
        if (v16 < 0)
        {
          if (!sub_19752212C() || (type metadata accessor for Schema.Relationship(), swift_dynamicCast(), v27 = v40, v26 = v18, v4 = v19, !v40))
          {
LABEL_34:
            sub_1974171EC(v16);
          }
        }

        else
        {
          v24 = v18;
          v25 = v19;
          v26 = v18;
          if (!v19)
          {
            while (1)
            {
              v26 = v24 + 1;
              if (__OFADD__(v24, 1))
              {
                break;
              }

              if (v26 >= v23)
              {
                goto LABEL_34;
              }

              v25 = *(v17 + 8 * v26);
              ++v24;
              if (v25)
              {
                goto LABEL_21;
              }
            }

            __break(1u);
LABEL_37:

            break;
          }

LABEL_21:
          v4 = (v25 - 1) & v25;
          v27 = *(*(v16 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));

          if (!v27)
          {
            goto LABEL_34;
          }
        }

        swift_beginAccess();
        if (*(v27 + 88) == 2)
        {
        }

        else
        {
          v28 = sub_19752282C();

          if ((v28 & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        swift_beginAccess();
        v29 = *(v27 + 48);
        if (!v29)
        {
          goto LABEL_42;
        }

        v30 = sub_197521FFC();
        v31 = swift_conformsToProtocol2();
        if (v31)
        {
          v32 = v30 == 0;
        }

        else
        {
          v32 = 1;
        }

        if (v32)
        {
          sub_1975221EC();

          v40 = 0x70797420746F6F52;
          v41 = 0xEA00000000002065;
          v35 = sub_197522B8C();
          MEMORY[0x19A8DFF80](v35);

          v33 = &v40;
          MEMORY[0x19A8DFF80](0xD000000000000026, 0x8000000197526400);
          goto LABEL_44;
        }

        sub_1974A86D8(v30, v37, v29, v38, v27, a1, v30, a2, v31);

LABEL_15:

        v18 = v26;
        v19 = v4;
      }
    }

    v43 = 0;
    v44 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0x69746E6520656854, 0xEF20726F66207974);
    v42 = v37;
    sub_1975227FC();
    MEMORY[0x19A8DFF80](0xD000000000000027, 0x8000000197525F90);
    v33 = *(v4 + 16);
    if (v33)
    {
      goto LABEL_45;
    }

    v34 = swift_weakLoadStrong();
    if (v34)
    {
      v36 = v34;
      goto LABEL_47;
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_1975221EC();
    v33 = &v40;
    MEMORY[0x19A8DFF80](0xD00000000000002ALL, 0x8000000197525FC0);
    type metadata accessor for Schema.Relationship();
    sub_19752235C();
    while (1)
    {
LABEL_44:
      sub_1975223EC();
      __break(1u);
LABEL_45:
      v36 = v33;
LABEL_47:
      v42 = v36;
      type metadata accessor for ModelContainer();

      sub_19752235C();

      v33 = &v43;
      MEMORY[0x19A8DFF80](46, 0xE100000000000000);
    }
  }

  return result;
}