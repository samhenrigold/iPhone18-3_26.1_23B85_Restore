uint64_t sub_1974529C8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_197452A0C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2B908, &qword_19752FBE8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_197452A84(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  sub_197434244(a2, a2, a3, a3, v21);
  sub_1973FFCAC(v21, v18);
  swift_getExtendedExistentialTypeMetadata();
  type metadata accessor for _KKMDBackingData(0, a2, a3, v8);
  if (!swift_dynamicCast())
  {
    *(sub_1973FE074(a2, a3) + 16) = a1;

    sub_197434244(a2, a2, a3, a3, v18);
    v14 = v19;
    v15 = v20;
    __swift_project_boxed_opaque_existential_1Tm_2(v18, v19);
    *(sub_1973FE71C(v14, v15) + 16) = a1;

    sub_1974CB414(a2, v4, a1, a2, a3);
    __swift_destroy_boxed_opaque_existential_1Tm_3(v21);
    v13 = v18;
    return __swift_destroy_boxed_opaque_existential_1Tm_3(v13);
  }

  *(sub_197512E44() + 16) = a1;

  v9 = *(v17 + 40);

  v10 = sub_1975214CC();
  if (v10)
  {
    v11 = v10;
    v12 = swift_conformsToProtocol2();
    if (v12)
    {
      sub_1974CB1F8(v11, v3, v9, a2, v11, a3, v12);

      v13 = v21;
      return __swift_destroy_boxed_opaque_existential_1Tm_3(v13);
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm_3(v21);
}

uint64_t sub_197452CB8(uint64_t a1)
{
  sub_19752180C();
  sub_19752180C();
  if (*(v1 + 24))
  {
    sub_197522A7C();
    sub_19752180C();
  }

  else
  {
    sub_197522A7C();
  }

  sub_197522A7C();
  sub_19752180C();
}

void sub_197452DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  PersistentModel.persistentModelID.getter(a3, a4, &v21);
  v5 = v21;
  v6 = v22;
  ObjectType = swift_getObjectType();
  PersistentModel.persistentModelID.getter(ObjectType, a2, &v21);
  v8 = v21;
  v9 = v22;
  if (v6)
  {
    if (v6 != 1)
    {
      sub_1974028C8(v21, v22);
      v19 = v5;
LABEL_18:
      v20 = 2;
      goto LABEL_19;
    }

    v10 = v5[3];
    if (!v10)
    {
      sub_1974028C8(v21, v22);
      v19 = v5;
      v20 = 1;
      goto LABEL_19;
    }

    v11 = v5[2];

    if (!v9)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v16 = [v5 storeIdentifier];
    v11 = sub_1975217BC();
    v10 = v17;

    if (!v9)
    {
LABEL_5:
      v12 = [v8 storeIdentifier];
      v13 = sub_1975217BC();
      v15 = v14;

      if (v11 != v13)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  if (v9 != 1)
  {
    sub_1974028C8(v5, v6);

    v19 = v8;
    goto LABEL_18;
  }

  v15 = v8[3];
  if (v15)
  {
    v18 = v8[2];

    if (v11 != v18)
    {
      goto LABEL_12;
    }

LABEL_11:
    if (v10 == v15)
    {
LABEL_13:
      sub_1974028C8(v5, v6);
      sub_1974028C8(v8, v9);

      return;
    }

LABEL_12:
    if ((sub_19752282C() & 1) == 0)
    {
      v21 = 0;
      v22 = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000001ALL, 0x8000000197528420);
      sub_19752235C();
      MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x8000000197528440);
      sub_19752235C();
      MEMORY[0x19A8DFF80](46, 0xE100000000000000);
      sub_1975223EC();
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

  sub_1974028C8(v5, v6);

  v19 = v8;
  v20 = 1;
LABEL_19:

  sub_1974028C8(v19, v20);
}

uint64_t sub_1974530DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_beginAccess();
  if (*(a1 + 112))
  {
    result = swift_beginAccess();
    if (*(a1 + 48))
    {

      v14 = sub_197521FFC();
      v15 = swift_conformsToProtocol2();
      if (v15)
      {
        v16 = v14 == 0;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        sub_1975221EC();

        v17 = sub_197522B8C();
        MEMORY[0x19A8DFF80](v17);

        result = sub_1975223EC();
        __break(1u);
      }

      else
      {
        sub_1974CA0EC(v14, a2, v6, a1, a3, a4, v14, a5, a6, v15);
      }
    }
  }

  return result;
}

uint64_t sub_197453290(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  if (*(v4 + 48) == 1)
  {
    v9 = *(v7 + *MEMORY[0x1E69E77B0] + 8);
    sub_197446EF8(v9, a4, v19);
    if (!v20 || (v10 = __swift_project_boxed_opaque_existential_1Tm_5(v19, v20), MEMORY[0x1EEE9AC00](v10, v11), sub_19752193C(), __swift_destroy_boxed_opaque_existential_1Tm_7(v19), !v18))
    {

      v16 = sub_19743055C(0, v9, a4);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
      v19[0] = v16;

      sub_1973FCF28(v19, a1);
      goto LABEL_10;
    }

    v12 = swift_unknownObjectRelease();
    if (*(v4 + 48) == 1)
    {
      sub_197453618(v12);
    }

    v20 = v9;
    boxed_opaque_existential_1Tm_1 = __swift_allocate_boxed_opaque_existential_1Tm_1(v19);
    (*(*(v9 - 8) + 16))(boxed_opaque_existential_1Tm_1, a2, v9);
  }

  else
  {
    v20 = *(v7 + *MEMORY[0x1E69E77B0] + 8);
    v14 = v20;
    v15 = __swift_allocate_boxed_opaque_existential_1Tm_1(v19);
    (*(*(v14 - 8) + 16))(v15, a2, v14);
  }

  sub_1973FCF28(v19, a1);
LABEL_10:
}

uint64_t sub_197453554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  PersistentModel.persistentModelID.getter(a4, AssociatedConformanceWitness, &v14);
  v8 = v14;
  v9 = v15;
  if (v15)
  {
    if (v15 == 1)
    {
      v10 = *(v14 + 33);
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v11 = v14;
    v12 = [v14 isTemporaryID];
    v9 = 0;
    v10 = v12;
    v8 = v11;
  }

  sub_1974028C8(v8, v9);
  return v10;
}

uint64_t sub_197453618(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(sub_197512E44() + 16);

  v125 = v4;
  if (!v4)
  {
    while (1)
    {
LABEL_148:
      sub_1975223EC();
      __break(1u);
    }
  }

  v5 = *(v3 + 232);
  v6 = *(v3 + 240);
  type metadata accessor for Schema.Entity();
  v120 = v5;
  v7 = sub_1973FDF38(v5, v6);
  v8 = v1[3];
  v9 = *(v2 + 32);
  sub_1974ADEAC(v2[3], *(v2 + 32));
  v124 = v2;
  if (v9 == 255)
  {
    if (qword_1EAF2AC88 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_138;
  }

  sub_1974A1014(v8, v9);
LABEL_8:
  swift_beginAccess();
  v122 = v7;
  v19 = *(v7 + 88);
  if ((v19 & 0xC000000000000001) != 0)
  {

    sub_1975220AC();
    type metadata accessor for Schema.Relationship();
    sub_19751E7F8(&qword_1ED7C91A8, type metadata accessor for Schema.Relationship, &protocol conformance descriptor for Schema.Relationship);
    sub_197521C1C();
    v19 = v140;
    v20 = v141;
    v21 = v142;
    v22 = v143;
    v23 = v144;
  }

  else
  {
    v24 = -1 << *(v19 + 32);
    v20 = v19 + 56;
    v21 = ~v24;
    v25 = -v24;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v23 = v26 & *(v19 + 56);

    v22 = 0;
  }

  v7 = (v21 + 64) >> 6;
  v123 = v7;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v19 < 0)
        {
          v31 = sub_19752212C();
          if (!v31)
          {
            goto LABEL_129;
          }

          *&v128 = v31;
          type metadata accessor for Schema.Relationship();
          swift_dynamicCast();
          v30 = v134;
          v29 = v22;
          v126 = v23;
          if (!v134)
          {
            goto LABEL_129;
          }
        }

        else
        {
          v27 = v22;
          v28 = v23;
          v29 = v22;
          if (!v23)
          {
            while (1)
            {
              v29 = v27 + 1;
              if (__OFADD__(v27, 1))
              {
                break;
              }

              if (v29 >= v7)
              {
                goto LABEL_129;
              }

              v28 = *(v20 + 8 * v29);
              ++v27;
              if (v28)
              {
                goto LABEL_20;
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
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            swift_once();
LABEL_5:
            v10 = sub_19752157C();
            __swift_project_value_buffer(v10, qword_1EAF33DD0);

            v11 = sub_19752155C();
            v12 = sub_197521DDC();

            if (os_log_type_enabled(v11, v12))
            {
              v13 = swift_slowAlloc();
              v14 = swift_slowAlloc();
              *&v134 = v14;
              *v13 = 136315138;
              *&v128 = v124;

              v15 = sub_1975217CC();
              v17 = sub_197462310(v15, v16, &v134);

              *(v13 + 4) = v17;
              _os_log_impl(&dword_1973F2000, v11, v12, "This backing data has no persistent identifier but is attempting to flip relationships? %s", v13, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm_7(v14);
              v18 = v14;
              v2 = v124;
              MEMORY[0x19A8E1B50](v18, -1, -1);
              MEMORY[0x19A8E1B50](v13, -1, -1);
            }

            goto LABEL_8;
          }

LABEL_20:
          v126 = (v28 - 1) & v28;
          v30 = *(*(v19 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));

          if (!v30)
          {
            goto LABEL_129;
          }
        }

        swift_beginAccess();
        v127 = v30;
        v32 = *(v30 + 48);
        if (!v32)
        {
          *&v134 = 0;
          *(&v134 + 1) = 0xE000000000000000;
          sub_1975221EC();
          swift_beginAccess();
          v114 = *(v122 + 16);
          v113 = *(v122 + 24);

          *&v139[0] = v114;
          *(&v139[0] + 1) = v113;
          MEMORY[0x19A8DFF80](46, 0xE100000000000000);
          swift_beginAccess();
          v115 = *(v30 + 16);
          v116 = *(v127 + 24);

          MEMORY[0x19A8DFF80](v115, v116);

          MEMORY[0x19A8DFF80](0xD000000000000019, 0x800000019752B1D0);
          goto LABEL_148;
        }

        v33 = v2[2];
        v34 = *(v33 + 24);
        v35 = *(v34 + 16);

        if (v35 && (v36 = sub_1973F7814(v32), (v37 & 1) != 0))
        {
          v38 = *(*(v34 + 56) + 8 * v36);
          swift_beginAccess();
          if ((v38 & 0x8000000000000000) != 0)
          {
            goto LABEL_131;
          }

          v39 = *(v33 + 32);
          if (v38 >= *(v39 + 16))
          {
            goto LABEL_133;
          }

          sub_197413B20(v39 + 32 * v38 + 32, &v134);
        }

        else
        {
          v134 = 0u;
          v135 = 0u;
        }

        if (!*(&v135 + 1))
        {

          v52 = &qword_1EAF2AF20;
          v53 = &unk_19752F320;
          goto LABEL_47;
        }

        sub_1974028B8(&v134, v139);
        sub_197404860(v139, &v134);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5F0, &qword_19752EA48);
        if (!swift_dynamicCast())
        {
          break;
        }

        v40 = v20;
        v41 = v19;
        v42 = v2;
        v2 = v128;
        v7 = BYTE8(v128);
        v43 = v129;
        v44 = v42[2];
        *(&v135 + 1) = swift_getObjectType();
        *&v134 = v43;
        v45 = *(v44 + 24);
        v46 = *(v45 + 16);

        swift_unknownObjectRetain();
        if (!v46 || (v47 = sub_1973F7814(v32), (v48 & 1) == 0))
        {
          *&v128 = 0;
          *(&v128 + 1) = 0xE000000000000000;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD000000000000029, 0x8000000197527BD0);
          v133[0] = v32;
          sub_19752202C();
          sub_19752235C();
          goto LABEL_148;
        }

        v49 = *(*(v45 + 56) + 8 * v47);
        swift_beginAccess();
        v50 = *(v44 + 32);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v44 + 32) = v50;
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v49 & 0x8000000000000000) != 0)
          {
            goto LABEL_132;
          }
        }

        else
        {
          v50 = sub_19751C104(v50);
          *(v44 + 32) = v50;
          if ((v49 & 0x8000000000000000) != 0)
          {
            goto LABEL_132;
          }
        }

        if (v49 >= v50[2])
        {
          goto LABEL_134;
        }

        sub_1973F7958(&v134, &v50[4 * v49 + 4]);
        *(v44 + 32) = v50;
        swift_endAccess();

        sub_1974028C8(v2, v7);

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1Tm_7(v139);
        sub_1973FE5EC(&v134, &qword_1EAF2AF20, &unk_19752F320);

        v22 = v29;
        v23 = v126;
        v7 = v123;
        v2 = v124;
        v19 = v41;
        v20 = v40;
      }

      sub_197404860(v139, v133);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B600, &qword_19752EA58);
      if (swift_dynamicCast())
      {
        break;
      }

      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v128 = 0u;
      sub_1973FE5EC(&v128, &qword_1EAF2B5F8, &qword_19752EA50);
      sub_197404860(v139, v133);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C4E0, &qword_197534B50);
      if (swift_dynamicCast())
      {
        v68 = v32;
        sub_19743099C(&v128, &v134);
        v69 = v2[3];
        v70 = *(v2 + 32);
        sub_1974ADEAC(v69, *(v2 + 32));
        if (v70 == 255)
        {
          *&v128 = 0;
          *(&v128 + 1) = 0xE000000000000000;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD000000000000045, 0x800000019752B2F0);
          v133[0] = v2;
          sub_1975227FC();
          goto LABEL_148;
        }

        if (*(v127 + 168) == 1)
        {
          v71 = __swift_project_boxed_opaque_existential_1Tm_5(&v134, *(&v135 + 1));
          *(&v129 + 1) = &type metadata for PersistentIdentifier;
          sub_197428988(*v71, v71[1], *(v71 + 16), v69, v70, &v128);
          sub_1974A1014(v69, v70);
        }

        else
        {
          v72 = __swift_project_boxed_opaque_existential_1Tm_5(&v134, *(&v135 + 1));
          *(&v129 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
          v73 = sub_197450578(*v72, v72[1], *(v72 + 16), v69, v70);
          sub_1974A1014(v69, v70);
          *&v128 = v73;
        }

        __swift_destroy_boxed_opaque_existential_1Tm_7(v139);
        sub_1974028B8(&v128, v139);
        __swift_destroy_boxed_opaque_existential_1Tm_7(&v134);
        v32 = v68;
      }

      else
      {
        *&v130 = 0;
        v128 = 0u;
        v129 = 0u;
        sub_1973FE5EC(&v128, &qword_1EAF2C4E8, &qword_197534B58);
      }

      sub_197404860(v139, &v134);
      v121 = v19;
      if (swift_dynamicCast())
      {
        v74 = v32;
        v75 = v128;
        v76 = BYTE8(v128);
        swift_beginAccess();
        v77 = *(v127 + 64);
        *&v134 = v77;
        v78 = swift_conformsToProtocol2();
        if (v78 && v77)
        {
          v79 = v78;
          do
          {
            sub_1973F732C(v77, &v134, v77, v79);
            v77 = v134;
            v79 = swift_conformsToProtocol2();
            if (v79)
            {
              v80 = v77 == 0;
            }

            else
            {
              v80 = 1;
            }
          }

          while (!v80);
        }

        if (swift_conformsToProtocol2())
        {
          v81 = v77 == 0;
        }

        else
        {
          v81 = 1;
        }

        if (v81)
        {
          *&v134 = 0;
          *(&v134 + 1) = 0xE000000000000000;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD000000000000013, 0x800000019752B2D0);
          *&v128 = v127;
          type metadata accessor for Schema.Relationship();
          sub_19752235C();
          goto LABEL_148;
        }

        v82 = sub_197515578(v77, v75, v76, v127, v125, v120, v77);
        *(&v135 + 1) = swift_getObjectType();
        *&v134 = v82;

        swift_unknownObjectRetain();
        sub_1973FCF28(&v134, v74);

        sub_1974028C8(v75, v76);

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1Tm_7(v139);
        v22 = v29;
        v23 = v126;
        v19 = v121;
      }

      else
      {
        v83 = v32;
        sub_197404860(v139, &v134);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
        if (!swift_dynamicCast())
        {
          *&v134 = 0;
          *(&v134 + 1) = 0xE000000000000000;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD00000000000001CLL, 0x800000019752B210);
          sub_19752235C();
          goto LABEL_148;
        }

        v84 = v128;
        swift_beginAccess();
        v85 = *(v127 + 64);
        *&v134 = v85;
        v86 = swift_conformsToProtocol2();
        if (v86 && v85)
        {
          v87 = v86;
          do
          {
            sub_1973F732C(v85, &v134, v85, v87);
            v85 = v134;
            v87 = swift_conformsToProtocol2();
            if (v87)
            {
              v88 = v85 == 0;
            }

            else
            {
              v88 = 1;
            }
          }

          while (!v88);
        }

        v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B588, &unk_19752E9B0);
        v90 = *v85;
        if (*v85 - 2048 >= 0xFFFFFFFFFFFFF801)
        {
          v91 = sub_19752147C();
          v92 = v91 < 0x800 && v91 == v90;
          v93 = v92;
          v94 = v90 - 515;
          v90 = *v85;
          if (v94 >= 2 && !v93)
          {
            if (v90 - 512 >= 3)
            {
              v97 = 0;
              goto LABEL_95;
            }

LABEL_92:
            v96 = 8;
            if (v90 - 512 < 3)
            {
              v96 = 1;
            }

            goto LABEL_94;
          }
        }

        if (v90 <= 0x7FF)
        {
          goto LABEL_92;
        }

        v96 = 8;
LABEL_94:
        v97 = v85[v96];
LABEL_95:
        v98 = *v89;
        if (*v89 - 2048 >= 0xFFFFFFFFFFFFF801 && ((v99 = sub_19752147C(), v99 < 0x800) ? (v100 = v99 == v98) : (v100 = 0), !v100 ? (v101 = 0) : (v101 = 1), (v102 = v98 - 515, v98 = *v89, v102 >= 2) ? (v103 = v101 == 0) : (v103 = 0), v103))
        {
          if (v98 - 512 >= 3)
          {
            v19 = v121;
            v106 = v127;
            if (v97)
            {
              goto LABEL_148;
            }

            goto LABEL_119;
          }
        }

        else if (v98 > 0x7FF)
        {
          v104 = 8;
          goto LABEL_111;
        }

        v104 = 8;
        if (v98 - 512 < 3)
        {
          v104 = 1;
        }

LABEL_111:
        v105 = v89[v104];
        v106 = v127;
        if (v97)
        {
          v19 = v121;
          if (!v105 || v97 != v105)
          {
            goto LABEL_148;
          }
        }

        else
        {
          v19 = v121;
          if (v105)
          {
            goto LABEL_148;
          }
        }

LABEL_119:
        sub_1975214DC();
        if (v107 < 0)
        {
          goto LABEL_136;
        }

        if (!v107)
        {
          *&v134 = 0;
          *(&v134 + 1) = 0xE000000000000000;
          sub_1975221EC();

          *&v134 = 0xD00000000000001BLL;
          *(&v134 + 1) = 0x800000019752B270;
          v118 = sub_197522B8C();
          MEMORY[0x19A8DFF80](v118);

          MEMORY[0x19A8DFF80](0x20726F6620, 0xE500000000000000);
          *&v128 = *(v106 + 48);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BDB8, &unk_197534B60);
          v119 = sub_1975217CC();
          MEMORY[0x19A8DFF80](v119);

          goto LABEL_148;
        }

        v108 = sub_1975214DC();
        if (v109 < 1)
        {
          goto LABEL_137;
        }

        v110 = *v108;
        v111 = swift_conformsToProtocol2();
        if (!v111 || !v110)
        {
          *&v134 = 0;
          *(&v134 + 1) = 0xE000000000000000;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD000000000000015, 0x800000019752B290);
          v117 = sub_197522B8C();
          MEMORY[0x19A8DFF80](v117);

          MEMORY[0x19A8DFF80](0xD00000000000001CLL, 0x800000019752B2B0);
          *&v128 = v106;
          type metadata accessor for Schema.Relationship();
          sub_19752235C();
          goto LABEL_148;
        }

        sub_197454944(v110, v106, v125, v84, v2, v83, v110, v111);

        __swift_destroy_boxed_opaque_existential_1Tm_7(v139);
        v22 = v29;
        v23 = v126;
      }
    }

    v136 = v130;
    v137 = v131;
    v138 = v132;
    v134 = v128;
    v135 = v129;
    v54 = v2[2];
    v55 = v130;
    v56 = v32;
    v57 = __swift_project_boxed_opaque_existential_1Tm_5(&v134 + 1, v130);
    *(&v129 + 1) = v55;
    boxed_opaque_existential_1Tm_1 = __swift_allocate_boxed_opaque_existential_1Tm_1(&v128);
    v59 = v57;
    v60 = v56;
    (*(*(v55 - 8) + 16))(boxed_opaque_existential_1Tm_1, v59, v55);
    v61 = *(v54 + 24);
    v62 = *(v61 + 16);

    if (!v62 || (v63 = sub_1973F7814(v60), (v64 & 1) == 0))
    {
      v133[0] = 0;
      v133[1] = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000029, 0x8000000197527BD0);
      sub_19752202C();
      sub_19752235C();
      goto LABEL_148;
    }

    v65 = *(*(v61 + 56) + 8 * v63);
    swift_beginAccess();
    v66 = *(v54 + 32);
    v67 = swift_isUniquelyReferenced_nonNull_native();
    *(v54 + 32) = v66;
    if (v67)
    {
      if ((v65 & 0x8000000000000000) != 0)
      {
        break;
      }

      goto LABEL_45;
    }

    v66 = sub_19751C104(v66);
    *(v54 + 32) = v66;
    if ((v65 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_45:
    if (v65 >= v66[2])
    {
      goto LABEL_135;
    }

    sub_1973F7958(&v128, &v66[4 * v65 + 4]);
    *(v54 + 32) = v66;
    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_1Tm_7(v139);
    sub_1973FE5EC(&v128, &qword_1EAF2AF20, &unk_19752F320);

    v52 = &qword_1EAF2B600;
    v53 = &qword_19752EA58;
LABEL_47:
    sub_1973FE5EC(&v134, v52, v53);
    v22 = v29;
    v23 = v126;
  }

  __break(1u);
LABEL_129:
  sub_1973FF47C(v19);

  *(v2 + 48) = 0;
  return result;
}

uint64_t sub_197454944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *a5;
  v14 = sub_1975215CC();
  v24 = v14;
  v15 = *(a4 + 16);
  if (v15)
  {
    v16 = (a4 + 40);
    do
    {
      v17 = *(v16 - 1);
      v18 = *v16;
      v16 += 16;
      v21 = v17;
      v22 = v18;
      sub_1974028EC(v17, v18);
      v21 = sub_197454AB4(a7, &v21, a2, a3, *(v13 + 232), a7, a7);
      sub_197521AAC();
      sub_197521A7C();
      sub_1974028C8(v17, v18);
      --v15;
    }

    while (v15);
    v19 = v24;
  }

  else
  {
    v19 = v14;
  }

  v23 = sub_197521AAC();
  v21 = v19;

  sub_1973FCF28(&v21, a6);
}

uint64_t sub_197454AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *a2;
  v9 = *(a2 + 8);
  if (*(a2 + 8))
  {
    if (v9 == 1 && (v8[33] & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (![v8 isTemporaryID])
  {
    goto LABEL_11;
  }

  if (qword_1EAF2AC88 != -1)
  {
    swift_once();
  }

  v10 = sub_19752157C();
  __swift_project_value_buffer(v10, qword_1EAF33DD0);
  sub_1974028EC(v8, v9);

  v11 = sub_19752155C();
  v12 = sub_197521DDC();
  sub_1974028C8(v8, v9);

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315394;
    sub_1974028EC(v8, v9);
    v15 = sub_1975217CC();
    v17 = sub_197462310(v15, v16, &v24);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    swift_beginAccess();
    v18 = *(a3 + 16);
    v19 = *(a3 + 24);

    v20 = sub_197462310(v18, v19, &v24);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_1973F2000, v11, v12, "%%@ is attempting to flip a captured a temporary persistentIdentifier for %s on %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A8E1B50](v14, -1, -1);
    MEMORY[0x19A8E1B50](v13, -1, -1);
  }

LABEL_11:
  v24 = v8;
  LOBYTE(v25) = v9;
  v24 = sub_1974309B4(&v24);
  v25 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
  swift_dynamicCast();
  return v23;
}

uint64_t sub_197454D38(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  result = swift_beginAccess();
  if (*(a1 + 112))
  {
    result = swift_beginAccess();
    if (*(a1 + 48))
    {

      v14 = sub_197521FFC();
      v15 = swift_conformsToProtocol2();
      if (v15)
      {
        v16 = v14 == 0;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        sub_1975221EC();

        v17 = sub_197522B8C();
        MEMORY[0x19A8DFF80](v17);

        result = sub_1975223EC();
        __break(1u);
      }

      else
      {
        sub_1974C877C(v14, a2, v6, a1, a3, a4, v14, a5, a6, v15);
      }
    }
  }

  return result;
}

void sub_197454EEC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  if (*(v3 + 16))
  {
    v8 = *(v3 + 16);
  }

  else
  {
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      __break(1u);
      goto LABEL_24;
    }

    v8 = Strong;
  }

  v10 = *(v8 + 16);

  v11 = *(v10 + 72);

  v12 = sub_1973F7AAC(a2);
  if (*(v11 + 16))
  {
    sub_1973F4028(v12, v13);
    v15 = v14;

    if ((v15 & 1) == 0)
    {
      return;
    }

    if (PersistentModel.modelContext.getter(a2, a3))
    {

      v16 = PersistentModel.modelContext.getter(a2, a3);
      if (!v16 || (v17 = v16, , v17 != v4))
      {
        v32 = 0;
        v33 = 0xE000000000000000;
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0xD000000000000049, 0x80000001975264A0);
        PersistentModel.persistentModelID.getter(a2, a3, &v34);
        v18 = v34;
        v19 = v35;
        sub_19752235C();
        sub_1974028C8(v18, v19);
        MEMORY[0x19A8DFF80](0xD000000000000015, 0x80000001975264F0);
        v20 = PersistentModel.modelContext.getter(a2, a3);
        if (v20)
        {
          v34 = v20;
          type metadata accessor for ModelContext(0);
          sub_19752235C();

          MEMORY[0x19A8DFF80](0xD00000000000001ALL, 0x8000000197526510);
          v34 = v4;
          sub_19752235C();
          v22 = v32;
          v21 = v33;
          if (qword_1EAF2ACC0 != -1)
          {
            swift_once();
          }

          v23 = sub_19752157C();
          __swift_project_value_buffer(v23, qword_1EAF33DE8);

          v24 = sub_19752155C();
          v25 = sub_197521DDC();

          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v32 = v27;
            *v26 = 136315138;
            v28 = sub_197462310(v22, v21, &v32);

            *(v26 + 4) = v28;
            _os_log_impl(&dword_1973F2000, v24, v25, "%s", v26, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v27);
            MEMORY[0x19A8E1B50](v27, -1, -1);
            MEMORY[0x19A8E1B50](v26, -1, -1);
          }

          else
          {
          }

          return;
        }

LABEL_24:
        __break(1u);
        return;
      }
    }

    sub_197407130();
    if ((sub_1973FE6F0(a2, a3) & 1) == 0)
    {
      PersistentModel.persistentModelID.getter(a2, a3, &v32);
      v29 = v32;
      v30 = v33;
      v34 = v32;
      v35 = v33;
      sub_1974553C8(a1, &v34, a2, a3);
      sub_1974028C8(v29, v30);
      v31 = swift_allocObject();
      v31[2] = a2;
      v31[3] = a3;
      v31[4] = v4;
      v31[5] = a1;

      swift_unknownObjectRetain();
      sub_197455A10(0, sub_197456F20, v31, a2, a3);

      sub_197457A40(0, a2, a3);
    }
  }

  else
  {
  }
}

uint64_t sub_197455388()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1974553C8(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v9 = *a2;
  v10 = *(a2 + 8);
  sub_197440AC4();
  v11 = PersistentModel.modelContext.getter(a3, a4);
  if (v11)
  {
    if (v11 != v4)
    {
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000003CLL, 0x8000000197527A50);
      sub_1975227FC();
      MEMORY[0x19A8DFF80](0xD000000000000015, 0x80000001975264F0);
      type metadata accessor for ModelContext(0);
      sub_19752235C();
      MEMORY[0x19A8DFF80](0xD000000000000021, 0x8000000197527A90);
      sub_19752235C();
      sub_1975223EC();
      __break(1u);
      return;
    }

    sub_1974339E4(a1, v4, a3, a4);
  }

  else
  {
    sub_1974339E4(a1, v4, a3, a4);
  }

  sub_1974556E8(1, a3, a4);
  sub_197440D38(a1, a3, a4);
  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_1974327FC(v18, a1, a4);
  swift_endAccess();
  swift_unknownObjectRelease();
  *(v4 + 50) = 1;
  if ((*(v4 + 58) & 1) == 0 && *(v4 + 59) != 1)
  {
    swift_beginAccess();
    v12 = *(v4 + 40);
    if (v12)
    {
      v13 = v12;
      if ([v13 groupsByEvent])
      {
        type metadata accessor for ModelContext(0);
        sub_197521DBC();
      }
    }

    *(v5 + 58) = 1;
  }

  *(v5 + 48) = 1;
  swift_beginAccess();
  if (*(v5 + 64))
  {
    swift_beginAccess();
    sub_19751C33C(v9, v10, &v16);
    v14 = v16;
    v15 = v17;
    swift_endAccess();
    sub_1974A1014(v14, v15);
  }
}

uint64_t sub_1974556E8(char a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1973FE074(a2, a3);
  v9 = *(v8 + 24);
  if (a1)
  {
    *(v8 + 24) = v9 | 2;

    sub_197434244(a2, a2, a3, a3, v16);
    v10 = v17;
    v11 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    (*(v11 + 32))(&v14, v10, v11);
    v12 = v14;
    LOBYTE(v10) = v15;
    sub_197455808(a2, v4, v14, v15, a2, a3);
    sub_1974A1014(v12, v10);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    *(v8 + 24) = v9 & 0xFFFFFFFD;
  }
}

void *sub_197455808(void *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = result;
  v12 = *result;
  if ((*result - 2048) < 0xFFFFFFFFFFFFF801 || ((result = sub_19752147C(), result < 0x800) ? (v13 = result == v12) : (v13 = 0), !v13 ? (v14 = 0) : (v14 = 1), v12 - 515 >= 2 ? (v15 = v14 == 0) : (v15 = 0), !v15))
  {
    if (v11[1])
    {
      v16 = v11[1];
      result = swift_conformsToProtocol2();
      if (result)
      {
        sub_197434244(a5, v16, a6, result, &v24);
        v17 = v26;
        v18 = v27;
        v19 = __swift_project_boxed_opaque_existential_1(&v24, v26);
        v29 = v17;
        v30 = v18;
        boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v28);
        (*(*(v17 - 8) + 16))(boxed_opaque_existential_1Tm, v19, v17);
        __swift_destroy_boxed_opaque_existential_1(&v24);
        v21 = v29;
        v23 = v30;
        __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
        v24 = a3;
        v25 = a4;
        v22 = *(v18 + 40);
        sub_1974ADEAC(a3, a4);
        v22(&v24, v21, v23);
        sub_197455808(v16, a2, a3, a4, a5, a6);
        return __swift_destroy_boxed_opaque_existential_1(v28);
      }
    }
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_197455A10(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x1E69E7CD0];
  v7 = swift_allocObject();
  swift_unknownObjectRetain();
  v8 = sub_197433F80(0, 1, 1, MEMORY[0x1E69E7CC0]);
  *(v7 + 16) = v8;
  v9 = v7 + 16;
  v10 = v8[2];
  v11 = v8[3];
  if (v10 >= v11 >> 1)
  {
    v26 = v8[2];
    v8 = sub_197433F80((v11 > 1), v10 + 1, 1, v8);
    v10 = v26;
    *v9 = v8;
  }

  sub_19743F3E4(v10, v5, (v7 + 16), a4, a5);
  *v9 = v8;
  swift_beginAccess();
  while (1)
  {
    swift_beginAccess();
    v15 = *v9;
    if (!*(*v9 + 16))
    {
      break;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v16 = v15[2];
      if (!v16)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v15 = sub_19751C2B0(v15);
      v16 = v15[2];
      if (!v16)
      {
LABEL_11:
        __break(1u);
        break;
      }
    }

    v17 = v16 - 1;
    v18 = &v15[2 * v17];
    v19 = v18[4];
    v20 = v18[5];
    v15[2] = v17;
    *v9 = v15;
    swift_endAccess();
    v21 = *(v6 + 16);
    ObjectType = swift_getObjectType();
    PersistentModel.persistentModelID.getter(ObjectType, v20, &v36);
    v23 = v36;
    v24 = v37;
    LOBYTE(v21) = sub_197455CE4(v36, v37, v21);
    sub_1974028C8(v23, v24);
    if (v21)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = swift_getObjectType();
      sub_197416DAC(v12, v19, v20, v6, a1 & 1, v7, a2, a3, a4, v12, a5, v20);
      PersistentModel.persistentModelID.getter(ObjectType, v20, &v32);
      v13 = v32;
      v14 = v33;
      swift_beginAccess();
      sub_19742AE44(&v34, v13, v14);
      swift_endAccess();
      swift_unknownObjectRelease();
      sub_1974028C8(v34, v35);
    }
  }

  swift_endAccess();
}

uint64_t sub_197455CA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_197455CE4(void *a1, char a2, uint64_t a3)
{
  v82 = sub_1975212CC();
  v6 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82, v7);
  v81 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_197522A5C();
  if (a2)
  {
    if (a2 == 1)
    {
      MEMORY[0x19A8E1190](1);
      sub_197452CB8(v84);
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    sub_197521F4C();
  }

  v9 = sub_197522A9C();
  v10 = a3 + 56;
  v11 = -1 << *(a3 + 32);
  v12 = v9 & ~v11;
  if (((*(a3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v83 = ~v11;
  v79 = (v6 + 8);
  v80 = a3 + 56;
  v78 = a3;
  while (1)
  {
    v14 = *(a3 + 48) + 16 * v12;
    v15 = *v14;
    v16 = *(v14 + 8);
    if (!*(v14 + 8))
    {
      if (!a2)
      {
        sub_19744CC00(0, &qword_1ED7C8630, 0x1E69E58C0);
        sub_1974028EC(a1, 0);
        sub_1974028EC(v15, 0);
        v13 = sub_197521F3C();
        sub_1974028C8(a1, 0);
        sub_1974028C8(v15, 0);
        if (v13)
        {
          return 1;
        }

        goto LABEL_10;
      }

      type metadata accessor for PersistentIdentifierImplementation();
      v22 = swift_allocObject();
      *(v22 + 40) = 0;
      *(v22 + 48) = 0;
      sub_1974028EC(a1, a2);
      sub_1974028EC(v15, 0);
      v23 = [v15 persistentStore];
      if (v23 && (v24 = v23, v25 = [v23 identifier], v24, v25))
      {
        v26 = sub_1975217BC();
        v28 = v27;
      }

      else
      {
        v26 = 0;
        v28 = 0;
      }

      *(v22 + 16) = v26;
      *(v22 + 24) = v28;
      *(v22 + 33) = [v15 isTemporaryID];
      *(v22 + 32) = 1;
      v46 = [v15 URIRepresentation];
      v47 = v81;
      sub_19752127C();

      v48 = sub_19752123C();
      v50 = v49;
      (*v79)(v47, v82);
      *(v22 + 56) = v48;
      *(v22 + 64) = v50;
      v51 = [v15 entityName];
      v52 = sub_1975217BC();
      v54 = v53;

      *(v22 + 72) = v52;
      *(v22 + 80) = v54;
      v10 = v80;
      v36 = a2;
      goto LABEL_51;
    }

    if (v16 != 1)
    {
      if (a2 == 2)
      {
        sub_1974028EC(a1, 2);
        sub_1974028EC(v15, 2);
        v29 = sub_19750A470();
        v31 = v30;
        if (v29 == sub_19750A470() && v31 == v32)
        {
        }

        else
        {
          v34 = sub_19752282C();

          if ((v34 & 1) == 0)
          {
            v35 = 2;
            LOBYTE(v16) = 2;
LABEL_70:
            sub_1974028C8(a1, v35);
            sub_1974028C8(v15, v16);
            goto LABEL_10;
          }
        }

        v71 = sub_19750A588();
        v73 = v72;
        if (v71 == sub_19750A588() && v73 == v74)
        {

          a2 = 2;
          LOBYTE(v16) = 2;
          goto LABEL_85;
        }

        v68 = sub_19752282C();

        sub_1974028C8(a1, 2);
        v69 = v15;
        v70 = 2;
        goto LABEL_77;
      }

      type metadata accessor for PersistentIdentifierImplementation();
      v22 = swift_allocObject();
      *(v22 + 40) = 0;
      *(v22 + 48) = 0;
      sub_1974028EC(a1, a2);
      sub_1974028EC(v15, 2);
      *(v22 + 56) = sub_19750A470();
      *(v22 + 64) = v44;
      *(v22 + 72) = sub_19750A588();
      *(v22 + 80) = v45;
      *(v22 + 16) = 0;
      *(v22 + 24) = 0;
      *(v22 + 32) = 256;
      v36 = a2;
      if (!a2)
      {
        goto LABEL_44;
      }

LABEL_51:
      if (v36 == 1)
      {
        sub_1974028EC(a1, 1);
        v37 = a1;
      }

      else
      {
        type metadata accessor for PersistentIdentifierImplementation();
        v37 = swift_allocObject();
        v37[5] = 0;
        v37[6] = 0;
        v37[7] = sub_19750A470();
        v37[8] = v55;
        v37[9] = sub_19750A588();
        v37[10] = v56;
        v37[2] = 0;
        v37[3] = 0;
        *(v37 + 16) = 256;
      }

      goto LABEL_56;
    }

    if (a2 != 1)
    {
      break;
    }

    v17 = v15[7] == a1[7] && v15[8] == a1[8];
    if (v17 || (sub_19752282C() & 1) != 0)
    {
      v18 = v15[9] == a1[9] && v15[10] == a1[10];
      if (v18 || (sub_19752282C() & 1) != 0)
      {
        v19 = v15[3];
        v20 = a1[3];
        if (v19)
        {
          if (v20)
          {
            v21 = v15[2] == a1[2] && v19 == v20;
            if (v21 || (sub_19752282C() & 1) != 0)
            {
              return 1;
            }
          }
        }

        else if (!v20)
        {
          return 1;
        }
      }
    }

LABEL_10:
    v12 = (v12 + 1) & v83;
    if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  sub_1974028EC(v15, 1);
  sub_1974028EC(a1, a2);
  sub_1974028EC(v15, 1);
  v22 = v15;
  v36 = a2;
  if (a2)
  {
    goto LABEL_51;
  }

LABEL_44:
  type metadata accessor for PersistentIdentifierImplementation();
  v37 = swift_allocObject();
  v37[5] = 0;
  v37[6] = 0;
  v38 = [a1 persistentStore];
  if (v38 && (v39 = v38, v40 = [v38 identifier], v39, v40))
  {
    v41 = sub_1975217BC();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0;
  }

  v37[2] = v41;
  v37[3] = v43;
  *(v37 + 33) = [a1 isTemporaryID];
  *(v37 + 32) = 1;
  v57 = [a1 URIRepresentation];
  v58 = v81;
  sub_19752127C();

  v59 = sub_19752123C();
  v61 = v60;
  (*v79)(v58, v82);
  v37[7] = v59;
  v37[8] = v61;
  v62 = [a1 entityName];
  v63 = sub_1975217BC();
  v65 = v64;

  v37[9] = v63;
  v37[10] = v65;
  a3 = v78;
  v10 = v80;
LABEL_56:
  if ((*(v22 + 56) != v37[7] || *(v22 + 64) != v37[8]) && (sub_19752282C() & 1) == 0 || (*(v22 + 72) != v37[9] || *(v22 + 80) != v37[10]) && (sub_19752282C() & 1) == 0)
  {
LABEL_67:

LABEL_69:

    v35 = a2;
    goto LABEL_70;
  }

  v66 = *(v22 + 24);
  v67 = v37[3];
  if (!v66)
  {

    if (!v67)
    {
      goto LABEL_84;
    }

    goto LABEL_69;
  }

  if (!v67)
  {
    goto LABEL_67;
  }

  if (*(v22 + 16) != v37[2] || v66 != v67)
  {
    v68 = sub_19752282C();

    sub_1974028C8(a1, a2);
    v69 = v15;
    v70 = v16;
LABEL_77:
    sub_1974028C8(v69, v70);
    if (v68)
    {
      return 1;
    }

    goto LABEL_10;
  }

LABEL_84:

LABEL_85:
  sub_1974028C8(a1, a2);
  sub_1974028C8(v15, v16);
  return 1;
}

uint64_t sub_197456578(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
  if (swift_dynamicCast())
  {
    sub_197521FFC();
    v22 = sub_1974178DC(v21);
    v23 = swift_conformsToProtocol2();
    if (v23)
    {
      v24 = v22 == 0;
    }

    else
    {
      v24 = 1;
    }

    if (!v24)
    {
      sub_197456824(v22, v29, a1, a4, a5, a6 & 1, a7, a8, a9, a10, a11, a12, a13, v22, a14, a15, a16, v23);
      return swift_unknownObjectRelease();
    }

    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000032, 0x8000000197526460);
    v27 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v27);
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000018, 0x80000001975260B0);
    v26 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v26);

    MEMORY[0x19A8DFF80](0xD00000000000001ELL, 0x80000001975260D0);
    sub_19752235C();
  }

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_197456824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20 = *(sub_1973FE074(a13, a17) + 112);

  if (v20 == 1)
  {
    sub_1974258A4(a13, a17);
  }

  sub_197434244(a13, a13, a17, a17, v36);
  sub_197413BF4(v36, v35);
  v21 = swift_allocObject();
  *(v21 + 16) = a11;
  *(v21 + 24) = a12;
  *(v21 + 32) = a15;
  *(v21 + 40) = a16;
  *(v21 + 48) = a17;
  *(v21 + 56) = a18;
  sub_197434908(v35, v21 + 64);
  *(v21 + 104) = a5;
  v29 = a6 & 1;
  *(v21 + 112) = v29;
  v30 = a7;
  *(v21 + 120) = a7;
  *(v21 + 128) = a8;
  *(v21 + 136) = a9;
  *(v21 + 144) = a10;
  sub_197413BF4(v36, v34);
  v22 = swift_allocObject();
  *(v22 + 16) = a11;
  *(v22 + 24) = a12;
  *(v22 + 32) = a15;
  *(v22 + 40) = a16;
  *(v22 + 48) = a17;
  *(v22 + 56) = a18;
  sub_197434908(v34, v22 + 64);
  *(v22 + 104) = a5;
  *(v22 + 112) = v29;
  *(v22 + 120) = a7;
  *(v22 + 128) = a8;
  *(v22 + 136) = a9;
  *(v22 + 144) = a10;
  sub_197413BF4(v36, v33);
  v23 = swift_allocObject();
  *(v23 + 16) = a11;
  *(v23 + 24) = a12;
  *(v23 + 32) = a15;
  *(v23 + 40) = a16;
  *(v23 + 48) = a17;
  *(v23 + 56) = a18;
  sub_197434908(v33, v23 + 64);
  *(v23 + 104) = a5;
  *(v23 + 112) = v29;
  *(v23 + 120) = a7;
  *(v23 + 128) = a8;
  *(v23 + 136) = a9;
  *(v23 + 144) = a10;
  sub_197413BF4(v36, v32);
  v24 = swift_allocObject();
  *(v24 + 16) = a11;
  *(v24 + 24) = a12;
  *(v24 + 32) = a15;
  *(v24 + 40) = a16;
  *(v24 + 48) = a17;
  *(v24 + 56) = a18;
  sub_197434908(v32, v24 + 64);
  *(v24 + 104) = a5;
  *(v24 + 112) = v29;
  *(v24 + 120) = v30;
  *(v24 + 128) = a8;
  *(v24 + 136) = a9;
  *(v24 + 144) = a10;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  sub_1974CE198(a3, a4, sub_1974AE05C, v21, sub_197456DB0, v22, sub_1974AE074, v23, sub_1974AE0E4, v24, a13, a13, a14);

  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t sub_197456B7C(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v19 = *a1;
  v20 = a2[3];
  v21 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v20);
  v22 = *(*(v19 + *MEMORY[0x1E69E77B0] + 8) + 16);
  result = (*(v21 + 80))(a1, v22, a14, v20, v21);
  if (result)
  {
    v24 = result;
    swift_beginAccess();
    v25 = *(a3 + 16);

    PersistentModel.persistentModelID.getter(v22, a14, &v35);
    v26 = v35;
    v27 = v36;
    v28 = sub_197455CE4(v35, v36, v25);

    sub_1974028C8(v26, v27);
    if ((v28 & 1) == 0)
    {
      if (a4)
      {
        swift_beginAccess();
        v29 = *(a5 + 16);
        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a5 + 16) = v29;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29 = sub_197433F80(0, v29[2] + 1, 1, v29);
          *(a5 + 16) = v29;
        }

        v31 = v29[2];
        v32 = v29[3];
        if (v31 >= v32 >> 1)
        {
          v33 = v29[2];
          v29 = sub_197433F80((v32 > 1), v31 + 1, 1, v29);
          v31 = v33;
          *(a5 + 16) = v29;
        }

        sub_19743F3E4(v31, v24, (a5 + 16), v22, a14);
        *(a5 + 16) = v29;
        swift_endAccess();
      }

      swift_unknownObjectRetain();
      a6(a8, v24, a14);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_197456E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  sub_197456F2C(a1, a2, a5, a6, ObjectType, a7, a3);
  PersistentModel.persistentModelID.getter(ObjectType, a3, &v18);
  v14 = v18;
  LOBYTE(a5) = v19;
  v16 = v18;
  v17 = v19;
  v15 = sub_197457910(&v16);
  sub_1974028C8(v14, a5);
  if (v15)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    sub_197454EEC(a2, ObjectType, a3);
  }
}

uint64_t sub_197456F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = swift_beginAccess();
  if (*(a1 + 112))
  {
    result = swift_beginAccess();
    if (*(a1 + 48))
    {
      v22 = a3;
      v23 = a4;
      v24 = a5;

      v15 = sub_197521FFC();
      v16 = sub_197521FFC();
      v17 = swift_conformsToProtocol2();
      if (v17)
      {
        v18 = v15 == 0;
      }

      else
      {
        v18 = 1;
      }

      if (!v18)
      {
        v19 = v17;
        v20 = swift_conformsToProtocol2();
        if (v20)
        {
          v21 = v16 == 0;
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          sub_1974570C0(v15, v16, a2, v22, a1, v23, v24, v15, v16, a6, a7, v19, v20);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1974570C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v34 = a3;
  swift_unknownObjectRetain();
  if (!swift_dynamicCast())
  {
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001BLL, 0x80000001975274B0);
    *&v33[0] = a3;
    sub_1975227FC();
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    v27 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v27);

LABEL_8:
    result = sub_1975223EC();
    __break(1u);
    return result;
  }

  v34 = a4;
  swift_unknownObjectRetain();
  if (!swift_dynamicCast())
  {
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001BLL, 0x80000001975274B0);
    *&v33[0] = a4;
    sub_1975227FC();
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    v28 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v28);

    goto LABEL_8;
  }

  v19 = *&v33[0];
  if (sub_1973FE6F0(a8, a12))
  {
    sub_1974258A4(a8, a12);
  }

  sub_197434244(a8, a8, a12, a12, &v34);
  sub_1973FFC48(&v34, v33);
  v20 = swift_allocObject();
  v20[2] = a6;
  v20[3] = a7;
  v20[4] = a10;
  v20[5] = a11;
  v20[6] = a12;
  v20[7] = a13;
  sub_197402778(v33, (v20 + 8));
  v21 = v19;
  v20[13] = v19;
  sub_1973FFC48(&v34, v32);
  v29 = a8;
  v22 = a6;
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = a7;
  v23[4] = a10;
  v23[5] = a11;
  v23[6] = a12;
  v23[7] = a13;
  sub_197402778(v32, (v23 + 8));
  v23[13] = v19;
  sub_1973FFC48(&v34, v31);
  v24 = swift_allocObject();
  v24[2] = v22;
  v24[3] = a7;
  v24[4] = a10;
  v24[5] = a11;
  v24[6] = a12;
  v24[7] = a13;
  sub_197402778(v31, (v24 + 8));
  v24[13] = v19;
  sub_1973FFC48(&v34, v30);
  v25 = swift_allocObject();
  v25[2] = v22;
  v25[3] = a7;
  v25[4] = a10;
  v25[5] = a11;
  v25[6] = a12;
  v25[7] = a13;
  sub_197402778(v30, (v25 + 8));
  v25[13] = v21;
  swift_unknownObjectRetain_n();
  sub_1974CE944(a5, sub_1974C17F0, v20, sub_1974C1848, v23, sub_1974C1860, v24, sub_197457524, v25, v22, a9, v29, a10, a13, a12);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return __swift_destroy_boxed_opaque_existential_0Tm(&v34);
}

void sub_19745753C(uint64_t *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *a1;
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v13 = *(v12 + 88);
  v14 = *(v11 + *MEMORY[0x1E69E77B0] + 8);
  v15 = *(*(v14 + 16) + 16);
  WitnessTable = swift_getWitnessTable();
  v29 = a9;
  v24 = swift_getWitnessTable();
  v13(&v26, a1, v14, v15);
  if (v26)
  {
    v16 = v26;
  }

  else
  {
    v16 = sub_1975215CC();
  }

  v30 = v16;

  v17 = PersistentModel.persistentModelID.getter(v15, a9, &v26);
  v18 = v26;
  v19 = v27;
  v26 = v16;
  MEMORY[0x1EEE9AC00](v17, v20);
  v21 = sub_19752196C();

  if (v21)
  {

    sub_1974028C8(v18, v19);
  }

  else
  {
    v26 = a3;
    swift_unknownObjectRetain();
    sub_197521A7C();
    v22 = a2[3];
    v23 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v22);
    v26 = v30;
    (*(v23 + 136))(a1, &v26, v14, v15, v24, v22, v23);
    sub_1974028C8(v18, v19);
  }
}

uint64_t sub_1974577F4(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  PersistentModel.persistentModelID.getter(a7, a11, &v17);
  v13 = v17;
  v14 = v18;
  sub_1974028EC(a2, a3);
  v15 = sub_19742291C(v13, v14, a2, a3);
  sub_1974028C8(a2, a3);
  sub_1974028C8(v13, v14);
  return v15 & 1;
}

uint64_t sub_197457910(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = OBJC_IVAR____TtC9SwiftData12ModelContext__objectRegistration;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = sub_197403C30(v2, v3);
    if (v8)
    {
      sub_19742FE50(*(v5 + 56) + 32 * v7, &v11);

      LOBYTE(v6) = *(&v11 + 1) != 1;
      if (v11)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    LOBYTE(v6) = 0;
  }

  v11 = xmmword_19752EA60;
  v12 = 0;
  v13 = 0;
LABEL_7:
  if ((v6 & 1) == 0)
  {
    sub_1974050A8(&v11, &qword_1EAF2B640, &unk_19752F160);
    return 0;
  }

LABEL_9:
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1974050A8(&v11, &qword_1EAF2B640, &unk_19752F160);
  if (Strong)
  {
    return Strong;
  }

  return 0;
}

uint64_t sub_197457A40(char a1, uint64_t a2, uint64_t a3)
{
  *(sub_1973FE074(a2, a3) + 80) = a1;

  v8 = 0;
  if ((a1 & 1) == 0)
  {
    if (PersistentModel.modelContext.getter(a2, a3))
    {

      v7 = *(sub_1973FE074(a2, a3) + 24);

      if ((v7 & 0x3F) == 0)
      {
        v8 = 1;
      }
    }
  }

  return sub_197457AEC(a2, v8, v3, a2, a2, a3, a3);
}

uint64_t sub_197457AEC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_197434244(a4, a5, a6, a7, v19);
  sub_1973FFCAC(v19, v18);
  swift_getExtendedExistentialTypeMetadata();
  type metadata accessor for _KKMDBackingData(0, a5, a7, v13);
  if (swift_dynamicCast())
  {
    sub_197430254(a2 & 1);
  }

  v14 = sub_1975214CC();
  if (v14)
  {
    v15 = v14;
    v16 = swift_conformsToProtocol2();
    if (v16)
    {
      sub_197457AEC(v15, a2 & 1, a3, a4, v15, a6, v16);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm_3(v19);
}

void sub_197457C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *, uint64_t, uint64_t, uint64_t))
{
  v18 = a5;
  v9 = a1 + 56;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 56);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  if (v12)
  {
    while (1)
    {
      v15 = v14;
LABEL_8:
      v17 = *(*(a1 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v12)))));
      swift_unknownObjectRetain();
      v18(&v17, a2, a3, a4);
      if (v5)
      {
        break;
      }

      v12 &= v12 - 1;
      swift_unknownObjectRelease();
      v14 = v15;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRelease();
  }

  else
  {
LABEL_5:
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(v9 + 8 * v15);
      ++v14;
      if (v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_197457D6C(uint64_t *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v17 = *a1;
  v5 = *a1;
  ObjectType = swift_getObjectType();
  sub_1974556E8(0, ObjectType, *(&v17 + 1));
  if (sub_19745805C(ObjectType, *(&v17 + 1)) & 1) != 0 || (sub_197442A30(ObjectType, *(&v17 + 1)))
  {
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_1974327FC(v18, v5, *(&v17 + 1));
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  else
  {
    if (sub_19744377C(ObjectType, *(&v17 + 1)))
    {
      sub_1974A7F6C(0, ObjectType, *(&v17 + 1));
      swift_beginAccess();
      sub_1974580E0(v5, *(&v17 + 1));
      swift_endAccess();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_beginAccess();
      swift_unknownObjectRetain();
      sub_1974327FC(v18, v5, *(&v17 + 1));
      swift_endAccess();
      swift_unknownObjectRelease();
      sub_197458088(1, ObjectType, *(&v17 + 1));
    }

    v8 = *a4;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_197442AD4(0, *(v8 + 2) + 1, 1, v8);
      *a4 = v8;
    }

    v10 = *(v8 + 2);
    v11 = *(v8 + 3);
    v12 = v10 + 1;
    if (v10 >= v11 >> 1)
    {
      v16 = v10 + 1;
      v13 = v8;
      v14 = *(v8 + 2);
      v15 = sub_197442AD4((v11 > 1), v10 + 1, 1, v13);
      v10 = v14;
      v12 = v16;
      v8 = v15;
      *a4 = v15;
    }

    *(v8 + 2) = v12;
    *&v8[16 * v10 + 32] = v17;
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_1974327FC(v18, v5, *(&v17 + 1));
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_beginAccess();
    sub_1974580E0(v5, *(&v17 + 1));
    swift_endAccess();
    swift_unknownObjectRelease();
    return sub_197432360(0, ObjectType, *(&v17 + 1));
  }
}

uint64_t sub_19745805C(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_1973FE074(a1, a2) + 24);

  return (v2 >> 3) & 1;
}

uint64_t sub_197458088(char a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1973FE074(a2, a3);
  if (a1)
  {
    v5 = 16;
  }

  else
  {
    v5 = 0;
  }

  *(v4 + 24) = *(v4 + 24) & 0xFFFFFFEF | v5;
}

uint64_t sub_1974580E0(uint64_t a1, uint64_t a2)
{
  v24 = *v2;
  sub_197522A5C();
  ObjectType = swift_getObjectType();
  PersistentModel.persistentModelID.getter(ObjectType, a2, &v26);
  v5 = v26;
  if (v27)
  {
    if (v27 == 1)
    {
      MEMORY[0x19A8E1190](1);
      sub_1974028EC(v5, 1);
      sub_197452CB8(&v28);
      sub_1974028C8(v5, 1);
      sub_1974028C8(v5, 1);
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_1974028EC(v5, 2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
      sub_1974028C8(v5, 2);
      sub_1974028C8(v5, 2);
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    sub_1974028EC(v5, 0);
    sub_197521F4C();
    sub_1974028C8(v5, 0);
    sub_1974028C8(v5, 0);
  }

  v6 = sub_197522A9C();
  v7 = -1 << *(v24 + 32);
  v8 = v6 & ~v7;
  if (((*(v24 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v21 = v2;
  v22 = ~v7;
  v23 = a2;
  while (1)
  {
    v9 = *(*(v24 + 48) + 16 * v8 + 8);
    v10 = swift_getObjectType();
    swift_unknownObjectRetain();
    v25 = v9;
    PersistentModel.persistentModelID.getter(v10, v9, &v28);
    v11 = v28;
    LOBYTE(v9) = v29;
    PersistentModel.persistentModelID.getter(ObjectType, a2, &v26);
    v12 = v26;
    v13 = v27;
    v14 = sub_19742291C(v11, v9, v26, v27);
    sub_1974028C8(v12, v13);
    sub_1974028C8(v11, v9);
    if ((v14 & 1) == 0)
    {
      swift_unknownObjectRelease();
      a2 = v23;
      goto LABEL_9;
    }

    v15 = PersistentModel.modelContext.getter(v10, v25);
    a2 = v23;
    v16 = PersistentModel.modelContext.getter(ObjectType, v23);
    swift_unknownObjectRelease();
    if (!v15)
    {
      break;
    }

    if (!v16)
    {
      goto LABEL_16;
    }

    if (v15 == v16)
    {
      goto LABEL_19;
    }

LABEL_9:
    v8 = (v8 + 1) & v22;
    if (((*(v24 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  if (v16)
  {
LABEL_16:

    goto LABEL_9;
  }

LABEL_19:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v21;
  v28 = *v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_19747FCD8();
    v19 = v28;
  }

  v20 = *(v19[6] + 16 * v8);
  sub_19745845C(v8);
  result = v20;
  *v21 = v28;
  return result;
}

unint64_t sub_19745845C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_19752207C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 16 * v6 + 8);
        sub_197522A5C();
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        PersistentModel.persistentModelID.getter(ObjectType, v10, &v23);
        v12 = v23;
        if (v24)
        {
          if (v24 != 1)
          {
            MEMORY[0x19A8E1190](2);
            sub_1974028EC(v12, 2);
            sub_19750A470();
            sub_19752180C();

            sub_19750A588();
            sub_19752180C();
            sub_1974028C8(v12, 2);
            sub_1974028C8(v12, 2);

            goto LABEL_15;
          }

          MEMORY[0x19A8E1190](1);
          sub_1974028EC(v12, 1);
          sub_19752180C();
          sub_19752180C();
          if (v12[3])
          {
            sub_197522A7C();
            sub_19752180C();
          }

          else
          {
            sub_197522A7C();
          }

          sub_197522A7C();
          sub_19752180C();

          sub_1974028C8(v12, 1);
          v13 = v12;
          v14 = 1;
        }

        else
        {
          MEMORY[0x19A8E1190](0);
          sub_1974028EC(v12, 0);
          sub_197521F4C();
          sub_1974028C8(v12, 0);
          v13 = v12;
          v14 = 0;
        }

        sub_1974028C8(v13, v14);
LABEL_15:
        v15 = sub_197522A9C();
        swift_unknownObjectRelease();
        v16 = v15 & v7;
        if (v2 >= v9)
        {
          if (v16 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v9)
        {
          goto LABEL_20;
        }

        if (v2 >= v16)
        {
LABEL_20:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_197458844(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43[3] = a5;
  v43[4] = a6;
  boxed_opaque_existential_1Tm_0 = __swift_allocate_boxed_opaque_existential_1Tm_0(v43);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1Tm_0, a4, a5);
  swift_beginAccess();
  v10 = *(a1 + 16);
  v13 = *(v10 + 64);
  v12 = v10 + 64;
  v11 = v13;
  v14 = -1 << *(*(a1 + 16) + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v11;
  v17 = (63 - v14) >> 6;
  v42 = *(a1 + 16);

  v18 = 0;
  while (1)
  {
    v19 = v16;
    v20 = v18;
    if (!v16)
    {
      break;
    }

LABEL_12:
    v22 = *(*(v42 + 56) + ((v20 << 10) | (16 * __clz(__rbit64(v19)))) + 8);
    ObjectType = swift_getObjectType();
    v24 = *(v22 + 48);
    swift_unknownObjectRetain();
    v39 = ObjectType;
    v25 = *(v24(ObjectType, v22) + 72);

    if (a3)
    {
      if (a3 == 1)
      {
        v26 = a2[9];
        v27 = a2[10];
      }

      else
      {
        v26 = sub_19750A588();
        v27 = v30;
      }
    }

    else
    {
      v28 = [a2 entityName];
      v26 = sub_1975217BC();
      v27 = v29;
    }

    v31 = (v19 - 1) & v19;
    if (*(v25 + 16))
    {
      sub_1973F4028(v26, v27);
      v33 = v32;

      if (v33)
      {

        v34 = (*(v22 + 40))(v39, v22);
        sub_197458C2C(v42);
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0Tm(v43);
        return v34;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v18 = v20;
    v16 = v31;
  }

  v21 = v18;
  while (1)
  {
    v20 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      goto LABEL_22;
    }

    v19 = *(v12 + 8 * v20);
    ++v21;
    if (v19)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_22:
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000036, 0x8000000197527900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B220, &qword_19752D3B0);
  sub_19752235C();
  MEMORY[0x19A8DFF80](0x206D6F726620, 0xE600000000000000);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3D8, &unk_19752FBA0);
  v36 = sub_19752160C();
  v38 = v37;

  MEMORY[0x19A8DFF80](v36, v38);

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_197458C34(uint64_t a1)
{
  swift_beginAccess();
  sub_19743B4F0(a1, v1 + 40);
  return swift_endAccess();
}

uint64_t sub_197458C84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B440, &qword_19752D600);
  v6 = v5;
  v40 = v4;
  result = sub_19752243C();
  v8 = result;
  if (*(v6 + 16))
  {
    v38 = v2;
    v39 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v24 = 16 * (v21 | (v9 << 6));
      v25 = *(v6 + 48) + v24;
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = *(v6 + 56) + v24;
      v29 = *v28;
      v41 = *(v28 + 8);
      if ((v40 & 1) == 0)
      {
        sub_1974028EC(v26, v27);
        sub_1974028EC(v29, v41);
      }

      sub_197522A5C();
      if (v27)
      {
        if (v27 == 1)
        {
          MEMORY[0x19A8E1190](1);
          sub_19752180C();
          sub_19752180C();
          if (v26[3])
          {
            sub_197522A7C();
            sub_19752180C();
          }

          else
          {
            sub_197522A7C();
          }

          sub_197522A7C();
          v6 = v39;
          sub_19752180C();
        }

        else
        {
          MEMORY[0x19A8E1190](2);
          sub_19750A470();
          sub_19752180C();

          sub_19750A588();
          sub_19752180C();

          v6 = v39;
        }
      }

      else
      {
        MEMORY[0x19A8E1190](0);
        sub_197521F4C();
      }

      result = sub_197522A9C();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v17 = v29;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_43:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v17 = v29;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v18 = 16 * v16;
      v19 = *(v8 + 48) + v18;
      *v19 = v26;
      *(v19 + 8) = v27;
      v20 = *(v8 + 56) + v18;
      *v20 = v17;
      *(v20 + 8) = v41;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_43;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_41;
    }

    v37 = 1 << *(v6 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v6 + 16) = 0;
  }

LABEL_41:
  *v3 = v8;
  return result;
}

uint64_t sub_1974590C4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6, void (**a7)(char *, uint64_t))
{
  v90 = a7;
  v91 = a6;
  v101 = a5;
  v103 = a3;
  v104 = a4;
  v97 = *a4;
  v9 = *(v97 + 80);
  v99 = sub_197521F5C();
  v95 = *(v99 - 8);
  v11 = MEMORY[0x1EEE9AC00](v99, v10);
  v100 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v94 = &v86 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v86 - v18;
  v98 = v9;
  v20 = *(v9 - 8);
  v22 = MEMORY[0x1EEE9AC00](v17, v21);
  v92 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v93 = &v86 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v96 = &v86 - v29;
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v86 - v31;
  v33 = *a1;
  v34 = *(a1 + 8);
  v35 = *a2;
  v36 = *(a2 + 8);
  v102 = *a1;
  if (v36)
  {
    if (v36 == 1 && (v35[33] & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (![v35 isTemporaryID])
  {
    goto LABEL_11;
  }

  if (qword_1EAF2AC88 != -1)
  {
    swift_once();
  }

  v37 = sub_19752157C();
  __swift_project_value_buffer(v37, qword_1EAF33DD0);
  sub_1974028EC(v33, v34);
  sub_1974028EC(v35, v36);
  v38 = sub_19752155C();
  v39 = sub_197521DDC();
  sub_1974028C8(v33, v34);
  sub_1974028C8(v35, v36);
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v89 = v32;
    v41 = v35;
    v42 = v40;
    v87 = swift_slowAlloc();
    v112[0] = v87;
    *v42 = 136315650;
    *&v109 = v33;
    BYTE8(v109) = v34;
    sub_1974028EC(v33, v34);
    v43 = sub_1975217CC();
    v88 = v19;
    v45 = v20;
    v46 = sub_197462310(v43, v44, v112);

    *(v42 + 4) = v46;
    *(v42 + 12) = 2080;
    *&v109 = v41;
    BYTE8(v109) = v36;
    sub_1974028EC(v41, v36);
    v47 = sub_1975217CC();
    v49 = sub_197462310(v47, v48, v112);

    *(v42 + 14) = v49;
    *(v42 + 22) = 2080;
    v20 = v45;
    v33 = v102;
    *&v109 = v90;
    swift_getMetatypeMetadata();
    v50 = sub_1975217CC();
    v52 = sub_197462310(v50, v51, v112);

    *(v42 + 24) = v52;
    v19 = v88;
    _os_log_impl(&dword_1973F2000, v38, v39, "PersistentIdentifier %s was remapped to a temporary identifier during save: %s. This is a fatal logic error in %s", v42, 0x20u);
    v53 = v87;
    swift_arrayDestroy();
    MEMORY[0x19A8E1B50](v53, -1, -1);
    v54 = v42;
    v35 = v41;
    v32 = v89;
    MEMORY[0x19A8E1B50](v54, -1, -1);
  }

LABEL_11:
  v55 = OBJC_IVAR____TtC9SwiftData12ModelContext__objectRegistration;
  v56 = v103;
  swift_beginAccess();
  v57 = *(v56 + v55);
  v58 = *(v57 + 16);
  if (v58)
  {

    v59 = sub_197403C30(v33, v34);
    if (v60)
    {
      sub_19742FE50(*(v57 + 56) + 32 * v59, &v109);

      LOBYTE(v58) = *(&v109 + 1) != 1;
      if (v109)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    LOBYTE(v58) = 0;
  }

  v109 = xmmword_19752EA60;
  v110 = 0;
  v111 = 0;
LABEL_17:
  if ((v58 & 1) == 0)
  {
    sub_1974050A8(&v109, &qword_1EAF2B640, &unk_19752F160);
    goto LABEL_21;
  }

LABEL_19:
  Strong = swift_unknownObjectWeakLoadStrong();
  v62 = *(&v109 + 1);
  sub_1974050A8(&v109, &qword_1EAF2B640, &unk_19752F160);
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v89 = v32;
    v64 = v35;
    v88 = ObjectType;
    *&v109 = v35;
    BYTE8(v109) = v36;
    sub_197459C60(&v109, ObjectType, v62);
    v109 = xmmword_19752EA60;
    v110 = 0;
    v111 = 0;
    v90 = v20;
    swift_beginAccess();
    v65 = v19;
    v66 = v34;
    v67 = v102;
    sub_1974028EC(v102, v66);
    v68 = v67;
    v34 = v66;
    v19 = v65;
    sub_197433D4C(&v109, v68, v34);
    swift_endAccess();
    *(&v109 + 1) = 0;
    swift_unknownObjectWeakInit();
    *(&v109 + 1) = v62;
    swift_unknownObjectWeakAssign();
    sub_1974028EC(v64, v36);
    swift_unknownObjectRetain();
    v35 = v64;
    v32 = v89;
    PersistentModel.persistentModelID.getter(v88, v62, &v105);
    swift_unknownObjectRelease();
    v110 = v105;
    v111 = v106;
    swift_beginAccess();
    v20 = v90;
    sub_197433D4C(&v109, v35, v36);
    swift_endAccess();
    swift_unknownObjectRelease();
  }

LABEL_21:
  *&v109 = v35;
  BYTE8(v109) = v36;
  sub_1974028EC(v35, v36);
  v69 = v35;
  v70 = sub_197405108();
  v71 = v98;
  sub_19752167C();
  sub_1974028C8(v109, SBYTE8(v109));
  v72 = v20[6];
  if ((v72)(v19, 1, v71) == 1)
  {
    LODWORD(v103) = v36;
    v90 = v69;
    v73 = v71;
    v89 = *(v95 + 8);
    (v89)(v19, v99);
    swift_beginAccess();
    v74 = v102;
    v105 = v102;
    LOBYTE(v106) = v34;
    sub_1974028EC(v102, v34);

    v75 = v94;
    v95 = v70;
    sub_19752167C();
    v76 = v75;

    sub_1974028C8(v105, v106);
    if ((v72)(v75, 1, v73))
    {
      (v89)(v75, v99);
      v105 = 0;
      v106 = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000041, 0x8000000197527870);
      v107 = v74;
      v108 = v34;
      sub_19752235C();
      MEMORY[0x19A8DFF80](2108704, 0xE300000000000000);
      v107 = v90;
      v108 = v103;
      sub_19752235C();
      result = sub_1975223EC();
      __break(1u);
    }

    else
    {
      v77 = v20[2];
      v78 = v92;
      (v77)(v92, v76, v73);
      (v89)(v76, v99);
      v79 = v90;
      v105 = v90;
      v80 = v103;
      LOBYTE(v106) = v103;
      v81 = v93;
      (*(*(v97 + 88) + 40))(&v105, *(v104 + 2), v73);
      v104 = v20[1];
      v104(v78, v73);
      v82 = v96;
      (v20[4])(v96, v81, v73);
      v83 = v100;
      (v77)(v100, v82, v73);
      (v20[7])(v83, 0, 1, v73);
      v105 = v79;
      LOBYTE(v106) = v80;
      sub_1974028EC(v79, v80);
      sub_19752166C();
      sub_19752168C();
      return (v104)(v82, v73);
    }
  }

  else
  {
    (v20[4])(v32, v19, v71);
    v85 = v100;
    (v20[2])(v100, v32, v71);
    (v20[7])(v85, 0, 1, v71);
    *&v109 = v69;
    BYTE8(v109) = v36;
    sub_1974028EC(v69, v36);
    sub_19752166C();
    sub_19752168C();
    return (v20[1])(v32, v71);
  }

  return result;
}

uint64_t sub_197459C60(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  sub_197434244(a2, a2, a3, a3, v14);
  v8 = v15;
  v9 = v16;
  __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
  v12 = v6;
  v13 = v7;
  v10 = *(v9 + 40);
  sub_1974028EC(v6, v7);
  v10(&v12, v8, v9);
  sub_197459D98(a2, v3, v6, v7, a2, a3);
  return __swift_destroy_boxed_opaque_existential_1Tm_3(v14);
}

void sub_197459D38(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v1 + 24);
  *(v1 + 24) = v2;
  v5 = *(v1 + 32);
  *(v1 + 32) = v3;
  sub_1974A1014(v4, v5);
}

void *sub_197459D98(void *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = result;
  v12 = *result;
  if ((*result - 2048) < 0xFFFFFFFFFFFFF801 || ((result = sub_19752147C(), result < 0x800) ? (v13 = result == v12) : (v13 = 0), !v13 ? (v14 = 0) : (v14 = 1), v12 - 515 >= 2 ? (v15 = v14 == 0) : (v15 = 0), !v15))
  {
    if (v11[1])
    {
      v16 = v11[1];
      result = swift_conformsToProtocol2();
      if (result)
      {
        sub_197434244(a5, v16, a6, result, &v24);
        v17 = v26;
        v18 = v27;
        v19 = __swift_project_boxed_opaque_existential_1Tm_2(&v24, v26);
        v29 = v17;
        v30 = v18;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
        (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, v19, v17);
        __swift_destroy_boxed_opaque_existential_1Tm_3(&v24);
        v21 = v29;
        v23 = v30;
        __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
        v24 = a3;
        v25 = a4;
        v22 = *(v18 + 40);
        sub_1974028EC(a3, a4);
        v22(&v24, v21, v23);
        sub_197459D98(v16, a2, a3, a4, a5, a6);
        return __swift_destroy_boxed_opaque_existential_1Tm_3(v28);
      }
    }
  }

  return result;
}

double sub_197459F50@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_197403C30(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_19747B580();
      v10 = v12;
    }

    sub_1974028C8(*(*(v10 + 48) + 16 * v8), *(*(v10 + 48) + 16 * v8 + 8));
    sub_197433E8C(*(v10 + 56) + 32 * v8, a3);
    sub_197439D60(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = xmmword_19752EA60;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
  }

  return result;
}

void *sub_19745A024@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

SwiftData::Schema::Version __swiftcall Schema.Version.init(_:_:_:)(Swift::Int a1, Swift::Int a2, Swift::Int a3)
{
  if ((a2 | a1 | a3) < 0)
  {
    __break(1u);
  }

  else
  {
    *v3 = a1;
    v3[1] = a2;
    v3[2] = a3;
  }

  result.patch = a3;
  result.minor = a2;
  result.major = a1;
  return result;
}

uint64_t Schema.debugDescription.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE50, &qword_19752D530);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_197530990;
  *(v1 + 32) = 0x616D65686353;
  *(v1 + 40) = 0xE600000000000000;
  sub_1975221EC();

  if (qword_1ED7C9B38 != -1)
  {
    swift_once();
  }

  v2 = Schema.Version.description.getter();
  MEMORY[0x19A8DFF80](v2);

  *(v1 + 48) = 0xD000000000000017;
  *(v1 + 56) = 0x80000001975285A0;
  sub_1975221EC();

  v3 = Schema.Version.description.getter();
  MEMORY[0x19A8DFF80](v3);

  *(v1 + 64) = 0xD000000000000011;
  *(v1 + 72) = 0x80000001975285C0;
  *(v1 + 80) = 0x7365697469746E65;
  *(v1 + 88) = 0xE90000000000003ALL;
  v5 = *(v0 + 64);
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE60, &qword_19752C0E0);
    sub_19745B2D4(&qword_1EAF2ACA0, &qword_1EAF2AE60, &qword_19752C0E0, MEMORY[0x1E69E6310]);
    v17 = sub_1975216CC();

    return v17;
  }

  result = sub_1975220EC();
  v6 = result;
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v6 >= 1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v7 = 0;
      do
      {
        MEMORY[0x19A8E0960](v7, v5);
        v8 = Schema.Entity.debugDescription.getter();
        MEMORY[0x19A8DFF80](v8);

        v10 = *(v1 + 16);
        v9 = *(v1 + 24);
        if (v10 >= v9 >> 1)
        {
          v1 = sub_19741E330((v9 > 1), v10 + 1, 1, v1);
        }

        ++v7;
        swift_unknownObjectRelease();
        *(v1 + 16) = v10 + 1;
        v11 = v1 + 16 * v10;
        *(v11 + 32) = 32;
        *(v11 + 40) = 0xE100000000000000;
      }

      while (v6 != v7);
    }

    else
    {
      v12 = v5 + 32;
      do
      {

        v13 = Schema.Entity.debugDescription.getter();
        MEMORY[0x19A8DFF80](v13);

        v15 = *(v1 + 16);
        v14 = *(v1 + 24);
        if (v15 >= v14 >> 1)
        {
          v1 = sub_19741E330((v14 > 1), v15 + 1, 1, v1);
        }

        *(v1 + 16) = v15 + 1;
        v16 = v1 + 16 * v15;
        *(v16 + 32) = 32;
        *(v16 + 40) = 0xE100000000000000;
        v12 += 8;
        --v6;
      }

      while (v6);
    }

    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t Schema.Entity.debugDescription.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE50, &qword_19752D530);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_19752D100;
  v3 = 0xE000000000000000;
  sub_1975221EC();

  v78 = 0x2D20797469746E45;
  v79 = 0xEF203A656D616E20;
  swift_beginAccess();
  v4 = v0[2];
  v5 = v0[3];

  MEMORY[0x19A8DFF80](v4, v5);

  *(v2 + 32) = 0x2D20797469746E45;
  *(v2 + 40) = 0xEF203A656D616E20;
  sub_1975221EC();

  v78 = 0x6572657075732020;
  v79 = 0xEF203A797469746ELL;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    v8 = *(v7 + 16);
    v3 = *(v7 + 24);
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x19A8DFF80](v8, v3);

  v9 = v79;
  *(v2 + 48) = v78;
  *(v2 + 56) = v9;
  strcpy((v2 + 64), "  subentities:");
  *(v2 + 79) = -18;
  swift_beginAccess();
  v10 = v1[4];
  v74 = v1;
  if ((v10 & 0xC000000000000001) != 0)
  {

    sub_1975220AC();
    sub_1973FA628(&qword_1EAF2B670, v11, type metadata accessor for Schema.Entity, &protocol conformance descriptor for Schema.Entity);
    sub_197521C1C();
    v10 = v78;
    v12 = v79;
    v13 = v80;
    v14 = v81;
    v15 = v82;
  }

  else
  {
    v16 = -1 << *(v10 + 32);
    v12 = v10 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(v10 + 56);

    v14 = 0;
  }

  v19 = (v13 + 64) >> 6;
  v75 = v12;
  if (v10 < 0)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v20 = v14;
    v21 = v15;
    v22 = v14;
    if (!v15)
    {
      while (1)
      {
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v22 >= v19)
        {
          goto LABEL_23;
        }

        v21 = *(v12 + 8 * v22);
        ++v20;
        if (v21)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_56;
    }

LABEL_15:
    v23 = (v21 - 1) & v21;
    v8 = *(*(v10 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));

    if (!v8)
    {
      break;
    }

    while (1)
    {
      v25 = v10;
      v76[0] = 0;
      v76[1] = 0xE000000000000000;
      MEMORY[0x19A8DFF80](538976288, 0xE400000000000000);
      v77 = v8;
      sub_19752235C();
      v27 = *(v2 + 16);
      v26 = *(v2 + 24);
      v13 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        v2 = sub_19741E330((v26 > 1), v27 + 1, 1, v2);
      }

      *(v2 + 16) = v13;
      v28 = v2 + 16 * v27;
      *(v28 + 32) = 0;
      *(v28 + 40) = 0xE000000000000000;
      v14 = v22;
      v15 = v23;
      v10 = v25;
      v12 = v75;
      if ((v10 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_17:
      v24 = sub_19752212C();
      if (v24)
      {
        v77 = v24;
        swift_dynamicCast();
        v8 = v76[0];
        v22 = v14;
        v23 = v15;
        if (v76[0])
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

LABEL_23:
  sub_197416DA8();
  v8 = *(v2 + 16);
  v20 = *(v2 + 24);
  v13 = v8 + 1;
  if (v8 < v20 >> 1)
  {
    goto LABEL_24;
  }

LABEL_56:
  v2 = sub_19741E330((v20 > 1), v13, 1, v2);
LABEL_24:
  v29 = v74;
  *(v2 + 16) = v13;
  v30 = v2 + 16 * v8;
  *(v30 + 32) = 0xD000000000000013;
  *(v30 + 40) = 0x80000001975293D0;
  swift_beginAccess();
  v31 = v74[8];
  v32 = *(v31 + 16);
  if (v32)
  {
    v33 = v31 + 32;

    do
    {
      sub_1973FA430(v33, v76);
      MEMORY[0x19A8DFF80](538976288, 0xE400000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
      sub_19752235C();
      __swift_destroy_boxed_opaque_existential_1Tm_5(v76);
      v35 = *(v2 + 16);
      v34 = *(v2 + 24);
      if (v35 >= v34 >> 1)
      {
        v2 = sub_19741E330((v34 > 1), v35 + 1, 1, v2);
      }

      *(v2 + 16) = v35 + 1;
      v36 = v2 + 16 * v35;
      *(v36 + 32) = 0;
      *(v36 + 40) = 0xE000000000000000;
      v33 += 40;
      --v32;
    }

    while (v32);

    v29 = v74;
  }

  v38 = *(v2 + 16);
  v37 = *(v2 + 24);
  if (v38 >= v37 >> 1)
  {
    v2 = sub_19741E330((v37 > 1), v38 + 1, 1, v2);
  }

  *(v2 + 16) = v38 + 1;
  v39 = v2 + 16 * v38;
  *(v39 + 32) = 0xD000000000000016;
  *(v39 + 40) = 0x80000001975293F0;
  swift_beginAccess();
  v40 = v29[9];
  v41 = *(v40 + 16);
  if (v41)
  {
    v42 = v40 + 32;

    do
    {
      sub_1973FA430(v42, v76);
      MEMORY[0x19A8DFF80](538976288, 0xE400000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
      sub_19752235C();
      __swift_destroy_boxed_opaque_existential_1Tm_5(v76);
      v44 = *(v2 + 16);
      v43 = *(v2 + 24);
      if (v44 >= v43 >> 1)
      {
        v2 = sub_19741E330((v43 > 1), v44 + 1, 1, v2);
      }

      *(v2 + 16) = v44 + 1;
      v45 = v2 + 16 * v44;
      *(v45 + 32) = 0;
      *(v45 + 40) = 0xE000000000000000;
      v42 += 40;
      --v41;
    }

    while (v41);

    v29 = v74;
  }

  v47 = *(v2 + 16);
  v46 = *(v2 + 24);
  if (v47 >= v46 >> 1)
  {
    v2 = sub_19741E330((v46 > 1), v47 + 1, 1, v2);
  }

  *(v2 + 16) = v47 + 1;
  v48 = v2 + 16 * v47;
  *(v48 + 32) = 0xD000000000000018;
  *(v48 + 40) = 0x8000000197529410;
  swift_beginAccess();
  v49 = *(v29[20] + 16);
  if (v49)
  {

    v50 = 32;
    v51 = MEMORY[0x1E69E6158];
    do
    {

      v53 = MEMORY[0x19A8E0100](v52, v51);
      v55 = v54;

      MEMORY[0x19A8DFF80](v53, v55);

      v57 = *(v2 + 16);
      v56 = *(v2 + 24);
      if (v57 >= v56 >> 1)
      {
        v2 = sub_19741E330((v56 > 1), v57 + 1, 1, v2);
      }

      *(v2 + 16) = v57 + 1;
      v58 = v2 + 16 * v57;
      *(v58 + 32) = 538976288;
      *(v58 + 40) = 0xE400000000000000;
      v50 += 8;
      --v49;
    }

    while (v49);

    v29 = v74;
  }

  v60 = *(v2 + 16);
  v59 = *(v2 + 24);
  if (v60 >= v59 >> 1)
  {
    v2 = sub_19741E330((v59 > 1), v60 + 1, 1, v2);
  }

  *(v2 + 16) = v60 + 1;
  v61 = v2 + 16 * v60;
  *(v61 + 32) = 0x656369646E692020;
  *(v61 + 40) = 0xEA00000000003A73;
  swift_beginAccess();
  v62 = *(v29[21] + 16);
  if (v62)
  {

    v63 = 32;
    v64 = MEMORY[0x1E69E6158];
    do
    {

      v66 = MEMORY[0x19A8E0100](v65, v64);
      v68 = v67;

      MEMORY[0x19A8DFF80](v66, v68);

      v70 = *(v2 + 16);
      v69 = *(v2 + 24);
      if (v70 >= v69 >> 1)
      {
        v2 = sub_19741E330((v69 > 1), v70 + 1, 1, v2);
      }

      *(v2 + 16) = v70 + 1;
      v71 = v2 + 16 * v70;
      *(v71 + 32) = 538976288;
      *(v71 + 40) = 0xE400000000000000;
      v63 += 8;
      --v62;
    }

    while (v62);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE60, &qword_19752C0E0);
  sub_19745B31C(&qword_1EAF2ACA0, &qword_1EAF2AE60, &qword_19752C0E0, MEMORY[0x1E69E6310]);
  v72 = sub_1975216CC();

  return v72;
}

uint64_t Schema.Attribute.Option.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[33];
  v3 = v0[34];
  v4 = v0[35];
  v5 = v0[36];
  v6 = v0[37];
  if (v0[32] == 1)
  {
    MEMORY[0x19A8DFF80](0x657571696E75, 0xE600000000000000);
  }

  if (v2)
  {
    MEMORY[0x19A8DFF80](0x6C616E7265747865, 0xEF656761726F7453);
  }

  if (v1)
  {
    sub_1975221EC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE58, &unk_19752F390);
    v8 = sub_1975217CC();
    MEMORY[0x19A8DFF80](v8);

    MEMORY[0x19A8DFF80](0xD000000000000013, 0x8000000197529D30);

    if (!v3)
    {
LABEL_7:
      if (!v4)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if (!v3)
  {
    goto LABEL_7;
  }

  MEMORY[0x19A8DFF80](0xD000000000000015, 0x8000000197529D10);
  if (v4)
  {
LABEL_8:
    MEMORY[0x19A8DFF80](0xD000000000000017, 0x8000000197529CF0);
  }

LABEL_9:
  if (v5)
  {
    MEMORY[0x19A8DFF80](0x6867696C746F7073, 0xE900000000000074);
  }

  if (v6)
  {
    MEMORY[0x19A8DFF80](0x6172656D65687065, 0xE90000000000006CLL);
  }

  return 0;
}

uint64_t sub_19745AFC0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_19745B044()
{
  *&v13 = 0;
  *(&v13 + 1) = 0xE000000000000000;
  sub_1975221EC();
  v15 = 0;
  v16 = 0xE000000000000000;
  MEMORY[0x19A8DFF80](0xD000000000000012, 0x8000000197529A30);
  swift_beginAccess();
  v1 = v0[2];
  v2 = v0[3];

  MEMORY[0x19A8DFF80](v1, v2);

  MEMORY[0x19A8DFF80](0x6E6F6974706F202CLL, 0xEB00000000203A73);
  swift_beginAccess();

  v4 = MEMORY[0x19A8E0100](v3, &type metadata for Schema.Attribute.Option);
  v6 = v5;

  MEMORY[0x19A8DFF80](v4, v6);

  MEMORY[0x19A8DFF80](0x5465756C6176202CLL, 0xED0000203A657079);
  swift_beginAccess();
  v7 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v7);

  MEMORY[0x19A8DFF80](0xD000000000000010, 0x8000000197529A50);
  swift_beginAccess();
  sub_197413B20((v0 + 8), &v11);
  if (v12)
  {
    sub_1974028B8(&v11, &v13);
  }

  else
  {
    v14 = MEMORY[0x1E69E6158];
    *&v13 = 7104878;
    *(&v13 + 1) = 0xE300000000000000;
  }

  sub_19752235C();
  __swift_destroy_boxed_opaque_existential_1Tm_6(&v13);
  MEMORY[0x19A8DFF80](0xD000000000000010, 0x8000000197529A70);
  swift_beginAccess();
  v8 = v0[14];
  *&v11 = v0[13];
  *(&v11 + 1) = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE58, &unk_19752F390);
  v9 = sub_1975217CC();
  MEMORY[0x19A8DFF80](v9);

  return v15;
}

__n128 __swift_memcpy38_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 30) = *(a2 + 30);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_19745B2D4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_19745B31C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t Schema.Relationship.debugDescription.getter()
{
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000015, 0x8000000197529C70);
  swift_beginAccess();
  v1 = v0[2];
  v2 = v0[3];

  MEMORY[0x19A8DFF80](v1, v2);

  MEMORY[0x19A8DFF80](0x6E6F6974706F202CLL, 0xEB00000000203A73);
  swift_beginAccess();

  v4 = MEMORY[0x19A8E0100](v3, &type metadata for Schema.Relationship.Option);
  v6 = v5;

  MEMORY[0x19A8DFF80](v4, v6);

  MEMORY[0x19A8DFF80](0x5465756C6176202CLL, 0xED0000203A657079);
  swift_beginAccess();
  v7 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v7);

  MEMORY[0x19A8DFF80](0x6E6974736564202CLL, 0xEF203A6E6F697461);
  swift_beginAccess();
  v8 = v0[9];
  v9 = v0[10];

  MEMORY[0x19A8DFF80](v8, v9);

  MEMORY[0x19A8DFF80](0x737265766E69202CLL, 0xEF203A656D614E65);
  swift_beginAccess();
  if (v0[13])
  {
    v10 = v0[12];
    v11 = v0[13];
  }

  else
  {
    v11 = 0xE400000000000000;
    v10 = 1818848800;
  }

  MEMORY[0x19A8DFF80](v10, v11);

  MEMORY[0x19A8DFF80](0xD000000000000012, 0x8000000197529C90);
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BDB8, &unk_197534B60);
  v12 = sub_1975217CC();
  MEMORY[0x19A8DFF80](v12);

  return 0;
}

uint64_t Schema.CompositeAttribute.debugDescription.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE50, &qword_19752D530);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_19752F3D0;
  *&v21 = 0;
  *(&v21 + 1) = 0xE000000000000000;
  sub_1975221EC();
  v23 = 0;
  v24 = 0xE000000000000000;
  MEMORY[0x19A8DFF80](0xD00000000000001BLL, 0x8000000197529B70);
  swift_beginAccess();
  v2 = v0[2];
  v3 = v0[3];

  MEMORY[0x19A8DFF80](v2, v3);

  MEMORY[0x19A8DFF80](0x6E6F6974706F202CLL, 0xEB00000000203A73);
  swift_beginAccess();

  v5 = MEMORY[0x19A8E0100](v4, &type metadata for Schema.Attribute.Option);
  v7 = v6;

  MEMORY[0x19A8DFF80](v5, v7);

  MEMORY[0x19A8DFF80](0x5465756C6176202CLL, 0xED0000203A657079);
  swift_beginAccess();
  v8 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v8);

  MEMORY[0x19A8DFF80](0xD000000000000010, 0x8000000197529A50);
  swift_beginAccess();
  sub_197413B20((v0 + 8), &v19);
  if (v20)
  {
    sub_1974028B8(&v19, &v21);
  }

  else
  {
    v22 = MEMORY[0x1E69E6158];
    *&v21 = 7104878;
    *(&v21 + 1) = 0xE300000000000000;
  }

  sub_19752235C();
  __swift_destroy_boxed_opaque_existential_1Tm_6(&v21);
  v9 = v24;
  *(v1 + 32) = v23;
  *(v1 + 40) = v9;
  *(v1 + 48) = 0xD000000000000011;
  *(v1 + 56) = 0x8000000197529B90;
  result = swift_beginAccess();
  v11 = v0[16];
  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_15:
    *&v19 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE60, &qword_19752C0E0);
    sub_19745BA20();
    v18 = sub_1975216CC();

    return v18;
  }

  result = sub_1975220EC();
  v12 = result;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_6:
  if (v12 >= 1)
  {

    v13 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x19A8E0960](v13, v11);
      }

      else
      {
        v14 = *(v11 + 8 * v13 + 32);
      }

      *&v19 = 0;
      *(&v19 + 1) = 0xE000000000000000;
      MEMORY[0x19A8DFF80](0x2020202020202020, 0xE800000000000000);
      v23 = v14;
      type metadata accessor for Schema.Attribute();
      sub_19752235C();
      v15 = v19;
      v17 = *(v1 + 16);
      v16 = *(v1 + 24);
      if (v17 >= v16 >> 1)
      {
        v1 = sub_19741E330((v16 > 1), v17 + 1, 1, v1);
      }

      ++v13;

      *(v1 + 16) = v17 + 1;
      *(v1 + 16 * v17 + 32) = v15;
    }

    while (v12 != v13);

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

unint64_t sub_19745BA20()
{
  result = qword_1EAF2ACA0;
  if (!qword_1EAF2ACA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2AE60, &qword_19752C0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2ACA0);
  }

  return result;
}

uint64_t ModelContext.init(_:)(uint64_t a1)
{
  v1 = sub_19740B6EC(a1);

  return v1;
}

BOOL sub_19745BB80()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = (v1 + 64);
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

uint64_t Schema.entity<A>(for:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 72);
  v4 = sub_1973F7AAC(a2);
  if (*(v3 + 16))
  {
    v6 = sub_1973F4028(v4, v5);
    v8 = v7;

    if (v8)
    {
      if (*(*(*(v3 + 56) + 8 * v6) + 144))
      {
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        if (ObjCClassFromMetadata == swift_getObjCClassFromMetadata())
        {
        }
      }
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_19745BD24()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);

  return v2;
}

uint64_t sub_19745BE24()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 96);
}

BOOL sub_19745BE7C()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 64);
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

void *ModelContainer.deinit()
{
  v1 = v0;
  v2 = sub_19752158C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1975215AC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 64);

  if (_SD_is_mainqueue_context())
  {
    v13 = MEMORY[0x19A8E1370]();
    if (v12)
    {
      v14 = v13;
      v15 = MEMORY[0x19A8E1370]();
      sub_19740E3D0(1);
      sub_1974B033C();
      if (_SD_get_current_context_tsd())
      {
        v16 = swift_retain_n();

        v17 = sub_1974BEE44(v12);

        if (v17)
        {
        }
      }

      objc_autoreleasePoolPop(v15);
      v13 = v14;
    }

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    sub_19744CC00(0, &qword_1ED7C6F98, 0x1E69E9610);
    v26 = v3;
    v25 = sub_197521E0C();
    v19 = swift_allocObject();
    *(v19 + 16) = v12;
    aBlock[4] = sub_19745C5E0;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1974529C8;
    aBlock[3] = &block_descriptor_2;
    v20 = _Block_copy(aBlock);

    sub_19752159C();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_197413D04(&qword_1ED7C6FA8, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2ADC0, &unk_19752D120);
    sub_19745C57C();
    sub_19752205C();
    v21 = v25;
    MEMORY[0x19A8E0540](0, v11, v6, v20);
    _Block_release(v20);

    (*(v26 + 8))(v6, v2);
    v18 = (*(v8 + 8))(v11, v7);
  }

  v22 = MEMORY[0x19A8E1370](v18);
  sub_19745C32C(v1);
  objc_autoreleasePoolPop(v22);

  return v1;
}

uint64_t sub_19745C2C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t ModelContainer.__deallocating_deinit()
{
  ModelContainer.deinit();

  return swift_deallocClassInstance();
}

void sub_19745C32C(uint64_t a1)
{
  v2 = v1;
  *(a1 + 64) = 0;

  swift_beginAccess();
  v4 = *(a1 + 48);
  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v20 = MEMORY[0x1E69E7CC0];

    sub_19740D630(0, v5, 0);
    v6 = v20;
    v7 = v4 + 32;
    do
    {
      sub_197404790(v7, v18, &qword_1EAF2AF38, &qword_19752C6A8);
      *&v17[16] = v19;
      v16[1] = v18[1];
      *v17 = v18[2];
      v15 = *&v17[8];
      v16[0] = v18[0];
      sub_197414BEC(v16);
      v20 = v6;
      v9 = *(v6 + 16);
      v8 = *(v6 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_19740D630((v8 > 1), v9 + 1, 1);
        v6 = v20;
      }

      *(v6 + 16) = v9 + 1;
      *(v6 + 16 * v9 + 32) = v15;
      v7 += 56;
      --v5;
    }

    while (v5);

    v2 = v1;
  }

  v10 = *(v6 + 16);
  if (v10)
  {
    v11 = v6 + 32;
    type metadata accessor for DefaultStore(0);
    do
    {
      if (swift_dynamicCastClass())
      {
        swift_unknownObjectRetain();
        sub_19745C5E8();
        swift_unknownObjectRelease();
      }

      v11 += 16;
      --v10;
    }

    while (v10);
  }

  if (qword_1ED7C9CD8 != -1)
  {
    swift_once();
  }

  v12 = qword_1ED7CE678;
  v13 = MEMORY[0x1E69E7CC0];
  *&v18[0] = MEMORY[0x1E69E7CC0];
  v14 = *(qword_1ED7CE678 + 16);
  os_unfair_lock_lock(v14 + 4);
  sub_19745CCBC(v12, v18, a1);
  os_unfair_lock_unlock(v14 + 4);
  if (v2)
  {
    __break(1u);
  }

  else
  {

    *(a1 + 48) = v13;
  }
}

unint64_t sub_19745C57C()
{
  result = qword_1ED7C6FA0;
  if (!qword_1ED7C6FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2ADC0, &unk_19752D120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C6FA0);
  }

  return result;
}

void sub_19745C5E8()
{
  aBlock[12] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + OBJC_IVAR____TtC9SwiftData12DefaultStore__editingContextLock);

  os_unfair_lock_lock(v1 + 4);
  sub_19745C9C0(aBlock);
  os_unfair_lock_unlock(v1 + 4);
  v2 = aBlock[0];

  v3 = 1 << v2[32];
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 8);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    while (1)
    {
      v8 = v7;
LABEL_8:
      v9 = *(*(v2 + 7) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));

      sub_19744A4E8();

      v10 = *(v9 + 16);
      v11 = swift_allocObject();
      v11[2] = sub_1974715C8;
      v11[3] = v9;
      aBlock[4] = sub_1974715D8;
      aBlock[5] = v11;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_197472418;
      aBlock[3] = &block_descriptor_113;
      v12 = _Block_copy(aBlock);

      v13 = v10;

      [v13 performBlockAndWait_];

      _Block_release(v12);
      LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

      if (v12)
      {
        break;
      }

      v5 &= v5 - 1;
      v14 = [objc_opt_self() defaultCenter];
      [v14 removeObserver_];

      v7 = v8;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

LABEL_17:
    __break(1u);
  }

  while (1)
  {
LABEL_5:
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *&v2[8 * v8 + 64];
    ++v7;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  v15 = *(v23 + OBJC_IVAR____TtC9SwiftData12DefaultStore_store);
  if (v15)
  {
    v16 = *(v23 + OBJC_IVAR____TtC9SwiftData12DefaultStore_container);
    v17 = v15;
    v18 = [v16 persistentStoreCoordinator];
    aBlock[0] = 0;
    v19 = [v18 removePersistentStore:v17 error:aBlock];

    if (v19)
    {
      v20 = aBlock[0];
    }

    else
    {
      v21 = aBlock[0];
      v22 = sub_1975211DC();

      swift_willThrow();
    }
  }

  else
  {
  }
}

void *sub_19745C9C0@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_19745CA04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = OBJC_IVAR____TtC9SwiftData12DefaultStore__contextsByEditorIdentifier;
  swift_beginAccess();
  v5 = *(a1 + v4);

  *(a1 + v4) = sub_19745CA90(MEMORY[0x1E69E7CC0]);

  *a2 = v5;
  return result;
}

unint64_t sub_19745CA90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B9A0, &qword_19752FD38);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF2B458, &unk_19752FD40);
    v8 = sub_19752245C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1974047F8(v10, v6, &qword_1EAF2B9A0, &qword_19752FD38);
      result = sub_197404D0C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_19752135C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_19745CC78(uint64_t a1)
{
  v2 = MEMORY[0x19A8E1370]();
  if (a1)
  {
    v3 = v2;
    sub_1974B0664();
    v2 = v3;
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_19745CCBC(uint64_t a1, void *a2, uint64_t a3)
{
  result = swift_beginAccess();
  v7 = *(*(a1 + 24) + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v7 - 1;
    v24 = a2;
    while (1)
    {
      if (v9)
      {
        v10 = v9 - 1;
      }

      else
      {
        if (v8)
        {
          return result;
        }

        v10 = 0;
        v8 = 1;
      }

      v11 = *(a1 + 24);
      if (v9 >= v11[2])
      {
        break;
      }

      sub_19740C00C(&v11[2 * v9 + 4], v23);
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v13 = Strong;

        MEMORY[0x19A8E00D0](v14);
        if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1975219FC();
        }

        sub_197521A4C();
        if (v13 == a3)
        {
          swift_beginAccess();
          v15 = *(a1 + 24);
          result = swift_isUniquelyReferenced_nonNull_native();
          *(a1 + 24) = v15;
          if ((result & 1) == 0)
          {
            result = sub_19751C0F0(v15);
            v15 = result;
          }

          if (v9 >= v15[2])
          {
            goto LABEL_26;
          }

          result = swift_weakAssign();
          *(a1 + 24) = v15;
          v16 = v15[2];
          if (v9 >= v16)
          {
            goto LABEL_27;
          }

          v17 = v10;
          v18 = v8;
          v19 = a3;
          v20 = v16 - 1;
          sub_19740FE8C(&v15[2 * v9 + 4]);
          swift_arrayInitWithTakeFrontToBack();
          v15[2] = v20;
          a3 = v19;
          v8 = v18;
          v10 = v17;
          *(a1 + 24) = v15;
          swift_endAccess();

          a2 = v24;
        }

        else
        {
        }
      }

      else
      {
        swift_beginAccess();
        result = swift_isUniquelyReferenced_nonNull_native();
        *(a1 + 24) = v11;
        if ((result & 1) == 0)
        {
          result = sub_19751C0F0(v11);
          v11 = result;
          *(a1 + 24) = result;
        }

        v21 = v11[2];
        if (v9 >= v21)
        {
          goto LABEL_25;
        }

        v22 = v21 - 1;
        sub_19740FE8C(&v11[2 * v9 + 4]);
        a2 = v24;
        swift_arrayInitWithTakeFrontToBack();
        v11[2] = v22;
        *(a1 + 24) = v11;
        swift_endAccess();
      }

      result = sub_19740FE8C(v23);
      v9 = v10;
    }

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

uint64_t DefaultStore.__deallocating_deinit()
{
  DefaultStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t DefaultStore.deinit()
{

  sub_19740C044(v0 + OBJC_IVAR____TtC9SwiftData12DefaultStore_requestedStoreURL, &qword_1EAF2AE78, &qword_19752C290);

  sub_19740AB48(v0 + OBJC_IVAR____TtC9SwiftData12DefaultStore_configuration, type metadata accessor for ModelConfiguration);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC9SwiftData12DefaultStore__managedObjectContextFactory));

  return v0;
}

void sub_19745D110(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = *(v3 + 16);
  v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) *a3];
  sub_197522B4C();
  v6 = sub_19752178C();

  [v4 setValue:v5 forKey:v6];
}

BOOL sub_19745D250(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_19745D2E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19745D320()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19745D35C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1975217BC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_19745D388@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_19745D3FC@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_19745D438()
{
  MEMORY[0x19A8E1BE0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19745D474()
{
  sub_1974028C8(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_19745D4C0()
{
  sub_1974028C8(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19745D504()
{
  sub_1974028C8(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

void sub_19745D560(void *a1)
{

  sub_197480890(v1);
}

double sub_19745D58C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);

  return result;
}

uint64_t sub_19745D614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EditingState(0);
  v8 = *(v6 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v6);
  }

  else
  {
    Descriptor = type metadata accessor for FetchDescriptor(0, *(a3 + 16), *(a3 + 24), v7);
    v12 = *(*(Descriptor - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, Descriptor);
  }
}

uint64_t sub_19745D708(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for EditingState(0);
  v10 = *(v8 - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, v8);
  }

  else
  {
    Descriptor = type metadata accessor for FetchDescriptor(0, *(a4 + 16), *(a4 + 24), v9);
    v14 = *(*(Descriptor - 8) + 56);
    v15 = a1 + *(a4 + 36);

    return v14(v15, a2, a2, Descriptor);
  }
}

uint64_t sub_19745D808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EditingState(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_19752139C();
    v10 = sub_197521F5C();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      return (*(v11 + 48))(a1 + *(a3 + 36), a2, v10);
    }

    else
    {
      v12 = *(a1 + *(a3 + 40));
      if (v12 >= 2)
      {
        return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }
}

uint64_t sub_19745D95C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for EditingState(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_19752139C();
    result = sub_197521F5C();
    v12 = *(result - 8);
    if (*(v12 + 84) == a3)
    {
      return (*(v12 + 56))(a1 + *(a4 + 36), a2, a2, result);
    }

    else
    {
      *(a1 + *(a4 + 40)) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_19745DAA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19752135C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_19745DB6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_19752135C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_19745DC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Descriptor = type metadata accessor for FetchDescriptor(0, *(a3 + 16), *(a3 + 24), a4);
  v8 = *(Descriptor - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, Descriptor);
  }

  else
  {
    v11 = type metadata accessor for EditingState(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_19745DD1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  Descriptor = type metadata accessor for FetchDescriptor(0, *(a4 + 16), *(a4 + 24), a4);
  v9 = *(Descriptor - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, Descriptor);
  }

  else
  {
    v12 = type metadata accessor for EditingState(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 40);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_19745DE24()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  if (*(v0 + 64) != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_19745DE8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19745DEDC()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

id sub_19745DF38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

void sub_19745DF90(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1974AFBF4(v1);
}

uint64_t sub_19745DFC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 63);
  return result;
}

uint64_t sub_19745E008(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 63) = v2;
  return result;
}

uint64_t sub_19745E04C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
  swift_beginAccess();
  return sub_197404E70(v3 + v4, a2);
}

uint64_t sub_19745E0AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveEnabled;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_19745E104(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveEnabled;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_19740E114();
}

uint64_t sub_19745E16C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19745E1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _InitialBackingData(255, *(a1 + 8), *(a1 + 24), a4);

  return swift_getWitnessTable();
}

uint64_t sub_19745E20C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_19745E220(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_19745E238()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_19745E274()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19745E2D4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_19745E308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_19752139C();
  v6 = sub_197521F5C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    return (*(v7 + 48))(a1, a2, v6);
  }

  v9 = *(a1 + *(a3 + 40));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_19745E3D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_19752139C();
  result = sub_197521F5C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    return (*(v9 + 56))(a1, a2, a2, result);
  }

  *(a1 + *(a4 + 40)) = (a2 - 1);
  return result;
}

uint64_t sub_19745E494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19752132C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_19745E550(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_19752132C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19745E6C8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_19745E6E0@<X0>(uint64_t a1@<X8>)
{
  result = HistoryChange.changedPersistentIdentifier.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_19745E728@<X0>(uint64_t *a2@<X8>)
{
  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

double sub_19745E784@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 64);

  return result;
}

double sub_19745E7D4@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 72);

  return result;
}

double sub_19745E8DC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;

  return result;
}

double sub_19745E92C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;

  return result;
}

double sub_19745E97C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);

  return result;
}

uint64_t sub_19745E9CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_19745EA14(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 56) = v2;
  return result;
}

uint64_t sub_19745EA58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_197413B20(v3 + 64, a2);
}

uint64_t sub_19745EAA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 96);
  return result;
}

uint64_t sub_19745EAF0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 96) = v2;
  return result;
}

double sub_19745EB34@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 112);
  *a2 = *(v3 + 104);
  a2[1] = v4;

  return result;
}

void sub_19745EB84(uint64_t a1@<X8>)
{
  strcpy(a1, "Schema.Index");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

__n128 sub_19745EBB8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_19745EBD4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = sub_197505FEC(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

uint64_t sub_19745EC5C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = sub_197506028(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

uint64_t sub_19745EDD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_19745EE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable();

  return sub_197521C3C();
}

uint64_t sub_19745EEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_19745EF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_19745F00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable();

  return sub_197521C3C();
}

uint64_t sub_19745F090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_19745F114()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

void _keyDestructor(uint64_t result)
{
  if (result)
  {
    _Destroy_SwiftDataContextThreadLocalState(result);
  }
}

uint64_t sub_19745F22C(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (qword_1ED7C74B0 != -1)
  {
    result = swift_once();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_9:
    __break(1u);
    return result;
  }

  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  swift_beginAccess();
  v4 = off_1ED7C74B8;
  if (!*(off_1ED7C74B8 + 2))
  {
    return swift_endAccess();
  }

  v5 = sub_19749EDE0(v3);
  if ((v6 & 1) == 0)
  {
    return swift_endAccess();
  }

  v7 = *(v4[7] + 16 * v5);
  swift_endAccess();
  v8[0] = a2;

  v7(v8);
}

void sub_19745F314(void *a1, uint64_t a2)
{
  v5 = a1;
  v4 = MEMORY[0x19A8E1370]();
  sub_19745F22C(a1, a2);
  objc_autoreleasePoolPop(v4);
}

uint64_t sub_19745F384()
{
  v1 = v0;
  v2 = sub_19752158C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1975215AC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = CFRunLoopGetMain();
  CFRunLoopObserverInvalidate(*(v0 + 16));
  CFRunLoopRemoveObserver(v12, *(v0 + 16), *(v0 + 24));
  v13 = *(v0 + 16);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = v13;
  if (pthread_main_np() == 1)
  {
    sub_19745F708(v15);
  }

  else
  {
    sub_19744CBB8(0, &qword_1ED7C6F98, 0x1E69E9610);
    v24 = v15;
    v23 = sub_197521E0C();
    v16 = swift_allocObject();
    *(v16 + 16) = sub_19745FEC4;
    *(v16 + 24) = v14;
    aBlock[4] = sub_19745FECC;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1974529C8;
    aBlock[3] = &block_descriptor;
    v21 = _Block_copy(aBlock);
    v22 = v7;

    sub_19752159C();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_19745FE3C(&qword_1ED7C6FA8, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    v17 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2ADC0, &unk_19752D120);
    sub_19745C57C();
    sub_19752205C();
    v18 = v21;
    v19 = v23;
    MEMORY[0x19A8E0540](0, v11, v6, v21);

    _Block_release(v18);

    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v22);
  }

  return v1;
}

uint64_t sub_19745F708(uint64_t a1)
{
  if (qword_1ED7C74B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = sub_19749EDE0(a1);
  if (v3)
  {
    v4 = v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = off_1ED7C74B8;
    v8 = off_1ED7C74B8;
    off_1ED7C74B8 = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_19747A224();
      v6 = v8;
    }

    sub_19749F884(v4, v6);
    off_1ED7C74B8 = v6;
  }

  return swift_endAccess();
}

uint64_t sub_19745F7FC()
{
  sub_19745F384();

  return swift_deallocClassInstance();
}

CFRunLoopObserverRef sub_19745F87C(CFOptionFlags a1, uint64_t a2, uint64_t a3)
{
  sub_19744CBB8(0, &qword_1ED7C8630, 0x1E69E58C0);
  v6 = [objc_opt_self() mainRunLoop];
  v7 = sub_197521F3C();

  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    swift_once();
    goto LABEL_4;
  }

  result = CFRunLoopObserverCreate(0, a1, 1u, 0, sub_19745F314, 0);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = result;
  if (qword_1ED7C74B0 != -1)
  {
    goto LABEL_7;
  }

LABEL_4:
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  swift_beginAccess();

  v10 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = off_1ED7C74B8;
  off_1ED7C74B8 = 0x8000000000000000;
  sub_19747C9E8(sub_1974602D0, v9, v10, isUniquelyReferenced_nonNull_native);

  off_1ED7C74B8 = v14;
  result = swift_endAccess();
  if (*MEMORY[0x1E695E8D0])
  {
    v12 = *MEMORY[0x1E695E8D0];
    v13 = CFRunLoopGetCurrent();
    CFRunLoopAddObserver(v13, v10, v12);

    _s8ObserverCMa();
    result = swift_allocObject();
    *(result + 2) = v10;
    *(result + 3) = v12;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_19745FB10(uint64_t a1, uint64_t a2)
{
  sub_197522A5C();
  swift_getWitnessTable();
  sub_19752140C();
  return sub_197522A9C();
}

void *sub_19745FBA0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_19745FBCC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_19745FC7C(uint64_t a1, id *a2)
{
  v3 = sub_1975217AC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_19745FCFC@<X0>(uint64_t *a2@<X8>)
{
  sub_1975217BC();
  v3 = sub_19752178C();

  *a2 = v3;
  return result;
}

uint64_t sub_19745FD40(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1975213FC();
}

uint64_t sub_19745FE3C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19745FE84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_197506D08(a1);

  *a2 = v3;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
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

uint64_t sub_19745FF84@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_19752178C();

  *a2 = v3;
  return result;
}

uint64_t sub_19745FFCC(uint64_t a1)
{
  v2 = sub_19745FE3C(&qword_1EAF2AE28, type metadata accessor for Name, &unk_19752C008);
  v3 = sub_19745FE3C(&qword_1EAF2AE30, type metadata accessor for Name, &unk_19752BFA8);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_197460088(uint64_t a1)
{
  v2 = sub_19745FE3C(&qword_1EAF2AE38, type metadata accessor for NSValueTransformerName, &unk_19752BCD0);
  v3 = sub_19745FE3C(&qword_1EAF2AE40, type metadata accessor for NSValueTransformerName, &unk_19752BC70);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_197460144()
{
  v0 = sub_1975217BC();
  v1 = MEMORY[0x19A8DFFD0](v0);

  return v1;
}

uint64_t sub_197460180(uint64_t a1)
{
  sub_1975217BC();
  sub_19752180C();
}

uint64_t sub_1974601D4(uint64_t a1)
{
  sub_1975217BC();
  sub_197522A5C();
  sub_19752180C();
  v1 = sub_197522A9C();

  return v1;
}

uint64_t sub_197460248(void *a1, uint64_t *a2)
{
  v2 = sub_1975217BC();
  v4 = v3;
  if (v2 == sub_1975217BC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_19752282C();
  }

  return v7 & 1;
}

uint64_t sub_197460344(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_197460364(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1974603A0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1974603C0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 20) = v3;
  return result;
}

uint64_t ModelConfiguration.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for ModelConfiguration(0) + 20));

  return v1;
}

uint64_t ModelConfiguration.groupAppContainerIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ModelConfiguration(0) + 24));

  return v1;
}

uint64_t ModelConfiguration.cloudKitContainerIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ModelConfiguration(0) + 28));

  return v1;
}

double ModelConfiguration.groupContainer.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ModelConfiguration(0) + 32);
  v4 = *(v3 + 1);
  v6 = *(v3 + 8);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 1) = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;

  return result;
}

double ModelConfiguration.cloudKitDatabase.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ModelConfiguration(0) + 36);
  v4 = *(v3 + 1);
  v6 = *(v3 + 8);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 1) = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;

  return result;
}

uint64_t ModelConfiguration.schema.getter()
{
  type metadata accessor for ModelConfiguration(0);
}

uint64_t ModelConfiguration.schema.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ModelConfiguration(0) + 40);

  *(v1 + v3) = a1;
  return result;
}

void static ModelConfiguration.GroupContainer.automatic.getter(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

double static ModelConfiguration.GroupContainer.identifier(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;

  return result;
}

uint64_t ModelConfiguration.init(isStoredInMemoryOnly:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE48, &unk_19752C0B0);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v37 - v10;
  v12 = type metadata accessor for ModelConfiguration(0);
  v13 = v12;
  v14 = v12[10];
  *(a2 + v12[15]) = 0;
  v15 = (a2 + v12[5]);
  *v15 = 0x746C7561666564;
  v15[1] = 0xE700000000000000;
  *(a2 + v14) = 0;
  *(a2 + v12[11]) = 1;
  v16 = a2 + v12[8];
  *v16 = 1;
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  v17 = a2 + v12[9];
  *v17 = 1;
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  *(a2 + v12[13]) = 0;
  v18 = v12[12];
  if (a1)
  {
    *(a2 + v18) = 1;
    *(a2 + v12[14]) = 0;
    sub_19752122C();
    v19 = (a2 + v13[6]);
    *v19 = 0;
    v19[1] = 0;
  }

  else
  {
    *(a2 + v18) = 0;
    *(a2 + v12[14]) = 1;
    v20 = &v11[*(v4 + 48)];
    v21 = &v11[*(v4 + 64)];
    LOWORD(v38) = 1;
    v39 = 0;
    v40 = 0;
    *v20 = sub_197461664(v11, &v38);
    v20[1] = v22;
    *v21 = v23;
    *(v21 + 1) = v24;
    sub_197462C38(v11, v8, &qword_1EAF2AE48, &unk_19752C0B0);

    v25 = sub_1975212CC();
    v26 = *(v25 - 8);
    (*(v26 + 32))(a2, v8, v25);
    v38 = 0x746C7561666564;
    v39 = 0xE700000000000000;
    MEMORY[0x19A8DFF80](0x65726F74732ELL, 0xE600000000000000);
    sub_19752125C();

    sub_197462CA0(v11, v8, &qword_1EAF2AE48, &unk_19752C0B0);
    v27 = &v8[*(v4 + 48)];
    v28 = *v27;
    v29 = *(v27 + 1);

    v30 = (a2 + v13[6]);
    *v30 = v28;
    v30[1] = v29;
    (*(v26 + 8))(v8, v25);
  }

  v31 = [objc_opt_self() processInfo];
  sub_1974A953C(0xD000000000000020, 0x80000001975237E0);
  v33 = v32;

  result = 0;
  v35 = 0;
  if ((v33 & 1) == 0)
  {
    result = sub_1974A98BC();
  }

  v36 = (a2 + v13[7]);
  *v36 = result;
  v36[1] = v35;
  return result;
}

void ModelConfiguration.init(_:schema:isStoredInMemoryOnly:allowsSave:groupContainer:cloudKitDatabase:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, char *a6@<X5>, unsigned __int8 *a7@<X6>, uint64_t a8@<X8>)
{
  v75 = a4;
  v76 = a5;
  v73 = a1;
  v74 = a3;
  v72 = a8;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE48, &unk_19752C0B0);
  v12 = MEMORY[0x1EEE9AC00](v71, v11);
  v69 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v70 = &v68 - v15;
  v16 = *a6;
  v17 = a6[1];
  v19 = *(a6 + 1);
  v18 = *(a6 + 2);
  v20 = *a7;
  v21 = a7[1];
  v23 = *(a7 + 1);
  v22 = *(a7 + 2);
  v24 = type metadata accessor for ModelConfiguration(0);
  v25 = v17;
  v27 = v72;
  v26 = v73;
  v28 = v24;
  v29 = v22;
  *(v72 + v28[15]) = 0;
  if (a2)
  {
    v30 = v26;
  }

  else
  {
    v30 = 0x746C7561666564;
  }

  if (a2)
  {
    v31 = a2;
  }

  else
  {
    v31 = 0xE700000000000000;
  }

  v32 = v28[10];
  v33 = (v27 + v28[5]);
  *v33 = v30;
  v33[1] = v31;
  *(v27 + v32) = v74;
  LOBYTE(v33) = v75;
  *(v27 + v28[11]) = v76;
  v34 = v27 + v28[8];
  *v34 = v16;
  *(v34 + 1) = v25;
  *(v34 + 8) = v19;
  *(v34 + 16) = v18;
  v35 = v27 + v28[9];
  v76 = v20;
  *v35 = v20;
  *(v35 + 1) = v21;
  v74 = v23;
  *(v35 + 8) = v23;
  *(v35 + 16) = v29;
  *(v27 + v28[13]) = 0;
  v36 = v28[12];
  v77 = v29;
  if (v33)
  {
    v37 = v19;
    *(v27 + v36) = 1;
    *(v27 + v28[14]) = 0;

    sub_19752122C();
    v38 = (v27 + v28[6]);
    *v38 = 0;
    v38[1] = 0;
    if (v18)
    {
      v39 = v18;
      if (qword_1EAF2ACF8 != -1)
      {
        swift_once();
      }

      v40 = sub_19752157C();
      __swift_project_value_buffer(v40, qword_1EAF33E38);

      v41 = sub_19752155C();
      v42 = sub_197521DDC();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v78 = v44;
        *v43 = 136315138;
        v45 = sub_197462310(v37, v39, &v78);

        *(v43 + 4) = v45;
        _os_log_impl(&dword_1973F2000, v41, v42, "An in-memory store cannot be used with a Group Container - ignoring provided identifier: %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x19A8E1B50](v44, -1, -1);
        MEMORY[0x19A8E1B50](v43, -1, -1);
      }

      else
      {
      }

      if (!v76)
      {
        goto LABEL_21;
      }

      goto LABEL_15;
    }
  }

  else
  {
    *(v27 + v36) = 0;
    *(v27 + v28[14]) = 1;
    v47 = v70;
    v46 = v71;
    v48 = &v70[*(v71 + 48)];
    v49 = &v70[*(v71 + 64)];
    LOBYTE(v78) = v16;
    BYTE1(v78) = v25;
    v79 = v19;
    v80 = v18;
    v50 = v30;

    *v48 = sub_197461664(v47, &v78);
    v48[1] = v51;
    *v49 = v52;
    *(v49 + 1) = v53;
    v54 = v69;
    sub_197462C38(v47, v69, &qword_1EAF2AE48, &unk_19752C0B0);

    v55 = sub_1975212CC();
    v56 = *(v55 - 8);
    (*(v56 + 32))(v27, v54, v55);
    v78 = v50;
    v79 = v31;

    MEMORY[0x19A8DFF80](0x65726F74732ELL, 0xE600000000000000);
    sub_19752125C();

    sub_197462CA0(v47, v54, &qword_1EAF2AE48, &unk_19752C0B0);
    v57 = (v54 + *(v46 + 48));
    v58 = *v57;
    v59 = v57[1];

    v60 = (v27 + v28[6]);
    *v60 = v58;
    v60[1] = v59;
    (*(v56 + 8))(v54, v55);
  }

  if (!v76)
  {
LABEL_21:
    v67 = (v27 + v28[7]);
    *v67 = v74;
    if (v77)
    {
      v67[1] = v77;
    }

    else
    {
      v67[1] = 0;
    }

    return;
  }

LABEL_15:

  v61 = [objc_opt_self() processInfo];
  sub_1974A953C(0xD000000000000020, 0x80000001975237E0);
  v63 = v62;

  if (v63)
  {
    v64 = 0;
    v65 = 0;
  }

  else
  {
    v64 = sub_1974A98BC();
  }

  v66 = (v27 + v28[7]);
  *v66 = v64;
  v66[1] = v65;
}

uint64_t ModelConfiguration.init(for:isStoredInMemoryOnly:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE48, &unk_19752C0B0);
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v40 - v12;
  *&v41 = 1;
  type metadata accessor for Schema();
  *(&v41 + 1) = 0;
  v42 = 0;
  swift_allocObject();
  v14 = Schema.init(_:version:)(a1, &v41);
  v15 = type metadata accessor for ModelConfiguration(0);
  v16 = v15;
  v17 = v15[10];
  *(a3 + v15[15]) = 0;
  v18 = (a3 + v15[5]);
  *v18 = 0x746C7561666564;
  v18[1] = 0xE700000000000000;
  *(a3 + v17) = v14;
  *(a3 + v15[11]) = 1;
  v19 = a3 + v15[8];
  *v19 = 1;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  v20 = a3 + v15[9];
  *v20 = 1;
  *(v20 + 8) = 0;
  *(v20 + 16) = 0;
  *(a3 + v15[13]) = 0;
  v21 = v15[12];
  if (a2)
  {
    *(a3 + v21) = 1;
    *(a3 + v15[14]) = 0;
    sub_19752122C();
    v22 = (a3 + v16[6]);
    *v22 = 0;
    v22[1] = 0;
  }

  else
  {
    *(a3 + v21) = 0;
    *(a3 + v15[14]) = 1;
    v23 = &v13[*(v6 + 48)];
    v24 = &v13[*(v6 + 64)];
    LOWORD(v41) = 1;
    *(&v41 + 1) = 0;
    v42 = 0;
    *v23 = sub_197461664(v13, &v41);
    v23[1] = v25;
    *v24 = v26;
    *(v24 + 1) = v27;
    sub_197462C38(v13, v10, &qword_1EAF2AE48, &unk_19752C0B0);

    v28 = sub_1975212CC();
    v29 = *(v28 - 8);
    (*(v29 + 32))(a3, v10, v28);
    *&v41 = 0x746C7561666564;
    *(&v41 + 1) = 0xE700000000000000;
    MEMORY[0x19A8DFF80](0x65726F74732ELL, 0xE600000000000000);
    sub_19752125C();

    sub_197462CA0(v13, v10, &qword_1EAF2AE48, &unk_19752C0B0);
    v30 = &v10[*(v6 + 48)];
    v31 = *v30;
    v32 = *(v30 + 1);

    v33 = (a3 + v16[6]);
    *v33 = v31;
    v33[1] = v32;
    (*(v29 + 8))(v10, v28);
  }

  v34 = [objc_opt_self() processInfo];
  sub_1974A953C(0xD000000000000020, 0x80000001975237E0);
  v36 = v35;

  result = 0;
  v38 = 0;
  if ((v36 & 1) == 0)
  {
    result = sub_1974A98BC();
  }

  v39 = (a3 + v16[7]);
  *v39 = result;
  v39[1] = v38;
  return result;
}

uint64_t sub_197461664(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE70, &qword_19752C268);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v27[-v11 - 8];
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v27[-v15 - 8];
  v17 = *(a2 + 1);
  v18 = &v27[*(v14 + 48) - 8 - v15];
  v27[0] = *a2;
  v27[1] = v17;
  v28 = *(a2 + 8);
  *v18 = sub_1974A18AC(&v27[-v15 - 8], 0, v27);
  *(v18 + 1) = v19;
  v20 = [objc_opt_self() processInfo];
  sub_1974A953C(0xD000000000000020, 0x80000001975237E0);
  LOBYTE(v18) = v21;

  if (v18)
  {
    v26 = 0;
  }

  else
  {
    v26 = sub_1974A98BC();
  }

  sub_197462C38(v16, v12, &qword_1EAF2AE70, &qword_19752C268);

  v22 = sub_1975212CC();
  v23 = *(v22 - 8);
  (*(v23 + 32))(a1, v12, v22);
  sub_197462CA0(v16, v8, &qword_1EAF2AE70, &qword_19752C268);
  v24 = *&v8[*(v4 + 48)];
  (*(v23 + 8))(v8, v22);
  return v24;
}

uint64_t ModelConfiguration.init(_:schema:url:allowsSave:cloudKitDatabase:isDocument:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, unsigned __int8 *a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v39 = *a6;
  v37 = a6[1];
  v15 = *(a6 + 2);
  v38 = *(a6 + 1);
  v16 = type metadata accessor for ModelConfiguration(0);
  v17 = v16;
  *(a8 + v16[15]) = 0;
  v18 = 0x746C7561666564;
  if (a2)
  {
    v18 = a1;
  }

  v19 = 0xE700000000000000;
  if (a2)
  {
    v19 = a2;
  }

  v20 = v16[10];
  v21 = (a8 + v16[5]);
  *v21 = v18;
  v21[1] = v19;
  *(a8 + v20) = a3;
  v22 = sub_1975212CC();
  v23 = *(v22 - 8);
  (*(v23 + 16))(a8, a4, v22);
  *(a8 + v17[14]) = 0;
  sub_19752128C();
  v24 = sub_19752188C();

  *(a8 + v17[12]) = v24 & 1;
  *(a8 + v17[11]) = a5;
  v25 = (a8 + v17[6]);
  *v25 = 0;
  v25[1] = 0;
  v26 = a8 + v17[8];
  *v26 = 256;
  *(v26 + 8) = 0;
  *(v26 + 16) = 0;
  if (a7)
  {
    (*(v23 + 8))(a4, v22);

    *(a8 + v17[13]) = 1;
    v28 = a8 + v17[9];
    *v28 = 256;
    *(v28 + 8) = 0;
    *(v28 + 16) = 0;
    v29 = (a8 + v17[7]);
LABEL_7:
    *v29 = 0;
    v29[1] = 0;
    return result;
  }

  *(a8 + v17[13]) = 0;
  v30 = a8 + v17[9];
  *v30 = v39;
  *(v30 + 1) = v37;
  *(v30 + 8) = v38;
  *(v30 + 16) = v15;
  if (v39)
  {
    v31 = [objc_opt_self() processInfo];
    sub_1974A953C(0xD000000000000020, 0x80000001975237E0);
    v33 = v32;

    if (v33)
    {
      v34 = 0;
      v15 = 0;
    }

    else
    {
      v34 = sub_1974A98BC();
      v15 = v36;
    }

    result = (*(v23 + 8))(a4, v22);
    v29 = (a8 + v17[7]);
    *v29 = v34;
  }

  else
  {
    v35 = *(v23 + 8);

    result = v35(a4, v22);
    v29 = (a8 + v17[7]);
    if (!v15)
    {
      goto LABEL_7;
    }

    *v29 = v38;
  }

  v29[1] = v15;
  return result;
}

uint64_t ModelConfiguration.hash(into:)(uint64_t a1)
{
  sub_1975212CC();
  sub_197415898(&qword_1ED7C9DC8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);

  return sub_1975216BC();
}

uint64_t ModelConfiguration.hashValue.getter()
{
  sub_197522A5C();
  sub_1975212CC();
  sub_197415898(&qword_1ED7C9DC8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1975216BC();
  return sub_197522A9C();
}

uint64_t sub_197461CC8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1975212CC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_197461D30()
{
  sub_197522A5C();
  sub_1975212CC();
  sub_197415898(&qword_1ED7C9DC8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1975216BC();
  return sub_197522A9C();
}

uint64_t sub_197461DB8(uint64_t a1)
{
  sub_197522A5C();
  sub_1975212CC();
  sub_197415898(&qword_1ED7C9DC8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1975216BC();
  return sub_197522A9C();
}

uint64_t ModelConfiguration.debugDescription.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE50, &qword_19752D530);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_19752C0A0;
  *(v1 + 32) = 0xD000000000000012;
  *(v1 + 40) = 0x800000019752C0A0;
  *&v14 = 0x203A656D616ELL;
  *(&v14 + 1) = 0xE600000000000000;
  v2 = type metadata accessor for ModelConfiguration(0);
  MEMORY[0x19A8DFF80](*(v0 + v2[5]), *(v0 + v2[5] + 8));
  *(v1 + 48) = 0x203A656D616ELL;
  *(v1 + 56) = *(&v14 + 1);
  sub_1975212CC();
  sub_197415898(&qword_1EAF2ACC8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v3 = sub_1975227DC();
  MEMORY[0x19A8DFF80](v3);

  *(v1 + 64) = 0x203A6C7275;
  *(v1 + 72) = 0xE500000000000000;
  strcpy(&v14, "allowsSave: ");
  BYTE13(v14) = 0;
  HIWORD(v14) = -5120;
  if (*(v0 + v2[11]))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + v2[11]))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x19A8DFF80](v4, v5);

  v6 = *(&v14 + 1);
  *(v1 + 80) = v14;
  *(v1 + 88) = v6;
  sub_1975221EC();

  *&v14 = 0xD000000000000016;
  *(&v14 + 1) = 0x8000000197523850;
  if (*(v0 + v2[12]))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v0 + v2[12]))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x19A8DFF80](v7, v8);

  v9 = *(&v14 + 1);
  *(v1 + 96) = v14;
  *(v1 + 104) = v9;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000012, 0x8000000197523870);
  sub_19752235C();
  *(v1 + 112) = 0;
  *(v1 + 120) = 0xE000000000000000;
  sub_1975221EC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE58, &unk_19752F390);
  v10 = sub_1975217CC();
  MEMORY[0x19A8DFF80](v10);

  *(v1 + 128) = 0xD00000000000001DLL;
  *(v1 + 136) = 0x8000000197523890;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000010, 0x80000001975238B0);
  sub_19752235C();
  *(v1 + 144) = 0;
  *(v1 + 152) = 0xE000000000000000;
  sub_1975221EC();

  v11 = sub_1975217CC();
  MEMORY[0x19A8DFF80](v11);

  *(v1 + 160) = 0xD00000000000001DLL;
  *(v1 + 168) = 0x80000001975238D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE60, &qword_19752C0E0);
  sub_19745BA20();
  v12 = sub_1975216CC();

  return v12;
}

uint64_t sub_1974622B0(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));

  return v2;
}

unint64_t sub_197462310(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1974623DC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_197404860(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1974623DC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1974624E8(a5, a6);
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
    result = sub_19752227C();
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

void *sub_1974624E8(uint64_t a1, unint64_t a2)
{
  v3 = sub_197462534(a1, a2);
  sub_197462664(&unk_1F0BA51A0);
  return v3;
}

void *sub_197462534(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_197462750(v5, 0);
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

  result = sub_19752227C();
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
        v10 = sub_19752187C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_197462750(v10, 0);
        result = sub_1975221DC();
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

uint64_t sub_197462664(uint64_t result)
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

  result = sub_1974627C4(result, v11, 1, v3);
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

void *sub_197462750(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE68, &qword_19752C260);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1974627C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE68, &qword_19752C260);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t _s9SwiftData18ModelConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1975212CC();
  sub_197415898(&qword_1ED7C9DC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  if ((sub_19752173C() & 1) == 0)
  {
    goto LABEL_29;
  }

  v4 = type metadata accessor for ModelConfiguration(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_19752282C() & 1) == 0)
  {
    goto LABEL_29;
  }

  v10 = v4[10];
  v11 = *(a2 + v10);
  if (*(a1 + v10))
  {
    if (!v11)
    {
      goto LABEL_29;
    }

    v13 = _s9SwiftData6SchemaC2eeoiySbAC_ACtFZ_0(v12, v11);

    if ((v13 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v11)
  {
    goto LABEL_29;
  }

  v14 = v4[6];
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  v18 = v17[1];
  if (v16)
  {
    if (!v18)
    {
      goto LABEL_29;
    }

    v19 = *v15 == *v17 && v16 == v18;
    if (!v19 && (sub_19752282C() & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v18)
  {
    goto LABEL_29;
  }

  v20 = v4[7];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = v23[1];
  if (v22)
  {
    if (!v24 || (*v21 != *v23 || v22 != v24) && (sub_19752282C() & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v24)
  {
    goto LABEL_29;
  }

  if (*(a1 + v4[12]) == *(a2 + v4[12]))
  {
    v25 = *(a1 + v4[11]) ^ *(a2 + v4[11]) ^ 1;
    return v25 & 1;
  }

LABEL_29:
  v25 = 0;
  return v25 & 1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_197462B78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_197462BD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_197462C38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_197462CA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_197462D20()
{
  v0 = sub_19752157C();
  __swift_allocate_value_buffer(v0, qword_1EAF33E08);
  __swift_project_value_buffer(v0, qword_1EAF33E08);
  return sub_19752156C();
}

uint64_t sub_197462DA0()
{
  v0 = sub_19752157C();
  __swift_allocate_value_buffer(v0, qword_1EAF33E20);
  __swift_project_value_buffer(v0, qword_1EAF33E20);
  return sub_19752156C();
}

uint64_t sub_197462E74()
{
  v0 = sub_19752157C();
  __swift_allocate_value_buffer(v0, qword_1EAF33E38);
  __swift_project_value_buffer(v0, qword_1EAF33E38);
  return sub_19752156C();
}

uint64_t sub_197462F64()
{
  v0 = sub_19752157C();
  __swift_allocate_value_buffer(v0, qword_1ED7CE5A0);
  __swift_project_value_buffer(v0, qword_1ED7CE5A0);
  return sub_19752156C();
}

uint64_t DefaultStore.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void sub_197463070(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1975220AC();
    sub_1973F3D34(0, &qword_1ED7C9B98, 0x1E695D6D8);
    sub_197471480(&qword_1ED7C6D40, &qword_1ED7C9B98, 0x1E695D6D8);
    sub_197521C1C();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        a1(&v26);

        if (v4)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_19752212C())
        {
          goto LABEL_19;
        }

        sub_1973F3D34(0, &qword_1ED7C9B98, 0x1E695D6D8);
        swift_dynamicCast();
        v17 = v26;
        v15 = v8;
        v16 = v9;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

      v18 = v20;
    }

    else
    {
LABEL_21:
      v5 = v20;
LABEL_19:
      v18 = v5;
    }

    sub_1973FF47C(v18);
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DefaultStore.erase()()
{
  v2 = sub_197521DFC();
  v26 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE78, &qword_19752C290);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v24 - v12;
  v14 = sub_1975212CC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19745C5E8();
  v19 = *(v0 + OBJC_IVAR____TtC9SwiftData12DefaultStore_storeDescription);
  if (!v19)
  {
    (*(v15 + 56))(v13, 1, 1, v14);
LABEL_7:
    sub_19740C044(v13, &qword_1EAF2AE78, &qword_19752C290);
    return;
  }

  v25 = v2;
  v20 = [v19 URL];
  if (v20)
  {
    v21 = v20;
    sub_19752127C();

    (*(v15 + 56))(v10, 0, 1, v14);
  }

  else
  {
    (*(v15 + 56))(v10, 1, 1, v14);
  }

  sub_19746F6B4(v10, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    goto LABEL_7;
  }

  (*(v15 + 32))(v18, v13, v14);
  v22 = [*(v0 + OBJC_IVAR____TtC9SwiftData12DefaultStore_container) persistentStoreCoordinator];
  sub_197521DEC();
  sub_197521EBC();
  if (v1)
  {
  }

  v23 = v25;

  (*(v26 + 8))(v5, v23);
  (*(v15 + 8))(v18, v14);
}

uint64_t sub_1974635F0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_197463644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_19752135C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v10 + 16);
  v31 = a1;
  v14(v13, a1, v9);
  v15 = *(a2 + OBJC_IVAR____TtC9SwiftData12DefaultStore__editingContextLock);
  v35 = a2;
  v36 = v13;
  v32 = sub_1974722A8;
  v33 = &v34;

  os_unfair_lock_lock(v15 + 4);
  sub_197472328(v38);
  if (v4)
  {
    os_unfair_lock_unlock(v15 + 4);
    __break(1u);
    goto LABEL_11;
  }

  v30 = 0;
  os_unfair_lock_unlock(v15 + 4);
  v16 = v38[0];

  if (!v16)
  {
LABEL_11:
    v38[0] = 0;
    v38[1] = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000069, 0x8000000197524390);
    v37 = a2;
    type metadata accessor for DefaultStore(0);
    sub_19752235C();
    MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
    sub_197413CBC(&qword_1EAF2AF28, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v25 = sub_1975227DC();
    MEMORY[0x19A8DFF80](v25);

    MEMORY[0x19A8DFF80](0x746F6E2064696420, 0xE90000000000002ELL);
    result = sub_1975223EC();
    __break(1u);
    return result;
  }

  v17 = *(v16 + 16);
  v18 = *(v31 + *(type metadata accessor for EditingState(0) + 20) + 8);
  if (v18)
  {
    v29 = a3;
    v19 = v17;
    a3 = v29;
    v18 = sub_19752178C();
  }

  else
  {
    v20 = v17;
  }

  [v17 setTransactionAuthor_];

  MEMORY[0x1EEE9AC00](v21, v22);
  v23 = v30;
  *(&v28 - 6) = v31;
  *(&v28 - 5) = a2;
  *(&v28 - 4) = v17;
  *(&v28 - 3) = a3;
  v26 = a4;
  v27 = v16;
  sub_197521E5C();
  if (v23)
  {

    return (*(v10 + 8))(v13, v9);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
    return v38[3];
  }
}

uint64_t sub_197463A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v7 = sub_19752135C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7);
  v12 = *(a2 + OBJC_IVAR____TtC9SwiftData12DefaultStore__editingContextLock);
  v32 = a2;
  v33 = v11;
  v29 = sub_197472290;
  v30 = &v31;

  os_unfair_lock_lock(v12 + 4);
  sub_197472310(v35);
  if (v4)
  {
    os_unfair_lock_unlock(v12 + 4);
    __break(1u);
    goto LABEL_7;
  }

  os_unfair_lock_unlock(v12 + 4);
  v13 = v35[0];

  if (!v13)
  {
LABEL_7:
    v35[0] = 0;
    v35[1] = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000069, 0x8000000197524390);
    v34 = a2;
    type metadata accessor for DefaultStore(0);
    sub_19752235C();
    MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
    sub_197413CBC(&qword_1EAF2AF28, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v22 = sub_1975227DC();
    MEMORY[0x19A8DFF80](v22);

    MEMORY[0x19A8DFF80](0x746F6E2064696420, 0xE90000000000002ELL);
    result = sub_1975223EC();
    __break(1u);
    return result;
  }

  v28 = v7;
  v14 = *(v13 + 16);
  v15 = *(a1 + *(type metadata accessor for EditingState(0) + 20) + 8);
  v16 = v14;
  if (v15)
  {
    v15 = sub_19752178C();
  }

  [v14 setTransactionAuthor_];

  MEMORY[0x1EEE9AC00](v17, v18);
  *(&v25 - 6) = a1;
  *(&v25 - 5) = a2;
  v20 = v26;
  v19 = v27;
  *(&v25 - 4) = v14;
  *(&v25 - 3) = v20;
  v23 = v19;
  v24 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
  sub_197521E5C();

  (*(v8 + 8))(v11, v28);
  return v35[3];
}

uint64_t sub_197463DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v7 = sub_19752135C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v8 + 16);
  v30 = a1;
  v12(v11, a1, v7);
  v13 = *(a2 + OBJC_IVAR____TtC9SwiftData12DefaultStore__editingContextLock);
  v34 = a2;
  v35 = v11;
  v31 = sub_197472278;
  v32 = &v33;

  os_unfair_lock_lock(v13 + 4);
  sub_1974722F8(v36);
  if (v4)
  {
    os_unfair_lock_unlock(v13 + 4);
    __break(1u);
    goto LABEL_8;
  }

  os_unfair_lock_unlock(v13 + 4);
  v14 = v36[0];

  if (!v14)
  {
LABEL_8:
    v36[0] = 0;
    v36[1] = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000069, 0x8000000197524390);
    v36[3] = a2;
    type metadata accessor for DefaultStore(0);
    sub_19752235C();
    MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
    sub_197413CBC(&qword_1EAF2AF28, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v24 = sub_1975227DC();
    MEMORY[0x19A8DFF80](v24);

    MEMORY[0x19A8DFF80](0x746F6E2064696420, 0xE90000000000002ELL);
    result = sub_1975223EC();
    __break(1u);
    return result;
  }

  v15 = *(v14 + 16);
  v16 = *(v30 + *(type metadata accessor for EditingState(0) + 20) + 8);
  if (v16)
  {
    v27 = 0;
    v17 = v15;
    v16 = sub_19752178C();
  }

  else
  {
    v18 = v15;
  }

  [v15 setTransactionAuthor_];

  MEMORY[0x1EEE9AC00](v19, v20);
  *(&v27 - 6) = v30;
  *(&v27 - 5) = a2;
  v22 = v28;
  v21 = v29;
  *(&v27 - 4) = v15;
  *(&v27 - 3) = v22;
  v25 = v21;
  v26 = v14;
  sub_197521E5C();

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_197464164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v7 = sub_19752135C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7);
  v12 = *(a2 + OBJC_IVAR____TtC9SwiftData12DefaultStore__editingContextLock);
  v32 = a2;
  v33 = v11;
  v29 = sub_197471334;
  v30 = &v31;

  os_unfair_lock_lock(v12 + 4);
  sub_1974722E0(v35);
  if (v4)
  {
    os_unfair_lock_unlock(v12 + 4);
    __break(1u);
    goto LABEL_7;
  }

  os_unfair_lock_unlock(v12 + 4);
  v13 = v35[0];

  if (!v13)
  {
LABEL_7:
    v35[0] = 0;
    v35[1] = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000069, 0x8000000197524390);
    v34 = a2;
    type metadata accessor for DefaultStore(0);
    sub_19752235C();
    MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
    sub_197413CBC(&qword_1EAF2AF28, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v22 = sub_1975227DC();
    MEMORY[0x19A8DFF80](v22);

    MEMORY[0x19A8DFF80](0x746F6E2064696420, 0xE90000000000002ELL);
    result = sub_1975223EC();
    __break(1u);
    return result;
  }

  v28 = v7;
  v14 = *(v13 + 16);
  v15 = *(a1 + *(type metadata accessor for EditingState(0) + 20) + 8);
  v16 = v14;
  if (v15)
  {
    v15 = sub_19752178C();
  }

  [v14 setTransactionAuthor_];

  MEMORY[0x1EEE9AC00](v17, v18);
  *(&v25 - 6) = a1;
  *(&v25 - 5) = a2;
  v20 = v26;
  v19 = v27;
  *(&v25 - 4) = v14;
  *(&v25 - 3) = v20;
  v23 = v19;
  v24 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF50, &unk_19752C6C0);
  sub_197521E5C();

  (*(v8 + 8))(v11, v28);
  return v35[3];
}

uint64_t sub_197464510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v26 = a6;
  v27 = a3;
  v29 = a7;
  v30 = a5;
  v28 = a4;
  v10 = sub_19752135C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10);
  v15 = *(a2 + OBJC_IVAR____TtC9SwiftData12DefaultStore__editingContextLock);
  v35 = a2;
  v36 = v14;
  v32 = sub_1974722C0;
  v33 = &v34;

  os_unfair_lock_lock(v15 + 4);
  sub_197472340(v37);
  if (v7)
  {
    os_unfair_lock_unlock(v15 + 4);
    __break(1u);
    goto LABEL_7;
  }

  os_unfair_lock_unlock(v15 + 4);
  v16 = v37[0];

  if (!v16)
  {
LABEL_7:
    v37[0] = 0;
    v37[1] = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000069, 0x8000000197524390);
    v37[3] = a2;
    type metadata accessor for DefaultStore(0);
    sub_19752235C();
    MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
    sub_197413CBC(&qword_1EAF2AF28, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v24 = sub_1975227DC();
    MEMORY[0x19A8DFF80](v24);

    MEMORY[0x19A8DFF80](0x746F6E2064696420, 0xE90000000000002ELL);
    result = sub_1975223EC();
    __break(1u);
    return result;
  }

  v31 = v10;
  v17 = *(v16 + 16);
  v18 = *(a1 + *(type metadata accessor for EditingState(0) + 20) + 8);
  v19 = v17;
  if (v18)
  {
    v18 = sub_19752178C();
  }

  [v17 setTransactionAuthor_];

  MEMORY[0x1EEE9AC00](v20, v21);
  *(&v26 - 8) = v30;
  *(&v26 - 7) = a1;
  *(&v26 - 6) = a2;
  *(&v26 - 5) = v17;
  v22 = v28;
  *(&v26 - 4) = v27;
  *(&v26 - 3) = v22;
  v25 = v16;
  sub_197521E5C();

  return (*(v11 + 8))(v14, v31);
}

void *sub_1974648B8(uint64_t a1, uint64_t a2, void *a3, void *(*a4)(void *__return_ptr, uint64_t), uint64_t a5, uint64_t a6)
{
  v31[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + *(type metadata accessor for EditingState(0) + 24)) == 1)
  {
    v11 = a2 + OBJC_IVAR____TtC9SwiftData12DefaultStore_configuration;
    if (*(v11 + *(type metadata accessor for ModelConfiguration(0) + 48)) == 1)
    {
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000005BLL, 0x8000000197524440);
      sub_19752235C();
      result = sub_1975223EC();
      __break(1u);
      return result;
    }

    v12 = [a3 queryGenerationToken];
    if (v12)
    {
    }

    else
    {
      v13 = [objc_opt_self() currentQueryGenerationToken];
      v29 = 0;
      v14 = [a3 setQueryGenerationFromToken:v13 error:&v29];

      if ((v14 & 1) == 0)
      {
        v28 = v29;
        sub_1975211DC();

        return swift_willThrow();
      }

      v15 = v29;
    }
  }

  result = a4(v31, a6);
  if (!v6)
  {
    v17 = [a3 queryGenerationToken];
    [a3 reset];
    if (v17)
    {
      v29 = 0;
      if ([a3 setQueryGenerationFromToken:v17 error:&v29])
      {
        v18 = v29;
      }

      else
      {
        v19 = v29;
        v20 = sub_1975211DC();

        swift_willThrow();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF58, &qword_1975319E0);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_19752C280;
        v29 = 0;
        v30 = 0xE000000000000000;
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0xD000000000000036, 0x8000000197524400);
        v22 = [v17 description];
        v23 = sub_1975217BC();
        v25 = v24;

        MEMORY[0x19A8DFF80](v23, v25);

        MEMORY[0x19A8DFF80](10, 0xE100000000000000);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE98, &unk_19752E9E0);
        sub_19752235C();
        v26 = v29;
        v27 = v30;
        *(v21 + 56) = MEMORY[0x1E69E6158];
        *(v21 + 32) = v26;
        *(v21 + 40) = v27;
        sub_197522A3C();
      }
    }

    return v31[0];
  }

  return result;
}

void sub_197464C98(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(a1 + *(type metadata accessor for EditingState(0) + 24)) == 1)
  {
    v11 = a2 + OBJC_IVAR____TtC9SwiftData12DefaultStore_configuration;
    if (*(v11 + *(type metadata accessor for ModelConfiguration(0) + 48)) == 1)
    {
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000005BLL, 0x8000000197524440);
      sub_19752235C();
      sub_1975223EC();
      __break(1u);
      return;
    }

    v12 = [a3 queryGenerationToken];
    if (v12)
    {
    }

    else
    {
      v13 = [objc_opt_self() currentQueryGenerationToken];
      v28 = 0;
      v14 = [a3 setQueryGenerationFromToken:v13 error:&v28];

      if ((v14 & 1) == 0)
      {
        v27 = v28;
        sub_1975211DC();

        swift_willThrow();
        return;
      }

      v15 = v28;
    }
  }

  a4(a6);
  if (!v6)
  {
    v16 = [a3 queryGenerationToken];
    [a3 reset];
    if (v16)
    {
      v28 = 0;
      if ([a3 setQueryGenerationFromToken:v16 error:&v28])
      {
        v17 = v28;
      }

      else
      {
        v18 = v28;
        v19 = sub_1975211DC();

        swift_willThrow();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF58, &qword_1975319E0);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_19752C280;
        v28 = 0;
        v29 = 0xE000000000000000;
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0xD000000000000036, 0x8000000197524400);
        v21 = [v16 description];
        v22 = sub_1975217BC();
        v24 = v23;

        MEMORY[0x19A8DFF80](v22, v24);

        MEMORY[0x19A8DFF80](10, 0xE100000000000000);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE98, &unk_19752E9E0);
        sub_19752235C();
        v25 = v28;
        v26 = v29;
        *(v20 + 56) = MEMORY[0x1E69E6158];
        *(v20 + 32) = v25;
        *(v20 + 40) = v26;
        sub_197522A3C();
      }
    }
  }
}

void *sub_19746506C(uint64_t a1, uint64_t a2, void *a3, void *(*a4)(void *__return_ptr, uint64_t), uint64_t a5, uint64_t a6)
{
  v31[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + *(type metadata accessor for EditingState(0) + 24)) == 1)
  {
    v11 = a2 + OBJC_IVAR____TtC9SwiftData12DefaultStore_configuration;
    if (*(v11 + *(type metadata accessor for ModelConfiguration(0) + 48)) == 1)
    {
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000005BLL, 0x8000000197524440);
      sub_19752235C();
      result = sub_1975223EC();
      __break(1u);
      return result;
    }

    v12 = [a3 queryGenerationToken];
    if (v12)
    {
    }

    else
    {
      v13 = [objc_opt_self() currentQueryGenerationToken];
      v29 = 0;
      v14 = [a3 setQueryGenerationFromToken:v13 error:&v29];

      if ((v14 & 1) == 0)
      {
        v28 = v29;
        sub_1975211DC();

        return swift_willThrow();
      }

      v15 = v29;
    }
  }

  result = a4(v31, a6);
  if (!v6)
  {
    v17 = [a3 queryGenerationToken];
    [a3 reset];
    if (v17)
    {
      v29 = 0;
      if ([a3 setQueryGenerationFromToken:v17 error:&v29])
      {
        v18 = v29;
      }

      else
      {
        v19 = v29;
        v20 = sub_1975211DC();

        swift_willThrow();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF58, &qword_1975319E0);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_19752C280;
        v29 = 0;
        v30 = 0xE000000000000000;
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0xD000000000000036, 0x8000000197524400);
        v22 = [v17 description];
        v23 = sub_1975217BC();
        v25 = v24;

        MEMORY[0x19A8DFF80](v23, v25);

        MEMORY[0x19A8DFF80](10, 0xE100000000000000);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE98, &unk_19752E9E0);
        sub_19752235C();
        v26 = v29;
        v27 = v30;
        *(v21 + 56) = MEMORY[0x1E69E6158];
        *(v21 + 32) = v26;
        *(v21 + 40) = v27;
        sub_197522A3C();
      }
    }

    return v31[0];
  }

  return result;
}

void sub_19746544C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(a1 + *(type metadata accessor for EditingState(0) + 24)) == 1)
  {
    v11 = a2 + OBJC_IVAR____TtC9SwiftData12DefaultStore_configuration;
    if (*(v11 + *(type metadata accessor for ModelConfiguration(0) + 48)))
    {
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000005BLL, 0x8000000197524440);
      sub_19752235C();
      sub_1975223EC();
      __break(1u);
      return;
    }

    v12 = [a3 queryGenerationToken];
    if (v12)
    {
    }

    else
    {
      v13 = [objc_opt_self() currentQueryGenerationToken];
      v28 = 0;
      v14 = [a3 setQueryGenerationFromToken:v13 error:&v28];

      if (!v14)
      {
        v27 = v28;
        sub_1975211DC();

        swift_willThrow();
        return;
      }

      v15 = v28;
    }
  }

  a4(a6);
  if (!v6)
  {
    v16 = [a3 queryGenerationToken];
    [a3 reset];
    if (v16)
    {
      v28 = 0;
      if ([a3 setQueryGenerationFromToken:v16 error:&v28])
      {
        v17 = v28;
      }

      else
      {
        v18 = v28;
        v19 = sub_1975211DC();

        swift_willThrow();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF58, &qword_1975319E0);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_19752C280;
        v28 = 0;
        v29 = 0xE000000000000000;
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0xD000000000000036, 0x8000000197524400);
        v21 = [v16 description];
        v22 = sub_1975217BC();
        v24 = v23;

        MEMORY[0x19A8DFF80](v22, v24);

        MEMORY[0x19A8DFF80](10, 0xE100000000000000);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE98, &unk_19752E9E0);
        sub_19752235C();
        v25 = v28;
        v26 = v29;
        *(v20 + 56) = MEMORY[0x1E69E6158];
        *(v20 + 32) = v25;
        *(v20 + 40) = v26;
        sub_197522A3C();
      }
    }
  }
}

void sub_197465864(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  Request = type metadata accessor for DataStoreFetchRequest(0, a4, a5, a4);
  sub_1974076EC(a2 + *(Request + 36), a3, a4, a5);
  if (v6)
  {
    return;
  }

  v15 = v14;
  [v14 setResultType_];
  v16 = *(a1 + 16);
  sub_1973F3D34(0, &qword_1ED7C9360, 0x1E695D620);
  v17 = v16;
  v18 = sub_197521E8C();

  if (v18 >> 62)
  {
    sub_1973F3D34(0, qword_1ED7C7910, 0x1E695D630);

    v28 = sub_1975223FC();
    swift_bridgeObjectRelease_n();
    v18 = v28;
  }

  else
  {
    v19 = v18 & 0xFFFFFFFFFFFFFF8;

    sub_19752288C();
    sub_1973F3D34(0, qword_1ED7C7910, 0x1E695D630);
    if (swift_dynamicCastMetatype() || (v26 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_4:
    }

    else
    {
      v27 = v19 + 32;
      while (1)
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          break;
        }

        v27 += 8;
        if (!--v26)
        {
          goto LABEL_4;
        }
      }

      v18 = v19 | 1;
    }
  }

  if (!(v18 >> 62))
  {
    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_7;
    }

LABEL_24:

    *a6 = MEMORY[0x1E69E7CC0];
    return;
  }

  v20 = sub_1975220EC();
  if (!v20)
  {
    goto LABEL_24;
  }

LABEL_7:
  v30 = MEMORY[0x1E69E7CC0];
  sub_197411CB8(0, v20 & ~(v20 >> 63), 0);
  if (v20 < 0)
  {
    __break(1u);
  }

  else
  {
    v21 = 0;
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x19A8E0960](v21, v18);
      }

      else
      {
        v22 = *(v18 + 8 * v21 + 32);
      }

      v24 = *(v30 + 16);
      v23 = *(v30 + 24);
      if (v24 >= v23 >> 1)
      {
        v29 = v22;
        sub_197411CB8((v23 > 1), v24 + 1, 1);
        v22 = v29;
      }

      ++v21;
      *(v30 + 16) = v24 + 1;
      v25 = v30 + 16 * v24;
      *(v25 + 32) = v22;
      *(v25 + 40) = 0;
    }

    while (v20 != v21);

    *a6 = v30;
  }
}

id sub_197465B5C(void *a1)
{
  v2 = [a1 domain];
  if (!v2)
  {
    sub_1975217BC();
    v2 = sub_19752178C();
  }

  v3 = [a1 code];
  v4 = [a1 userInfo];
  v5 = sub_1975215FC();

  sub_197467F14(v5);

  v6 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v7 = sub_1975215EC();

  v8 = [v6 initWithDomain:v2 code:v3 userInfo:v7];

  return v8;
}

uint64_t DefaultStore.cachedSnapshots(for:editingState:)()
{
  sub_19746F744();
  swift_allocError();
  *v0 = 0;
  return swift_willThrow();
}

uint64_t sub_197465CE4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v85 = a3;
  swift_beginAccess();
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);

  v12 = sub_19752178C();
  v13 = [a2 valueForKey_];

  if (!v13)
  {
  }

  sub_197521FDC();
  swift_unknownObjectRelease();
  sub_1974028B8(&v91, v94);
  if ((*(a1 + 120) & 0x20) != 0)
  {
    swift_beginAccess();
    v15 = *(a1 + 56);
    *&v91 = v15;
    v16 = swift_conformsToProtocol2();
    if (v16 && v15)
    {
      v17 = v16;
      do
      {
        sub_1973F732C(v15, &v91, v15, v17);
        v15 = v91;
        v17 = swift_conformsToProtocol2();
        if (v17)
        {
          v18 = v15 == 0;
        }

        else
        {
          v18 = 1;
        }
      }

      while (!v18);
    }

    v19 = MEMORY[0x1E69E6158];
    if (swift_dynamicCastMetatype())
    {
      sub_197404860(v94, v88);
      *&v92[8] = v19;
      *&v92[16] = MEMORY[0x1E69E6190];
      v20 = MEMORY[0x1E69E6160];
    }

    else
    {
      v26 = MEMORY[0x1E69E6370];
      if (!swift_dynamicCastMetatype())
      {
        v27 = sub_19752132C();
        if (swift_dynamicCastMetatype())
        {
          sub_197404860(v94, v88);
          *&v92[8] = v27;
          v28 = MEMORY[0x1E6969530];
          *&v92[16] = sub_197413CBC(&qword_1ED7C77B0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
          v29 = &unk_1ED7C77B8;
          v30 = MEMORY[0x1E6969538];
        }

        else
        {
          v31 = sub_19752135C();
          if (swift_dynamicCastMetatype())
          {
            sub_197404860(v94, v88);
            *&v92[8] = v31;
            v28 = MEMORY[0x1E69695A8];
            *&v92[16] = sub_197413CBC(&qword_1EAF2AC90, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
            v29 = &unk_1EAF2AC98;
            v30 = MEMORY[0x1E69695B0];
          }

          else
          {
            v32 = sub_1975212CC();
            if (!swift_dynamicCastMetatype())
            {
              if (!swift_dynamicCastMetatype())
              {
                v38 = MEMORY[0x1E69E7230];
                if (swift_dynamicCastMetatype())
                {
                  sub_197404860(v94, v88);
                  sub_1973F3D34(0, &qword_1ED7C9B88, 0x1E696AD98);
                  swift_dynamicCast();
                  v39 = [v87[0] charValue];

                  *&v92[8] = v38;
                  *&v92[16] = MEMORY[0x1E69E7250];
                  v40 = MEMORY[0x1E69E7238];
                }

                else
                {
                  v41 = MEMORY[0x1E69E7508];
                  if (!swift_dynamicCastMetatype())
                  {
                    v42 = MEMORY[0x1E69E7290];
                    if (swift_dynamicCastMetatype())
                    {
                      sub_197404860(v94, v88);
                      sub_1973F3D34(0, &qword_1ED7C9B88, 0x1E696AD98);
                      swift_dynamicCast();
                      v43 = [v87[0] shortValue];

                      *&v92[8] = v42;
                      *&v92[16] = MEMORY[0x1E69E72B0];
                      v44 = MEMORY[0x1E69E7298];
                    }

                    else
                    {
                      v45 = MEMORY[0x1E69E75F8];
                      if (!swift_dynamicCastMetatype())
                      {
                        v46 = MEMORY[0x1E69E72F0];
                        if (swift_dynamicCastMetatype())
                        {
                          sub_197404860(v94, v88);
                          sub_1973F3D34(0, &qword_1ED7C9B88, 0x1E696AD98);
                          swift_dynamicCast();
                          v47 = [v87[0] intValue];

                          *&v92[8] = v46;
                          *&v92[16] = MEMORY[0x1E69E7320];
                          v48 = MEMORY[0x1E69E72F8];
                        }

                        else
                        {
                          v49 = MEMORY[0x1E69E7668];
                          if (!swift_dynamicCastMetatype())
                          {
                            v50 = MEMORY[0x1E69E6530];
                            if (swift_dynamicCastMetatype())
                            {
                              sub_197404860(v94, v88);
                              sub_1973F3D34(0, &qword_1ED7C9B88, 0x1E696AD98);
                              swift_dynamicCast();
                              v51 = [v87[0] integerValue];

                              v52 = MEMORY[0x1E69E6560];
                              v53 = MEMORY[0x1E69E6538];
                            }

                            else
                            {
                              v50 = MEMORY[0x1E69E6810];
                              if (swift_dynamicCastMetatype())
                              {
                                sub_197404860(v94, v88);
                                sub_1973F3D34(0, &qword_1ED7C9B88, 0x1E696AD98);
                                swift_dynamicCast();
                                v51 = [v87[0] unsignedIntegerValue];

                                v52 = MEMORY[0x1E69E6840];
                                v53 = MEMORY[0x1E69E6818];
                              }

                              else
                              {
                                v50 = MEMORY[0x1E69E7360];
                                if (swift_dynamicCastMetatype())
                                {
                                  sub_197404860(v94, v88);
                                  sub_1973F3D34(0, &qword_1ED7C9B88, 0x1E696AD98);
                                  swift_dynamicCast();
                                  v51 = [v87[0] longLongValue];

                                  v52 = MEMORY[0x1E69E7390];
                                  v53 = MEMORY[0x1E69E7368];
                                }

                                else
                                {
                                  v50 = MEMORY[0x1E69E76D8];
                                  if (!swift_dynamicCastMetatype())
                                  {
                                    v54 = MEMORY[0x1E69E6448];
                                    if (swift_dynamicCastMetatype())
                                    {
                                      sub_197404860(v94, v88);
                                      sub_1973F3D34(0, &qword_1ED7C9B88, 0x1E696AD98);
                                      swift_dynamicCast();
                                      [v87[0] floatValue];
                                      v56 = v55;

                                      *&v92[8] = v54;
                                      *&v92[16] = MEMORY[0x1E69E6478];
                                      v93 = MEMORY[0x1E69E6458];
                                      LODWORD(v91) = v56;
                                      goto LABEL_27;
                                    }

                                    v57 = MEMORY[0x1E69E7DE0];
                                    if (swift_dynamicCastMetatype())
                                    {
                                      sub_197404860(v94, &v91);
                                      sub_1973F3D34(0, &qword_1ED7C9B88, 0x1E696AD98);
                                      swift_dynamicCast();
                                      [v88[0] doubleValue];
                                      v59 = v58;

                                      *&v92[8] = v57;
                                      *&v92[16] = sub_1974701E0();
                                      v93 = sub_197470234();
                                    }

                                    else
                                    {
                                      v60 = MEMORY[0x1E69E63B0];
                                      if (!swift_dynamicCastMetatype())
                                      {
                                        type metadata accessor for Decimal(0);
                                        v63 = v62;
                                        if (!swift_dynamicCastMetatype())
                                        {
                                          goto LABEL_76;
                                        }

                                        sub_197404860(v94, v88);
                                        *&v92[8] = v63;
                                        *&v92[16] = sub_197413CBC(&qword_1EAF2AEF0, type metadata accessor for Decimal, MEMORY[0x1E6969FE8]);
                                        v93 = sub_197413CBC(&qword_1EAF2AEF8, type metadata accessor for Decimal, MEMORY[0x1E6969FD8]);
                                        goto LABEL_23;
                                      }

                                      sub_197404860(v94, v88);
                                      sub_1973F3D34(0, &qword_1ED7C9B88, 0x1E696AD98);
                                      swift_dynamicCast();
                                      [v87[0] doubleValue];
                                      v59 = v61;

                                      *&v92[8] = v60;
                                      *&v92[16] = MEMORY[0x1E69E63E8];
                                      v93 = MEMORY[0x1E69E63C0];
                                    }

                                    *&v91 = v59;
                                    goto LABEL_27;
                                  }

                                  sub_197404860(v94, v88);
                                  sub_1973F3D34(0, &qword_1ED7C9B88, 0x1E696AD98);
                                  swift_dynamicCast();
                                  v51 = [v87[0] unsignedLongLongValue];

                                  v52 = MEMORY[0x1E69E7708];
                                  v53 = MEMORY[0x1E69E76E0];
                                }
                              }
                            }

                            *&v92[16] = v52;
                            v93 = v53;
                            *&v92[8] = v50;
                            *&v91 = v51;
                            goto LABEL_27;
                          }

                          sub_197404860(v94, v88);
                          sub_1973F3D34(0, &qword_1ED7C9B88, 0x1E696AD98);
                          swift_dynamicCast();
                          v47 = [v87[0] unsignedIntValue];

                          *&v92[8] = v49;
                          *&v92[16] = MEMORY[0x1E69E7698];
                          v48 = MEMORY[0x1E69E7670];
                        }

                        v93 = v48;
                        LODWORD(v91) = v47;
                        goto LABEL_27;
                      }

                      sub_197404860(v94, v88);
                      sub_1973F3D34(0, &qword_1ED7C9B88, 0x1E696AD98);
                      swift_dynamicCast();
                      v43 = [v87[0] unsignedShortValue];

                      *&v92[8] = v45;
                      *&v92[16] = MEMORY[0x1E69E7628];
                      v44 = MEMORY[0x1E69E7600];
                    }

                    v93 = v44;
                    LOWORD(v91) = v43;
                    goto LABEL_27;
                  }

                  sub_197404860(v94, v88);
                  sub_1973F3D34(0, &qword_1ED7C9B88, 0x1E696AD98);
                  swift_dynamicCast();
                  v39 = [v87[0] unsignedCharValue];

                  *&v92[8] = v41;
                  *&v92[16] = MEMORY[0x1E69E7528];
                  v40 = MEMORY[0x1E69E7510];
                }

                v93 = v40;
                LOBYTE(v91) = v39;
                goto LABEL_27;
              }

              v33 = swift_beginAccess();
              LOBYTE(v88[0]) = 0;
              *v89 = 0uLL;
              v88[1] = 0;
              *v92 = 0uLL;
              *&v89[16] = 256;
              v90 = 0;
              *&v92[14] = *&v89[14];
              v34 = *(a1 + 48);
              v91 = v88[0];
              MEMORY[0x1EEE9AC00](v33, v35);
              v83 = &v91;

              v36 = v86;
              v37 = sub_197476F7C(sub_197470288, &v82, v34);
              v86 = v36;

              sub_19741EE34(v88);
              if (v37)
              {
                *&v91 = a5;
                BYTE8(v91) = a6;

                sub_19746C028(v94, &v91, v11, v10);

                v21 = *(a1 + 16);
                v22 = *(a1 + 24);
                *&v92[8] = &type metadata for DefaultStore.DefaultStoreSnapshotValueFuture;
                *&v92[16] = sub_1973FF3D4();
                v93 = sub_1973FF428();
                *&v91 = v11;
                *(&v91 + 1) = v10;
                v23 = 5;
                goto LABEL_19;
              }

              sub_197404860(v94, v87);
              *&v92[8] = MEMORY[0x1E6969080];
              *&v92[16] = sub_1974122A4();
              v93 = sub_1974122F8();
LABEL_23:
              swift_dynamicCast();
LABEL_27:
              v24 = v11;
              v25 = v10;
              goto LABEL_28;
            }

            sub_197404860(v94, v88);
            *&v92[8] = v32;
            v28 = MEMORY[0x1E6968FB0];
            *&v92[16] = sub_197413CBC(&qword_1EAF2AF10, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
            v29 = &unk_1EAF2AF18;
            v30 = MEMORY[0x1E6968FB8];
          }
        }

        v93 = sub_197413CBC(v29, v28, v30);
        __swift_allocate_boxed_opaque_existential_2Tm(&v91);
        goto LABEL_23;
      }

      sub_197404860(v94, v88);
      *&v92[8] = v26;
      *&v92[16] = MEMORY[0x1E69E6390];
      v20 = MEMORY[0x1E69E6378];
    }

    v93 = v20;
    goto LABEL_23;
  }

  if ((*(a1 + 120) & 1) == 0)
  {
    if ((*(a1 + 120) & 0x90) != 0)
    {
      *&v91 = a5;
      BYTE8(v91) = a6;

      sub_1973FF4F8(v94, &v91, v11, v10);

      *&v92[8] = &type metadata for DefaultStore.DefaultStoreSnapshotValueFuture;
      *&v92[16] = sub_1973FF3D4();
      v93 = sub_1973FF428();
      *&v91 = v11;
      *(&v91 + 1) = v10;
      v92[0] = 1;
LABEL_26:

      goto LABEL_27;
    }

    if ((*(a1 + 120) & 0x48) != 0)
    {
      *&v91 = a5;
      BYTE8(v91) = a6;

      sub_19746BD5C(v94, &v91, v11, v10);

      *&v92[8] = &type metadata for DefaultStore.DefaultStoreSnapshotValueFuture;
      *&v92[16] = sub_1973FF3D4();
      v93 = sub_1973FF428();
      *&v91 = v11;
      *(&v91 + 1) = v10;
      v92[0] = 0;
      goto LABEL_26;
    }

    *&v91 = 0;
    *(&v91 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001CLL, 0x8000000197523E90);
    v88[0] = a1;
    type metadata accessor for Schema.Attribute();
    sub_19752235C();
    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    sub_19752235C();
    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    v74 = [a2 description];
    v75 = sub_1975217BC();
    v77 = v76;

    MEMORY[0x19A8DFF80](v75, v77);

    v84 = 0;
    for (i = 782; ; i = 764)
    {
LABEL_75:
      v83 = i;
      sub_1975223EC();
      __break(1u);
LABEL_76:
      *&v91 = 0;
      *(&v91 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000001CLL, 0x8000000197523E90);
      sub_19752235C();
      MEMORY[0x19A8DFF80](10, 0xE100000000000000);
      v78 = [a2 description];
      v79 = sub_1975217BC();
      v81 = v80;

      MEMORY[0x19A8DFF80](v79, v81);

      v84 = 0;
    }
  }

  sub_197404860(v94, &v91);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE8, &unk_19752C690);
  if (!swift_dynamicCast())
  {
    *&v91 = 0;
    *(&v91 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000002ELL, 0x8000000197523EB0);
    MEMORY[0x19A8DFF80](v11, v10);
    MEMORY[0x19A8DFF80](544108320, 0xE400000000000000);
    v64 = [a2 objectID];
    v65 = [v64 description];
    v66 = sub_1975217BC();
    v68 = v67;

    MEMORY[0x19A8DFF80](v66, v68);

    MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
    v69 = [a2 description];
    v70 = sub_1975217BC();
    v72 = v71;

    MEMORY[0x19A8DFF80](v70, v72);

    v84 = 0;
    i = 768;
    goto LABEL_75;
  }

  *&v91 = a5;
  BYTE8(v91) = a6;

  sub_19746BEBC(v88[0], &v91, v11, v10);

  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  *&v92[8] = &type metadata for DefaultStore.DefaultStoreSnapshotValueFuture;
  *&v92[16] = sub_1973FF3D4();
  v93 = sub_1973FF428();
  *&v91 = v11;
  *(&v91 + 1) = v10;
  v23 = 2;
LABEL_19:
  v92[0] = v23;

  v24 = v21;
  v25 = v22;
LABEL_28:
  sub_19749B5D4(&v91, v24, v25);
  return __swift_destroy_boxed_opaque_existential_1Tm(v94);
}

uint64_t sub_197466F68()
{
  sub_19746F744();
  swift_allocError();
  *v0 = 0;
  return swift_willThrow();
}

void sub_197466FB8(char *a1, uint64_t a2, id *a3, uint64_t a4, uint64_t *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  sub_19744FB48(a2, 0);
  if (!v5)
  {
    v11 = v10;
    v12 = [*&a1[OBJC_IVAR____TtC9SwiftData12DefaultStore_container] persistentStoreCoordinator];
    *&v20 = 0;
    if (![v12 executeRequest:v11 withContext:a4 error:&v20])
    {
      v17 = v20;
      sub_1975211DC();

      swift_willThrow();
      return;
    }

    v13 = v20;
    sub_197521FDC();
    swift_unknownObjectRelease();
    sub_1973F3D34(0, qword_1ED7C75A0, 0x1E695D6A0);
    v14 = swift_dynamicCast();
    v15 = v18;
    if (!v14)
    {
      v15 = 0;
    }

    v16 = *a3;
    *a3 = v15;

    if (*a3)
    {
      if ([*a3 result])
      {
        sub_197521FDC();
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0u;
        v19 = 0u;
      }

      v20 = v18;
      v21 = v19;
      if (*(&v19 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AFB0, &qword_19752C718);
        if (swift_dynamicCast())
        {

          sub_19746FCFC(v18, a1, a5);
        }

        else
        {
        }

        return;
      }
    }

    else
    {

      v20 = 0u;
      v21 = 0u;
    }

    sub_19740C044(&v20, &qword_1EAF2AF20, &unk_19752F320);
  }
}

int *sub_19746723C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_19752132C();
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69E7CC0];
  v49 = MEMORY[0x1E69E7CC0];
  v11 = [a1 changes];
  if (v11)
  {
    v12 = v11;
    sub_1973F3D34(0, &qword_1ED7C6D38, 0x1E695D690);
    v13 = sub_1975219CC();

    v14 = a1;
    sub_19746FBF8(v13, a2, v14, &v49);

    v10 = v49;
  }

  v15 = [a1 timestamp];
  v45 = v9;
  sub_19752131C();

  sub_19744E718([a1 token], &v48);
  v44 = v48;
  v43 = [a1 transactionNumber];
  v16 = [a1 storeID];
  v17 = sub_1975217BC();
  v41 = v18;
  v42 = v17;

  v19 = [a1 bundleID];
  v20 = sub_1975217BC();
  v40 = v21;

  v22 = [a1 processID];
  v23 = sub_1975217BC();
  v25 = v24;

  v26 = [a1 author];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1975217BC();
    v30 = v29;
  }

  else
  {

    v28 = 0;
    v30 = 0;
  }

  (*(v46 + 32))(a3, v45, v47);

  result = type metadata accessor for DefaultHistoryTransaction(0);
  *(a3 + result[5]) = v10;
  v32 = v43;
  *(a3 + result[6]) = v44;
  *(a3 + result[7]) = v32;
  v33 = (a3 + result[8]);
  v34 = v41;
  *v33 = v42;
  v33[1] = v34;
  v35 = (a3 + result[9]);
  v36 = v40;
  *v35 = v20;
  v35[1] = v36;
  v37 = (a3 + result[10]);
  *v37 = v23;
  v37[1] = v25;
  v38 = (a3 + result[11]);
  *v38 = v28;
  v38[1] = v30;
  return result;
}

void DefaultStore.deleteHistory(_:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SwiftData12DefaultStore_container);
  v4 = objc_allocWithZone(MEMORY[0x1E695D628]);
  v5 = v3;
  v6 = [v4 initWithConcurrencyType_];
  v7 = [v5 persistentStoreCoordinator];
  [v6 setPersistentStoreCoordinator_];

  v8 = [objc_opt_self() mergeByPropertyObjectTrumpMergePolicy];
  [v6 setMergePolicy_];

  [v6 set:1 isSwiftBound:?];
  sub_197521E5C();
  if (!v2)
  {

    return;
  }

  v9 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE98, &unk_19752E9E0);
  sub_1973F3D34(0, &qword_1EAF2AEA0, 0x1E696ABC0);
  if (swift_dynamicCast())
  {

    v10 = [v20 domain];
    v11 = sub_1975217BC();
    v13 = v12;

    if (v11 == sub_1975217BC() && v13 == v14)
    {
    }

    else
    {
      v15 = sub_19752282C();

      if ((v15 & 1) == 0)
      {
LABEL_12:
        swift_willThrow();
        goto LABEL_13;
      }
    }

    if ([v20 code] == 134301)
    {
      if (qword_1EAF2AD88 != -1)
      {
        swift_once();
      }

      v16 = byte_1EAF2B818;
      v18 = qword_1EAF2B820;
      v17 = unk_1EAF2B828;
      sub_19744BE3C();
      swift_allocError();
      *v19 = v16;
      *(v19 + 8) = v18;
      *(v19 + 16) = v17;
      swift_willThrow();

      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_13:
}

void sub_197467854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[4] = *MEMORY[0x1E69E9840];
  sub_19744FB48(a2, 1);
  if (!v3)
  {
    v7 = v6;
    v8 = [*(a1 + OBJC_IVAR____TtC9SwiftData12DefaultStore_container) persistentStoreCoordinator];
    v11[0] = 0;
    if ([v8 executeRequest:v7 withContext:a3 error:v11])
    {
      v9 = v11[0];
      sub_197521FDC();

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
    }

    else
    {
      v10 = v11[0];
      sub_1975211DC();

      swift_willThrow();
    }
  }
}

unint64_t sub_197467984()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF98, &qword_19752C708);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v43 - v4;
  v6 = sub_19752177C();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v43 - v14;
  MEMORY[0x1EEE9AC00](v13, v16);
  v46 = &v43 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF60, &qword_19752C6D0);
  v47 = v0;
  if (sub_197520C3C())
  {
    v18 = sub_197470C44();
    if (v1)
    {

      return v0;
    }

    v23 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v23 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v23)
    {
      v44 = v18;
      v45 = v19;
    }

    else
    {

      v44 = 0x44497463656A626FLL;
      v45 = 0xE800000000000000;
    }

    sub_197520C0C();
    v24 = v7;
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_19740C044(v5, &qword_1EAF2AF98, &qword_19752C708);
      v25 = 0;
LABEL_20:
      sub_197520C1C();
      v34 = sub_1975213BC();
      v35 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
      v36 = sub_19752178C();

      v0 = [v35 initWithKey:v36 ascending:v34 & 1 selector:v25];

      return v0;
    }

    v26 = *(v7 + 32);
    v27 = v46;
    v26(v46, v5, v6);
    (*(v24 + 16))(v15, v27, v6);
    sub_19752175C();
    v28 = v24;
    v43 = sub_197413CBC(qword_1EAF2AA80, MEMORY[0x1E6969DA8], MEMORY[0x1E6969DB0]);
    v29 = sub_19752173C();
    v30 = *(v28 + 8);
    v30(v11, v6);
    if (v29)
    {
      v31 = &selRef_compare_;
LABEL_18:
      v33 = v30;
      v30(v15, v6);
LABEL_19:
      v25 = *v31;
      v33(v46, v6);
      goto LABEL_20;
    }

    sub_19752176C();
    v32 = sub_19752173C();
    v30(v11, v6);
    if (v32)
    {
      v31 = &selRef_localizedCompare_;
      goto LABEL_18;
    }

    sub_19752174C();
    v38 = sub_19752173C();
    v30(v11, v6);
    v30(v15, v6);
    v33 = v30;
    if (v38)
    {
      v31 = &selRef_localizedStandardCompare_;
      goto LABEL_19;
    }

    v39 = v30;

    if (qword_1EAF2AD38 != -1)
    {
      swift_once();
    }

    v40 = byte_1EAF2B728;
    v41 = qword_1EAF2B730;
    v0 = unk_1EAF2B738;
    sub_19744BE3C();
    swift_allocError();
    *v42 = v40;
    *(v42 + 8) = v41;
    *(v42 + 16) = v0;
    swift_willThrow();

    v39(v46, v6);
  }

  else
  {
    if (qword_1EAF2AD38 != -1)
    {
      swift_once();
    }

    v0 = byte_1EAF2B728;
    v21 = qword_1EAF2B730;
    v20 = unk_1EAF2B738;
    sub_19744BE3C();
    swift_allocError();
    *v22 = v0;
    *(v22 + 8) = v21;
    *(v22 + 16) = v20;
    swift_willThrow();
  }

  return v0;
}

void *sub_197467F14(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC8];
  while (v4)
  {
    v12 = v6;
LABEL_14:
    v15 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    sub_197404860(*(a1 + 56) + 32 * v16, &v130);
    *&v132 = v19;
    *(&v132 + 1) = v18;
    sub_1974028B8(&v130, &v133);

    v14 = v12;
LABEL_15:
    v135 = v132;
    v136[0] = v133;
    v136[1] = v134;
    v20 = *(&v132 + 1);
    if (!*(&v132 + 1))
    {

      return v7;
    }

    v21 = v135;
    sub_1974028B8(v136, &v132);
    sub_197404860(&v132, &v130);
    v22 = sub_1973F3D34(0, &qword_1EAF2ACD8, 0x1E695DF20);
    if (swift_dynamicCast())
    {
      v23 = v20;
      v24 = v5;
      v25 = v1;
      v125 = v129[0];
      v127 = v14;
      v26 = sub_197468A88(v129[0]);
      v131 = v22;
      *&v130 = v26;
      sub_1974028B8(&v130, v129);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v21;
      v29 = isUniquelyReferenced_nonNull_native;
      v30 = v28;
      v31 = sub_1973F4028(v28, v23);
      v33 = v7[2];
      v34 = (v32 & 1) == 0;
      v35 = __OFADD__(v33, v34);
      v36 = v33 + v34;
      if (v35)
      {
        goto LABEL_87;
      }

      v37 = v32;
      if (v7[3] >= v36)
      {
        if ((v29 & 1) == 0)
        {
          v116 = v31;
          sub_197422CFC();
          v31 = v116;
        }

        v38 = v30;
      }

      else
      {
        sub_1973FF860(v36, v29);
        v38 = v30;
        v31 = sub_1973F4028(v30, v23);
        if ((v37 & 1) != (v39 & 1))
        {
          goto LABEL_97;
        }
      }

      v1 = v25;
      v5 = v24;
      if (v37)
      {
        v58 = v31;

        v59 = (v7[7] + 32 * v58);
        __swift_destroy_boxed_opaque_existential_1Tm(v59);
        sub_1974028B8(v129, v59);

        __swift_destroy_boxed_opaque_existential_1Tm(&v132);
      }

      else
      {
        v7[(v31 >> 6) + 8] |= 1 << v31;
        v60 = (v7[6] + 16 * v31);
        *v60 = v38;
        v60[1] = v23;
        sub_1974028B8(v129, (v7[7] + 32 * v31));

        __swift_destroy_boxed_opaque_existential_1Tm(&v132);
        v61 = v7[2];
        v35 = __OFADD__(v61, 1);
        v62 = v61 + 1;
        if (v35)
        {
          goto LABEL_88;
        }

        v7[2] = v62;
      }

      v6 = v127;
    }

    else
    {
      sub_197404860(&v132, &v130);
      v40 = sub_1973F3D34(0, &qword_1EAF2AFE8, 0x1E695DEC8);
      if (swift_dynamicCast())
      {
        v8 = v21;
        v9 = v129[0];
        v10 = sub_19746924C(v129[0]);
        v131 = v40;
        *&v130 = v10;
        sub_1974028B8(&v130, v129);
        v11 = swift_isUniquelyReferenced_nonNull_native();
        sub_1973FF710(v129, v8, v20, v11);

        __swift_destroy_boxed_opaque_existential_1Tm(&v132);
        v6 = v14;
      }

      else
      {
        v126 = v21;
        sub_197404860(&v132, &v130);
        sub_1973F3D34(0, &qword_1ED7C9360, 0x1E695D620);
        if (swift_dynamicCast())
        {
          v41 = v14;
          v42 = v129[0];
          v43 = [v129[0] description];
          v44 = sub_1975217BC();
          v46 = v45;

          v131 = MEMORY[0x1E69E6158];
          *&v130 = v44;
          *(&v130 + 1) = v46;
          sub_1974028B8(&v130, v129);
          v47 = swift_isUniquelyReferenced_nonNull_native();
          v48 = sub_1973F4028(v126, v20);
          v50 = v7[2];
          v51 = (v49 & 1) == 0;
          v35 = __OFADD__(v50, v51);
          v52 = v50 + v51;
          if (v35)
          {
            goto LABEL_89;
          }

          v53 = v49;
          if (v7[3] >= v52)
          {
            if (v47)
            {
              v54 = v126;
              if (v49)
              {
                goto LABEL_27;
              }
            }

            else
            {
              v117 = v48;
              sub_197422CFC();
              v48 = v117;
              v54 = v126;
              if (v53)
              {
                goto LABEL_27;
              }
            }
          }

          else
          {
            sub_1973FF860(v52, v47);
            v54 = v126;
            v48 = sub_1973F4028(v126, v20);
            if ((v53 & 1) != (v55 & 1))
            {
              goto LABEL_97;
            }

            if (v53)
            {
LABEL_27:
              v56 = v48;

              v57 = (v7[7] + 32 * v56);
              __swift_destroy_boxed_opaque_existential_1Tm(v57);
              sub_1974028B8(v129, v57);

              __swift_destroy_boxed_opaque_existential_1Tm(&v132);
              goto LABEL_55;
            }
          }

          v7[(v48 >> 6) + 8] |= 1 << v48;
          v96 = (v7[6] + 16 * v48);
          *v96 = v54;
          v96[1] = v20;
          sub_1974028B8(v129, (v7[7] + 32 * v48));

          __swift_destroy_boxed_opaque_existential_1Tm(&v132);
          v97 = v7[2];
          v35 = __OFADD__(v97, 1);
          v98 = v97 + 1;
          if (v35)
          {
            goto LABEL_91;
          }

          v7[2] = v98;
LABEL_55:
          v6 = v41;
        }

        else
        {
          sub_197404860(&v132, &v130);
          v63 = sub_1973F3D34(0, &qword_1EAF2AEA0, 0x1E696ABC0);
          v128 = v14;
          if (swift_dynamicCast())
          {
            v64 = v129[0];
            v65 = [v129[0] domain];
            if (!v65)
            {
              sub_1975217BC();
              v65 = sub_19752178C();
            }

            v122 = v64;
            v123 = [v64 code];
            v66 = [v64 userInfo];
            v67 = sub_1975215FC();

            sub_197467F14(v67);

            v68 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
            v69 = sub_1975215EC();

            v70 = [v68 initWithDomain:v65 code:v123 userInfo:v69];

            v131 = v63;
            *&v130 = v70;
            sub_1974028B8(&v130, v129);
            v71 = swift_isUniquelyReferenced_nonNull_native();
            v72 = sub_1973F4028(v126, v20);
            v74 = v7[2];
            v75 = (v73 & 1) == 0;
            v35 = __OFADD__(v74, v75);
            v76 = v74 + v75;
            if (v35)
            {
              goto LABEL_90;
            }

            v77 = v73;
            if (v7[3] >= v76)
            {
              if (v71)
              {
                v78 = v126;
                if (v73)
                {
                  goto LABEL_44;
                }
              }

              else
              {
                v118 = v72;
                sub_197422CFC();
                v72 = v118;
                v78 = v126;
                if (v77)
                {
                  goto LABEL_44;
                }
              }
            }

            else
            {
              sub_1973FF860(v76, v71);
              v78 = v126;
              v72 = sub_1973F4028(v126, v20);
              if ((v77 & 1) != (v79 & 1))
              {
                goto LABEL_97;
              }

              if (v77)
              {
LABEL_44:
                v80 = v72;

                v81 = (v7[7] + 32 * v80);
                __swift_destroy_boxed_opaque_existential_1Tm(v81);
                sub_1974028B8(v129, v81);

                goto LABEL_62;
              }
            }

            v7[(v72 >> 6) + 8] |= 1 << v72;
            v109 = (v7[6] + 16 * v72);
            *v109 = v78;
            v109[1] = v20;
            sub_1974028B8(v129, (v7[7] + 32 * v72));

            __swift_destroy_boxed_opaque_existential_1Tm(&v132);
            v110 = v7[2];
            v35 = __OFADD__(v110, 1);
            v111 = v110 + 1;
            if (v35)
            {
              goto LABEL_94;
            }

LABEL_76:
            v7[2] = v111;
            v6 = v128;
          }

          else
          {
            sub_197404860(&v132, &v130);
            v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE8, &unk_19752C690);
            if (swift_dynamicCast())
            {
              v83 = sub_197467F14(v129[0]);

              v131 = v82;
              *&v130 = v83;
              sub_1974028B8(&v130, v129);
              v84 = swift_isUniquelyReferenced_nonNull_native();
              v85 = sub_1973F4028(v126, v20);
              v87 = v7[2];
              v88 = (v86 & 1) == 0;
              v35 = __OFADD__(v87, v88);
              v89 = v87 + v88;
              if (v35)
              {
                goto LABEL_93;
              }

              v90 = v86;
              if (v7[3] >= v89)
              {
                if (v84)
                {
                  v91 = v126;
                  if ((v86 & 1) == 0)
                  {
                    goto LABEL_70;
                  }
                }

                else
                {
                  v119 = v85;
                  sub_197422CFC();
                  v85 = v119;
                  v91 = v126;
                  if ((v90 & 1) == 0)
                  {
                    goto LABEL_70;
                  }
                }
              }

              else
              {
                sub_1973FF860(v89, v84);
                v91 = v126;
                v85 = sub_1973F4028(v126, v20);
                if ((v90 & 1) != (v92 & 1))
                {
                  goto LABEL_97;
                }

                if ((v90 & 1) == 0)
                {
LABEL_70:
                  v7[(v85 >> 6) + 8] |= 1 << v85;
                  v112 = (v7[6] + 16 * v85);
                  *v112 = v91;
                  v112[1] = v20;
                  sub_1974028B8(v129, (v7[7] + 32 * v85));
                  __swift_destroy_boxed_opaque_existential_1Tm(&v132);
                  v113 = v7[2];
                  v35 = __OFADD__(v113, 1);
                  v111 = v113 + 1;
                  if (v35)
                  {
                    goto LABEL_95;
                  }

                  goto LABEL_76;
                }
              }

              v93 = v85;

              v94 = (v7[7] + 32 * v93);
              __swift_destroy_boxed_opaque_existential_1Tm(v94);
              v95 = v129;
            }

            else
            {
              sub_197404860(&v132, &v130);
              v99 = swift_isUniquelyReferenced_nonNull_native();
              v129[0] = v7;
              v100 = sub_1973F4028(v126, v20);
              v102 = v7[2];
              v103 = (v101 & 1) == 0;
              v35 = __OFADD__(v102, v103);
              v104 = v102 + v103;
              if (v35)
              {
                goto LABEL_92;
              }

              v105 = v101;
              if (v7[3] >= v104)
              {
                if (v99)
                {
                  v106 = v126;
                  if ((v101 & 1) == 0)
                  {
                    goto LABEL_75;
                  }
                }

                else
                {
                  v120 = v100;
                  sub_197422CFC();
                  v100 = v120;
                  v106 = v126;
                  if ((v105 & 1) == 0)
                  {
                    goto LABEL_75;
                  }
                }
              }

              else
              {
                sub_1973FF860(v104, v99);
                v106 = v126;
                v100 = sub_1973F4028(v126, v20);
                if ((v105 & 1) != (v107 & 1))
                {
                  goto LABEL_97;
                }

                if ((v105 & 1) == 0)
                {
LABEL_75:
                  v7 = v129[0];
                  *(v129[0] + (v100 >> 6) + 8) |= 1 << v100;
                  v114 = (v7[6] + 16 * v100);
                  *v114 = v106;
                  v114[1] = v20;
                  sub_1974028B8(&v130, (v7[7] + 32 * v100));
                  __swift_destroy_boxed_opaque_existential_1Tm(&v132);
                  v115 = v7[2];
                  v35 = __OFADD__(v115, 1);
                  v111 = v115 + 1;
                  if (v35)
                  {
                    goto LABEL_96;
                  }

                  goto LABEL_76;
                }
              }

              v108 = v100;

              v7 = v129[0];
              v94 = (*(v129[0] + 7) + 32 * v108);
              __swift_destroy_boxed_opaque_existential_1Tm(v94);
              v95 = &v130;
            }

            sub_1974028B8(v95, v94);
LABEL_62:
            __swift_destroy_boxed_opaque_existential_1Tm(&v132);
            v6 = v128;
          }
        }
      }
    }
  }

  if (v5 <= v6 + 1)
  {
    v13 = v6 + 1;
  }

  else
  {
    v13 = v5;
  }

  v14 = v13 - 1;
  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v12 >= v5)
    {
      v4 = 0;
      v133 = 0u;
      v134 = 0u;
      v132 = 0u;
      goto LABEL_15;
    }

    v4 = *(v1 + 8 * v12);
    ++v6;
    if (v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  result = sub_1975229CC();
  __break(1u);
  return result;
}