uint64_t sub_1E617A800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E617A864()
{
  result = qword_1ED075DB8;
  if (!qword_1ED075DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075DB8);
  }

  return result;
}

unint64_t sub_1E617A8B8()
{
  result = qword_1EE2DAAF8;
  if (!qword_1EE2DAAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DAAF8);
  }

  return result;
}

unint64_t sub_1E617A90C()
{
  result = qword_1ED075DD0;
  if (!qword_1ED075DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075DD0);
  }

  return result;
}

unint64_t sub_1E617A960()
{
  result = qword_1ED075DD8;
  if (!qword_1ED075DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075DD8);
  }

  return result;
}

unint64_t sub_1E617A9B4()
{
  result = qword_1EE2DAAD0;
  if (!qword_1EE2DAAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DAAD0);
  }

  return result;
}

unint64_t sub_1E617AA08()
{
  result = qword_1ED075DE0;
  if (!qword_1ED075DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075DE0);
  }

  return result;
}

uint64_t ArtworkContent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DE8, &qword_1E65F3950);
  v4 = *(v3 - 8);
  v97 = v3;
  v98 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v108 = &v81 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DF0, &qword_1E65F3958);
  v95 = *(v6 - 8);
  v96 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v107 = &v81 - v7;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DF8, &qword_1E65F3960);
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v106 = &v81 - v8;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075E00, &qword_1E65F3968);
  v92 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v105 = &v81 - v9;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075E08, &qword_1E65F3970);
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v101 = &v81 - v10;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075E10, &qword_1E65F3978);
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v100 = &v81 - v11;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075E18, &unk_1E65F3980);
  v104 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v13 = &v81 - v12;
  v103 = type metadata accessor for ArtworkContent(0);
  v14 = MEMORY[0x1EEE9AC00](v103);
  v99 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v81 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v81 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v81 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = (&v81 - v26);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v81 - v28;
  v30 = a1[3];
  v111 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_1E617A7AC();
  v31 = v110;
  sub_1E65E6D98();
  if (!v31)
  {
    v82 = v27;
    v83 = v21;
    v84 = v24;
    v85 = v18;
    v33 = v105;
    v32 = v106;
    v110 = 0;
    v35 = v107;
    v34 = v108;
    v86 = v29;
    v36 = v104;
    v37 = v109;
    v38 = sub_1E65E6AF8();
    v39 = (2 * *(v38 + 16)) | 1;
    v112 = v38;
    v113 = v38 + 32;
    v114 = 0;
    v115 = v39;
    v40 = sub_1E5FBE3E8();
    v41 = v13;
    if (v40 != 6 && v114 == v115 >> 1)
    {
      if (v40 > 2u)
      {
        if (v40 != 3)
        {
          v106 = v13;
          v49 = v36;
          if (v40 == 4)
          {
            v116 = 4;
            sub_1E617A8B8();
            v50 = v109;
            v51 = v110;
            v52 = v106;
            sub_1E65E6A68();
            if (!v51)
            {
              sub_1E65DB268();
              v116 = 0;
              sub_1E5DF2818(&qword_1ED075E28, MEMORY[0x1E699D120], MEMORY[0x1E699D138]);
              v53 = v85;
              v54 = v96;
              sub_1E65E6AD8();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073548, &qword_1E65ED508);
              v116 = 1;
              sub_1E617BA68(&qword_1ED075E30, MEMORY[0x1E699F0C0]);
              sub_1E65E6AD8();
              (*(v95 + 8))(v35, v54);
              (*(v49 + 8))(v106, v109);
              swift_unknownObjectRelease();
              swift_storeEnumTagMultiPayload();
              v77 = v53;
LABEL_28:
              v44 = v86;
              sub_1E617BA04(v77, v86);
              goto LABEL_29;
            }
          }

          else
          {
            v116 = 5;
            sub_1E617A864();
            v50 = v109;
            v63 = v110;
            v52 = v106;
            sub_1E65E6A68();
            if (!v63)
            {
              sub_1E65D76F8();
              v116 = 0;
              sub_1E5DF2818(&qword_1ED073B78, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
              v67 = v97;
              sub_1E65E6AD8();
              v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DB0, &qword_1E65F3940);
              sub_1E65D9388();
              v116 = 1;
              sub_1E5DF2818(&qword_1ED075E20, MEMORY[0x1E69CC048], MEMORY[0x1E69CC068]);
              sub_1E65E6A98();
              v116 = 2;
              v78 = sub_1E65E6AC8();
              v79 = *(v76 + 64);
              (*(v98 + 8))(v34, v67);
              (*(v36 + 8))(v106, v109);
              swift_unknownObjectRelease();
              v80 = v99;
              *&v99[v79] = v78;
              swift_storeEnumTagMultiPayload();
              v77 = v80;
              goto LABEL_28;
            }
          }

          (*(v36 + 8))(v52, v50);
          goto LABEL_11;
        }

        v116 = 3;
        sub_1E617A90C();
        v59 = v110;
        sub_1E65E6A68();
        v57 = v102;
        v60 = v36;
        if (v59)
        {
          (*(v36 + 8))(v13, v37);
          goto LABEL_11;
        }

        v64 = v94;
        v65 = sub_1E65E6AA8();
        v66 = v32;
        v72 = v65;
        v74 = v73;
        (*(v93 + 8))(v66, v64);
        (*(v60 + 8))(v13, v37);
        swift_unknownObjectRelease();
        v71 = v83;
        *v83 = v72;
        *(v71 + 8) = v74;
      }

      else
      {
        if (v40)
        {
          v42 = v110;
          if (v40 == 1)
          {
            v116 = 1;
            sub_1E617A9B4();
            v43 = v101;
            sub_1E65E6A68();
            if (!v42)
            {
              (*(v89 + 8))(v43, v90);
              (*(v36 + 8))(v41, v37);
              swift_unknownObjectRelease();
              v44 = v86;
              swift_storeEnumTagMultiPayload();
LABEL_29:
              v75 = v102;
              goto LABEL_30;
            }

            goto LABEL_10;
          }

          v116 = 2;
          sub_1E617A960();
          sub_1E65E6A68();
          if (!v42)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920);
            sub_1E617D0F4(&qword_1ED0750C8, MEMORY[0x1E699DC30]);
            v61 = v84;
            v62 = v91;
            sub_1E65E6AD8();
            (*(v92 + 8))(v33, v62);
            (*(v36 + 8))(v41, v37);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v77 = v61;
            goto LABEL_28;
          }

LABEL_10:
          (*(v36 + 8))(v41, v37);
LABEL_11:
          swift_unknownObjectRelease();
          return __swift_destroy_boxed_opaque_existential_1(v111);
        }

        v116 = 0;
        sub_1E617AA08();
        v55 = v100;
        v56 = v110;
        sub_1E65E6A68();
        v57 = v102;
        if (v56)
        {
          goto LABEL_10;
        }

        v58 = v88;
        v68 = sub_1E65E6AA8();
        v70 = v69;
        (*(v87 + 8))(v55, v58);
        (*(v36 + 8))(v13, v37);
        swift_unknownObjectRelease();
        v71 = v82;
        *v82 = v68;
        *(v71 + 8) = v70;
      }

      swift_storeEnumTagMultiPayload();
      v44 = v86;
      sub_1E617BA04(v71, v86);
      v75 = v57;
LABEL_30:
      sub_1E617BA04(v44, v75);
      return __swift_destroy_boxed_opaque_existential_1(v111);
    }

    v45 = sub_1E65E68F8();
    swift_allocError();
    v47 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80);
    *v47 = v103;
    sub_1E65E6A78();
    sub_1E65E68E8();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x1E69E6AF8], v45);
    swift_willThrow();
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v111);
}

uint64_t sub_1E617BA04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E617BA68(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073548, &qword_1E65ED508);
    v4 = MEMORY[0x1E699DC60];
    sub_1E5DF2818(&qword_1EE2D6B58, MEMORY[0x1E699DC60], MEMORY[0x1E699DC88]);
    sub_1E5DF2818(&qword_1EE2D6B78, v4, MEMORY[0x1E699DC68]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ArtworkContent.hash(into:)(uint64_t a1)
{
  v47 = a1;
  v2 = sub_1E65D9388();
  v45 = *(v2 - 8);
  v46 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v38 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D78, &qword_1E65F38F8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v38 - v7;
  v44 = sub_1E65D76F8();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v41 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073548, &qword_1E65ED508);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  v12 = sub_1E65DB268();
  v39 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38 - v17;
  v19 = type metadata accessor for ArtworkContent(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E617A800(v1, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948) + 48);
      v36 = v39;
      (*(v39 + 32))(v14, v21, v12);
      sub_1E5FAB460(&v21[v35], v11, &qword_1ED073548, &qword_1E65ED508);
      MEMORY[0x1E694E740](4);
      sub_1E5DF2818(&qword_1EE2D6D70, MEMORY[0x1E699D120], MEMORY[0x1E699D130]);
      sub_1E65E5B48();
      sub_1E5DF2818(&qword_1EE2D6B70, MEMORY[0x1E699DC60], MEMORY[0x1E699DC70]);
      sub_1E65E1758();
      sub_1E5DFE50C(v11, &qword_1ED073548, &qword_1E65ED508);
      return (*(v36 + 8))(v14, v12);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DB0, &qword_1E65F3940);
      v25 = *(v24 + 48);
      v26 = *&v21[*(v24 + 64)];
      v28 = v41;
      v27 = v42;
      v29 = v44;
      (*(v42 + 32))(v41, v21, v44);
      v30 = v43;
      sub_1E5FAB460(&v21[v25], v43, &qword_1ED075D78, &qword_1E65F38F8);
      MEMORY[0x1E694E740](5);
      sub_1E5DF2818(&qword_1EE2D71A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1E65E5B48();
      v31 = v40;
      sub_1E617D084(v30, v40);
      v33 = v45;
      v32 = v46;
      if ((*(v45 + 48))(v31, 1, v46) == 1)
      {
        sub_1E65E6D48();
      }

      else
      {
        v37 = v38;
        (*(v33 + 32))(v38, v31, v32);
        sub_1E65E6D48();
        sub_1E5DF2818(&qword_1ED075E38, MEMORY[0x1E69CC048], MEMORY[0x1E69CC058]);
        sub_1E65E5B48();
        (*(v33 + 8))(v37, v32);
      }

      MEMORY[0x1E694E740](v26);
      sub_1E5DFE50C(v30, &qword_1ED075D78, &qword_1E65F38F8);
      return (*(v27 + 8))(v28, v29);
    }

    else
    {
      return MEMORY[0x1E694E740](1);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        (*(v16 + 32))(v18, v21, v15);
        MEMORY[0x1E694E740](2);
        sub_1E617D0F4(&qword_1EE2D6B88, MEMORY[0x1E699DC20]);
        sub_1E65E5B48();
        return (*(v16 + 8))(v18, v15);
      }

      v34 = 3;
    }

    else
    {
      v34 = 0;
    }

    MEMORY[0x1E694E740](v34);
    sub_1E65E5D78();
  }
}

uint64_t ArtworkContent.hashValue.getter()
{
  sub_1E65E6D28();
  ArtworkContent.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t sub_1E617C31C()
{
  sub_1E65E6D28();
  ArtworkContent.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t sub_1E617C360(uint64_t a1)
{
  sub_1E65E6D28();
  ArtworkContent.hash(into:)(v2);
  return sub_1E65E6D78();
}

uint64_t _s10Blackbeard14ArtworkContentO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v104 = a1;
  v105 = a2;
  v2 = sub_1E65D9388();
  v3 = *(v2 - 8);
  v90 = v2;
  v91 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v87 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075E78, &qword_1E65F41F8);
  MEMORY[0x1EEE9AC00](v89);
  v92 = &v87 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D78, &qword_1E65F38F8);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v88 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v96 = &v87 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v97 = &v87 - v11;
  v12 = sub_1E65D76F8();
  v13 = *(v12 - 8);
  v101 = v12;
  v102 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v98 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073548, &qword_1E65ED508);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v94 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v95 = &v87 - v18;
  v103 = sub_1E65DB268();
  v100 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v93 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920);
  v99 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v87 - v21;
  v23 = type metadata accessor for ArtworkContent(0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v87 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = (&v87 - v31);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v87 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v37 = (&v87 - v36);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075E80, &qword_1E65F4200);
  v39 = MEMORY[0x1EEE9AC00](v38 - 8);
  v41 = &v87 - v40;
  v42 = (&v87 + *(v39 + 56) - v40);
  sub_1E617A800(v104, &v87 - v40);
  sub_1E617A800(v105, v42);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1E617A800(v41, v29);
      v68 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948) + 48);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v69 = v100;
        v70 = v93;
        v71 = v103;
        (*(v100 + 32))(v93, v42, v103);
        v72 = v95;
        sub_1E5FAB460(&v29[v68], v95, &qword_1ED073548, &qword_1E65ED508);
        v73 = v42 + v68;
        v74 = v70;
        v75 = v94;
        sub_1E5FAB460(v73, v94, &qword_1ED073548, &qword_1E65ED508);
        v76 = MEMORY[0x1E6942C60](v29, v70);
        v77 = *(v69 + 8);
        v77(v29, v71);
        if (v76)
        {
          sub_1E65DC488();
          v78 = MEMORY[0x1E699DC60];
          sub_1E5DF2818(&qword_1EE2D6B68, MEMORY[0x1E699DC60], MEMORY[0x1E699DC78]);
          sub_1E5DF2818(&qword_1EE2D6B60, v78, MEMORY[0x1E699DC80]);
          v45 = sub_1E65E1768();
          sub_1E5DFE50C(v75, &qword_1ED073548, &qword_1E65ED508);
          sub_1E5DFE50C(v72, &qword_1ED073548, &qword_1E65ED508);
          v77(v74, v71);
          goto LABEL_40;
        }

        sub_1E5DFE50C(v75, &qword_1ED073548, &qword_1E65ED508);
        sub_1E5DFE50C(v72, &qword_1ED073548, &qword_1E65ED508);
        v77(v74, v71);
        goto LABEL_35;
      }

      sub_1E5DFE50C(&v29[v68], &qword_1ED073548, &qword_1E65ED508);
      (*(v100 + 8))(v29, v103);
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_1E617A800(v41, v26);
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DB0, &qword_1E65F3940);
        v48 = *(v47 + 48);
        v49 = *(v47 + 64);
        v50 = *&v26[v49];
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          sub_1E5DFE50C(&v26[v48], &qword_1ED075D78, &qword_1E65F38F8);
          (*(v102 + 8))(v26, v101);
          goto LABEL_27;
        }

        v104 = *(v42 + v49);
        v105 = v50;
        v52 = v101;
        v51 = v102;
        v53 = v98;
        (*(v102 + 32))(v98, v42, v101);
        v54 = v97;
        sub_1E5FAB460(&v26[v48], v97, &qword_1ED075D78, &qword_1E65F38F8);
        v55 = v42 + v48;
        v56 = v53;
        v57 = v96;
        sub_1E5FAB460(v55, v96, &qword_1ED075D78, &qword_1E65F38F8);
        v58 = sub_1E65D76D8();
        v59 = v51 + 8;
        v60 = *(v51 + 8);
        v60(v26, v52);
        if ((v58 & 1) == 0)
        {
          sub_1E5DFE50C(v57, &qword_1ED075D78, &qword_1E65F38F8);
          sub_1E5DFE50C(v54, &qword_1ED075D78, &qword_1E65F38F8);
          v60(v56, v52);
          goto LABEL_35;
        }

        v102 = v59;
        v61 = *(v89 + 48);
        v62 = v92;
        sub_1E617D084(v54, v92);
        sub_1E617D084(v57, v62 + v61);
        v63 = v90;
        v64 = *(v91 + 48);
        if (v64(v62, 1, v90) == 1)
        {
          sub_1E5DFE50C(v57, &qword_1ED075D78, &qword_1E65F38F8);
          v65 = v92;
          sub_1E5DFE50C(v54, &qword_1ED075D78, &qword_1E65F38F8);
          v60(v98, v101);
          if (v64(v65 + v61, 1, v63) == 1)
          {
            sub_1E5DFE50C(v65, &qword_1ED075D78, &qword_1E65F38F8);
            goto LABEL_39;
          }
        }

        else
        {
          v80 = v88;
          sub_1E617D084(v62, v88);
          if (v64(v62 + v61, 1, v63) != 1)
          {
            v82 = v91;
            v83 = v62 + v61;
            v84 = v87;
            (*(v91 + 32))(v87, v83, v63);
            sub_1E5DF2818(&qword_1ED075E88, MEMORY[0x1E69CC048], MEMORY[0x1E69CC060]);
            v85 = sub_1E65E5B98();
            v86 = *(v82 + 8);
            v86(v84, v63);
            sub_1E5DFE50C(v96, &qword_1ED075D78, &qword_1E65F38F8);
            sub_1E5DFE50C(v97, &qword_1ED075D78, &qword_1E65F38F8);
            v60(v98, v101);
            v86(v80, v63);
            sub_1E5DFE50C(v62, &qword_1ED075D78, &qword_1E65F38F8);
            if ((v85 & 1) == 0)
            {
              goto LABEL_35;
            }

LABEL_39:
            v45 = v105 == v104;
            goto LABEL_40;
          }

          sub_1E5DFE50C(v96, &qword_1ED075D78, &qword_1E65F38F8);
          v65 = v92;
          sub_1E5DFE50C(v97, &qword_1ED075D78, &qword_1E65F38F8);
          v60(v98, v101);
          (*(v91 + 8))(v80, v63);
        }

        sub_1E5DFE50C(v65, &qword_1ED075E78, &qword_1E65F41F8);
        goto LABEL_35;
      }

      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_29;
      }
    }

LABEL_27:
    sub_1E5DFE50C(v41, &qword_1ED075E80, &qword_1E65F4200);
LABEL_36:
    v45 = 0;
    return v45 & 1;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1E617A800(v41, v37);
    v67 = *v37;
    v66 = v37[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1E617A800(v41, v35);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v44 = v99;
      (*(v99 + 32))(v22, v42, v20);
      sub_1E5DF2818(&qword_1EE2D6D80, MEMORY[0x1E699D120], MEMORY[0x1E699D118]);
      v45 = sub_1E65DC418();
      v46 = *(v44 + 8);
      v46(v22, v20);
      v46(v35, v20);
LABEL_40:
      sub_1E617DC08(v41);
      return v45 & 1;
    }

    (*(v99 + 8))(v35, v20);
    goto LABEL_27;
  }

  sub_1E617A800(v41, v32);
  v67 = *v32;
  v66 = v32[1];
  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_14:

    goto LABEL_27;
  }

LABEL_19:
  if (v67 != *v42 || v66 != v42[1])
  {
    v79 = sub_1E65E6C18();

    if (v79)
    {
      goto LABEL_29;
    }

LABEL_35:
    sub_1E617DC08(v41);
    goto LABEL_36;
  }

LABEL_29:
  sub_1E617DC08(v41);
  v45 = 1;
  return v45 & 1;
}

uint64_t sub_1E617D084(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D78, &qword_1E65F38F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E617D0F4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074A08, &qword_1E65F3920);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E617D200()
{
  result = qword_1ED075E48;
  if (!qword_1ED075E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075E48);
  }

  return result;
}

unint64_t sub_1E617D258()
{
  result = qword_1ED075E50;
  if (!qword_1ED075E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075E50);
  }

  return result;
}

unint64_t sub_1E617D2B0()
{
  result = qword_1ED075E58;
  if (!qword_1ED075E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075E58);
  }

  return result;
}

unint64_t sub_1E617D308()
{
  result = qword_1ED075E60;
  if (!qword_1ED075E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075E60);
  }

  return result;
}

unint64_t sub_1E617D360()
{
  result = qword_1ED075E68;
  if (!qword_1ED075E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075E68);
  }

  return result;
}

unint64_t sub_1E617D3B8()
{
  result = qword_1ED075E70;
  if (!qword_1ED075E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075E70);
  }

  return result;
}

unint64_t sub_1E617D410()
{
  result = qword_1EE2DAB20;
  if (!qword_1EE2DAB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DAB20);
  }

  return result;
}

unint64_t sub_1E617D468()
{
  result = qword_1EE2DAB28;
  if (!qword_1EE2DAB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DAB28);
  }

  return result;
}

unint64_t sub_1E617D4C0()
{
  result = qword_1EE2DAAC0;
  if (!qword_1EE2DAAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DAAC0);
  }

  return result;
}

unint64_t sub_1E617D518()
{
  result = qword_1EE2DAAC8;
  if (!qword_1EE2DAAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DAAC8);
  }

  return result;
}

unint64_t sub_1E617D570()
{
  result = qword_1EE2DAB10;
  if (!qword_1EE2DAB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DAB10);
  }

  return result;
}

unint64_t sub_1E617D5C8()
{
  result = qword_1EE2DAB18;
  if (!qword_1EE2DAB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DAB18);
  }

  return result;
}

unint64_t sub_1E617D620()
{
  result = qword_1EE2DAB00;
  if (!qword_1EE2DAB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DAB00);
  }

  return result;
}

unint64_t sub_1E617D678()
{
  result = qword_1EE2DAB08;
  if (!qword_1EE2DAB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DAB08);
  }

  return result;
}

unint64_t sub_1E617D6D0()
{
  result = qword_1EE2DAAE8;
  if (!qword_1EE2DAAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DAAE8);
  }

  return result;
}

unint64_t sub_1E617D728()
{
  result = qword_1EE2DAAF0;
  if (!qword_1EE2DAAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DAAF0);
  }

  return result;
}

unint64_t sub_1E617D780()
{
  result = qword_1EE2DAAD8;
  if (!qword_1EE2DAAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DAAD8);
  }

  return result;
}

unint64_t sub_1E617D7D8()
{
  result = qword_1EE2DAAE0;
  if (!qword_1EE2DAAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DAAE0);
  }

  return result;
}

unint64_t sub_1E617D830()
{
  result = qword_1EE2DAB30;
  if (!qword_1EE2DAB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DAB30);
  }

  return result;
}

unint64_t sub_1E617D888()
{
  result = qword_1EE2DAB38;
  if (!qword_1EE2DAB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DAB38);
  }

  return result;
}

uint64_t sub_1E617D8DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6472617761 && a2 == 0xE500000000000000;
  if (v4 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E6613BC0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x63696D616E7964 && a2 == 0xE700000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F6C6F43786568 && a2 == 0xE800000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x647261646E617473 && a2 == 0xE800000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5074756F6B726F77 && a2 == 0xEB000000006E616CLL)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E65E6C18();

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

uint64_t sub_1E617DAE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xE800000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E6613BE0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E65E6C18();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E617DC08(uint64_t a1)
{
  v2 = type metadata accessor for ArtworkContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E617DC64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v66 = a2;
  v4 = type metadata accessor for AppComposer(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v65 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v64 = &v55 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v63 = &v55 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v62 = (&v55 - v13);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v55 - v16;
  v18 = type metadata accessor for BrowsePage(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v71 = v2;
  v72 = sub_1E617E190(a1);
  sub_1E617FA24(a1, &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BrowsePage);
  v68 = type metadata accessor for AppComposer;
  sub_1E617FA24(v2, v17, type metadata accessor for AppComposer);
  v21 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v22 = *(v5 + 80);
  v58 = v15;
  v69 = v22 | 7;
  v23 = swift_allocObject();
  sub_1E617FC80(&v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v21, type metadata accessor for BrowsePage);
  v67 = type metadata accessor for AppComposer;
  v56 = v23;
  sub_1E617FC80(v17, v23 + ((v20 + v22 + v21) & ~v22), type metadata accessor for AppComposer);
  sub_1E65E5148();
  v70 = sub_1E65E5138();
  v24 = v71;
  v25 = v62;
  sub_1E617FA24(v71, v62, type metadata accessor for AppComposer);
  v26 = (v22 + 32) & ~v22;
  v27 = v26 + v15;
  v59 = v27;
  v60 = v26;
  v28 = swift_allocObject();
  v57 = &unk_1E65F4228;
  *(v28 + 16) = &unk_1E65F4228;
  *(v28 + 24) = v23;
  v29 = v28;
  v30 = v67;
  sub_1E617FC80(v25, v28 + v26, v67);
  *(v29 + v27) = v72;
  v31 = v29 + (v27 & 0xFFFFFFFFFFFFFFF8);
  v61 = v29;
  v62 = sub_1E6172524;
  *(v31 + 8) = sub_1E6172524;
  *(v31 + 16) = 0;
  v32 = (v29 + (((v27 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
  v33 = MEMORY[0x1E69AB380];
  *v32 = v70;
  v32[1] = v33;
  v34 = v63;
  v35 = v68;
  sub_1E617FA24(v24, v63, v68);
  v36 = (v22 + 48) & ~v22;
  v37 = v36 + v58;
  v55 = v36;
  v38 = (v36 + v58) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v40 = v56;
  v41 = v57;
  v39[2] = v57;
  v39[3] = v40;
  v42 = v70;
  v39[4] = v70;
  v39[5] = MEMORY[0x1E69AB380];
  sub_1E617FC80(v34, v39 + v36, v30);
  *(v39 + v37) = v72;
  v43 = v39 + v38;
  v44 = v62;
  *(v43 + 1) = v62;
  *(v43 + 2) = 0;
  v45 = v64;
  sub_1E617FA24(v71, v64, v35);
  v46 = (v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  v47[2] = v41;
  v47[3] = v40;
  v48 = v41;
  v47[4] = v42;
  v47[5] = MEMORY[0x1E69AB380];
  v49 = v67;
  sub_1E617FC80(v45, v47 + v55, v67);
  v50 = v47 + v46;
  *v50 = v44;
  *(v50 + 1) = 0;
  v50[16] = v72;
  v51 = v65;
  sub_1E617FA24(v71, v65, v68);
  v52 = swift_allocObject();
  *(v52 + 16) = v48;
  *(v52 + 24) = v40;
  sub_1E617FC80(v51, v52 + v60, v49);
  swift_retain_n();
  result = swift_retain_n();
  v54 = v66;
  *v66 = result;
  v54[1] = MEMORY[0x1E69AB380];
  v54[2] = &unk_1E65EB918;
  v54[3] = v61;
  v54[4] = &unk_1E65FA770;
  v54[5] = v39;
  v54[6] = &unk_1E65EB920;
  v54[7] = v47;
  v54[8] = &unk_1E65FA780;
  v54[9] = v52;
  return result;
}

uint64_t sub_1E617E190(uint64_t a1)
{
  v2 = type metadata accessor for BrowsePage(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E617FA24(a1, v4, type metadata accessor for BrowsePage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1E617FC20(v4, type metadata accessor for BrowsePage);
    return 0;
  }

  if (EnumCaseMultiPayload != 1)
  {
    return 0;
  }

  v6 = sub_1E65E03C8();
  v8 = v7;
  if (v6 == sub_1E65E03C8() && v8 == v9)
  {

    v12 = 3;
  }

  else
  {
    v11 = sub_1E65E6C18();

    if (v11)
    {
      v12 = 3;
    }

    else
    {
      v12 = 0;
    }
  }

  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
  v15 = sub_1E65D72D8();
  (*(*(v15 - 8) + 8))(&v4[v14], v15);
  return v12;
}

uint64_t sub_1E617E338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v3[6] = sub_1E65D7218();
  v3[7] = swift_task_alloc();
  v4 = sub_1E65D72D8();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = sub_1E65DFC18();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = sub_1E65DFA58();
  v3[15] = swift_task_alloc();
  v3[16] = sub_1E65DFAC8();
  v3[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EA0, &qword_1E65F4230);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v6 = sub_1E65DFA08();
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670);
  v3[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  v3[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = type metadata accessor for BrowsePage(0);
  v3[32] = swift_task_alloc();
  v7 = sub_1E65DFB08();
  v3[33] = v7;
  v3[34] = *(v7 - 8);
  v3[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E617E724, 0, 0);
}

uint64_t sub_1E617E724()
{
  v2 = v0[34];
  v1 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[4];
  sub_1E6143704(v1);
  v6 = sub_1E65DFAF8();
  v8 = v7;
  (*(v2 + 8))(v1, v3);
  sub_1E617FA24(v5, v4, type metadata accessor for BrowsePage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1E617FC20(v0[32], type metadata accessor for BrowsePage);
    swift_getKeyPath();
    sub_1E65E4EC8();

    v30 = v0[2];
    if (*(v30 + 16) && (v31 = sub_1E6215038(v6, v8), (v32 & 1) != 0))
    {
      v34 = v0[23];
      v33 = v0[24];
      v35 = v0[21];
      v36 = v0[22];
      (*(v36 + 16))(v34, *(v30 + 56) + *(v36 + 72) * v31, v35);

      (*(v36 + 32))(v33, v34, v35);
      sub_1E65DF9C8();
      v37 = swift_getEnumCaseMultiPayload();
      if ((v37 - 2) < 2)
      {
        v38 = v0[3];
        (*(v0[22] + 8))(v0[24], v0[21]);

        v39 = sub_1E65D7A38();
        (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
        goto LABEL_15;
      }

      if (!v37)
      {
        v69 = v0[20];
        sub_1E617FC20(v0[17], MEMORY[0x1E699D4C0]);
        v70 = sub_1E65E0218();
        (*(*(v70 - 8) + 56))(v69, 1, 1, v70);
LABEL_23:
        v77 = v0[29];
        v78 = v0[19];
        v79 = v0[20];
        v80 = v0[5];
        v81 = *MEMORY[0x1E69CBD40];
        v82 = sub_1E65D8F38();
        v83 = *(v82 - 8);
        (*(v83 + 104))(v77, v81, v82);
        (*(v83 + 56))(v77, 0, 1, v82);
        v84 = (v80 + *(type metadata accessor for AppComposer(0) + 36));
        v85 = *v84;
        v86 = v84[1];
        sub_1E617FCE8(v79, v78);
        sub_1E65E0218();
        v87 = *(v70 - 8);
        v88 = *(v87 + 48);
        v89 = v88(v78, 1, v70);
        sub_1E5FA9D34(v85, v86);
        if (v89 == 1)
        {
          sub_1E617FD58(v0[19]);
        }

        else
        {
          v90 = v0[19];
          v92 = v0[12];
          v91 = v0[13];
          v93 = v0[11];
          sub_1E65E01F8();
          (*(v87 + 8))(v90, v70);
          sub_1E65DFBD8();
          (*(v92 + 8))(v91, v93);
          v89 = 0;
        }

        v94 = v0[27];
        v95 = v0[20];
        v96 = v0[18];
        v97 = sub_1E65D74E8();
        (*(*(v97 - 8) + 56))(v94, v89, 1, v97);
        sub_1E617FCE8(v95, v96);
        v98 = v88(v96, 1, v70);
        v99 = v0[18];
        if (v98 == 1)
        {
          sub_1E617FD58(v0[18]);
        }

        else
        {
          v100 = v0[12];
          v101 = v0[13];
          v102 = v0[11];
          sub_1E65E01F8();
          (*(v87 + 8))(v99, v70);
          sub_1E65DFBE8();
          (*(v100 + 8))(v101, v102);
        }

        v103 = v0[26];
        v104 = v0[24];
        v105 = v0[25];
        v107 = v0[21];
        v106 = v0[22];
        v108 = v0[20];
        v45 = v0[3];
        v109 = sub_1E65D9908();
        (*(*(v109 - 8) + 56))(v103, 1, 1, v109);
        v110 = sub_1E65D9F88();
        (*(*(v110 - 8) + 56))(v105, 1, 1, v110);
        sub_1E65D7A28();
        sub_1E617FD58(v108);
        (*(v106 + 8))(v104, v107);
        goto LABEL_10;
      }

      v71 = v0[17];
      v72 = v0[15];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075E98, &qword_1E65F4218);

      sub_1E617FC80(v71, v72, MEMORY[0x1E699D488]);
      if (!swift_getEnumCaseMultiPayload())
      {
        v74 = v0[20];
        v75 = v0[15];
        v70 = sub_1E65E0218();
        v76 = *(v70 - 8);
        (*(v76 + 32))(v74, v75, v70);
        (*(v76 + 56))(v74, 0, 1, v70);
        goto LABEL_23;
      }

      v73 = v0[15];
      v55 = v0[3];
      (*(v0[22] + 8))(v0[24], v0[21]);

      sub_1E617FC20(v73, MEMORY[0x1E699D488]);
    }

    else
    {
      v55 = v0[3];
    }

    v56 = sub_1E65D7A38();
    (*(*(v56 - 8) + 56))(v55, 1, 1, v56);
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v10 = v0[32];
    v12 = v0[9];
    v11 = v0[10];
    v13 = v0[8];

    v14 = *(v10 + 16);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0);
    (*(v12 + 32))(v11, v10 + *(v15 + 80), v13);
    v16 = v0[30];
    v17 = v0[28];
    v18 = v0[26];
    v19 = v0[9];
    v114 = v0[10];
    v112 = v0[25];
    v113 = v0[8];
    if (v14)
    {
      v20 = v0[3];

      v21 = *MEMORY[0x1E69CBDB0];
      v22 = sub_1E65D8F38();
      v23 = *(v22 - 8);
      (*(v23 + 104))(v16, v21, v22);
      (*(v23 + 56))(v16, 0, 1, v22);
      v24 = sub_1E65D74E8();
      (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
      v25 = sub_1E65D9908();
      (*(*(v25 - 8) + 56))(v18, 1, 1, v25);
      v26 = sub_1E65D9F88();
      (*(*(v26 - 8) + 56))(v112, 1, 1, v26);
      sub_1E65D7A28();
      (*(v19 + 8))(v114, v113);
      v27 = sub_1E65D7A38();
      v28 = *(*(v27 - 8) + 56);
      v29 = v20;
    }

    else
    {
      v57 = v0[5];
      v111 = v0[3];
      v58 = *MEMORY[0x1E69CBDB0];
      v59 = sub_1E65D8F38();
      v60 = *(v59 - 8);
      (*(v60 + 104))(v16, v58, v59);
      (*(v60 + 56))(v16, 0, 1, v59);
      v61 = (v57 + *(type metadata accessor for AppComposer(0) + 36));
      v62 = *v61;
      v63 = v61[1];
      v64 = sub_1E65D74E8();
      (*(*(v64 - 8) + 56))(v17, 1, 1, v64);
      sub_1E5FA9D34(v62, v63);
      sub_1E65D71F8();
      sub_1E617FBC8();
      sub_1E65E5E48();
      v65 = sub_1E65D9908();
      (*(*(v65 - 8) + 56))(v18, 1, 1, v65);
      v66 = sub_1E65D9F88();
      (*(*(v66 - 8) + 56))(v112, 1, 1, v66);
      sub_1E65D7A28();
      (*(v19 + 8))(v114, v113);
      v27 = sub_1E65D7A38();
      v28 = *(*(v27 - 8) + 56);
      v29 = v111;
    }

    goto LABEL_14;
  }

  v40 = v0[30];
  v41 = v0[28];
  v43 = v0[25];
  v42 = v0[26];
  v44 = v0[5];
  v45 = v0[3];
  v46 = *MEMORY[0x1E69CBD80];
  v47 = sub_1E65D8F38();
  v48 = *(v47 - 8);
  (*(v48 + 104))(v40, v46, v47);
  (*(v48 + 56))(v40, 0, 1, v47);
  v49 = (v44 + *(type metadata accessor for AppComposer(0) + 36));
  v50 = *v49;
  v51 = v49[1];
  v52 = sub_1E65D74E8();
  (*(*(v52 - 8) + 56))(v41, 1, 1, v52);
  v53 = sub_1E65D9908();
  (*(*(v53 - 8) + 56))(v42, 1, 1, v53);
  v54 = sub_1E65D9F88();
  (*(*(v54 - 8) + 56))(v43, 1, 1, v54);
  sub_1E5FA9D34(v50, v51);
  sub_1E65D7A28();
LABEL_10:
  v27 = sub_1E65D7A38();
  v28 = *(*(v27 - 8) + 56);
  v29 = v45;
LABEL_14:
  v28(v29, 0, 1, v27);
LABEL_15:

  v67 = v0[1];

  return v67();
}

uint64_t sub_1E617F570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = sub_1E65DFAC8();
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();
  v6[8] = sub_1E65DFA18();
  v6[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E617F644, 0, 0);
}

uint64_t sub_1E617F644()
{
  v1 = v0 + 9;
  sub_1E617FA24(v0[2], v0[9], MEMORY[0x1E699D470]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = MEMORY[0x1E699D470];
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 3) < 2 || (v10 = v0[6], v11 = v0[7], v1 = v0 + 6, sub_1E65DF9C8(), sub_1E617FC80(v11, v10, MEMORY[0x1E699D4C0]), v12 = swift_getEnumCaseMultiPayload(), v3 = MEMORY[0x1E699D4C0], (v12 - 2) < 2))
    {
LABEL_8:

      v5 = v0[1];

      return v5();
    }

    if (!v12)
    {
LABEL_6:
      sub_1E617FC20(*v1, v3);
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075E98, &qword_1E65F4218);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v4 = EnumCaseMultiPayload == 1;
    }

    else
    {
      v4 = 0;
    }

    if (!v4)
    {
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075E90, &qword_1E65F4210);
  }

  v7 = *v1;
  v8 = v0[4];

  sub_1E617FC20(v7, MEMORY[0x1E699D488]);
  v13 = (*(v8 + 16) + **(v8 + 16));
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_1E617F8D4;

  return v13();
}

uint64_t sub_1E617F8D4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E617FA24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E617FA8C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for BrowsePage(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AppComposer(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1E5DFA78C;

  return sub_1E617E338(a1, v1 + v6, v1 + v9);
}

unint64_t sub_1E617FBC8()
{
  result = qword_1ED075EA8;
  if (!qword_1ED075EA8)
  {
    sub_1E65D7218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075EA8);
  }

  return result;
}

uint64_t sub_1E617FC20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E617FC80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E617FCE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EA0, &qword_1E65F4230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E617FD58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EA0, &qword_1E65F4230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E617FDC0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E65DB838();
  v3 = sub_1E65D8888();
  v5 = v4;
  sub_1E65D8CC8();
  v11 = v6;
  sub_1E65E6848();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = v2;
  sub_1E64205E4(v9, v3, v5, isUniquelyReferenced_nonNull_native);

  sub_1E65DB818();
  return sub_1E65DB808();
}

uint64_t sub_1E617FE94@<X0>(uint64_t *a1@<X8>)
{
  v105 = a1;
  v2 = type metadata accessor for AccountService();
  Description = v2[-1].Description;
  v100 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v97 = v3;
  v98 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for AppStateService();
  v96 = v104[-1].Description;
  MEMORY[0x1EEE9AC00](v104);
  v94 = v4;
  v95 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for RemoteBrowsingService();
  v91 = v93[-1].Description;
  MEMORY[0x1EEE9AC00](v93);
  v89 = v5;
  v90 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v118 = &v84 - v7;
  QueueService = type metadata accessor for UpNextQueueService();
  v9 = QueueService[-1].Description;
  MEMORY[0x1EEE9AC00](QueueService);
  v11 = v10;
  v12 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EB0, &qword_1E65F4260);
  v108 = *(v102 - 8);
  v13 = MEMORY[0x1EEE9AC00](v102);
  v103 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v116 = &v84 - v15;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v16 = sub_1E65E3B68();
  __swift_project_value_buffer(v16, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v17 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v106 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v18 = type metadata accessor for AppEnvironment(0);
  v19 = v18[7];
  v92 = v18[6];
  v101 = v19;
  v88 = v18[25];
  v20 = v18[33];
  v86 = v20;
  swift_getKeyPath();
  v85 = v9[2];
  v85(v12, v17 + v20, QueueService);
  v21 = *(v9 + 80);
  v87 = v21 | 7;
  v84 = v11;
  v22 = swift_allocObject();
  v23 = v9[4];
  v107 = (v9 + 4);
  v110 = v23;
  v23(v22 + ((v21 + 16) & ~v21), v12, QueueService);

  v24 = v116;
  sub_1E65E4E08();
  v25 = v105;
  v26 = v102;
  v105[3] = v102;
  v25[4] = &off_1F5FAA7F8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  v28 = v108 + 16;
  v29 = *(v108 + 16);
  v29(boxed_opaque_existential_1, v24, v26);
  v30 = v12;
  v31 = v29;
  v112 = v28;
  v113 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_1E65F2010;
  v114 = sub_1E65E60A8();
  v32 = *(v114 - 8);
  v111 = *(v32 + 56);
  v115 = v32 + 56;
  v111(v118, 1, 1, v114);
  v33 = v106;
  v85(v30, v106 + v86, QueueService);
  v31(v103, v24, v26);
  v34 = (v21 + 32) & ~v21;
  v35 = v108;
  v36 = *(v108 + 80);
  v37 = (v34 + v84 + v36) & ~v36;
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  v110(v38 + v34, v30, QueueService);
  v39 = *(v35 + 32);
  v107 = (v35 + 32);
  v110 = v39;
  v40 = v103;
  v41 = v26;
  v39(v38 + v37, v103, v26);
  v42 = v118;
  v43 = sub_1E6059EAC(0, 0, v118, &unk_1E65F42A0, v38);
  *(v109 + 32) = v43;
  v111(v42, 1, 1, v114);
  v44 = v91;
  v45 = v33;
  v46 = v90;
  v47 = v93;
  (*(v91 + 16))(v90, v33 + v88, v93);
  v48 = v41;
  v113(v40, v116, v41);
  v49 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v50 = (v89 + v36 + v49) & ~v36;
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  *(v51 + 24) = 0;
  (*(v44 + 32))(v51 + v49, v46, v47);
  v52 = v40;
  v53 = v40;
  v54 = v48;
  v110(v51 + v50, v53, v48);
  v55 = v118;
  v56 = sub_1E6059EAC(0, 0, v118, &unk_1E65F42B0, v51);
  *(v109 + 40) = v56;
  v111(v55, 1, 1, v114);
  v57 = v96;
  v93 = v96[2];
  v58 = v45 + v101;
  v59 = v95;
  (v93)(v95, v58, v104);
  v60 = v52;
  v113(v52, v116, v54);
  v61 = *(v57 + 80);
  v62 = (v61 + 32) & ~v61;
  v86 = v36;
  v91 = v62;
  v63 = (v94 + v36 + v62) & ~v36;
  v94 = v36 | v61;
  v64 = v63;
  v65 = swift_allocObject();
  *(v65 + 16) = 0;
  *(v65 + 24) = 0;
  v66 = v57[4];
  v67 = v104;
  (v66)(v65 + v62, v59, v104);
  v110(v65 + v64, v60, v54);
  v68 = v118;
  v69 = sub_1E6059EAC(0, 0, v118, &unk_1E65F42C0, v65);
  *(v109 + 48) = v69;
  v111(v68, 1, 1, v114);
  (v93)(v59, v106 + v101, v67);
  v70 = v116;
  v71 = v102;
  v113(v60, v116, v102);
  v72 = swift_allocObject();
  *(v72 + 16) = 0;
  *(v72 + 24) = 0;
  (v66)(v72 + v91, v59, v67);
  v73 = v60;
  v110(v72 + v64, v60, v71);
  v74 = v118;
  v75 = sub_1E6059EAC(0, 0, v118, &unk_1E65F42D0, v72);
  v76 = v109;
  *(v109 + 56) = v75;
  v111(v74, 1, 1, v114);
  v78 = v98;
  v77 = Description;
  v79 = v100;
  Description[2](v98, v106 + v92, v100);
  v113(v73, v70, v71);
  v80 = (*(v77 + 80) + 32) & ~*(v77 + 80);
  v81 = (v97 + v86 + v80) & ~v86;
  v82 = swift_allocObject();
  *(v82 + 16) = 0;
  *(v82 + 24) = 0;
  (v77)[4]((v82 + v80), v78, v79);
  v110(v82 + v81, v73, v71);
  *(v76 + 64) = sub_1E6059EAC(0, 0, v118, &unk_1E65F42E0, v82);
  result = (*(v108 + 8))(v116, v71);
  v105[5] = v76;
  return result;
}

uint64_t sub_1E6180A3C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1E65D8948();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6180AFC, 0, 0);
}

uint64_t sub_1E6180AFC()
{
  Queue = UpNextQueueService.queryUpNextQueue.getter();
  *(v0 + 56) = v2;
  v5 = (Queue + *Queue);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1E6180BF0;

  return v5();
}

uint64_t sub_1E6180BF0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v4 = sub_1E6180EA8;
  }

  else
  {

    v4 = sub_1E6180D0C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E6180D0C()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 40);
    v20 = MEMORY[0x1E69E7CC0];
    sub_1E601C0B8(0, v2, 0);
    v4 = v20;
    v5 = *(v3 + 16);
    v3 += 16;
    v6 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v18 = *(v3 + 56);
    v19 = v5;
    v7 = (v3 - 8);
    do
    {
      v8 = *(v0 + 48);
      v9 = *(v0 + 32);
      v19(v8, v6, v9);
      v10 = sub_1E65D88F8();
      v12 = v11;
      (*v7)(v8, v9);
      v14 = *(v20 + 16);
      v13 = *(v20 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1E601C0B8((v13 > 1), v14 + 1, 1);
      }

      *(v20 + 16) = v14 + 1;
      v15 = v20 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v6 += v18;
      --v2;
    }

    while (v2);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  **(v0 + 16) = v4;

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1E6180EA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6180F14(uint64_t a1)
{
  Description = type metadata accessor for UpNextQueueService()[-1].Description;
  v5 = (Description[80] + 16) & ~Description[80];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E6180A3C(a1, v1 + v5);
}

uint64_t sub_1E6180FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6181124, 0, 0);
}

uint64_t sub_1E6181124()
{
  Queue = UpNextQueueService.makeUpNextQueueUpdatedStream.getter();
  v0[10] = v2;
  v6 = (Queue + *Queue);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E6181220;
  v4 = v0[6];

  return v6(v4);
}

uint64_t sub_1E6181220()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1E60EC658;
  }

  else
  {
    v2 = sub_1E6181350;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6181350()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1E618142C;
  v5 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 15, 0, 0, v5);
}

uint64_t sub_1E618142C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6181528, 0, 0);
}

uint64_t sub_1E6181528()
{
  if (*(v0 + 120) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 112) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6181628, v4, v3);
  }
}

uint64_t sub_1E6181628()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EB0, &qword_1E65F4260);
  sub_1E65E4E18();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1E618142C;
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 120, 0, 0, v2);
}

uint64_t sub_1E61816F4(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for UpNextQueueService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EB0, &qword_1E65F4260) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6180FF0(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6181850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B0, &qword_1E65EA988);
  v5[4] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B8, &qword_1E65EA990);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0721C0, &qword_1E65EA998);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61819BC, 0, 0);
}

uint64_t sub_1E61819BC()
{
  v1 = RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter();
  v0[11] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1E6181AB8;
  v4 = v0[7];

  return v6(v4);
}

uint64_t sub_1E6181AB8()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6181BD0, 0, 0);
}

uint64_t sub_1E6181BD0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1E6181CAC;
  v5 = v0[8];
  v6 = v0[4];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1E6181CAC()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6181DA8, 0, 0);
}

uint64_t sub_1E6181DA8()
{
  v1 = v0[4];
  v2 = sub_1E65D99E8();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_1E65E6058();
    v0[14] = sub_1E65E6048();
    v6 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6181EF8, v6, v5);
  }
}

uint64_t sub_1E6181EF8()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EB0, &qword_1E65F4260);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E6181F7C, 0, 0);
}

uint64_t sub_1E6181F7C()
{
  sub_1E5FC789C(v0[4]);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_1E6181CAC;
  v2 = v0[8];
  v3 = v0[4];

  return MEMORY[0x1EEE6D9C8](v3, 0, 0, v2);
}

uint64_t sub_1E618202C(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for RemoteBrowsingService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EB0, &qword_1E65F4260) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6181850(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6182188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61822BC, 0, 0);
}

uint64_t sub_1E61822BC()
{
  v1 = AppStateService.makeAppWillEnterForegroundStream.getter();
  v0[10] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E61823B8;
  v4 = v0[6];

  return v6(v4);
}

uint64_t sub_1E61823B8()
{

  return MEMORY[0x1EEE6DFA0](sub_1E61824D0, 0, 0);
}

uint64_t sub_1E61824D0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E61825AC;
  v5 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v5);
}

uint64_t sub_1E61825AC()
{

  return MEMORY[0x1EEE6DFA0](sub_1E61826A8, 0, 0);
}

uint64_t sub_1E61826A8()
{
  if (*(v0 + 112) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E61827A8, v4, v3);
  }
}

uint64_t sub_1E61827A8()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EB0, &qword_1E65F4260);
  sub_1E65E4E18();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1E61825AC;
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 112, 0, 0, v2);
}

uint64_t sub_1E6182874(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AppStateService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EB0, &qword_1E65F4260) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6182188(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E61829D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6182B04, 0, 0);
}

uint64_t sub_1E6182B04()
{
  v1 = AppStateService.makeSignificantTimeChangeStream.getter();
  v0[10] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E6182C00;
  v4 = v0[6];

  return v6(v4);
}

uint64_t sub_1E6182C00()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6182D18, 0, 0);
}

uint64_t sub_1E6182D18()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E6182DF4;
  v5 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v5);
}

uint64_t sub_1E6182DF4()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6182EF0, 0, 0);
}

uint64_t sub_1E6182EF0()
{
  if (*(v0 + 112) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6182FF0, v4, v3);
  }
}

uint64_t sub_1E6182FF0()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EB0, &qword_1E65F4260);
  sub_1E65E4E18();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1E6182DF4;
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 112, 0, 0, v2);
}

uint64_t sub_1E61830BC(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AppStateService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EB0, &qword_1E65F4260) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E61829D0(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6183218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E618334C, 0, 0);
}

uint64_t sub_1E618334C()
{
  v1 = AccountService.makeAccountChangedStream.getter();
  v0[10] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E6183448;
  v4 = v0[6];

  return v6(v4);
}

uint64_t sub_1E6183448()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6183560, 0, 0);
}

uint64_t sub_1E6183560()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E618363C;
  v5 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v5);
}

uint64_t sub_1E618363C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6183738, 0, 0);
}

uint64_t sub_1E6183738()
{
  if (*(v0 + 112) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6183838, v4, v3);
  }
}

uint64_t sub_1E6183838()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EB0, &qword_1E65F4260);
  sub_1E65E4E18();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1E618363C;
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 112, 0, 0, v2);
}

uint64_t objectdestroy_3Tm_8(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EB0, &qword_1E65F4260);
  v7 = *(v6 - 8);
  v8 = (v5 + *(v7 + 80)) & ~*(v7 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);
  (*(v7 + 8))(v1 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_1E6183A68(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AccountService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EB0, &qword_1E65F4260) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6183218(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6183BC4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EC8, &qword_1E65F4450);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6185EA0();
  sub_1E65E6DA8();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  sub_1E613C6E4(&qword_1ED075A00, MEMORY[0x1E6999B20]);
  sub_1E65E6B78();
  if (!v1)
  {
    type metadata accessor for DynamicLibraryActionLoadState(0);
    v8[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    sub_1E613BED0(&qword_1ED075A08, MEMORY[0x1E6999B20]);
    sub_1E65E6B78();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1E6183DB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  MEMORY[0x1EEE9AC00](v5);
  v24 = &v18 - v6;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EB8, &qword_1E65F4448);
  v22 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v8 = &v18 - v7;
  State = type metadata accessor for DynamicLibraryActionLoadState(0);
  MEMORY[0x1EEE9AC00](State);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6185EA0();
  sub_1E65E6D98();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = State;
  v19 = a1;
  v12 = v11;
  v14 = v22;
  v13 = v23;
  v27 = 0;
  sub_1E613C6E4(&qword_1ED075A38, MEMORY[0x1E6999B30]);
  v16 = v24;
  v15 = v25;
  sub_1E65E6AD8();
  sub_1E5FAB460(v16, v12, &unk_1ED077CC0, &unk_1E65F2610);
  v26 = 1;
  sub_1E613BED0(&qword_1ED075A40, MEMORY[0x1E6999B30]);
  sub_1E65E6AD8();
  (*(v14 + 8))(v8, v15);
  sub_1E5FAB460(v13, v12 + *(v18 + 20), &unk_1ED077CD0, &unk_1E65F42F0);
  sub_1E6185EF4(v12, v20);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return sub_1E6185D20(v12);
}

uint64_t sub_1E618413C()
{
  if (*v0)
  {
    return 0x64616F6C6E776F64;
  }

  else
  {
    return 0x6B72616D6B6F6F62;
  }
}

uint64_t sub_1E6184170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6B72616D6B6F6F62 && a2 == 0xE800000000000000;
  if (v6 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();

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

uint64_t sub_1E618424C(uint64_t a1)
{
  v2 = sub_1E6185EA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6184288(uint64_t a1)
{
  v2 = sub_1E6185EA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61842F4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  sub_1E65E4DB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  sub_1E613CC1C();
  return sub_1E65E4DB8();
}

uint64_t sub_1E618437C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1E65E4D98() & 1) == 0)
  {
    return 0;
  }

  sub_1E5DF23E0();

  return sub_1E65E4D98();
}

uint64_t sub_1E6184404@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  State = type metadata accessor for DynamicLibraryActionLoadState(0);
  MEMORY[0x1EEE9AC00](State - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073958, &qword_1E65EDCD0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  sub_1E5DFD1CC(v2, &v17 - v8, &qword_1ED073958, &qword_1E65EDCD0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = *v9;
  v11 = *(v9 + 1);
  v13 = v9[16];
  if (EnumCaseMultiPayload == 1)
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073968, &unk_1E65F4320);
    sub_1E6185CBC(&v9[*(v14 + 48)], v6);
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D60, &unk_1E65F72D0) + 48);
    *a1 = v12;
    *(a1 + 8) = v11;
    *(a1 + 16) = v13;
    sub_1E5DFD1CC(v6, a1 + v15, &unk_1ED077CC0, &unk_1E65F2610);
    sub_1E6185D20(v6);
  }

  else
  {
    *a1 = v12;
    *(a1 + 8) = v11;
    *(a1 + 16) = v13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E61845B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  State = type metadata accessor for DynamicLibraryActionLoadState(0);
  MEMORY[0x1EEE9AC00](State);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073958, &qword_1E65EDCD0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  sub_1E5DFD1CC(v2, &v19 - v8, &qword_1ED073958, &qword_1E65EDCD0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = *v9;
  v11 = *(v9 + 1);
  v13 = v9[16];
  if (EnumCaseMultiPayload == 1)
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073968, &unk_1E65F4320);
    sub_1E6185CBC(&v9[*(v14 + 48)], v6);
    if (v13)
    {
      sub_1E6001C2C(v12, v11, v13);
      sub_1E6185D20(v6);
LABEL_6:
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8);
      return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
    }

    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077E00, &unk_1E65F4350) + 48);
    *a1 = v12;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    sub_1E5DFD1CC(&v6[*(State + 20)], a1 + v17, &unk_1ED077CD0, &unk_1E65F42F0);
    sub_1E6185D20(v6);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8);
  }

  else
  {
    if (v9[16])
    {
      sub_1E6001C2C(*v9, *(v9 + 1), v9[16]);
      goto LABEL_6;
    }

    *a1 = v12;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8);
  }

  swift_storeEnumTagMultiPayload();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t sub_1E6184840@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v127 = a2;
  v146 = a1;
  v156 = a3;
  State = type metadata accessor for DynamicLibraryActionLoadState(0);
  MEMORY[0x1EEE9AC00](State);
  v143 = &State - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  v5 = MEMORY[0x1EEE9AC00](v154);
  v129 = &State - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v130 = &State - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v138 = &State - v10;
  MEMORY[0x1EEE9AC00](v9);
  v155 = (&State - v11);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AB8, &unk_1E65F84D0);
  v136 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v135 = &State - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC0, &unk_1E65F4300);
  v150 = *(v13 - 8);
  v151 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &State - v14;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741D8, &unk_1E6606270);
  MEMORY[0x1EEE9AC00](v152);
  v153 = &State - v16;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v17 = MEMORY[0x1EEE9AC00](v140);
  v128 = &State - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v134 = &State - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v139 = &State - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v157 = &State - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &State - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v145 = &State - v29;
  MEMORY[0x1EEE9AC00](v28);
  v144 = &State - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v147 = &State - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v34 = MEMORY[0x1EEE9AC00](v33 - 8);
  v141 = &State - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v126 = &State - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &State - v39;
  MEMORY[0x1EEE9AC00](v38);
  v42 = &State - v41;
  v43 = sub_1E65D7848();
  v148 = *(v43 - 8);
  v149 = v43;
  v44 = MEMORY[0x1EEE9AC00](v43);
  v131 = &State - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v133 = &State - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v142 = &State - v49;
  MEMORY[0x1EEE9AC00](v48);
  v132 = &State - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073958, &qword_1E65EDCD0);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &State - v52;
  sub_1E5DFD1CC(v3, &State - v52, &qword_1ED073958, &qword_1E65EDCD0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v55 = *v53;
  v56 = *(v53 + 1);
  v57 = v53[16];
  if (EnumCaseMultiPayload == 1)
  {
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073968, &unk_1E65F4320);
    v59 = v143;
    sub_1E6185CBC(&v53[*(v58 + 48)], v143);
    type metadata accessor for AppState(0);
    *&v163 = v55;
    *(&v163 + 1) = v56;
    v164 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC8, &qword_1E65EC488);
    sub_1E65E4D78();
    v60 = v151;
    sub_1E65E4C98();
    (*(v150 + 8))(v15, v60);
    v61 = v139;
    sub_1E5DFD1CC(v27, v139, &unk_1ED077CC0, &unk_1E65F2610);
    v62 = swift_getEnumCaseMultiPayload();
    v63 = v59;
    v64 = v56;
    v65 = v27;
    v66 = v141;
    if (v62 > 2)
    {
      goto LABEL_17;
    }

    if (v62)
    {
      if (v62 != 1)
      {
        sub_1E5DFE50C(v61, &unk_1ED077CC0, &unk_1E65F2610);
        v63 = v59;
LABEL_17:
        sub_1E5DFD1CC(v63, v157, &unk_1ED077CC0, &unk_1E65F2610);
        if (v57)
        {
          *&v163 = v55;
          *(&v163 + 1) = v64;
          v164 = v57;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
          v89 = v147;
          sub_1E65E4C98();
          sub_1E5E1F544(v66);
          sub_1E5DFE50C(v89, &qword_1ED071F78, &unk_1E65EA3F0);
          v91 = v148;
          v90 = v149;
          v92 = *(v148 + 48);
          if (v92(v66, 1, v149) == 1)
          {
            sub_1E65D77C8();
            if (v92(v66, 1, v90) != 1)
            {
              sub_1E5DFE50C(v66, &qword_1ED071F80, &unk_1E65F4310);
            }
          }

          else
          {
            (*(v91 + 32))(v131, v66, v90);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
          v108 = v153;
          sub_1E65E4C98();
          sub_1E65E4DA8();
          sub_1E5DFE50C(v108, &qword_1ED0741D8, &unk_1E6606270);
          v109 = v157;
          sub_1E5DFD1CC(v157, v145, &unk_1ED077CC0, &unk_1E65F2610);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330);
          v110 = v155;
          *v155 = 0;
          *(v110 + 2) = 256;
          sub_1E65D7688();
          swift_storeEnumTagMultiPayload();
          sub_1E604CB00();
          sub_1E65DEC08();
          sub_1E5DFE50C(v109, &unk_1ED077CC0, &unk_1E65F2610);
          v111 = v65;
          goto LABEL_36;
        }

        v93 = v65;
        *&v163 = v55;
        *(&v163 + 1) = v64;
        v164 = 0;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AD8, &unk_1E65F84F0);
        v94 = v135;
        sub_1E65E4D78();
        v95 = v55;
        v96 = v155;
        v97 = v137;
        sub_1E65E4C98();
        v98 = (*(v136 + 8))(v94, v97);
        MEMORY[0x1EEE9AC00](v98);
        *(&State - 16) = v127 & 1;
        sub_1E5DF23E0();
        sub_1E65E4DA8();
        v99 = v95;
        sub_1E5DFE50C(v96, &unk_1ED077CD0, &unk_1E65F42F0);
        *&v163 = v95;
        *(&v163 + 1) = v64;
        v164 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
        v100 = v147;
        sub_1E65E4C98();
        v101 = v126;
        sub_1E5E1F544(v126);
        sub_1E5DFE50C(v100, &qword_1ED071F78, &unk_1E65EA3F0);
        v103 = v148;
        v102 = v149;
        v104 = *(v148 + 48);
        if (v104(v101, 1, v149) == 1)
        {
          sub_1E65D77C8();
          v105 = v104(v101, 1, v102);
          v106 = v93;
          v107 = v128;
          if (v105 != 1)
          {
            sub_1E5DFE50C(v101, &qword_1ED071F80, &unk_1E65F4310);
          }
        }

        else
        {
          (*(v103 + 32))(v133, v101, v102);
          v106 = v93;
          v107 = v128;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
        v117 = v153;
        sub_1E65E4C98();
        sub_1E65E4DA8();
        sub_1E5DFE50C(v117, &qword_1ED0741D8, &unk_1E6606270);
        sub_1E5DFD1CC(v157, v107, &unk_1ED077CC0, &unk_1E65F2610);
        v118 = v138;
        v119 = v129;
        sub_1E5DFD1CC(v138, v129, &unk_1ED077CD0, &unk_1E65F42F0);
        v120 = swift_getEnumCaseMultiPayload();
        v59 = v143;
        if (v120 <= 2)
        {
          v121 = v120;
          v122 = v118;
          if (!v121)
          {
LABEL_35:
            sub_1E5DFD1CC(v122, v130, &unk_1ED077CD0, &unk_1E65F42F0);
            sub_1E604CB00();
            sub_1E65DEC08();
            sub_1E6001C2C(v99, v64, 0);
            sub_1E5DFE50C(v118, &unk_1ED077CD0, &unk_1E65F42F0);
            sub_1E5DFE50C(v157, &unk_1ED077CC0, &unk_1E65F2610);
            v111 = v106;
LABEL_36:
            sub_1E5DFE50C(v111, &unk_1ED077CC0, &unk_1E65F2610);
            return sub_1E6185D20(v59);
          }

          if (v121 == 1)
          {
            v123 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
            v124 = sub_1E65D76A8();
            (*(*(v124 - 8) + 8))(v119 + v123, v124);
            v122 = v118;
            goto LABEL_35;
          }

          sub_1E5DFE50C(v119, &unk_1ED077CD0, &unk_1E65F42F0);
        }

        v122 = v59 + *(State + 20);
        goto LABEL_35;
      }

      v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v68 = sub_1E65D76A8();
      (*(*(v68 - 8) + 8))(v61 + v67, v68);
    }

    v63 = v65;
    goto LABEL_17;
  }

  v143 = v15;
  v157 = v55;
  v69 = v56;
  if (v57)
  {
    sub_1E65DE488();
    v161 = v163;
    v162 = v164;
    type metadata accessor for AppState(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
    v70 = v147;
    sub_1E65E4C98();
    sub_1E5E1F544(v40);
    sub_1E5DFE50C(v70, &qword_1ED071F78, &unk_1E65EA3F0);
    v72 = v148;
    v71 = v149;
    v73 = *(v148 + 48);
    if (v73(v40, 1, v149) == 1)
    {
      sub_1E65D77C8();
      v74 = v73(v40, 1, v71);
      v75 = v143;
      if (v74 != 1)
      {
        sub_1E5DFE50C(v40, &qword_1ED071F80, &unk_1E65F4310);
      }
    }

    else
    {
      (*(v72 + 32))(v142, v40, v71);
      v75 = v143;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
    v84 = v153;
    sub_1E65E4C98();
    sub_1E65E4DA8();
    sub_1E5DFE50C(v84, &qword_1ED0741D8, &unk_1E6606270);
    v85 = v157;
    v158 = v157;
    v159 = v69;
    v160 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC8, &qword_1E65EC488);
    sub_1E65E4D78();
    sub_1E6001C2C(v85, v69, v57);
    v86 = v151;
    sub_1E65E4C98();
    (*(v150 + 8))(v75, v86);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330);
    v87 = v155;
    *v155 = 0;
    *(v87 + 2) = 256;
    sub_1E65D7688();
    swift_storeEnumTagMultiPayload();
    sub_1E604CB00();
    return sub_1E65DEC08();
  }

  else
  {
    *&v163 = v157;
    *(&v163 + 1) = v56;
    v76 = v56;
    v164 = 0;
    type metadata accessor for AppState(0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
    v77 = v147;
    sub_1E65E4C98();
    sub_1E5E1F544(v42);
    sub_1E5DFE50C(v77, &qword_1ED071F78, &unk_1E65EA3F0);
    v79 = v148;
    v78 = v149;
    v80 = *(v148 + 48);
    if (v80(v42, 1, v149) == 1)
    {
      sub_1E65D77C8();
      v81 = v80(v42, 1, v78);
      v83 = v150;
      v82 = v151;
      if (v81 != 1)
      {
        sub_1E5DFE50C(v42, &qword_1ED071F80, &unk_1E65F4310);
      }
    }

    else
    {
      (*(v79 + 32))(v132, v42, v78);
      v83 = v150;
      v82 = v151;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
    v112 = v153;
    sub_1E65E4C98();
    sub_1E65E4DA8();
    sub_1E5DFE50C(v112, &qword_1ED0741D8, &unk_1E6606270);
    v113 = v157;
    *&v161 = v157;
    *(&v161 + 1) = v76;
    v162 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC8, &qword_1E65EC488);
    v114 = v143;
    sub_1E65E4D78();
    sub_1E65E4C98();
    (*(v83 + 8))(v114, v82);
    *&v161 = v113;
    *(&v161 + 1) = v76;
    v162 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AD8, &unk_1E65F84F0);
    v115 = v135;
    sub_1E65E4D78();
    v116 = v137;
    sub_1E65E4C98();
    (*(v136 + 8))(v115, v116);
    sub_1E604CB00();
    sub_1E65DEC08();
    return sub_1E6001C2C(v113, v76, 0);
  }
}

uint64_t type metadata accessor for DynamicLibraryActionLoadState(uint64_t a1)
{
  result = qword_1EE2D7ED8;
  if (!qword_1EE2D7ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E6185CBC(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for DynamicLibraryActionLoadState(0);
  (*(*(State - 8) + 32))(a2, a1, State);
  return a2;
}

uint64_t sub_1E6185D20(uint64_t a1)
{
  State = type metadata accessor for DynamicLibraryActionLoadState(0);
  (*(*(State - 8) + 8))(a1, State);
  return a1;
}

void sub_1E6185DC0(uint64_t a1)
{
  sub_1E5DF232C();
  if (v1 <= 0x3F)
  {
    sub_1E5DF2384(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1E6185E48()
{
  result = qword_1EE2D7EE8[0];
  if (!qword_1EE2D7EE8[0])
  {
    type metadata accessor for DynamicLibraryActionLoadState(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2D7EE8);
  }

  return result;
}

unint64_t sub_1E6185EA0()
{
  result = qword_1ED075EC0;
  if (!qword_1ED075EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075EC0);
  }

  return result;
}

uint64_t sub_1E6185EF4(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for DynamicLibraryActionLoadState(0);
  (*(*(State - 8) + 16))(a2, a1, State);
  return a2;
}

unint64_t sub_1E6185F6C()
{
  result = qword_1ED075ED0;
  if (!qword_1ED075ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075ED0);
  }

  return result;
}

unint64_t sub_1E6185FC4()
{
  result = qword_1ED075ED8;
  if (!qword_1ED075ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075ED8);
  }

  return result;
}

unint64_t sub_1E618601C()
{
  result = qword_1ED075EE0;
  if (!qword_1ED075EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075EE0);
  }

  return result;
}

uint64_t type metadata accessor for PageMetricsClick(uint64_t a1)
{
  result = qword_1EE2DA108;
  if (!qword_1EE2DA108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E61860E4(uint64_t a1)
{
  sub_1E61863C4(319, &qword_1EE2D7010, MEMORY[0x1E69CC918], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1E65D8C68();
    if (v2 <= 0x3F)
    {
      sub_1E61863C4(319, &qword_1EE2D71D8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1E61863C4(319, &qword_1EE2D4880, MEMORY[0x1E69CB458], MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          sub_1E61863C4(319, &qword_1EE2D6FE0, MEMORY[0x1E69CCB78], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1E5DF0194();
            if (v6 <= 0x3F)
            {
              sub_1E618630C(319);
              if (v7 <= 0x3F)
              {
                sub_1E65D8F28();
                if (v8 <= 0x3F)
                {
                  sub_1E61863C4(319, &qword_1EE2D7050, MEMORY[0x1E69CC4D0], MEMORY[0x1E69E6720]);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1E618630C(uint64_t a1)
{
  if (!qword_1EE2D4960)
  {
    sub_1E6186370();
    v1 = sub_1E65E5B28();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D4960);
    }
  }
}

unint64_t sub_1E6186370()
{
  result = qword_1EE2D70A8;
  if (!qword_1EE2D70A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D70A8);
  }

  return result;
}

void sub_1E61863C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E6186428@<X0>(uint64_t *a1@<X8>)
{
  v31 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v24 - v3;
  v4 = type metadata accessor for CatalogService();
  Description = v4[-1].Description;
  v6 = Description[8];
  MEMORY[0x1EEE9AC00](v4);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v7 = sub_1E65E3B68();
  __swift_project_value_buffer(v7, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v8 = OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v27 = OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v9 = v1 + *(type metadata accessor for AppEnvironment(0) + 48);
  v28 = v9;
  swift_getKeyPath();
  v26 = Description[2];
  v26(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, v4);
  v25 = v4;
  v10 = *(Description + 80);
  v11 = swift_allocObject();
  v29 = Description[4];
  v29(v11 + ((v10 + 16) & ~v10), &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EE8, &qword_1E65F45C8);
  swift_allocObject();

  v13 = sub_1E65E4E68();
  v24 = v13;
  v14 = v31;
  v31[3] = v12;
  v14[4] = &off_1F5FAA810;
  *v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1E65EA670;
  v16 = sub_1E65E60A8();
  v17 = v30;
  (*(*(v16 - 8) + 56))(v30, 1, 1, v16);
  v18 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v25;
  v26(v18, v28 + v27, v25);
  v20 = (v10 + 32) & ~v10;
  v21 = (v6 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  v29(v22 + v20, v18, v19);
  *(v22 + v21) = v24;

  result = sub_1E6059EAC(0, 0, v17, &unk_1E65F45D8, v22);
  *(v15 + 32) = result;
  v14[5] = v15;
  return result;
}

uint64_t sub_1E61867F8(uint64_t a1, void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v4 = a2[1];
  v3[4] = *a2;
  v3[5] = v4;
  return MEMORY[0x1EEE6DFA0](sub_1E6186820, 0, 0);
}

uint64_t sub_1E6186820()
{
  v1 = CatalogService.fetchRemoteCatalogModalityDetail.getter();
  v0[6] = v2;
  v8 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E60EBD8C;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];

  return v8(v6, v4, v5);
}

uint64_t sub_1E6186920(uint64_t a1, void *a2)
{
  Description = type metadata accessor for CatalogService()[-1].Description;
  v7 = (Description[80] + 16) & ~Description[80];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFA78C;

  return sub_1E61867F8(a1, a2, v2 + v7);
}

uint64_t sub_1E6186A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6186B38, 0, 0);
}

uint64_t sub_1E6186B38()
{
  v1 = CatalogService.makeCatalogUpdatedStream.getter();
  v0[10] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E6186C34;
  v4 = v0[6];

  return v6(v4);
}

uint64_t sub_1E6186C34()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1E60EC658;
  }

  else
  {
    v2 = sub_1E6186D64;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6186D64()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1E6186E40;
  v5 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 15, 0, 0, v5);
}

uint64_t sub_1E6186E40()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6186F3C, 0, 0);
}

uint64_t sub_1E6186F3C()
{
  if (*(v0 + 120) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 112) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E618703C, v4, v3);
  }
}

uint64_t sub_1E618703C()
{

  sub_1E65E4E78();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1E6186E40;
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 120, 0, 0, v2);
}

uint64_t sub_1E61870F4(uint64_t a1)
{
  Description = type metadata accessor for CatalogService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E6186A04(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E6187214(void *a1, uint64_t a2, uint64_t a3)
{
  v61 = a3;
  v49 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920);
  v58 = *(v60 - 8);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v57 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EF0, &qword_1E65F45E0);
  v65 = *(v6 - 8);
  v66 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v47 - v7;
  v8 = sub_1E65DAF78();
  v63 = *(v8 - 8);
  v64 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppComposer(0);
  v11 = *(v10 - 8);
  v51 = *(v11 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v53 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v47 - v14;
  v47 = &v47 - v14;
  v16 = sub_1E65DB748();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v67 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v47 - v20;
  v22 = sub_1E65DAF98();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v52 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1E65DAFF8();
  v25 = *(v24 - 8);
  v55 = v24;
  v56 = v25;
  MEMORY[0x1EEE9AC00](v24);
  v68 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a1;
  v54 = *a1;
  v48 = *(v17 + 16);
  v48(v21, a2, v16);
  sub_1E5E1DEAC(a1, v15);
  v27 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v28 = (v18 + *(v11 + 80) + v27) & ~*(v11 + 80);
  v29 = swift_allocObject();
  v30 = *(v17 + 32);
  v30(v29 + v27, v21, v16);
  sub_1E5E1FA80(v47, v29 + v28);
  v48(v67, v49, v16);
  v31 = v53;
  sub_1E5E1DEAC(v50, v53);
  v32 = swift_allocObject();
  v30(v32 + v27, v67, v16);
  sub_1E5E1FA80(v31, v32 + v28);
  sub_1E65DAF88();
  sub_1E65DAFE8();
  sub_1E65DAF68();
  v34 = v57;
  v33 = v58;
  v35 = *(v58 + 16);
  v36 = v60;
  v37 = v61;
  v35(v57, v61, v60);
  v38 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v67 = swift_allocObject();
  v39 = *(v33 + 32);
  v39(&v67[v38], v34, v36);
  v35(v34, v37, v36);
  v40 = swift_allocObject();
  v39((v40 + v38), v34, v36);
  type metadata accessor for AppFeature(0);
  sub_1E61891DC(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E61891DC(&qword_1ED075EF8, MEMORY[0x1E699CFE8], MEMORY[0x1E699CFE0]);
  v41 = v62;
  v42 = v55;
  sub_1E65E4DE8();
  v44 = v68;
  v43 = v69;
  v45 = sub_1E65E4F08();
  (*(v65 + 8))(v41, v66);
  (*(v63 + 8))(v43, v64);
  (*(v56 + 8))(v44, v42);
  return v45;
}

uint64_t sub_1E6187948(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 40) = a2;
  *(v5 + 48) = a3;
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  *(v5 + 16) = a1;
  v6 = sub_1E65DB748();
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 - 8);
  *(v5 + 72) = swift_task_alloc();
  v7 = sub_1E65DB288();
  *(v5 + 80) = v7;
  *(v5 + 88) = *(v7 - 8);
  *(v5 + 96) = swift_task_alloc();
  v8 = type metadata accessor for ImageAssetRequest(0);
  *(v5 + 104) = v8;
  *(v5 + 112) = *(v8 - 8);
  *(v5 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  *(v5 + 128) = swift_task_alloc();
  v9 = sub_1E65D74E8();
  *(v5 + 136) = v9;
  *(v5 + 144) = *(v9 - 8);
  *(v5 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6187B5C, 0, 0);
}

uint64_t sub_1E6187B5C()
{
  v1 = *(v0 + 17);
  v2 = *(v0 + 18);
  v3 = *(v0 + 16);
  sub_1E65DB008();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E5DFE50C(*(v0 + 16), &qword_1ED072340, &qword_1E65EA410);
    v4 = sub_1E65DB0F8();
    sub_1E61891DC(&unk_1ED075F10, MEMORY[0x1E699D058], MEMORY[0x1E699D060]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E699D050], v4);
    swift_willThrow();

    v6 = *(v0 + 1);

    return v6();
  }

  else
  {
    v9 = *(v0 + 11);
    v8 = *(v0 + 12);
    v10 = *(v0 + 9);
    v11 = *(v0 + 8);
    v29 = *(v0 + 7);
    v30 = *(v0 + 15);
    v27 = *(v0 + 10);
    v28 = *(v0 + 5);
    v13 = v0[3];
    v12 = v0[4];
    (*(*(v0 + 18) + 32))(*(v0 + 19), *(v0 + 16), *(v0 + 17));
    v14 = sub_1E65D7428();
    v26 = v15;
    v16 = sub_1E65DB028();
    v18 = v17;
    sub_1E65DB038();
    v19 = sub_1E65DB278();
    v21 = v20;
    (*(v9 + 8))(v8, v27);
    (*(v11 + 16))(v10, v28, v29);
    ImageAssetRequest.init(template:size:cropCode:fileType:priority:expirationPolicy:cacheBehavior:)(v14, v26, v16, v18, v19, v21, 25, 1, v30, v13, v12, 1, v10);
    type metadata accessor for AppComposer(0);
    type metadata accessor for AppEnvironment(0);
    v22 = AssetService.fetchRemoteImage.getter();
    *(v0 + 20) = v23;
    v31 = (v22 + *v22);
    v24 = swift_task_alloc();
    *(v0 + 21) = v24;
    *v24 = v0;
    v24[1] = sub_1E6187EEC;
    v25 = *(v0 + 15);

    return v31(v25);
  }
}

uint64_t sub_1E6187EEC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v5 = sub_1E6188118;
  }

  else
  {
    *(v4 + 184) = a1;
    v5 = sub_1E6188038;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E6188038()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];
  v5 = v0[23];

  return v4(v5);
}

uint64_t sub_1E6188118()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E61881F0(uint64_t a1, double a2, double a3)
{
  v8 = *(sub_1E65DB748() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for AppComposer(0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = sub_1E5FE99E8;

  return sub_1E6187948(a1, v3 + v9, v3 + v12, a2, a3);
}

uint64_t sub_1E618833C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a2;
  v57 = a3;
  v60 = a1;
  v47 = a4;
  v6 = sub_1E65DB288();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v51 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v42 - v9;
  v11 = sub_1E65D74E8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v55 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E65DB748();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v50 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v42 - v18;
  v20 = sub_1E65DB048();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1E65DB558();
  v45 = *(v24 - 8);
  v46 = v24;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v49 = v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v44 = v42 - v27;
  v58 = v21;
  v59 = v20;
  v28 = v21;
  v29 = v14;
  (*(v28 + 16))(v23, v60, v20);
  v60 = v15;
  v30 = *(v15 + 16);
  v30(v19, v56, v14);
  v48 = *(v57 + *(type metadata accessor for AppComposer(0) + 20) + 8);
  sub_1E65DB008();
  v56 = v12;
  v57 = v11;
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1E5DFE50C(v10, &qword_1ED072340, &qword_1E65EA410);
    v31 = sub_1E65DB0F8();
    sub_1E61891DC(&unk_1ED075F10, MEMORY[0x1E699D058], MEMORY[0x1E699D060]);
    swift_allocError();
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x1E699D050], v31);
    swift_willThrow();
LABEL_5:
    (*(v60 + 8))(v19, v29);
    return (*(v58 + 8))(v23, v59);
  }

  (*(v56 + 32))(v55, v10, v57);
  v43 = v14;
  v30(v50, v19, v14);
  v42[1] = sub_1E65DB028();
  v33 = v51;
  sub_1E65DB038();
  sub_1E65DB278();
  (*(v52 + 8))(v33, v53);
  sub_1E65D7428();
  v34 = v49;
  v35 = v54;
  sub_1E65DB518();
  if (v35)
  {
    v29 = v43;
    (*(v56 + 8))(v55, v57);
    goto LABEL_5;
  }

  (*(v56 + 8))(v55, v57);
  (*(v60 + 8))(v19, v43);
  (*(v58 + 8))(v23, v59);
  v37 = v44;
  v38 = v45;
  v39 = v34;
  v40 = v46;
  (*(v45 + 32))(v44, v39, v46);
  sub_1E65DB4F8();
  v60 = sub_1E65DB528();
  v59 = v41;
  sub_1E65DB4E8();
  sub_1E65DB538();
  sub_1E65DB548();
  sub_1E65DB508();
  sub_1E65DB0D8();
  return (*(v38 + 8))(v37, v40);
}

uint64_t sub_1E6188A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *(sub_1E65DB748() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for AppComposer(0) - 8);
  return sub_1E618833C(a1, v4 + v8, v4 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)), a2);
}

uint64_t sub_1E6188B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075F08, &unk_1E65F4600);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075F00, &qword_1E65F45F8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v27 - v14;
  v16 = *(a1 + *(type metadata accessor for AppState(0) + 120));
  if (*(v16 + 16) && (v17 = sub_1E6416E74(a2), (v18 & 1) != 0))
  {
    v19 = v17;
    v20 = *(v16 + 56);
    v21 = sub_1E65DAFD8();
    v22 = *(v21 - 8);
    (*(v22 + 16))(v15, v20 + *(v22 + 72) * v19, v21);
    (*(v22 + 56))(v15, 0, 1, v21);
    return (*(v22 + 32))(a3, v15, v21);
  }

  else
  {
    v24 = sub_1E65DAFD8();
    v25 = *(v24 - 8);
    (*(v25 + 56))(v15, 1, 1, v24);
    (*(v10 + 16))(v12, a2, v9);
    v26 = sub_1E65DB218();
    (*(*(v26 - 8) + 56))(v8, 1, 1, v26);
    sub_1E5DFE000(MEMORY[0x1E69E7CC0]);
    sub_1E65DAFC8();
    result = (*(v25 + 48))(v15, 1, v24);
    if (result != 1)
    {
      return sub_1E5DFE50C(v15, &qword_1ED075F00, &qword_1E65F45F8);
    }
  }

  return result;
}

uint64_t sub_1E6188E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E6188B04(a1, v6, a2);
}

uint64_t sub_1E6188F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075F00, &qword_1E65F45F8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  (*(v11 + 16))(&v15 - v9, a3);
  v12 = sub_1E65DAFD8();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v7, a2, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  type metadata accessor for AppState(0);
  return sub_1E6407E30(v7, v10);
}

uint64_t objectdestroy_6Tm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E6189150(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E6188F0C(a1, a2, v6);
}

uint64_t sub_1E61891DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1E6189254()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ToastDelegate(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ToastDelegate(uint64_t a1)
{
  result = qword_1ED075F48;
  if (!qword_1ED075F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E618938C(uint64_t a1)
{
  result = type metadata accessor for AppComposer(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ToastResource(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1E618946C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v82 - v4;
  v88 = type metadata accessor for RouteSource(0);
  MEMORY[0x1EEE9AC00](v88);
  v90 = v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for RouteDestination(0);
  v85 = *(v89 - 8);
  v7 = MEMORY[0x1EEE9AC00](v89);
  v87 = v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = v82 - v9;
  v11 = sub_1E65DBB88();
  v95 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for ToastResource(0);
  v14 = MEMORY[0x1EEE9AC00](v96);
  v16 = v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v82 - v17;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v19 = sub_1E65E3B68();
  v20 = __swift_project_value_buffer(v19, qword_1EE2EA2A0);
  v21 = v1;
  v94 = v20;
  v22 = sub_1E65E3B48();
  v23 = sub_1E65E6338();

  v24 = os_log_type_enabled(v22, v23);
  v91 = v10;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v92 = v5;
    v26 = v25;
    v27 = swift_slowAlloc();
    v93 = v11;
    v28 = v27;
    v107 = v27;
    *v26 = 136315394;
    v97 = a1;
    type metadata accessor for BBBulletinDismissalReason(0);
    v29 = sub_1E65E5CE8();
    v84 = v16;
    v30 = a1;
    v31 = v21;
    v33 = v13;
    v34 = sub_1E5DFD4B0(v29, v32, &v107);

    *(v26 + 4) = v34;
    *(v26 + 12) = 2080;
    sub_1E618A7B8(&v21[OBJC_IVAR____TtC10Blackbeard13ToastDelegate_toastResource], v18, type metadata accessor for ToastResource);
    v35 = sub_1E65E5CE8();
    v37 = sub_1E5DFD4B0(v35, v36, &v107);
    v13 = v33;

    *(v26 + 14) = v37;
    v21 = v31;
    a1 = v30;
    v16 = v84;
    _os_log_impl(&dword_1E5DE9000, v22, v23, "[ToastDelegate] Bulletin dismissed with reason %s for resource %s", v26, 0x16u);
    swift_arrayDestroy();
    v38 = v28;
    v11 = v93;
    MEMORY[0x1E694F1C0](v38, -1, -1);
    v5 = v92;
    MEMORY[0x1E694F1C0](v26, -1, -1);
  }

  if (a1 == 1)
  {
    sub_1E618A7B8(&v21[OBJC_IVAR____TtC10Blackbeard13ToastDelegate_toastResource], v16, type metadata accessor for ToastResource);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if ((EnumCaseMultiPayload - 3) >= 2)
      {
        v67 = sub_1E65E60A8();
        (*(*(v67 - 8) + 56))(v5, 1, 1, v67);
        v68 = swift_allocObject();
        v68[2] = 0;
        v68[3] = 0;
        v68[4] = v21;
        v69 = v21;
        sub_1E64B80F8(0, 0, v5, &unk_1E65F4648, v68);
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_1E618A9F0(v16, type metadata accessor for ToastResource);
        return;
      }

      if (EnumCaseMultiPayload != 1)
      {
        v92 = v5;
        (*(v95 + 32))(v13, v16, v11);
        v96 = v21;
        v40 = &v21[OBJC_IVAR____TtC10Blackbeard13ToastDelegate_pageMetrics];
        v41 = *&v21[OBJC_IVAR____TtC10Blackbeard13ToastDelegate_pageMetrics];
        v42 = *&v21[OBJC_IVAR____TtC10Blackbeard13ToastDelegate_pageMetrics + 24];
        v43 = *&v21[OBJC_IVAR____TtC10Blackbeard13ToastDelegate_pageMetrics + 32];
        v44 = *&v21[OBJC_IVAR____TtC10Blackbeard13ToastDelegate_pageMetrics + 40];
        v45 = *&v21[OBJC_IVAR____TtC10Blackbeard13ToastDelegate_pageMetrics + 48];
        v46 = *&v21[OBJC_IVAR____TtC10Blackbeard13ToastDelegate_pageMetrics + 56];
        v47 = *&v21[OBJC_IVAR____TtC10Blackbeard13ToastDelegate_pageMetrics + 64];
        v48 = *(v40 + 9);
        v106 = *(v40 + 8);
        if (v41)
        {
          v84 = v13;
          v93 = v11;
          v97 = v41;
          v98 = *(v40 + 8);
          v49 = v42;
          v99 = v42;
          v100 = v43;
          v83 = v43;
          v101 = v44;
          v102 = v45;
          v103 = v46;
          v104 = v47;
          v105 = v48;
          sub_1E618A994(&v97, &v107);
          v50 = sub_1E65E3B48();
          v51 = sub_1E65E6338();
          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            *v52 = 0;
            _os_log_impl(&dword_1E5DE9000, v50, v51, "[ToastDelegate] Publishing page metrics for award toast", v52, 2u);
            MEMORY[0x1E694F1C0](v52, -1, -1);
          }

          v82[1] = OBJC_IVAR____TtC10Blackbeard13ToastDelegate_composer;
          v108 = v106;
          v107 = v41;
          v109 = v49;
          v110 = v83;
          v111 = v44;
          v112 = v45;
          v113 = v46;
          v114 = v47;
          v115 = v48;
          swift_unknownObjectRetain();

          v13 = v84;
          v53 = sub_1E65DBB48();
          sub_1E639C7C4(&v107, 0, v53);

          swift_unknownObjectRelease_n();

          v11 = v93;
        }

        v54 = *(sub_1E65DBB48() + 16);

        v55 = v13;
        if (v54 == 1)
        {
          v56 = sub_1E65DBB48();
          if (v56[2])
          {
            v58 = v56[4];
            v57 = v56[5];

            v59 = v90;
            swift_storeEnumTagMultiPayload();
            v60 = v91;
            *v91 = v58;
            *(v60 + 8) = v57;
            type metadata accessor for RouteResource(0);
            swift_storeEnumTagMultiPayload();
            v61 = v89;
            sub_1E618A820(v59, v60 + *(v89 + 20), type metadata accessor for RouteSource);
            *(v60 + *(v61 + 24)) = MEMORY[0x1E69E7CD0];
            v62 = v96;
            swift_getKeyPath();
            sub_1E65E4EC8();

            v63 = v98;
            if (v98 != 6)
            {
              v73 = v97;
              v74 = sub_1E65E60A8();
              v75 = v92;
              (*(*(v74 - 8) + 56))(v92, 1, 1, v74);
              v76 = v62;
              v77 = v87;
              sub_1E618A7B8(v60, v87, type metadata accessor for RouteDestination);
              v78 = v11;
              v79 = (*(v85 + 80) + 56) & ~*(v85 + 80);
              v80 = swift_allocObject();
              v80[2] = 0;
              v80[3] = 0;
              v80[4] = v76;
              v80[5] = v73;
              v80[6] = v63;
              sub_1E618A820(v77, v80 + v79, type metadata accessor for RouteDestination);
              v81 = v76;
              sub_1E6059EAC(0, 0, v75, &unk_1E65F4680, v80);

              sub_1E618A9F0(v60, type metadata accessor for RouteDestination);
              (*(v95 + 8))(v55, v78);
              return;
            }

            v64 = sub_1E65E3B48();
            v65 = sub_1E65E6328();
            if (os_log_type_enabled(v64, v65))
            {
              v66 = swift_slowAlloc();
              *v66 = 0;
              _os_log_impl(&dword_1E5DE9000, v64, v65, "No root item selected for Toast dismissal", v66, 2u);
              MEMORY[0x1E694F1C0](v66, -1, -1);
            }

            sub_1E618A9F0(v60, type metadata accessor for RouteDestination);
            goto LABEL_26;
          }
        }

        v70 = sub_1E65E3B48();
        v71 = sub_1E65E6338();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          *v72 = 0;
          _os_log_impl(&dword_1E5DE9000, v70, v71, "[ToastDelegate] Skipping detail page navigation for coalesced toast", v72, 2u);
          MEMORY[0x1E694F1C0](v72, -1, -1);
        }

LABEL_26:
        (*(v95 + 8))(v13, v11);
      }
    }
  }
}

uint64_t sub_1E6189F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a6;
  v7[19] = a7;
  v7[16] = a4;
  v7[17] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1E6189F98, 0, 0);
}

uint64_t sub_1E6189F98()
{
  v1 = (*(v0 + 128) + OBJC_IVAR____TtC10Blackbeard13ToastDelegate_itemRoutingContext);
  *(v0 + 160) = *v1;
  *(v0 + 168) = v1[1];
  *(v0 + 96) = *(v0 + 136);
  sub_1E65E6058();
  *(v0 + 176) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E618A054, v3, v2);
}

uint64_t sub_1E618A054()
{
  v1 = *(v0 + 160);

  v1(v0 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1E618A0D0, 0, 0);
}

uint64_t sub_1E618A0D0()
{
  v20 = v0;
  if (*(v0 + 80))
  {
    sub_1E5DF599C((v0 + 56), v0 + 16);
    v2 = *(v0 + 40);
    v1 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    sub_1E600F5B0((v0 + 200));
    v3 = swift_task_alloc();
    *(v0 + 184) = v3;
    *v3 = v0;
    v3[1] = sub_1E618A354;
    v4 = *(v0 + 152);

    return RoutingContext.appendDestination(_:priority:)(v4, (v0 + 200), v2, v1);
  }

  else
  {
    sub_1E601B260(v0 + 56);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 136);
    v6 = *(v0 + 144);
    v8 = sub_1E65E3B68();
    __swift_project_value_buffer(v8, qword_1EE2EA2A0);
    sub_1E5E05374(v7, v6);
    v9 = sub_1E65E3B48();
    v10 = sub_1E65E6338();
    sub_1E5E0476C(v7, v6);
    if (os_log_type_enabled(v9, v10))
    {
      v12 = *(v0 + 136);
      v11 = *(v0 + 144);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315138;
      *(v0 + 112) = v12;
      *(v0 + 120) = v11;
      sub_1E5E05374(v12, v11);
      v15 = sub_1E65E5CE8();
      v17 = sub_1E5DFD4B0(v15, v16, &v19);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1E5DE9000, v9, v10, "[ToastDelegate] No routing context for root item %s, skipping detail page presentation", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1E694F1C0](v14, -1, -1);
      MEMORY[0x1E694F1C0](v13, -1, -1);
    }

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1E618A354()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1E618A468;
  }

  else
  {
    v2 = sub_1E6115FB4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E618A468()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E618A4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for AppAction(0);
  v4[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E618A560, 0, 0);
}

uint64_t sub_1E618A560()
{
  v1 = v0[4];
  v0[5] = *(v0[2] + OBJC_IVAR____TtC10Blackbeard13ToastDelegate_composer);
  *v1 = xmmword_1E65EADF0;
  swift_storeEnumTagMultiPayload();
  sub_1E65E6058();
  v0[6] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E618A620, v3, v2);
}

uint64_t sub_1E618A620()
{
  v1 = *(v0 + 32);

  sub_1E65E4EE8();
  sub_1E618A9F0(v1, type metadata accessor for AppAction);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E618A704(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFA78C;

  return sub_1E618A4CC(a1, v4, v5, v6);
}

uint64_t sub_1E618A7B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E618A820(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E618A888(uint64_t a1)
{
  v4 = *(type metadata accessor for RouteDestination(0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E5DFA78C;

  return sub_1E6189F74(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_1E618A9F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E618AA50(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (result)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E618AABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a8;
  *(v8 + 48) = v14;
  *(v8 + 24) = a6;
  *(v8 + 32) = a7;
  *(v8 + 192) = a5;
  *(v8 + 16) = a4;
  v9 = sub_1E65D8F28();
  *(v8 + 56) = v9;
  *(v8 + 64) = *(v9 - 8);
  *(v8 + 72) = swift_task_alloc();
  v10 = sub_1E65D7848();
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 - 8);
  *(v8 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  *(v8 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FB8, &qword_1E65F4690);
  *(v8 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  *(v8 + 120) = swift_task_alloc();
  v11 = sub_1E65D8C68();
  *(v8 + 128) = v11;
  *(v8 + 136) = *(v11 - 8);
  *(v8 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073578, &qword_1E65F0E60);
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = type metadata accessor for PageMetricsClick(0);
  *(v8 + 168) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E618AD58, 0, 0);
}

uint64_t sub_1E618AD58()
{
  if (*(v0 + 192))
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v4 = *(v0 + 144);
    v3 = *(v0 + 152);
    v5 = *(v0 + 128);
    v6 = *(v0 + 136);
    v7 = *(v0 + 112);
    v8 = *(v0 + 120);
    v9 = *(v0 + 104);
    v10 = sub_1E65D9D78();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    (*(v6 + 104))(v4, *MEMORY[0x1E69CBA28], v5);
    v11 = sub_1E65D74E8();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
    sub_1E65D86A8();
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1E65EA670;
    sub_1E65DEAF8();
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    sub_1E65DEAD8();
    sub_1E60EF310(v7);
    sub_1E5DFE50C(v9, &qword_1ED0737C8, &unk_1E6605140);
    v12 = sub_1E65DE788();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 48))(v7, 1, v12);
    v15 = *(v0 + 112);
    if (v14 == 1)
    {
      sub_1E5DFE50C(*(v0 + 112), &qword_1ED075FB8, &qword_1E65F4690);
    }

    else
    {
      v17 = *(v0 + 88);
      v16 = *(v0 + 96);
      v43 = *(v0 + 80);
      sub_1E65DE778();
      (*(v13 + 8))(v15, v12);
      swift_getKeyPath();
      sub_1E65E4EC8();

      sub_1E65DE5D8();
      (*(v17 + 8))(v16, v43);
    }

    v18 = *(v0 + 160);
    v19 = *(v0 + 168);
    v20 = *(v0 + 136);
    v39 = *(v0 + 152);
    v40 = *(v0 + 128);
    v41 = *(v0 + 144);
    v42 = *(v0 + 120);
    v21 = *(v0 + 56);
    v44 = *(v0 + 48);
    v22 = *MEMORY[0x1E69CBCC8];
    v23 = *(*(v0 + 64) + 104);
    v23(*(v0 + 72), v22, v21);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    v24 = v18[8];
    v25 = sub_1E65DA208();
    (*(*(v25 - 8) + 56))(v19 + v24, 1, 1, v25);
    v26 = sub_1E65DEAF8();
    v45 = v27;
    v23(v19 + v18[14], v22, v21);
    v28 = v18[15];
    v29 = *MEMORY[0x1E69CC498];
    v30 = sub_1E65D9908();
    v31 = *(v30 - 8);
    (*(v31 + 104))(v19 + v28, v29, v30);
    (*(v31 + 56))(v19 + v28, 0, 1, v30);
    v32 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    sub_1E5FAB460(v39, v19, &qword_1ED073578, &qword_1E65F0E60);
    (*(v20 + 32))(v19 + v18[5], v41, v40);
    sub_1E5FAB460(v42, v19 + v18[6], &qword_1ED072340, &qword_1E65EA410);
    *(v19 + v18[7]) = v46;
    v33 = (v19 + v18[9]);
    *v33 = 0;
    v33[1] = 0;
    v34 = (v19 + v18[10]);
    *v34 = 0;
    v34[1] = 0;
    *(v19 + v18[11]) = v32;
    v35 = (v19 + v18[12]);
    *v35 = 0;
    v35[1] = 0;
    v36 = (v19 + v18[13]);
    *v36 = v26;
    v36[1] = v45;
    v47 = (*(v44 + 48) + **(v44 + 48));
    v37 = swift_task_alloc();
    *(v0 + 176) = v37;
    *v37 = v0;
    v37[1] = sub_1E618B3B8;
    v38 = *(v0 + 168);

    return v47(v38);
  }
}

uint64_t sub_1E618B3B8()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1E618B598;
  }

  else
  {
    v2 = sub_1E618B4CC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E618B4CC()
{
  sub_1E5FC0990(*(v0 + 168));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E618B598()
{
  sub_1E5FC0990(*(v0 + 168));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E618B668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = type metadata accessor for PageMetricsClick(0);
  v7[7] = swift_task_alloc();
  v7[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E618B70C, 0, 0);
}

uint64_t sub_1E618B70C()
{
  v1 = v0[2];
  if ((v1 & 0x1000000000000) != 0 && (v2 = v1 & 0xFFFFFFFFFFFFLL, v2 >= 3))
  {
    if (v2 == 3)
    {
      v5 = v0[8];
      v6 = v0[5];
      v7 = v0[6];
      v9 = v0[3];
      v8 = v0[4];
      v10 = sub_1E65D9D78();
      (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
      v11 = v7[5];
      v12 = *MEMORY[0x1E69CB9E8];
      v13 = sub_1E65D8C68();
      (*(*(v13 - 8) + 104))(v5 + v11, v12, v13);
      v14 = v7[6];
      v15 = sub_1E65D74E8();
      (*(*(v15 - 8) + 56))(v5 + v14, 1, 1, v15);
      v16 = v7[8];
      v17 = sub_1E65DA208();
      (*(*(v17 - 8) + 56))(v5 + v16, 1, 1, v17);
      v18 = v7[14];
      v19 = *MEMORY[0x1E69CBCC8];
      v20 = sub_1E65D8F28();
      (*(*(v20 - 8) + 104))(v5 + v18, v19, v20);
      v21 = v7[15];
      v22 = *MEMORY[0x1E69CC498];
      v23 = sub_1E65D9908();
      v24 = *(v23 - 8);
      (*(v24 + 104))(v5 + v21, v22, v23);
      (*(v24 + 56))(v5 + v21, 0, 1, v23);
      v25 = MEMORY[0x1E69E7CC0];
      v26 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v5 + v7[7]) = v25;
      v27 = (v5 + v7[9]);
      *v27 = 0;
      v27[1] = 0;
      v28 = (v5 + v7[10]);
      *v28 = 0;
      v28[1] = 0;
      *(v5 + v7[11]) = v26;
      v29 = (v5 + v7[12]);
      *v29 = 0;
      v29[1] = 0;
      v30 = (v5 + v7[13]);
      *v30 = v9;
      v30[1] = v8;
      v31 = *(v6 + 48);

      v62 = (v31 + *v31);
      v32 = swift_task_alloc();
      v0[9] = v32;
      *v32 = v0;
      v32[1] = sub_1E618BDB4;
      v61 = v0[8];
    }

    else
    {
      v34 = v0[6];
      v33 = v0[7];
      v36 = v0[4];
      v35 = v0[5];
      v37 = v0[3];
      v38 = sub_1E65D9D78();
      (*(*(v38 - 8) + 56))(v33, 1, 1, v38);
      v39 = v34[5];
      v40 = *MEMORY[0x1E69CBA68];
      v41 = sub_1E65D8C68();
      (*(*(v41 - 8) + 104))(v33 + v39, v40, v41);
      v42 = v34[6];
      v43 = sub_1E65D74E8();
      (*(*(v43 - 8) + 56))(v33 + v42, 1, 1, v43);
      v44 = v34[8];
      v45 = sub_1E65DA208();
      (*(*(v45 - 8) + 56))(v33 + v44, 1, 1, v45);
      v46 = v34[14];
      v47 = *MEMORY[0x1E69CBCC8];
      v48 = sub_1E65D8F28();
      (*(*(v48 - 8) + 104))(v33 + v46, v47, v48);
      v49 = v34[15];
      v50 = *MEMORY[0x1E69CC498];
      v51 = sub_1E65D9908();
      v52 = *(v51 - 8);
      (*(v52 + 104))(v33 + v49, v50, v51);
      (*(v52 + 56))(v33 + v49, 0, 1, v51);
      v53 = MEMORY[0x1E69E7CC0];
      v54 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v33 + v34[7]) = v53;
      v55 = (v33 + v34[9]);
      *v55 = 0;
      v55[1] = 0;
      v56 = (v33 + v34[10]);
      *v56 = 0;
      v56[1] = 0;
      *(v33 + v34[11]) = v54;
      v57 = (v33 + v34[12]);
      *v57 = 0;
      v57[1] = 0;
      v58 = (v33 + v34[13]);
      *v58 = v37;
      v58[1] = v36;
      v59 = *(v35 + 48);

      v62 = (v59 + *v59);
      v60 = swift_task_alloc();
      v0[11] = v60;
      *v60 = v0;
      v60[1] = sub_1E618BF3C;
      v61 = v0[7];
    }

    return v62(v61);
  }

  else
  {

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1E618BDB4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1E618C0C4;
  }

  else
  {
    v2 = sub_1E618BEC8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E618BEC8()
{
  sub_1E5FC0990(*(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E618BF3C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1E618C144;
  }

  else
  {
    v2 = sub_1E618C050;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E618C050()
{
  sub_1E5FC0990(*(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E618C0C4()
{
  sub_1E5FC0990(*(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E618C144()
{
  sub_1E5FC0990(*(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AppRoutingError.hashValue.getter()
{
  v1 = *v0;
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v1);
  return sub_1E65E6D78();
}

unint64_t sub_1E618C250()
{
  result = qword_1ED075FC0;
  if (!qword_1ED075FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075FC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppRoutingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppRoutingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1E618C3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v5 = sub_1E65E4F38();
  v24 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65E4F68();
  v22 = *(v8 - 8);
  v23 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - v13;
  sub_1E61259CC();
  v21 = sub_1E65E63C8();
  (*(v12 + 16))(v14, a1, v11);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v20;
  *(v16 + 24) = a3;
  (*(v12 + 32))(v16 + v15, v14, v11);
  aBlock[4] = sub_1E619C678;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E5E05AB0;
  aBlock[3] = &block_descriptor_5;
  v17 = _Block_copy(aBlock);

  sub_1E65E4F48();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1E619C9C4(&qword_1EE2D4A00, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078770, &unk_1E65EAB00);
  sub_1E5E05A4C();
  sub_1E65E6738();
  v18 = v21;
  MEMORY[0x1E694DDE0](0, v10, v7, v17);
  _Block_release(v17);

  (*(v24 + 8))(v7, v5);
  (*(v22 + 8))(v10, v23);
}

uint64_t sub_1E618C784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  v13 = sub_1E65E60A8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 16))(v9, a3, v6);
  sub_1E65E6058();

  v14 = sub_1E65E6048();
  v15 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  *(v16 + 2) = v14;
  *(v16 + 3) = v17;
  *(v16 + 4) = a1;
  *(v16 + 5) = a2;
  (*(v7 + 32))(&v16[v15], v9, v6);
  sub_1E64B80F8(0, 0, v12, &unk_1E65F48E0, v16);
}

uint64_t sub_1E618C998(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a6;
  v6[4] = sub_1E65E6058();
  v6[5] = sub_1E65E6048();
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v6[6] = v8;
  *v8 = v6;
  v8[1] = sub_1E618CAAC;

  return v10();
}

uint64_t sub_1E618CAAC()
{
  *(*v1 + 56) = v0;

  v3 = sub_1E65E5FC8();
  if (v0)
  {
    v4 = sub_1E618CC88;
  }

  else
  {
    v4 = sub_1E618CC08;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1E618CC08()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  sub_1E65E5FF8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E618CC88()
{
  v1 = v0[7];

  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  sub_1E65E5FE8();
  v2 = v0[1];

  return v2();
}

uint64_t AppCoordinator.navigateToURL(_:annotation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[1] = a3;
  v5 = sub_1E65E5388();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65D74E8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a1, v9);
  (*(v6 + 16))(v8, a2, v5);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (*(v6 + 80) + v14 + 8) & ~*(v6 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v13, v12, v9);
  *(v16 + v14) = v19[0];
  (*(v6 + 32))(v16 + v15, v8, v5);
  v17 = swift_allocObject();
  *(v17 + 16) = "Blackbeard/AppCoordinatorNavigating.swift";
  *(v17 + 24) = 41;
  *(v17 + 32) = 2;
  *(v17 + 40) = 21;
  *(v17 + 48) = &unk_1E65F47C0;
  *(v17 + 56) = v16;

  return sub_1E65DACA8();
}

uint64_t sub_1E618CFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v4[6] = swift_task_alloc();
  v5 = sub_1E65D74E8();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E618D0AC, 0, 0);
}

uint64_t sub_1E618D0AC()
{
  v26 = v0;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[3];
  v5 = sub_1E65E3B68();
  v0[11] = __swift_project_value_buffer(v5, qword_1EE2EA2A0);
  v6 = *(v3 + 16);
  v0[12] = v6;
  v0[13] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_1E65E3B48();
  v8 = sub_1E65E6338();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[10];
  v11 = v0[7];
  v12 = v0[8];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v13 = 141558274;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2080;
    sub_1E619C9C4(&qword_1EE2D71E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v14 = sub_1E65E6BC8();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1E5DFD4B0(v14, v16, &v25);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_1E5DE9000, v7, v8, "Incoming external URL: %{mask.hash}s", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1E694F1C0](v24, -1, -1);
    MEMORY[0x1E694F1C0](v13, -1, -1);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[14] = v17;
  (*(v0[8] + 56))(v0[6], 1, 1, v0[7]);
  v19 = sub_1E618D944();
  v0[15] = v19;
  v20 = swift_task_alloc();
  v0[16] = v20;
  *v20 = v0;
  v20[1] = sub_1E618D384;
  v21 = v0[6];
  v22 = v0[3];

  return AppCoordinator.routeURL(_:referrerURL:sourceApplication:annotation:)(v22, v21, 0, 0, v19);
}

uint64_t sub_1E618D384()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    sub_1E5DFE50C(*(v2 + 48), &qword_1ED072340, &qword_1E65EA410);

    return MEMORY[0x1EEE6DFA0](sub_1E618D540, 0, 0);
  }

  else
  {
    sub_1E5DFE50C(*(v2 + 48), &qword_1ED072340, &qword_1E65EA410);

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E618D540()
{
  v25 = v0;
  v1 = *(v0 + 136);
  (*(v0 + 96))(*(v0 + 72), *(v0 + 24), *(v0 + 56));
  v2 = v1;
  v3 = sub_1E65E3B48();
  v4 = sub_1E65E6328();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 136);
    v6 = *(v0 + 72);
    v23 = *(v0 + 112);
    v7 = *(v0 + 56);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24[0] = v9;
    *v8 = 141558530;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2080;
    sub_1E619C9C4(&qword_1EE2D71E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v10 = sub_1E65E6BC8();
    v12 = v11;
    v23(v6, v7);
    v13 = sub_1E5DFD4B0(v10, v12, v24);

    *(v8 + 14) = v13;
    *(v8 + 22) = 2082;
    *(v0 + 16) = v5;
    v14 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v15 = sub_1E65E5CE8();
    v17 = sub_1E5DFD4B0(v15, v16, v24);

    *(v8 + 24) = v17;
    _os_log_impl(&dword_1E5DE9000, v3, v4, "Failed to route external URL %{mask.hash}s: %{public}s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v9, -1, -1);
    MEMORY[0x1E694F1C0](v8, -1, -1);
  }

  else
  {
    v18 = *(v0 + 112);
    v19 = *(v0 + 72);
    v20 = *(v0 + 56);

    v18(v19, v20);
  }

  swift_willThrow();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1E618D7EC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E65D74E8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1E65E5388() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + v7);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1E5DFA78C;

  return sub_1E618CFA4(a1, v1 + v6, v10, v1 + v9);
}

uint64_t sub_1E618D944()
{
  v0 = sub_1E65E5388();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076008, &qword_1E65F4880);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EB9E0;
  sub_1E65E5348();
  sub_1E619C9C4(&qword_1EE2D49C0, MEMORY[0x1E69CD838], MEMORY[0x1E69CD840]);
  v5 = sub_1E65E6718();
  v6 = *(v1 + 8);
  v6(v3, v0);
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = 7;
  }

  *(inited + 32) = v7;
  sub_1E65E5358();
  v8 = sub_1E65E6718();
  v6(v3, v0);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 7;
  }

  *(inited + 33) = v9;
  v10 = *(inited + 32);
  if (v10 == 7)
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v11 = sub_1E64F6B18(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_1E64F6B18((v12 > 1), v13 + 1, 1, v11);
    }

    *(v11 + 2) = v13 + 1;
    v11[v13 + 32] = v10;
    v9 = *(inited + 33);
  }

  if (v9 != 7)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1E64F6B18(0, *(v11 + 2) + 1, 1, v11);
    }

    v15 = *(v11 + 2);
    v14 = *(v11 + 3);
    if (v15 >= v14 >> 1)
    {
      v11 = sub_1E64F6B18((v14 > 1), v15 + 1, 1, v11);
    }

    *(v11 + 2) = v15 + 1;
    v11[v15 + 32] = v9;
  }

  v16 = sub_1E600C688(v11);

  return v16;
}

uint64_t AppCoordinator.navigateToUserActivity(_:annotation:)(void *a1, uint64_t a2)
{
  v5 = sub_1E65E5388();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(v6 + 16))(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = v2;
  (*(v6 + 32))(v9 + v8, &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v10 = swift_allocObject();
  *(v10 + 16) = "Blackbeard/AppCoordinatorNavigating.swift";
  *(v10 + 24) = 41;
  *(v10 + 32) = 2;
  *(v10 + 40) = 35;
  *(v10 + 48) = &unk_1E65F47D0;
  *(v10 + 56) = v9;
  v11 = a1;

  return sub_1E65DACA8();
}

uint64_t sub_1E618DD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E618DDB0, 0, 0);
}

uint64_t sub_1E618DDB0()
{
  v20 = v0;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_1E65E3B68();
  v0[6] = __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6338();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 141558274;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2080;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_1E65E5C78();
    v13 = v12;

    v14 = sub_1E5DFD4B0(v11, v13, &v19);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "Incoming external User Activity: %{mask.hash}s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E694F1C0](v8, -1, -1);
    MEMORY[0x1E694F1C0](v7, -1, -1);
  }

  v15 = sub_1E618D944();
  v0[7] = v15;
  v16 = swift_task_alloc();
  v0[8] = v16;
  *v16 = v0;
  v16[1] = sub_1E618DFE4;
  v17 = v0[3];

  return AppCoordinator.routeUserActivity(_:annotation:)(v17, v15);
}

uint64_t sub_1E618DFE4()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E618E120, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E618E120()
{
  v24 = v0;
  v1 = v0[9];
  v2 = v0[3];

  v3 = v2;
  v4 = v1;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6328();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[9];
    v8 = v0[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23[0] = v10;
    *v9 = 141558530;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2080;
    v11 = v8;
    v12 = [v11 description];
    v13 = sub_1E65E5C78();
    v15 = v14;

    v16 = sub_1E5DFD4B0(v13, v15, v23);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2082;
    v0[2] = v7;
    v17 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v18 = sub_1E65E5CE8();
    v20 = sub_1E5DFD4B0(v18, v19, v23);

    *(v9 + 24) = v20;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "Failed to route external User Activity %{mask.hash}s: %{public}s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v10, -1, -1);
    MEMORY[0x1E694F1C0](v9, -1, -1);
  }

  swift_willThrow();
  v21 = v0[1];

  return v21();
}

uint64_t AppCoordinator.navigateToRequest(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v3 = type metadata accessor for AppEnvironment(0);
  v82 = *(v3 - 8);
  v4 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v83 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65E5388();
  v72 = *(v5 - 8);
  v73 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v71 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v70 = &v68 - v8;
  v9 = sub_1E65E5228();
  v75 = *(v9 - 8);
  v76 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v74 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E65E52C8();
  v85 = *(v11 - 8);
  v86 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E65E5288();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v79 = v17;
  v80 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v68 - v18;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v20 = sub_1E65E3B68();
  __swift_project_value_buffer(v20, qword_1EE2EA2A0);
  v77 = *(v15 + 16);
  v78 = v15 + 16;
  v77(v19, a1, v14);
  v21 = sub_1E65E3B48();
  v22 = sub_1E65E6328();
  v23 = os_log_type_enabled(v21, v22);
  v81 = v15;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v69 = a1;
    v25 = v24;
    v26 = swift_slowAlloc();
    v68 = v4;
    v27 = v26;
    *&v88[0] = v26;
    *v25 = 141558274;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2080;
    sub_1E619C9C4(&unk_1EE2D49D0, MEMORY[0x1E69CD758], MEMORY[0x1E69CD760]);
    v28 = sub_1E65E6BC8();
    v29 = v14;
    v31 = v30;
    (*(v15 + 8))(v19, v29);
    v32 = sub_1E5DFD4B0(v28, v31, v88);
    v14 = v29;

    *(v25 + 14) = v32;
    _os_log_impl(&dword_1E5DE9000, v21, v22, "Incoming external navigation request: %{mask.hash}s. We wish to only support URLs from external systems going forward.", v25, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v33 = v27;
    v4 = v68;
    MEMORY[0x1E694F1C0](v33, -1, -1);
    v34 = v25;
    a1 = v69;
    MEMORY[0x1E694F1C0](v34, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v19, v14);
  }

  sub_1E65E5278();
  v36 = v85;
  v35 = v86;
  v37 = (*(v85 + 88))(v13, v86);
  v38 = *MEMORY[0x1E69CD7F8];
  (*(v36 + 8))(v13, v35);
  if (v37 != v38)
  {
    goto LABEL_13;
  }

  v39 = v74;
  sub_1E65E5258();
  v41 = v75;
  v40 = v76;
  if ((*(v75 + 88))(v39, v76) != *MEMORY[0x1E69CD728])
  {
    (*(v41 + 8))(v39, v40);
LABEL_13:
    v52 = (v84 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router);
    v53 = *(*__swift_project_boxed_opaque_existential_1((v84 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router), *(v84 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router + 24)) + OBJC_IVAR____TtC10Blackbeard9AppRouter_composer);
    v54 = *__swift_project_boxed_opaque_existential_1(v52, v52[3]);
    v55 = OBJC_IVAR____TtC10Blackbeard9AppRouter_composer;
    v56 = v55 + *(type metadata accessor for AppComposer(0) + 20);
    v57 = v80;
    v77(v80, a1, v14);
    v58 = v83;
    sub_1E5DFA9E0(v54 + v56, v83, type metadata accessor for AppEnvironment);
    sub_1E5DF650C(v52, v88);
    v59 = v81;
    v60 = (*(v81 + 80) + 16) & ~*(v81 + 80);
    v61 = (v79 + *(v82 + 80) + v60) & ~*(v82 + 80);
    v62 = (v4 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v63 = swift_allocObject();
    (*(v59 + 32))(v63 + v60, v57, v14);
    sub_1E5DFAB80(v58, v63 + v61, type metadata accessor for AppEnvironment);
    sub_1E5DF599C(v88, v63 + v62);
    *(v63 + ((v62 + 47) & 0xFFFFFFFFFFFFFFF8)) = v53;
    v64 = swift_allocObject();
    *(v64 + 16) = "Blackbeard/AppCoordinatorNavigating.swift";
    *(v64 + 24) = 41;
    *(v64 + 32) = 2;
    *(v64 + 40) = 58;
    *(v64 + 48) = &unk_1E65F47E0;
    *(v64 + 56) = v63;

    return sub_1E65DACA8();
  }

  v42 = v70;
  sub_1E65E5248();
  v43 = v71;
  sub_1E65E5378();
  sub_1E619C9C4(&qword_1EE2D49C0, MEMORY[0x1E69CD838], MEMORY[0x1E69CD840]);
  v44 = v73;
  v45 = sub_1E65E6718();
  v46 = *(v72 + 8);
  v46(v43, v44);
  v46(v42, v44);
  sub_1E65E5248();
  sub_1E65E5338();
  v47 = sub_1E65E6718();
  v46(v43, v44);
  v46(v42, v44);
  sub_1E65E5248();
  sub_1E65E5368();
  v48 = sub_1E65E6718();
  v46(v43, v44);
  v46(v42, v44);
  if ((v45 & 1) == 0 && (v47 & 1) == 0 && (v48 & 1) == 0)
  {
    sub_1E5FAA54C();
    v49 = swift_allocError();
    *v50 = 2;
    *(swift_allocObject() + 16) = v49;
    return sub_1E65DACB8();
  }

  v65 = swift_allocObject();
  swift_weakInit();
  v66 = swift_allocObject();
  *(v66 + 16) = v47 & 1;
  *(v66 + 24) = v65;
  *(v66 + 32) = v45 & 1;
  *(v66 + 33) = v48 & 1;
  v67 = swift_allocObject();
  *(v67 + 16) = "Blackbeard/AppCoordinatorNavigating.swift";
  *(v67 + 24) = 41;
  *(v67 + 32) = 2;
  *(v67 + 40) = 93;
  *(v67 + 48) = &unk_1E65F47F0;
  *(v67 + 56) = v66;
  return sub_1E65DACA8();
}

uint64_t sub_1E618ED48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v5[15] = a2;
  v5[16] = a3;
  v5[19] = type metadata accessor for AppAction(0);
  v5[20] = swift_task_alloc();
  v6 = *(type metadata accessor for NavigationControllerRoutingContext(0) - 8);
  v5[21] = v6;
  v5[22] = *(v6 + 64);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v7 = type metadata accessor for RoutingContextAction(0);
  v5[26] = v7;
  v8 = *(v7 - 8);
  v5[27] = v8;
  v5[28] = *(v8 + 64);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v9 = sub_1E65E5288();
  v5[32] = v9;
  v5[33] = *(v9 - 8);
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E618EF3C, 0, 0);
}

uint64_t sub_1E618EF3C()
{
  v24 = v0;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[15];
  v5 = sub_1E65E3B68();
  v0[36] = __swift_project_value_buffer(v5, qword_1EE2EA2A0);
  v6 = *(v3 + 16);
  v0[37] = v6;
  v0[38] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_1E65E3B48();
  v8 = sub_1E65E6338();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[35];
  v11 = v0[32];
  v12 = v0[33];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 141558274;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2080;
    sub_1E619C9C4(&unk_1EE2D49D0, MEMORY[0x1E69CD758], MEMORY[0x1E69CD760]);
    v15 = sub_1E65E6BC8();
    v17 = v16;
    (*(v12 + 8))(v10, v11);
    v18 = sub_1E5DFD4B0(v15, v17, &v23);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_1E5DE9000, v7, v8, "Transforming %{mask.hash}s", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1E694F1C0](v14, -1, -1);
    MEMORY[0x1E694F1C0](v13, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  v19 = swift_task_alloc();
  v0[39] = v19;
  *v19 = v0;
  v19[1] = sub_1E618F1D4;
  v20 = v0[31];
  v21 = v0[16];

  return sub_1E6190A1C(v20, v21);
}

uint64_t sub_1E618F1D4()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_1E6190754;
  }

  else
  {
    v2 = sub_1E618F2E8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E618F2E8()
{
  sub_1E5DFA9E0(*(v0 + 248), *(v0 + 240), type metadata accessor for RoutingContextAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v2 = *(v0 + 240);
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FF0, &unk_1E65F5540);
        sub_1E5F94E00(*(v2 + *(v3 + 48)), *(v2 + *(v3 + 48) + 8));
        v4 = type metadata accessor for RouteDestination;
        v5 = v2;
      }

      else
      {
        v5 = *(v0 + 240);
        v4 = type metadata accessor for RoutingContextAction;
      }

      sub_1E5E26340(v5, v4);
      swift_getKeyPath();
      sub_1E65E4EC8();

      v12 = *(v0 + 72);
      if (v12 == 6)
      {
        swift_beginAccess();
        v13 = qword_1ED075958;
        v12 = qword_1ED075960;
        sub_1E5E05374(qword_1ED075958, qword_1ED075960);
      }

      else
      {
        v13 = *(v0 + 64);
      }

      *(v0 + 392) = v13;
      *(v0 + 400) = v12;
      *(v0 + 408) = __swift_project_boxed_opaque_existential_1(*(v0 + 136), *(*(v0 + 136) + 24));
      *(v0 + 80) = v13;
      *(v0 + 88) = v12;
      *(v0 + 416) = sub_1E65E6058();
      *(v0 + 424) = sub_1E65E6048();
      v8 = sub_1E65E5FC8();
      v10 = v14;
      v11 = sub_1E618FE78;
      goto LABEL_15;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_1E5DFE50C(*(v0 + 240), &unk_1ED072040, &qword_1E65F0860);
    }
  }

  else
  {
    sub_1E5E26340(*(v0 + 240), type metadata accessor for RouteDestination);
  }

  *(v0 + 328) = __swift_project_boxed_opaque_existential_1(*(v0 + 136), *(*(v0 + 136) + 24));
  swift_beginAccess();
  v6 = qword_1ED075958;
  v7 = qword_1ED075960;
  *(v0 + 96) = qword_1ED075958;
  *(v0 + 104) = v7;
  *(v0 + 336) = sub_1E65E6058();
  sub_1E5E05374(v6, v7);
  *(v0 + 344) = sub_1E65E6048();
  v8 = sub_1E65E5FC8();
  v10 = v9;
  v11 = sub_1E618F57C;
LABEL_15:

  return MEMORY[0x1EEE6DFA0](v11, v8, v10);
}

uint64_t sub_1E618F57C()
{
  v1 = v0[25];

  sub_1E5E24114(v0 + 12, v1);
  sub_1E5E0476C(v0[12], v0[13]);

  return MEMORY[0x1EEE6DFA0](sub_1E618F604, 0, 0);
}

uint64_t sub_1E618F604()
{
  v1 = *(v0 + 160);
  v2 = qword_1ED075958;
  v3 = qword_1ED075960;
  *v1 = qword_1ED075958;
  v1[1] = v3;
  swift_storeEnumTagMultiPayload();
  sub_1E5E05374(v2, v3);
  *(v0 + 352) = sub_1E65E6048();
  v5 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E618F6C0, v5, v4);
}

uint64_t sub_1E618F6C0()
{
  v1 = *(v0 + 160);

  sub_1E65E4EE8();
  sub_1E5E26340(v1, type metadata accessor for AppAction);

  return MEMORY[0x1EEE6DFA0](sub_1E618F754, 0, 0);
}

uint64_t sub_1E618F754()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v4 = v0[24];
  v5 = v0[25];
  v6 = v0[21];
  sub_1E5DFA9E0(v0[31], v1, type metadata accessor for RoutingContextAction);
  sub_1E5DFA9E0(v5, v4, type metadata accessor for NavigationControllerRoutingContext);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = (v2 + *(v6 + 80) + v7) & ~*(v6 + 80);
  v9 = swift_allocObject();
  v0[45] = v9;
  sub_1E5DFAB80(v1, v9 + v7, type metadata accessor for RoutingContextAction);
  sub_1E5DFAB80(v4, v9 + v8, type metadata accessor for NavigationControllerRoutingContext);
  v10 = swift_task_alloc();
  v0[46] = v10;
  *(v10 + 16) = &unk_1E65F48D0;
  *(v10 + 24) = v9;
  v11 = swift_task_alloc();
  v0[47] = v11;
  *v11 = v0;
  v11[1] = sub_1E618F930;
  v12 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v11, 0, 0, 0xD000000000000011, 0x80000001E6610F30, sub_1E5FFF594, v10, v12);
}

uint64_t sub_1E618F930()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_1E618FB60;
  }

  else
  {

    v2 = sub_1E618FA54;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E618FA54()
{
  v1 = v0[31];
  sub_1E5E26340(v0[25], type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5E26340(v1, type metadata accessor for RoutingContextAction);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E618FB60()
{
  v26 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 200);

  sub_1E5E26340(v2, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5E26340(v1, type metadata accessor for RoutingContextAction);
  v3 = *(v0 + 384);
  (*(v0 + 296))(*(v0 + 272), *(v0 + 120), *(v0 + 256));
  v4 = v3;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6328();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 264);
    v7 = *(v0 + 272);
    v9 = *(v0 + 256);
    v10 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v10 = 136446466;
    sub_1E619C9C4(&unk_1EE2D49D0, MEMORY[0x1E69CD758], MEMORY[0x1E69CD760]);
    v11 = sub_1E65E6BC8();
    v13 = v12;
    (*(v8 + 8))(v7, v9);
    v14 = sub_1E5DFD4B0(v11, v13, &v25);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v0 + 112) = v3;
    v15 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v16 = sub_1E65E5CE8();
    v18 = sub_1E5DFD4B0(v16, v17, &v25);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "Failed to apply %{public}s: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v24, -1, -1);
    MEMORY[0x1E694F1C0](v10, -1, -1);
  }

  else
  {
    v20 = *(v0 + 264);
    v19 = *(v0 + 272);
    v21 = *(v0 + 256);

    (*(v20 + 8))(v19, v21);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1E618FE78()
{
  v1 = *(v0 + 184);

  sub_1E5E24114((v0 + 80), v1);

  return MEMORY[0x1EEE6DFA0](sub_1E618FEF8, 0, 0);
}

uint64_t sub_1E618FEF8()
{
  **(v0 + 160) = *(v0 + 392);
  swift_storeEnumTagMultiPayload();
  *(v0 + 432) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E618FF9C, v2, v1);
}

uint64_t sub_1E618FF9C()
{
  v1 = *(v0 + 160);

  sub_1E65E4EE8();
  sub_1E5E26340(v1, type metadata accessor for AppAction);

  return MEMORY[0x1EEE6DFA0](sub_1E6190030, 0, 0);
}

uint64_t sub_1E6190030()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[21];
  sub_1E5DFA9E0(v0[31], v1, type metadata accessor for RoutingContextAction);
  sub_1E5DFA9E0(v5, v4, type metadata accessor for NavigationControllerRoutingContext);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = (v2 + *(v6 + 80) + v7) & ~*(v6 + 80);
  v9 = swift_allocObject();
  v0[55] = v9;
  sub_1E5DFAB80(v1, v9 + v7, type metadata accessor for RoutingContextAction);
  sub_1E5DFAB80(v4, v9 + v8, type metadata accessor for NavigationControllerRoutingContext);
  v10 = swift_task_alloc();
  v0[56] = v10;
  *(v10 + 16) = &unk_1E65F48C0;
  *(v10 + 24) = v9;
  v11 = swift_task_alloc();
  v0[57] = v11;
  *v11 = v0;
  v11[1] = sub_1E619020C;
  v12 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v11, 0, 0, 0xD000000000000011, 0x80000001E6610F30, sub_1E5FFEB84, v10, v12);
}

uint64_t sub_1E619020C()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_1E619043C;
  }

  else
  {

    v2 = sub_1E6190330;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6190330()
{
  v1 = v0[31];
  sub_1E5E26340(v0[23], type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5E26340(v1, type metadata accessor for RoutingContextAction);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E619043C()
{
  v26 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 184);

  sub_1E5E26340(v2, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5E26340(v1, type metadata accessor for RoutingContextAction);
  v3 = *(v0 + 464);
  (*(v0 + 296))(*(v0 + 272), *(v0 + 120), *(v0 + 256));
  v4 = v3;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6328();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 264);
    v7 = *(v0 + 272);
    v9 = *(v0 + 256);
    v10 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v10 = 136446466;
    sub_1E619C9C4(&unk_1EE2D49D0, MEMORY[0x1E69CD758], MEMORY[0x1E69CD760]);
    v11 = sub_1E65E6BC8();
    v13 = v12;
    (*(v8 + 8))(v7, v9);
    v14 = sub_1E5DFD4B0(v11, v13, &v25);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v0 + 112) = v3;
    v15 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v16 = sub_1E65E5CE8();
    v18 = sub_1E5DFD4B0(v16, v17, &v25);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "Failed to apply %{public}s: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v24, -1, -1);
    MEMORY[0x1E694F1C0](v10, -1, -1);
  }

  else
  {
    v20 = *(v0 + 264);
    v19 = *(v0 + 272);
    v21 = *(v0 + 256);

    (*(v20 + 8))(v19, v21);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1E6190754()
{
  v24 = v0;
  v1 = *(v0 + 320);
  (*(v0 + 296))(*(v0 + 272), *(v0 + 120), *(v0 + 256));
  v2 = v1;
  v3 = sub_1E65E3B48();
  v4 = sub_1E65E6328();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 264);
    v5 = *(v0 + 272);
    v7 = *(v0 + 256);
    v8 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v8 = 136446466;
    sub_1E619C9C4(&unk_1EE2D49D0, MEMORY[0x1E69CD758], MEMORY[0x1E69CD760]);
    v9 = sub_1E65E6BC8();
    v11 = v10;
    (*(v6 + 8))(v5, v7);
    v12 = sub_1E5DFD4B0(v9, v11, &v23);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v0 + 112) = v1;
    v13 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v14 = sub_1E65E5CE8();
    v16 = sub_1E5DFD4B0(v14, v15, &v23);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_1E5DE9000, v3, v4, "Failed to apply %{public}s: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v22, -1, -1);
    MEMORY[0x1E694F1C0](v8, -1, -1);
  }

  else
  {
    v18 = *(v0 + 264);
    v17 = *(v0 + 272);
    v19 = *(v0 + 256);

    (*(v18 + 8))(v17, v19);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1E6190A1C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FE0, &unk_1E660F450);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v4 = sub_1E65E5228();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v5 = sub_1E65E5388();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v6 = sub_1E65E5238();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  type metadata accessor for RouteSource(0);
  v3[20] = swift_task_alloc();
  v7 = sub_1E65E52C8();
  v3[21] = v7;
  v3[22] = *(v7 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = type metadata accessor for RouteResource(0);
  v3[26] = swift_task_alloc();
  v8 = type metadata accessor for RouteDestination(0);
  v3[27] = v8;
  v3[28] = *(v8 - 8);
  v3[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6190D08, 0, 0);
}

uint64_t sub_1E6190D08(uint64_t a1)
{
  sub_1E65E5278();
  v2 = swift_task_alloc();
  v1[30] = v2;
  *v2 = v1;
  v2[1] = sub_1E6190DB0;
  v3 = v1[26];
  v4 = v1[6];

  return sub_1E61948E4(v3, v4);
}

uint64_t sub_1E6190DB0()
{
  v2 = *v1;
  v2[31] = v0;

  v3 = v2[24];
  v4 = v2[22];
  v5 = v2[21];
  v8 = *(v4 + 8);
  v6 = v4 + 8;
  v7 = v8;
  if (v0)
  {
    v7(v3, v5);
    v9 = sub_1E6191A7C;
  }

  else
  {
    v2[32] = v7;
    v2[33] = v6 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v5);
    v9 = sub_1E6190F30;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1E6190F30()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 160);
  sub_1E65E5268();
  sub_1E6194588(v2);
  if (v1)
  {
    v3 = *(v0 + 208);
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
    v4 = type metadata accessor for RouteResource;
LABEL_3:
    sub_1E5E26340(v3, v4);
LABEL_4:

    v5 = *(v0 + 8);
    goto LABEL_14;
  }

  v6 = *(v0 + 232);
  v7 = *(v0 + 216);
  v97 = *(v0 + 208);
  v99 = *(v0 + 160);
  v9 = *(v0 + 120);
  v8 = *(v0 + 128);
  v10 = *(v0 + 104);
  v11 = *(v0 + 112);
  v12 = *(v0 + 96);
  v101 = *(v0 + 88);
  (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
  sub_1E65E5248();
  v13 = sub_1E618D944();
  v14 = v8;
  v15 = v13;
  (*(v9 + 8))(v14, v11);
  v16 = v7;
  sub_1E5DFAB80(v97, v6, type metadata accessor for RouteResource);
  v17 = *(v7 + 20);
  sub_1E5DFAB80(v99, v6 + v17, type metadata accessor for RouteSource);
  v18 = *(v7 + 24);
  v19 = v6;
  *(v6 + v18) = v15;
  sub_1E65E5258();
  v20 = (*(v12 + 88))(v10, v101);
  if (v20 == *MEMORY[0x1E69CD700])
  {
    v21 = *(v0 + 256);
    v22 = *(v0 + 232);
    v24 = *(v0 + 176);
    v23 = *(v0 + 184);
    v25 = *(v0 + 168);
    v26 = *(v0 + 104);
    v27 = *(v0 + 40);
    (*(*(v0 + 96) + 96))(v26, *(v0 + 88));
    v102 = *v26;
    sub_1E65E5278();
    LODWORD(v26) = (*(v24 + 88))(v23, v25);
    LODWORD(v24) = *MEMORY[0x1E69CD7C8];
    v21(v23, v25);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FF0, &unk_1E65F5540);
    v29 = v27 + *(v28 + 48);
    v30 = *(v28 + 64);
    sub_1E5DFAB80(v22, v27, type metadata accessor for RouteDestination);
    *v29 = 0;
    if (v26 == v24)
    {
      *(v29 + 8) = 0;
    }

    else
    {
      *(v29 + 8) = -64;
    }

    *(v27 + v30) = v102;
    goto LABEL_12;
  }

  if (v20 != *MEMORY[0x1E69CD720])
  {
    if (v20 == *MEMORY[0x1E69CD728])
    {
      v36 = *(v0 + 224);
      v37 = *(v0 + 216);
      v39 = *(v0 + 96);
      v38 = *(v0 + 104);
      v40 = *(v0 + 88);
      v41 = *(v0 + 40);
      sub_1E5E26340(*(v0 + 232), type metadata accessor for RouteDestination);
      (*(v39 + 96))(v38, v40);
      LOBYTE(v38) = *v38;
      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FF8, &qword_1E65F4878) + 48);
      (*(v36 + 56))(v41, 1, 1, v37);
      *(v41 + v42) = v38;
      type metadata accessor for RoutingContextAction(0);
      goto LABEL_13;
    }

    if (v20 == *MEMORY[0x1E69CD710])
    {
      v103 = *(v0 + 232);
      v43 = *(v0 + 104);
      v44 = *(v0 + 40);
      (*(*(v0 + 96) + 96))(v43, *(v0 + 88));
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FF0, &unk_1E65F5540);
      v46 = v44 + *(v45 + 48);
      v47 = *(v45 + 64);
      v48 = sub_1E65DB718();
      (*(*(v48 - 8) + 32))(v44, v43, v48);
      swift_storeEnumTagMultiPayload();
      sub_1E5DFA9E0(v19 + v17, v44 + *(v16 + 20), type metadata accessor for RouteSource);

      sub_1E5E26340(v103, type metadata accessor for RouteDestination);
      *(v44 + *(v16 + 24)) = v15;
      *v46 = 2;
      *(v46 + 8) = -64;
      *(v44 + v47) = 1;
LABEL_12:
      type metadata accessor for RoutingContextAction(0);
      goto LABEL_13;
    }

    if (v20 == *MEMORY[0x1E69CD718])
    {
      v104 = *(v0 + 232);
      v49 = *(v0 + 104);
      v50 = *(v0 + 40);
      (*(*(v0 + 96) + 96))(v49, *(v0 + 88));
      v51 = *v49;
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FF0, &unk_1E65F5540);
      v53 = v50 + *(v52 + 48);
      v54 = *(v52 + 64);
      *v50 = v51;
      *(v50 + 8) = 0;
      *(v50 + 16) = 0;
      swift_storeEnumTagMultiPayload();
      sub_1E5DFA9E0(v19 + v17, v50 + *(v16 + 20), type metadata accessor for RouteSource);

      sub_1E5E26340(v104, type metadata accessor for RouteDestination);
      *(v50 + *(v16 + 24)) = v15;
      *v53 = 2;
      *(v53 + 8) = -64;
      *(v50 + v54) = 1;
      goto LABEL_12;
    }

    if (v20 != *MEMORY[0x1E69CD708])
    {
      v62 = *(v0 + 232);
      v63 = *(v0 + 96);
      v64 = *(v0 + 104);
      v65 = *(v0 + 88);
      sub_1E6060374();
      swift_allocError();
      *v66 = 1;
      swift_willThrow();
      sub_1E5E26340(v62, type metadata accessor for RouteDestination);
      (*(v63 + 8))(v64, v65);
      goto LABEL_4;
    }

    v55 = *(v0 + 104);
    v56 = *(v0 + 80);
    (*(*(v0 + 96) + 96))(v55, *(v0 + 88));
    v57 = *v55;
    v58 = *(v55 + 8);
    v59 = v55[3];
    v105 = v55[2];
    v60 = v55[4];
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FE8, &qword_1E65F4870);
    sub_1E61992D0(v55 + *(v61 + 80), v56);
    if (v58 == 1)
    {

      goto LABEL_32;
    }

    v96 = v57;
    v98 = v15;
    v100 = v59;
    v67 = *(v0 + 72);
    sub_1E5DFD1CC(*(v0 + 80), v67, &qword_1ED075FE0, &unk_1E660F450);
    v68 = sub_1E65D8668();
    v69 = *(v68 - 8);
    v70 = *(v69 + 48);
    if (v70(v67, 1, v68) == 1)
    {
      v71 = *(v0 + 72);
    }

    else
    {
      v93 = v16;
      v73 = *(v0 + 72);
      v72 = *(v0 + 80);
      v74 = *(v0 + 64);
      v92 = sub_1E65D8528();
      v95 = v75;
      v94 = *(v69 + 8);
      v94(v73, v68);
      sub_1E5DFD1CC(v72, v74, &qword_1ED075FE0, &unk_1E660F450);
      v76 = v70(v74, 1, v68);
      v71 = *(v0 + 64);
      if (v76 != 1)
      {
        v79 = sub_1E65D8658();
        v81 = v80;
        v83 = v82;
        v94(v71, v68);
        *(v0 + 16) = v79;
        *(v0 + 24) = v81;
        *(v0 + 32) = v83 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758E0, &qword_1E65F1FE8);
        sub_1E65D7FB8();
        sub_1E5F87058(v79, v81, v83 & 1);
        v84 = *(v0 + 33);
        if (v84 != 4)
        {
          v85 = *(v0 + 232);
          v86 = *(v0 + 40);
          sub_1E5DFE50C(*(v0 + 80), &qword_1ED075FE0, &unk_1E660F450);
          v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FF0, &unk_1E65F5540);
          v88 = v86 + *(v87 + 48);
          v89 = *(v87 + 64);
          v90 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
          *v86 = v105;
          *(v86 + 8) = v100;
          *(v86 + 16) = v92;
          *(v86 + 24) = v95;
          *(v86 + 32) = v96;
          *(v86 + 40) = v84;
          *(v86 + 48) = v60;
          v91 = sub_1E65D96F8();
          (*(*(v91 - 8) + 56))(v86 + v90, 1, 1, v91);
          swift_storeEnumTagMultiPayload();
          sub_1E5DFA9E0(v19 + v17, v86 + *(v93 + 20), type metadata accessor for RouteSource);

          sub_1E5E26340(v85, type metadata accessor for RouteDestination);
          *(v86 + *(v93 + 24)) = v98;
          *v88 = 2;
          *(v88 + 8) = -64;
          *(v86 + v89) = 1;
          goto LABEL_12;
        }

LABEL_32:
        v3 = *(v0 + 232);
        v77 = *(v0 + 80);
        sub_1E6060374();
        swift_allocError();
        *v78 = 0;
        swift_willThrow();
        sub_1E5DFE50C(v77, &qword_1ED075FE0, &unk_1E660F450);
        v4 = type metadata accessor for RouteDestination;
        goto LABEL_3;
      }
    }

    sub_1E5DFE50C(v71, &qword_1ED075FE0, &unk_1E660F450);
    goto LABEL_32;
  }

  v31 = *(v0 + 232);
  v32 = *(v0 + 104);
  v33 = *(v0 + 40);
  (*(*(v0 + 96) + 96))(v32, *(v0 + 88));
  LOBYTE(v32) = *v32;
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076000, &unk_1E65F5550) + 48);
  sub_1E5DFAB80(v31, v33, type metadata accessor for RouteDestination);
  *(v33 + v34) = v32;
  type metadata accessor for RoutingContextAction(0);
LABEL_13:
  swift_storeEnumTagMultiPayload();

  v5 = *(v0 + 8);
LABEL_14:

  return v5();
}

uint64_t sub_1E6191A7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6191B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1E6191B94, 0, 0);
}

uint64_t sub_1E6191B94()
{
  v1 = *(v0 + 64);
  *(v0 + 40) = type metadata accessor for NavigationControllerRoutingContext(0);
  *(v0 + 48) = &off_1F5FA9B10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  sub_1E5DFA9E0(v1, boxed_opaque_existential_1, type metadata accessor for NavigationControllerRoutingContext);
  *(v0 + 88) = 0;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_1E6191C78;

  return sub_1E61B7C00(v0 + 16, (v0 + 88));
}

uint64_t sub_1E6191C78()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E619CA0C, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 2);
    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_1E6191DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1E6191DD4, 0, 0);
}

uint64_t sub_1E6191DD4()
{
  v1 = *(v0 + 64);
  *(v0 + 40) = type metadata accessor for NavigationControllerRoutingContext(0);
  *(v0 + 48) = &off_1F5FA9B10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  sub_1E5DFA9E0(v1, boxed_opaque_existential_1, type metadata accessor for NavigationControllerRoutingContext);
  *(v0 + 88) = 0;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_1E6191EB8;

  return sub_1E61B7C00(v0 + 16, (v0 + 88));
}

uint64_t sub_1E6191EB8()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6191FF4, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 2);
    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_1E6191FF4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6192058(uint64_t a1, char a2, uint64_t a3, char a4, char a5)
{
  *(v5 + 179) = a5;
  *(v5 + 178) = a4;
  *(v5 + 96) = a3;
  *(v5 + 177) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6192084, 0, 0);
}

uint64_t sub_1E6192084()
{
  if (*(v0 + 177) == 1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 104) = Strong;
    if (Strong)
    {
      v2 = swift_task_alloc();
      *(v0 + 112) = v2;
      *v2 = v0;
      v2[1] = sub_1E61922B8;
      v3 = 1;
LABEL_7:

      return AppCoordinator.onTabSwitch(isReselection:)(v3);
    }

    goto LABEL_15;
  }

  if (*(v0 + 178) == 1)
  {
    swift_beginAccess();
    v4 = swift_weakLoadStrong();
    *(v0 + 128) = v4;
    if (v4)
    {
      v5 = swift_task_alloc();
      *(v0 + 136) = v5;
      *v5 = v0;
      v5[1] = sub_1E61923F4;
      v3 = 0;
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  if (*(v0 + 179) != 1 || (swift_beginAccess(), v7 = swift_weakLoadStrong(), (*(v0 + 152) = v7) == 0))
  {
LABEL_15:
    v9 = *(v0 + 8);

    return v9();
  }

  v8 = swift_task_alloc();
  *(v0 + 160) = v8;
  *v8 = v0;
  v8[1] = sub_1E6192530;

  return AppCoordinator.onAppLaunch(connectionOptions:)(v0 + 176, 0);
}

uint64_t sub_1E61922B8()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E619264C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E61923F4()
{
  v2 = *v1;
  *(v2 + 144) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6192814, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E6192530()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1E61929DC;
  }

  else
  {

    v2 = sub_1E5E1CF6C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E619264C()
{
  v15 = v0;

  v1 = v0[15];
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6328();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[11] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v9 = sub_1E65E5CE8();
    v11 = sub_1E5DFD4B0(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "Failed to route root request: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E694F1C0](v7, -1, -1);
    MEMORY[0x1E694F1C0](v6, -1, -1);
  }

  swift_willThrow();
  v12 = v0[1];

  return v12();
}

uint64_t sub_1E6192814()
{
  v15 = v0;

  v1 = v0[18];
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6328();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[11] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v9 = sub_1E65E5CE8();
    v11 = sub_1E5DFD4B0(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "Failed to route root request: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E694F1C0](v7, -1, -1);
    MEMORY[0x1E694F1C0](v6, -1, -1);
  }

  swift_willThrow();
  v12 = v0[1];

  return v12();
}

uint64_t sub_1E61929DC()
{
  v15 = v0;

  v1 = v0[21];
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6328();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[11] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v9 = sub_1E65E5CE8();
    v11 = sub_1E5DFD4B0(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "Failed to route root request: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E694F1C0](v7, -1, -1);
    MEMORY[0x1E694F1C0](v6, -1, -1);
  }

  swift_willThrow();
  v12 = v0[1];

  return v12();
}

uint64_t sub_1E6192BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[19] = a4;
  type metadata accessor for RoutingContextAction(0);
  v6[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A30, &qword_1E65EEA70);
  v6[23] = swift_task_alloc();
  v7 = type metadata accessor for NavigationControllerRoutingContext(0);
  v6[24] = v7;
  v6[25] = *(v7 - 8);
  v6[26] = swift_task_alloc();
  v8 = sub_1E65E5288();
  v6[27] = v8;
  v6[28] = *(v8 - 8);
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FC8, &qword_1E65F4800);
  v6[31] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FD0, &qword_1E65F4808);
  v6[32] = v9;
  v6[33] = *(v9 - 8);
  v6[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6192DD4, 0, 0);
}

uint64_t sub_1E6192DD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FD8, &qword_1E65F4810);
  sub_1E65E60F8();
  v0[35] = OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router;
  v1 = swift_task_alloc();
  v0[36] = v1;
  *v1 = v0;
  v1[1] = sub_1E6192EAC;
  v2 = v0[31];
  v3 = v0[32];

  return MEMORY[0x1EEE6D9C8](v2, 0, 0, v3);
}

uint64_t sub_1E6192EAC()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6192FA8, 0, 0);
}

uint64_t sub_1E6192FA8()
{
  v32 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
LABEL_12:

    v25 = *(v0 + 8);

    return v25();
  }

  v4 = (*(v0 + 160) + *(v0 + 280));
  (*(v3 + 32))(*(v0 + 240), v1, v2);
  *(v0 + 296) = *(*__swift_project_boxed_opaque_existential_1(v4, v4[3]) + OBJC_IVAR____TtC10Blackbeard9AppRouter_composer);
  swift_getKeyPath();

  sub_1E65E4EC8();

  v5 = *(v0 + 88);
  *(v0 + 304) = *(v0 + 80);
  *(v0 + 312) = v5;
  if (v5 == 6)
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v6 = sub_1E65E3B68();
    __swift_project_value_buffer(v6, qword_1EE2EA2A0);

    v7 = sub_1E65E3B48();
    v8 = sub_1E65E6328();

    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 264);
    v10 = *(v0 + 272);
    v12 = *(v0 + 256);
    v13 = *(v0 + 240);
    v15 = *(v0 + 216);
    v14 = *(v0 + 224);
    if (v9)
    {
      v30 = *(v0 + 216);
      v16 = swift_slowAlloc();
      v29 = v12;
      v17 = swift_slowAlloc();
      v31 = v17;
      *v16 = 136315138;
      swift_getKeyPath();
      v27 = v13;
      v28 = v10;
      sub_1E65E4EC8();

      *(v0 + 112) = *(v0 + 96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A08, &qword_1E65EC2A0);
      v18 = sub_1E65E6648();
      v20 = v19;
      sub_1E5E07DA0(*(v0 + 96), *(v0 + 104));
      v21 = sub_1E5DFD4B0(v18, v20, &v31);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_1E5DE9000, v7, v8, "No valid selected root item for Navigation Request Stream: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1E694F1C0](v17, -1, -1);
      MEMORY[0x1E694F1C0](v16, -1, -1);

      (*(v14 + 8))(v27, v30);
      (*(v11 + 8))(v28, v29);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
      (*(v11 + 8))(v10, v12);
    }

    goto LABEL_12;
  }

  v22 = (*(v0 + 160) + *(v0 + 280));
  *(v0 + 320) = __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  sub_1E65E6058();
  *(v0 + 328) = sub_1E65E6048();
  v24 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E61933C8, v24, v23);
}

uint64_t sub_1E61933C8()
{
  v1 = v0[40];

  v2 = *v1;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v3 = sub_1E65E3B68();
  v0[42] = __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  sub_1E65E3B28();
  v4 = OBJC_IVAR____TtC10Blackbeard9AppRouter_routingContexts;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (*(v5 + 16) && (v6 = sub_1E5E2575C(v0[38], v0[39]), (v7 & 1) != 0))
  {
    sub_1E5DFA9E0(*(v5 + 56) + *(v0[25] + 72) * v6, v0[23], type metadata accessor for NavigationControllerRoutingContext);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  (*(v0[25] + 56))(v0[23], v8, 1, v0[24]);
  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](sub_1E6193550, 0, 0);
}

uint64_t sub_1E6193550()
{
  v45 = v0;
  v1 = v0[23];
  if ((*(v0[25] + 48))(v1, 1, v0[24]) == 1)
  {
    sub_1E5DFE50C(v1, &qword_1ED072A30, &qword_1E65EEA70);
    sub_1E5FAA54C();
    v2 = swift_allocError();
    *v3 = 0;
    swift_willThrow();
    v5 = v0[38];
    v4 = v0[39];
    (*(v0[28] + 16))(v0[29], v0[30], v0[27]);
    sub_1E5FED40C(v5, v4);
    v6 = v2;
    v7 = sub_1E65E3B48();
    v8 = sub_1E65E6328();
    sub_1E5E07DA0(v5, v4);

    v43 = v8;
    v9 = os_log_type_enabled(v7, v8);
    v11 = v0[38];
    v10 = v0[39];
    v12 = v0[29];
    v13 = v0[30];
    v14 = v0[27];
    v15 = (v0[28] + 8);
    if (v9)
    {
      v16 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v44[0] = v41;
      *v16 = 136446722;
      sub_1E619C9C4(&unk_1EE2D49D0, MEMORY[0x1E69CD758], MEMORY[0x1E69CD760]);
      v17 = sub_1E65E6BC8();
      v18 = v14;
      log = v7;
      v40 = v14;
      v19 = v17;
      v42 = v13;
      v21 = v20;
      v22 = *v15;
      (*v15)(v12, v18);
      v23 = sub_1E5DFD4B0(v19, v21, v44);

      *(v16 + 4) = v23;
      *(v16 + 12) = 2082;
      v0[16] = v11;
      v0[17] = v10;
      v24 = sub_1E65E5CE8();
      v26 = sub_1E5DFD4B0(v24, v25, v44);

      *(v16 + 14) = v26;
      *(v16 + 22) = 2082;
      v0[18] = v2;
      v27 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
      v28 = sub_1E65E5CE8();
      v30 = sub_1E5DFD4B0(v28, v29, v44);

      *(v16 + 24) = v30;
      _os_log_impl(&dword_1E5DE9000, log, v43, "Failed to apply %{public}s to %{public}s: %{public}s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E694F1C0](v41, -1, -1);
      MEMORY[0x1E694F1C0](v16, -1, -1);

      v22(v42, v40);
    }

    else
    {

      sub_1E5E07DA0(v11, v10);

      v35 = *v15;
      (*v15)(v12, v14);
      v35(v13, v14);
    }

    v36 = swift_task_alloc();
    v0[36] = v36;
    *v36 = v0;
    v36[1] = sub_1E6192EAC;
    v37 = v0[31];
    v38 = v0[32];

    return MEMORY[0x1EEE6D9C8](v37, 0, 0, v38);
  }

  else
  {
    sub_1E5DFAB80(v1, v0[26], type metadata accessor for NavigationControllerRoutingContext);
    sub_1E65E3B18();
    v31 = swift_task_alloc();
    v0[43] = v31;
    *v31 = v0;
    v31[1] = sub_1E6193A00;
    v33 = v0[21];
    v32 = v0[22];

    return sub_1E6190A1C(v32, v33);
  }
}

uint64_t sub_1E6193A00()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_1E6193E30;
  }

  else
  {
    v2 = sub_1E6193B14;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6193B14()
{
  v1 = *(v0 + 208);
  *(v0 + 40) = *(v0 + 192);
  *(v0 + 48) = &off_1F5FA9B10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  sub_1E5DFA9E0(v1, boxed_opaque_existential_1, type metadata accessor for NavigationControllerRoutingContext);
  *(v0 + 376) = 0;
  v3 = swift_task_alloc();
  *(v0 + 360) = v3;
  *v3 = v0;
  v3[1] = sub_1E6193BF0;

  return sub_1E61B7C00(v0 + 16, (v0 + 376));
}

uint64_t sub_1E6193BF0()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = sub_1E61941C8;
  }

  else
  {
    sub_1E5E07DA0(v2[38], v2[39]);
    __swift_destroy_boxed_opaque_existential_1(v2 + 2);
    v3 = sub_1E6193D14;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6193D14()
{
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[26];
  v5 = v0[22];

  sub_1E5E26340(v5, type metadata accessor for RoutingContextAction);
  sub_1E5E26340(v4, type metadata accessor for NavigationControllerRoutingContext);
  (*(v3 + 8))(v1, v2);
  v6 = swift_task_alloc();
  v0[36] = v6;
  *v6 = v0;
  v6[1] = sub_1E6192EAC;
  v7 = v0[31];
  v8 = v0[32];

  return MEMORY[0x1EEE6D9C8](v7, 0, 0, v8);
}

uint64_t sub_1E6193E30()
{
  v40 = v0;
  sub_1E5E26340(v0[26], type metadata accessor for NavigationControllerRoutingContext);
  v1 = v0[44];
  v3 = v0[38];
  v2 = v0[39];
  (*(v0[28] + 16))(v0[29], v0[30], v0[27]);
  sub_1E5FED40C(v3, v2);
  v4 = v1;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6328();
  sub_1E5E07DA0(v3, v2);

  if (os_log_type_enabled(v5, v6))
  {
    v34 = v0[38];
    v35 = v0[39];
    v38 = v0[30];
    v37 = v6;
    v8 = v0[28];
    v7 = v0[29];
    v9 = v0[27];
    v10 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v39 = v36;
    *v10 = 136446722;
    sub_1E619C9C4(&unk_1EE2D49D0, MEMORY[0x1E69CD758], MEMORY[0x1E69CD760]);
    v11 = sub_1E65E6BC8();
    v13 = v12;
    v14 = *(v8 + 8);
    v14(v7, v9);
    v15 = sub_1E5DFD4B0(v11, v13, &v39);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2082;
    v0[16] = v34;
    v0[17] = v35;
    v16 = sub_1E65E5CE8();
    v18 = sub_1E5DFD4B0(v16, v17, &v39);

    *(v10 + 14) = v18;
    *(v10 + 22) = 2082;
    v0[18] = v1;
    v19 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v20 = sub_1E65E5CE8();
    v22 = sub_1E5DFD4B0(v20, v21, &v39);

    *(v10 + 24) = v22;
    _os_log_impl(&dword_1E5DE9000, v5, v37, "Failed to apply %{public}s to %{public}s: %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v36, -1, -1);
    MEMORY[0x1E694F1C0](v10, -1, -1);

    v14(v38, v9);
  }

  else
  {
    v24 = v0[38];
    v23 = v0[39];
    v26 = v0[29];
    v25 = v0[30];
    v27 = v0[27];
    v28 = v0[28];

    sub_1E5E07DA0(v24, v23);

    v29 = *(v28 + 8);
    v29(v26, v27);
    v29(v25, v27);
  }

  v30 = swift_task_alloc();
  v0[36] = v30;
  *v30 = v0;
  v30[1] = sub_1E6192EAC;
  v31 = v0[31];
  v32 = v0[32];

  return MEMORY[0x1EEE6D9C8](v31, 0, 0, v32);
}

uint64_t sub_1E61941C8()
{
  v41 = v0;
  v1 = v0[26];
  sub_1E5E26340(v0[22], type metadata accessor for RoutingContextAction);
  sub_1E5E26340(v1, type metadata accessor for NavigationControllerRoutingContext);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[46];
  v4 = v0[38];
  v3 = v0[39];
  (*(v0[28] + 16))(v0[29], v0[30], v0[27]);
  sub_1E5FED40C(v4, v3);
  v5 = v2;
  v6 = sub_1E65E3B48();
  v7 = sub_1E65E6328();
  sub_1E5E07DA0(v4, v3);

  if (os_log_type_enabled(v6, v7))
  {
    v35 = v0[38];
    v36 = v0[39];
    v39 = v0[30];
    v38 = v7;
    v9 = v0[28];
    v8 = v0[29];
    v10 = v0[27];
    v11 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v40 = v37;
    *v11 = 136446722;
    sub_1E619C9C4(&unk_1EE2D49D0, MEMORY[0x1E69CD758], MEMORY[0x1E69CD760]);
    v12 = sub_1E65E6BC8();
    v14 = v13;
    v15 = *(v9 + 8);
    v15(v8, v10);
    v16 = sub_1E5DFD4B0(v12, v14, &v40);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2082;
    v0[16] = v35;
    v0[17] = v36;
    v17 = sub_1E65E5CE8();
    v19 = sub_1E5DFD4B0(v17, v18, &v40);

    *(v11 + 14) = v19;
    *(v11 + 22) = 2082;
    v0[18] = v2;
    v20 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v21 = sub_1E65E5CE8();
    v23 = sub_1E5DFD4B0(v21, v22, &v40);

    *(v11 + 24) = v23;
    _os_log_impl(&dword_1E5DE9000, v6, v38, "Failed to apply %{public}s to %{public}s: %{public}s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v37, -1, -1);
    MEMORY[0x1E694F1C0](v11, -1, -1);

    v15(v39, v10);
  }

  else
  {
    v25 = v0[38];
    v24 = v0[39];
    v27 = v0[29];
    v26 = v0[30];
    v28 = v0[27];
    v29 = v0[28];

    sub_1E5E07DA0(v25, v24);

    v30 = *(v29 + 8);
    v30(v27, v28);
    v30(v26, v28);
  }

  v31 = swift_task_alloc();
  v0[36] = v31;
  *v31 = v0;
  v31[1] = sub_1E6192EAC;
  v32 = v0[31];
  v33 = v0[32];

  return MEMORY[0x1EEE6D9C8](v32, 0, 0, v33);
}

uint64_t sub_1E6194588@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E65E5578();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65E5238();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v2, v8);
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == *MEMORY[0x1E69CD730])
  {
    (*(v9 + 96))(v11, v8);
    (*(v5 + 32))(v7, v11, v4);
    sub_1E65E5568();
    v13 = type metadata accessor for URLContext(0);
    sub_1E65E5548();
    v14 = sub_1E65E5558();
    v16 = v15;
    (*(v5 + 8))(v7, v4);
    v17 = (a1 + *(v13 + 24));
    *v17 = v14;
    v17[1] = v16;
LABEL_9:
    type metadata accessor for RouteSource(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v12 == *MEMORY[0x1E69CD750])
  {
    (*(v9 + 96))(v11, v8);
    v18 = sub_1E65D8D48();
    (*(*(v18 - 8) + 32))(a1, v11, v18);
    goto LABEL_9;
  }

  if (v12 == *MEMORY[0x1E69CD748])
  {
    type metadata accessor for AppLaunchScope(0);
    swift_storeEnumTagMultiPayload();
    goto LABEL_9;
  }

  if (v12 == *MEMORY[0x1E69CD740] || v12 == *MEMORY[0x1E69CD738])
  {
    goto LABEL_9;
  }

  sub_1E6060374();
  swift_allocError();
  *v20 = 1;
  swift_willThrow();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1E61948E4(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_1E65DB3F8();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076010, &qword_1E65F4888);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076018, &qword_1E65F4890);
  v3[12] = swift_task_alloc();
  v5 = sub_1E65DB4D8();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v6 = sub_1E65DB3D8();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  v7 = sub_1E65DB3A8();
  v3[20] = v7;
  v3[21] = *(v7 - 8);
  v3[22] = swift_task_alloc();
  v8 = sub_1E65DB848();
  v3[23] = v8;
  v3[24] = *(v8 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v9 = sub_1E65DB438();
  v3[28] = v9;
  v3[29] = *(v9 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v10 = sub_1E65D74E8();
  v3[32] = v10;
  v3[33] = *(v10 - 8);
  v3[34] = swift_task_alloc();
  v11 = sub_1E65DA3D8();
  v3[35] = v11;
  v3[36] = *(v11 - 8);
  v3[37] = swift_task_alloc();
  sub_1E65DDCF8();
  v3[38] = swift_task_alloc();
  v12 = sub_1E65D8668();
  v3[39] = v12;
  v3[40] = *(v12 - 8);
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v13 = sub_1E65E5798();
  v3[43] = v13;
  v3[44] = *(v13 - 8);
  v3[45] = swift_task_alloc();
  v14 = sub_1E65E5698();
  v3[46] = v14;
  v3[47] = *(v14 - 8);
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  sub_1E65D7348();
  v3[50] = swift_task_alloc();
  v15 = sub_1E65E52C8();
  v3[51] = v15;
  v3[52] = *(v15 - 8);
  v3[53] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6194EAC, 0, 0);
}

uint64_t sub_1E6194EAC()
{
  v2 = *(v0 + 416);
  v1 = *(v0 + 424);
  v3 = *(v0 + 408);
  (*(v2 + 16))(v1, *(v0 + 56), v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x1E69CD7B8])
  {
    goto LABEL_2;
  }

  if (v4 != *MEMORY[0x1E69CD828])
  {
    if (v4 == *MEMORY[0x1E69CD7E0])
    {
      v25 = *(v0 + 424);
      v27 = *(v0 + 144);
      v26 = *(v0 + 152);
      v28 = *(v0 + 136);
      (*(*(v0 + 416) + 96))(v25, *(v0 + 408));
      (*(v27 + 32))(v26, v25, v28);
      v29 = sub_1E65DB3B8();
      if (*(v29 + 16))
      {
        v30 = *(v0 + 144);
        v31 = *(v0 + 128);
        v150 = *(v0 + 136);
        v152 = *(v0 + 152);
        v33 = *(v0 + 112);
        v32 = *(v0 + 120);
        v34 = *(v0 + 104);
        v148 = *(v0 + 96);
        v35 = *(v0 + 88);
        v36 = *(v33 + 16);
        v36(v32, v29 + ((*(v33 + 80) + 32) & ~*(v33 + 80)), v34);

        (*(v33 + 32))(v31, v32, v34);
        type metadata accessor for AppEnvironment(0);
        v37 = MarketingService.makeMarketingMetricConfiguration.getter();
        *(v0 + 528) = v38;
        v36(v148, v31, v34);
        (*(v33 + 56))(v148, 0, 1, v34);
        (*(v30 + 16))(v35, v152, v150);
        (*(v30 + 56))(v35, 0, 1, v150);
        sub_1E65DB408();
        v157 = (v37 + *v37);
        v39 = swift_task_alloc();
        *(v0 + 536) = v39;
        *v39 = v0;
        v39[1] = sub_1E6197404;
        v21 = *(v0 + 248);
        v22 = *(v0 + 200);
        v23 = 0;
        v24 = v157;
        goto LABEL_10;
      }

      v55 = *(v0 + 144);
      v54 = *(v0 + 152);
      v56 = *(v0 + 136);

      sub_1E6060374();
      swift_allocError();
      *v57 = 0;
LABEL_20:
      swift_willThrow();
      (*(v55 + 8))(v54, v56);
      goto LABEL_21;
    }

    if (v4 == *MEMORY[0x1E69CD7C0])
    {
      goto LABEL_14;
    }

    if (v4 == *MEMORY[0x1E69CD778])
    {
      v42 = *(v0 + 424);
      v44 = *(v0 + 232);
      v43 = *(v0 + 240);
      v45 = *(v0 + 224);
      v47 = *(v0 + 168);
      v46 = *(v0 + 176);
      v48 = *(v0 + 160);
      (*(*(v0 + 416) + 96))(v42, *(v0 + 408));
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076028, &qword_1E65F48A8);
      v50 = *(v49 + 48);
      v156 = *(v42 + *(v49 + 64));
      (*(v47 + 32))(v46, v42, v48);
      (*(v44 + 32))(v43, v42 + v50, v45);
      type metadata accessor for AppEnvironment(0);
      v51 = MarketingService.makeMarketingMetricConfiguration.getter();
      *(v0 + 480) = v52;
      v154 = (v51 + *v51);
      v53 = swift_task_alloc();
      *(v0 + 488) = v53;
      *v53 = v0;
      v53[1] = sub_1E619676C;
      v21 = *(v0 + 240);
      v22 = *(v0 + 208);
      goto LABEL_6;
    }

    if (v4 == *MEMORY[0x1E69CD7A0])
    {
      goto LABEL_14;
    }

    if (v4 == *MEMORY[0x1E69CD790])
    {
      v59 = *(v0 + 424);
      v60 = *(v0 + 224);
      v61 = *(v0 + 232);
      v62 = *(v0 + 136);
      v63 = *(v0 + 144);
      (*(*(v0 + 416) + 96))(v59, *(v0 + 408));
      v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076020, &qword_1E65F4898) + 48);
      sub_1E6060374();
      swift_allocError();
      *v65 = 0;
      swift_willThrow();
      (*(v61 + 8))(v59 + v64, v60);
      (*(v63 + 8))(v59, v62);
      goto LABEL_21;
    }

    if (v4 == *MEMORY[0x1E69CD818] || v4 == *MEMORY[0x1E69CD800])
    {
      goto LABEL_2;
    }

    if (v4 == *MEMORY[0x1E69CD788])
    {
      v66 = *(v0 + 424);
      v67 = *(v0 + 256);
      v68 = *(v0 + 264);
      v69 = *(v0 + 40);
      (*(*(v0 + 416) + 96))(v66, *(v0 + 408));
      (*(v68 + 32))(v69, v66, v67);
      type metadata accessor for RouteResource(0);
      goto LABEL_3;
    }

    if (v4 == *MEMORY[0x1E69CD7F8])
    {
      v71 = *(v0 + 416);
      v70 = *(v0 + 424);
      v72 = *(v0 + 408);
      type metadata accessor for RouteResource(0);
      swift_storeEnumTagMultiPayload();
      (*(v71 + 8))(v70, v72);
      goto LABEL_21;
    }

    if (v4 == *MEMORY[0x1E69CD820])
    {
      v73 = *(v0 + 424);
      v74 = *(v0 + 40);
      (*(*(v0 + 416) + 96))(v73, *(v0 + 408));
      v75 = v73[1];
      *v74 = *v73;
      v74[1] = v75;
      type metadata accessor for PlaylistType(0);
LABEL_36:
      swift_storeEnumTagMultiPayload();
      type metadata accessor for RouteResource(0);
      goto LABEL_3;
    }

    if (v4 == *MEMORY[0x1E69CD770])
    {
LABEL_14:
      (*(*(v0 + 416) + 8))(*(v0 + 424), *(v0 + 408));
    }

    else
    {
      if (v4 == *MEMORY[0x1E69CD808])
      {
LABEL_2:
        v5 = *(v0 + 424);
        v6 = *(v0 + 40);
        (*(*(v0 + 416) + 96))(v5, *(v0 + 408));
        v7 = v5[1];
        *v6 = *v5;
        v6[1] = v7;
        type metadata accessor for RouteResource(0);
LABEL_3:
        swift_storeEnumTagMultiPayload();
LABEL_21:

        v58 = *(v0 + 8);

        return v58();
      }

      if (v4 == *MEMORY[0x1E69CD7E8])
      {
        v76 = *(v0 + 424);
        (*(*(v0 + 416) + 96))(v76, *(v0 + 408));
        v78 = *v76;
        v77 = v76[1];
        v79 = sub_1E634BE38(*(v76 + 16));
        if (v79 != 36)
        {
          v85 = v79;
          v86 = *(v0 + 40);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0);
          *v86 = v78;
          *(v86 + 8) = v77;
          *(v86 + 16) = 1;
          *(v86 + 17) = v85;
          sub_1E65D7338();
          sub_1E65D72E8();
          type metadata accessor for RouteResource(0);
          goto LABEL_3;
        }

        sub_1E6060374();
        swift_allocError();
        *v80 = 2;
LABEL_16:
        swift_willThrow();
        goto LABEL_21;
      }

      v81 = v4;
      if (v4 == *MEMORY[0x1E69CD798])
      {
        v82 = *(v0 + 424);
        v83 = *(v0 + 40);
        (*(*(v0 + 416) + 96))(v82, *(v0 + 408));
        v84 = sub_1E65DAEB8();
        (*(*(v84 - 8) + 32))(v83, v82, v84);
        type metadata accessor for PlaylistType(0);
        goto LABEL_36;
      }

      if (v4 == *MEMORY[0x1E69CD810])
      {
        v87 = *(v0 + 424);
        v89 = *(v0 + 384);
        v88 = *(v0 + 392);
        v90 = *(v0 + 368);
        v91 = *(v0 + 376);
        (*(*(v0 + 416) + 96))(v87, *(v0 + 408));
        (*(v91 + 32))(v88, v87, v90);
        (*(v91 + 16))(v89, v88, v90);
        v92 = (*(v91 + 88))(v89, v90);
        if (v92 == *MEMORY[0x1E69CD8C8])
        {
          v93 = *(v0 + 384);
          v94 = *(v0 + 368);
          v95 = *(v0 + 376);
          v96 = *(v0 + 40);
          (*(v95 + 8))(*(v0 + 392), v94);
          (*(v95 + 96))(v93, v94);
          v97 = v93[1];
          *v96 = *v93;
          v96[1] = v97;
          type metadata accessor for RouteResource(0);
        }

        else
        {
          if (v92 != *MEMORY[0x1E69CD8D0])
          {
            v114 = *(v0 + 384);
            v115 = *(v0 + 392);
            v116 = *(v0 + 368);
            v117 = *(v0 + 376);
            sub_1E6060374();
            swift_allocError();
            *v118 = 1;
            swift_willThrow();
            v119 = *(v117 + 8);
            v119(v115, v116);
            v119(v114, v116);
            goto LABEL_21;
          }

          v98 = *(v0 + 384);
          v99 = *(v0 + 360);
          v100 = *(v0 + 344);
          v101 = *(v0 + 352);
          v102 = *(v0 + 336);
          v103 = *(v0 + 312);
          v104 = *(v0 + 320);
          (*(*(v0 + 376) + 96))(v98, *(v0 + 368));
          (*(v101 + 32))(v99, v98, v100);
          sub_1E65E5738();
          v105 = sub_1E65D8658();
          v107 = v106;
          LOBYTE(v98) = v108;
          v158 = *(v104 + 8);
          v158(v102, v103);
          *(v0 + 16) = v105;
          *(v0 + 24) = v107;
          *(v0 + 32) = v98 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758E0, &qword_1E65F1FE8);
          sub_1E65D7FB8();
          sub_1E5F87058(v105, v107, v98 & 1);
          v109 = *(v0 + 376);
          v153 = *(v0 + 368);
          v155 = *(v0 + 392);
          v111 = *(v0 + 352);
          v110 = *(v0 + 360);
          v151 = *(v0 + 344);
          v149 = *(v0 + 33);
          if (v149 == 4)
          {
            sub_1E6060374();
            swift_allocError();
            *v112 = 2;
            swift_willThrow();
            (*(v111 + 8))(v110, v151);
            (*(v109 + 8))(v155, v153);
            goto LABEL_21;
          }

          v120 = *(v0 + 328);
          v121 = *(v0 + 304);
          v144 = *(v0 + 312);
          v145 = *(v0 + 296);
          v146 = *(v0 + 288);
          v147 = *(v0 + 280);
          v122 = *(v0 + 40);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0);
          sub_1E65E5768();
          v123 = sub_1E65DDCE8();
          v125 = v124;
          sub_1E5E26340(v121, MEMORY[0x1E69CAAC8]);
          *v122 = v123;
          *(v122 + 8) = v125;
          sub_1E65E5738();
          v126 = sub_1E65D8528();
          v128 = v127;
          v158(v120, v144);
          *(v122 + 16) = v126;
          *(v122 + 24) = v128;
          sub_1E65E5778();
          v129 = sub_1E65DA3B8();
          (*(v146 + 8))(v145, v147);
          *(v122 + 32) = v129;
          *(v122 + 40) = v149;
          sub_1E65E5788();
          *(v122 + 48) = v130;
          sub_1E65E5758();
          (*(v111 + 8))(v110, v151);
          (*(v109 + 8))(v155, v153);
          type metadata accessor for RouteResource(0);
        }

        goto LABEL_3;
      }

      if (v4 != *MEMORY[0x1E69CD7F0])
      {
        if (v4 == *MEMORY[0x1E69CD7D0])
        {
          sub_1E65E52B8();
          swift_storeEnumTagMultiPayload();
          type metadata accessor for RouteResource(0);
          goto LABEL_3;
        }

        if (v4 == *MEMORY[0x1E69CD780])
        {
          v113 = *(v0 + 40);
          *v113 = 0;
          *(v113 + 8) = 0;
          *(v113 + 16) = 1;
          type metadata accessor for RouteResource(0);
          goto LABEL_3;
        }

        if (v4 != *MEMORY[0x1E69CD7D8])
        {
          if (v4 == *MEMORY[0x1E69CD7C8])
          {
            v131 = *(v0 + 40);
            v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
            v133 = (v131 + v132[12]);
            v134 = v132[16];
            v135 = v132[20];
            v136 = v132[24];
            v137 = v132[28];
            v138 = v131 + v132[32];
            v139 = sub_1E65D76F8();
            (*(*(v139 - 8) + 56))(v131, 1, 1, v139);
            v140 = sub_1E65E2CF8();
            *v133 = 0;
            v133[1] = 0;
            (*(*(v140 - 8) + 56))(v131 + v134, 1, 1, v140);
            v141 = sub_1E65E1FC8();
            (*(*(v141 - 8) + 56))(v131 + v136, 1, 1, v141);
            *(v131 + v137) = 0;
            *v138 = 0;
            *(v138 + 8) = 1;
            *(v131 + v135) = sub_1E601100C(MEMORY[0x1E69E7CC0]);
            type metadata accessor for RouteResource(0);
            goto LABEL_3;
          }

          if (v4 == *MEMORY[0x1E69CD7A8])
          {
            **(v0 + 40) = 0;
            type metadata accessor for RouteResource(0);
            goto LABEL_3;
          }

          v142 = *MEMORY[0x1E69CD7B0];
          sub_1E6060374();
          swift_allocError();
          if (v81 == v142)
          {
            *v143 = 0;
            swift_willThrow();
            goto LABEL_21;
          }

          v55 = *(v0 + 416);
          v54 = *(v0 + 424);
          v56 = *(v0 + 408);
          *v143 = 1;
          goto LABEL_20;
        }
      }
    }

    sub_1E6060374();
    swift_allocError();
    *v41 = 0;
    goto LABEL_16;
  }

  v8 = *(v0 + 424);
  v10 = *(v0 + 264);
  v9 = *(v0 + 272);
  v12 = *(v0 + 248);
  v11 = *(v0 + 256);
  v13 = *(v0 + 224);
  v14 = *(v0 + 232);
  (*(*(v0 + 416) + 96))(v8, *(v0 + 408));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076030, &qword_1E65F48B0);
  v16 = *(v15 + 48);
  v17 = *(v10 + 32);
  v156 = *(v8 + *(v15 + 64));
  *(v0 + 432) = v17;
  *(v0 + 440) = (v10 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v17(v9, v8, v11);
  (*(v14 + 32))(v12, v8 + v16, v13);
  type metadata accessor for AppEnvironment(0);
  v18 = MarketingService.makeMarketingMetricConfiguration.getter();
  *(v0 + 448) = v19;
  v154 = (v18 + *v18);
  v20 = swift_task_alloc();
  *(v0 + 456) = v20;
  *v20 = v0;
  v20[1] = sub_1E61962BC;
  v21 = *(v0 + 248);
  v22 = *(v0 + 216);
LABEL_6:
  v23 = v156;
  v24 = v154;
LABEL_10:

  return v24(v22, v21, v23);
}

uint64_t sub_1E61962BC()
{
  v1 = *v0;
  v2 = *v0;

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
  *(v1 + 36) = *(v3 + 48);
  *(v1 + 576) = *(v3 + 64);
  v4 = swift_task_alloc();
  *(v1 + 464) = v4;
  *v4 = v2;
  v4[1] = sub_1E619645C;
  v5 = *(v1 + 48);

  return sub_1E6197DEC(v5);
}

uint64_t sub_1E619645C(uint64_t a1)
{
  *(*v1 + 472) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1E619655C, 0, 0);
}

uint64_t sub_1E619655C()
{
  v1 = *(v0 + 472);
  v12 = *(v0 + 576);
  v2 = *(v0 + 36);
  v3 = *(v0 + 432);
  v4 = *(v0 + 272);
  v5 = *(v0 + 256);
  v6 = *(v0 + 216);
  v7 = *(v0 + 184);
  v8 = *(v0 + 192);
  v9 = *(v0 + 40);
  (*(*(v0 + 232) + 8))(*(v0 + 248), *(v0 + 224));
  *v9 = v1;
  (*(v8 + 32))(&v9[v2], v6, v7);
  v3(&v9[v12], v4, v5);
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1E619676C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6196884, 0, 0);
}

uint64_t sub_1E6196884()
{
  v1 = sub_1E65DB398();
  switch(v1)
  {
    case 0:
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      *(v0 + 588) = *(v14 + 48);
      *(v0 + 592) = *(v14 + 64);
      v3 = swift_task_alloc();
      *(v0 + 512) = v3;
      *v3 = v0;
      v4 = sub_1E61970C8;
      goto LABEL_7;
    case 1:
      v5 = *(v0 + 232);
      v28 = *(v0 + 240);
      v6 = *(v0 + 224);
      v7 = *(v0 + 208);
      v8 = *(v0 + 184);
      v9 = *(v0 + 192);
      v10 = *(v0 + 168);
      v11 = *(v0 + 176);
      v26 = *(v0 + 160);
      v12 = *(v0 + 40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720D0, &unk_1E65EA290);
      (*(v9 + 16))(v12, v7, v8);
      sub_1E65DB388();
      (*(v9 + 8))(v7, v8);
      (*(v5 + 8))(v28, v6);
      (*(v10 + 8))(v11, v26);
      type metadata accessor for RouteResource(0);
      swift_storeEnumTagMultiPayload();

      v13 = *(v0 + 8);
      break;
    case 2:
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      *(v0 + 580) = *(v2 + 48);
      *(v0 + 584) = *(v2 + 64);
      v3 = swift_task_alloc();
      *(v0 + 496) = v3;
      *v3 = v0;
      v4 = sub_1E6196D8C;
LABEL_7:
      v3[1] = v4;
      v15 = *(v0 + 48);

      return sub_1E6197DEC(v15);
    default:
      v18 = *(v0 + 232);
      v17 = *(v0 + 240);
      v19 = *(v0 + 224);
      v20 = *(v0 + 208);
      v21 = *(v0 + 184);
      v22 = *(v0 + 192);
      v23 = *(v0 + 168);
      v27 = *(v0 + 176);
      v24 = *(v0 + 160);
      sub_1E6060374();
      swift_allocError();
      *v25 = 1;
      swift_willThrow();
      (*(v22 + 8))(v20, v21);
      (*(v18 + 8))(v17, v19);
      (*(v23 + 8))(v27, v24);

      v13 = *(v0 + 8);
      break;
  }

  return v13();
}

uint64_t sub_1E6196D8C(uint64_t a1)
{
  *(*v1 + 504) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1E6196E8C, 0, 0);
}

uint64_t sub_1E6196E8C()
{
  v1 = *(v0 + 580);
  v2 = *(v0 + 232);
  v13 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 208);
  v6 = *(v0 + 184);
  v5 = *(v0 + 192);
  v8 = *(v0 + 168);
  v7 = *(v0 + 176);
  v12 = *(v0 + 160);
  v9 = *(v0 + 40);
  *v9 = *(v0 + 504);
  (*(v5 + 16))(&v9[v1], v4, v6);
  sub_1E65DB388();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v13, v3);
  (*(v8 + 8))(v7, v12);
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1E61970C8(uint64_t a1)
{
  *(*v1 + 520) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1E61971C8, 0, 0);
}

uint64_t sub_1E61971C8()
{
  v1 = *(v0 + 588);
  v2 = *(v0 + 232);
  v13 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 208);
  v6 = *(v0 + 184);
  v5 = *(v0 + 192);
  v8 = *(v0 + 168);
  v7 = *(v0 + 176);
  v12 = *(v0 + 160);
  v9 = *(v0 + 40);
  *v9 = *(v0 + 520);
  (*(v5 + 16))(&v9[v1], v4, v6);
  sub_1E65DB388();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v13, v3);
  (*(v8 + 8))(v7, v12);
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1E6197404()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 224);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1E6197578, 0, 0);
}

uint64_t sub_1E6197578()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  sub_1E65DB4C8();
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x1E69CD4F8])
  {
    v5 = *(v0 + 192);
    v39 = *(v0 + 200);
    v6 = *(v0 + 184);
    v8 = *(v0 + 144);
    v7 = *(v0 + 152);
    v9 = *(v0 + 136);
    v10 = *(v0 + 72);
    v11 = *(v0 + 80);
    v12 = *(v0 + 64);
    v13 = *(v0 + 40);
    (*(*(v0 + 112) + 8))(*(v0 + 128), *(v0 + 104));
    (*(v8 + 8))(v7, v9);
    (*(v10 + 96))(v11, v12);
    v14 = *v11;
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0) + 48);
    *v13 = v14;
    (*(v5 + 32))(&v13[v15], v39, v6);
    type metadata accessor for RouteResource(0);
    swift_storeEnumTagMultiPayload();

    v16 = *(v0 + 8);
LABEL_8:

    return v16();
  }

  if (v4 != *MEMORY[0x1E69CD500])
  {
    v27 = *(v0 + 192);
    v26 = *(v0 + 200);
    v28 = *(v0 + 184);
    v29 = *(v0 + 144);
    v30 = *(v0 + 128);
    v31 = *(v0 + 104);
    v32 = *(v0 + 112);
    v33 = *(v0 + 72);
    v37 = *(v0 + 152);
    v38 = *(v0 + 80);
    v35 = *(v0 + 136);
    v36 = *(v0 + 64);
    sub_1E6060374();
    swift_allocError();
    *v34 = 0;
    swift_willThrow();
    (*(v27 + 8))(v26, v28);
    (*(v32 + 8))(v30, v31);
    (*(v29 + 8))(v37, v35);
    (*(v33 + 8))(v38, v36);

    v16 = *(v0 + 8);
    goto LABEL_8;
  }

  v18 = *(v0 + 264);
  v17 = *(v0 + 272);
  v19 = *(v0 + 256);
  v20 = *(v0 + 80);
  (*(*(v0 + 72) + 96))(v20, *(v0 + 64));
  v21 = *(v18 + 32);
  *(v0 + 544) = v21;
  *(v0 + 552) = (v18 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v21(v17, v20, v19);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
  *(v0 + 596) = *(v22 + 48);
  *(v0 + 600) = *(v22 + 64);
  v23 = swift_task_alloc();
  *(v0 + 560) = v23;
  *v23 = v0;
  v23[1] = sub_1E6197AB4;
  v24 = *(v0 + 48);

  return sub_1E6197DEC(v24);
}

uint64_t sub_1E6197AB4(uint64_t a1)
{
  *(*v1 + 568) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1E6197BB4, 0, 0);
}

uint64_t sub_1E6197BB4()
{
  v1 = *(v0 + 568);
  v15 = *(v0 + 600);
  v2 = *(v0 + 596);
  v13 = *(v0 + 272);
  v14 = *(v0 + 544);
  v12 = *(v0 + 256);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 184);
  v6 = *(v0 + 144);
  v7 = *(v0 + 152);
  v8 = *(v0 + 136);
  v9 = *(v0 + 40);
  (*(*(v0 + 112) + 8))(*(v0 + 128), *(v0 + 104));
  (*(v6 + 8))(v7, v8);
  *v9 = v1;
  (*(v3 + 32))(&v9[v2], v4, v5);
  v14(&v9[v15], v13, v12);
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1E6197E0C()
{
  type metadata accessor for AppEnvironment(0);
  v1 = AccountService.fetchCurrentAccount.getter();
  *(v0 + 24) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_1E6197F10;

  return v5();
}

uint64_t sub_1E6197F10(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_1E61980A0;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_1E6198038;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E6198038()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E61980A0()
{

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6328();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 40);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "Failed to fetch current account with error: %{public}@", v8, 0xCu);
    sub_1E5DFE50C(v9, &unk_1ED072130, &qword_1E65EA840);
    MEMORY[0x1E694F1C0](v9, -1, -1);
    MEMORY[0x1E694F1C0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t sub_1E6198250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a7;
  v40 = a1;
  v45 = a6;
  v44 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v43 = &v37 - v13;
  v14 = sub_1E65E3B68();
  v41 = *(v14 - 8);
  v42 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v19 = sub_1E65E6338();
  v20 = v18;
  if (os_log_type_enabled(v18, v19))
  {
    v21 = swift_slowAlloc();
    v38 = a2;
    v22 = v21;
    v23 = swift_slowAlloc();
    v46 = v23;
    *v22 = 134218498;
    *(v22 + 4) = v17;
    *(v22 + 12) = 2080;
    v24 = sub_1E65E68B8();
    v25 = v17;
    v27 = sub_1E5DFD4B0(v24, v26, &v46);
    v37 = a3;
    v28 = a8;
    v29 = v27;

    *(v22 + 14) = v29;
    a8 = v28;
    v30 = v45;
    a3 = v37;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v30;
    _os_log_impl(&dword_1E5DE9000, v20, v19, "Converting from Async-Await to Promise: %ld:%s:%lu", v22, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1E694F1C0](v23, -1, -1);
    v31 = v22;
    a2 = v38;
    MEMORY[0x1E694F1C0](v31, -1, -1);

    (*(v41 + 8))(v16, v42);
  }

  else
  {

    (*(v41 + 8))(v16, v42);
    v25 = v17;
  }

  v32 = sub_1E65E60A8();
  v33 = v43;
  (*(*(v32 - 8) + 56))(v43, 1, 1, v32);
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v39;
  *(v34 + 40) = a8;
  *(v34 + 48) = v25;
  *(v34 + 56) = a3;
  *(v34 + 64) = a4;
  *(v34 + 72) = v44;
  v35 = v40;
  *(v34 + 80) = v45;
  *(v34 + 88) = v35;
  *(v34 + 96) = a2;

  sub_1E6198E90(0, 0, v33, &unk_1E65F48F0, v34);
}

uint64_t sub_1E6198594(uint64_t a1)
{
  v4 = *(sub_1E65E5388() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E618DD8C(a1, v6, v7, v1 + v5);
}

uint64_t sub_1E6198684(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E65E5288() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AppEnvironment(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + ((v10 + 47) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E618ED48(a1, v1 + v6, v1 + v9, v1 + v10, v11);
}

uint64_t sub_1E6198804(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v17;
  *(v8 + 40) = v16;
  *(v8 + 112) = v15;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  v10 = sub_1E65E3B68();
  *(v8 + 64) = v10;
  *(v8 + 72) = *(v10 - 8);
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = swift_task_alloc();
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  *(v8 + 96) = v11;
  *v11 = v8;
  v11[1] = sub_1E6198984;

  return v13();
}

uint64_t sub_1E6198984()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1E6198C84;
  }

  else
  {
    v2 = sub_1E6198A98;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6198A98(uint64_t a1)
{
  v22 = v1;
  sub_1E65DE338();
  v2 = sub_1E65E3B48();
  v3 = sub_1E65E6338();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[9];
    v18 = v1[8];
    v19 = v1[11];
    v17 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_1E65E68B8();
    v10 = sub_1E5DFD4B0(v8, v9, &v20);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v17;
    _os_log_impl(&dword_1E5DE9000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E694F1C0](v7, -1, -1);
    MEMORY[0x1E694F1C0](v6, -1, -1);

    (*(v4 + 8))(v19, v18);
  }

  else
  {
    v11 = v1[11];
    v12 = v1[8];
    v13 = v1[9];

    (*(v13 + 8))(v11, v12);
  }

  v14 = v1[6];
  v20 = 0;
  v21 = 0;
  v14(&v20);

  v15 = v1[1];

  return v15();
}

uint64_t sub_1E6198C84(uint64_t a1)
{
  v24 = v1;
  sub_1E65DE338();
  v2 = sub_1E65E3B48();
  v3 = sub_1E65E6338();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[9];
    v20 = v1[8];
    v21 = v1[10];
    v19 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_1E65E68B8();
    v10 = sub_1E5DFD4B0(v8, v9, &v22);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v19;
    _os_log_impl(&dword_1E5DE9000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E694F1C0](v7, -1, -1);
    MEMORY[0x1E694F1C0](v6, -1, -1);

    (*(v4 + 8))(v21, v20);
  }

  else
  {
    v12 = v1[9];
    v11 = v1[10];
    v13 = v1[8];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[13];
  v15 = v1[6];
  v22 = v14;
  v23 = 1;
  v16 = v14;
  v15(&v22);

  v17 = v1[1];

  return v17();
}

uint64_t sub_1E6198E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1E5DFD1CC(a3, v23 - v10, &unk_1ED0735B0, &qword_1E65EA000);
  v12 = sub_1E65E60A8();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1E5DFE50C(v11, &unk_1ED0735B0, &qword_1E65EA000);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1E65E6098();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1E65E5FC8();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1E65E5D18() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1E5DFE50C(a3, &unk_1ED0735B0, &qword_1E65EA000);

    return v21;
  }

LABEL_8:
  sub_1E5DFE50C(a3, &unk_1ED0735B0, &qword_1E65EA000);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

id sub_1E61991C0(uint64_t a1)
{
  v2 = *(v1 + 16);
  swift_willThrow();
  return v2;
}

uint64_t sub_1E61991F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 33);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6192058(a1, v4, v5, v6, v7);
}

uint64_t sub_1E61992D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FE0, &unk_1E660F450);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6199340(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for RoutingContextAction(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for NavigationControllerRoutingContext(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E6191DB4(a1, v1 + v6, v1 + v9);
}

uint64_t objectdestroy_57Tm_1()
{
  v1 = v0;
  v2 = *(type metadata accessor for RoutingContextAction(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for NavigationControllerRoutingContext(0);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = v1 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v262 = v7;
  v263 = v1;
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload != 5)
      {
        goto LABEL_141;
      }

      v11 = *(v8 + 8);
      v12 = *(v8 + 16);
      goto LABEL_140;
    }

    type metadata accessor for RouteResource(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 2u:
      case 0xAu:
      case 0xBu:
      case 0xDu:
      case 0xFu:
      case 0x10u:
        goto LABEL_39;
      case 1u:
        v87 = sub_1E65D76F8();
        v88 = *(v87 - 8);
        if (!(*(v88 + 48))(v8, 1, v87))
        {
          (*(v88 + 8))(v8, v87);
        }

        v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);

        v90 = *(v89 + 64);
        v91 = sub_1E65E2CF8();
        v92 = *(v91 - 8);
        if (!(*(v92 + 48))(v8 + v90, 1, v91))
        {
          (*(v92 + 8))(v8 + v90, v91);
        }

        v43 = *(v89 + 96);
        v44 = sub_1E65E1FC8();
        v45 = *(v44 - 8);
        v46 = (*(v45 + 48))(v8 + v43, 1, v44);
        goto LABEL_66;
      case 3u:

        v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
        v56 = sub_1E65D72D8();
        goto LABEL_99;
      case 4u:
        sub_1E65E0B48();
        v95 = swift_getEnumCaseMultiPayload();
        if (v95 > 3)
        {
          if (v95 > 6 && v95 != 7)
          {
LABEL_226:
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280);

LABEL_125:
            v109 = v8 + *(type metadata accessor for RouteDestination(0) + 20);
            type metadata accessor for RouteSource(0);
            v110 = swift_getEnumCaseMultiPayload();
            if (v110 <= 1)
            {
              if (v110)
              {
                if (v110 != 1)
                {
                  goto LABEL_139;
                }
              }

              else
              {
                type metadata accessor for AppLaunchScope(0);
                if (swift_getEnumCaseMultiPayload() > 1)
                {
                  goto LABEL_139;
                }
              }
            }

            else if (v110 != 2)
            {
              if (v110 == 3)
              {
                v111 = sub_1E65D74E8();
              }

              else
              {
                if (v110 != 4)
                {
LABEL_139:

                  v116 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FF0, &unk_1E65F5540) + 48);
                  v11 = *v116;
                  v12 = *(v116 + 8);
LABEL_140:
                  sub_1E5F94E00(v11, v12);
                  goto LABEL_141;
                }

                v111 = sub_1E65D8D48();
              }

              (*(*(v111 - 8) + 8))(v109, v111);
              goto LABEL_139;
            }

            v112 = sub_1E65D74E8();
            v113 = *(v112 - 8);
            v114 = *(v113 + 8);
            v114(v109, v112);
            v115 = *(type metadata accessor for URLContext(0) + 20);
            if (!(*(v113 + 48))(v109 + v115, 1, v112))
            {
              v114(v109 + v115, v112);
            }

            v7 = v262;
            v1 = v263;
            goto LABEL_139;
          }
        }

        else if (v95 <= 1 && v95)
        {
          if (v95 == 1)
          {
            v96 = sub_1E65E0FD8();
            (*(*(v96 - 8) + 8))(v1 + v3, v96);
          }

          goto LABEL_226;
        }

        goto LABEL_226;
      case 6u:

        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
        v54 = *(v53 + 48);
        v55 = sub_1E65DB848();
        (*(*(v55 - 8) + 8))(v8 + v54, v55);
        v20 = *(v53 + 64);
        v56 = sub_1E65E1518();
        goto LABEL_99;
      case 7u:
        v74 = sub_1E65DB848();
        (*(*(v74 - 8) + 8))(v1 + v3, v74);
        v75 = &unk_1ED0720D0;
        v76 = &unk_1E65EA290;
        goto LABEL_97;
      case 8u:
      case 9u:

        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
        v18 = *(v17 + 48);
        v19 = sub_1E65DB848();
        (*(*(v19 - 8) + 8))(v8 + v18, v19);
        v20 = *(v17 + 64);
        goto LABEL_98;
      case 0xCu:

        sub_1E5F94E00(*(v8 + 16), *(v8 + 24));
        goto LABEL_125;
      case 0xEu:
        v48 = sub_1E65DB718();
        goto LABEL_124;
      case 0x11u:

        v75 = &unk_1ED0720E0;
        v76 = &unk_1E65EA2A0;
LABEL_97:
        v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v75, v76) + 48);
LABEL_98:
        v56 = sub_1E65D74E8();
        goto LABEL_99;
      case 0x12u:
        sub_1E5F94E14(*v8, *(v8 + 8), *(v8 + 16));
        goto LABEL_125;
      case 0x13u:
        goto LABEL_53;
      case 0x14u:

        goto LABEL_125;
      case 0x15u:

        v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
        v44 = sub_1E65D96F8();
        v45 = *(v44 - 8);
        if (!(*(v45 + 48))(v8 + v43, 1, v44))
        {
          goto LABEL_103;
        }

        goto LABEL_125;
      case 0x16u:
        __swift_destroy_boxed_opaque_existential_1((v1 + v3));
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
        v35 = v34[12];
        v36 = sub_1E65D74E8();
        (*(*(v36 - 8) + 8))(v8 + v35, v36);

        v37 = v34[20];
        v38 = sub_1E65DB3E8();
        v39 = *(v38 - 8);
        if (!(*(v39 + 48))(v8 + v37, 1, v38))
        {
          (*(v39 + 8))(v8 + v37, v38);
        }

        v40 = v34[32];
        v41 = sub_1E65DB5D8();
        v42 = *(v41 - 8);
        if (!(*(v42 + 48))(v8 + v40, 1, v41))
        {
          (*(v42 + 8))(v8 + v40, v41);
        }

        v43 = v34[36];
        v44 = sub_1E65D7A38();
        v45 = *(v44 - 8);
        v46 = (*(v45 + 48))(v8 + v43, 1, v44);
LABEL_66:
        v1 = v263;
        if (!v46)
        {
LABEL_103:
          (*(v45 + 8))(v8 + v43, v44);
        }

        goto LABEL_125;
      case 0x17u:
        v67 = sub_1E65E57D8();
        (*(*(v67 - 8) + 8))(v1 + v3, v67);
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
        v69 = *(v68 + 48);
        v70 = sub_1E65E5528();
        (*(*(v70 - 8) + 8))(v8 + v69, v70);
        if (*(v8 + *(v68 + 64) + 8) >= 0xCuLL)
        {
          goto LABEL_39;
        }

        goto LABEL_125;
      case 0x18u:

        v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0) + 48);
        v56 = sub_1E65DB848();
        goto LABEL_99;
      case 0x1Au:
        sub_1E65E52B8();
        v80 = swift_getEnumCaseMultiPayload();
        if (v80 == 1)
        {
        }

        else if (!v80)
        {
LABEL_53:
          v48 = sub_1E65D74E8();
LABEL_124:
          (*(*(v48 - 8) + 8))(v1 + v3, v48);
        }

        goto LABEL_125;
      case 0x1Bu:
        type metadata accessor for PlaylistType(0);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          goto LABEL_39;
        }

        v48 = sub_1E65DAEB8();
        goto LABEL_124;
      case 0x1Cu:
        v48 = sub_1E65D76F8();
        goto LABEL_124;
      case 0x1Du:
        v100 = sub_1E65E55E8();
        (*(*(v100 - 8) + 8))(v1 + v3, v100);
        v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
        v56 = sub_1E65D7EB8();
LABEL_99:
        (*(*(v56 - 8) + 8))(v8 + v20, v56);
        goto LABEL_125;
      case 0x1Eu:
        v60 = sub_1E65E56B8();
        (*(*(v60 - 8) + 8))(v1 + v3, v60);
        v61 = &unk_1ED072110;
        v62 = &unk_1E65EA2D0;
        goto LABEL_86;
      case 0x1Fu:
        v78 = sub_1E65DA308();
        (*(*(v78 - 8) + 8))(v1 + v3, v78);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810);
        goto LABEL_39;
      case 0x20u:
        v98 = sub_1E65E58D8();
        (*(*(v98 - 8) + 8))(v1 + v3, v98);
        v61 = &qword_1ED072120;
        v62 = &qword_1E65EA2E0;
LABEL_86:
        __swift_instantiateConcreteTypeFromMangledNameV2(v61, v62);

LABEL_39:

        goto LABEL_125;
      case 0x21u:
        v48 = sub_1E65D9048();
        goto LABEL_124;
      default:
        goto LABEL_125;
    }
  }

  if (!EnumCaseMultiPayload)
  {
    type metadata accessor for RouteResource(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 2u:
      case 0xAu:
      case 0xBu:
      case 0xDu:
      case 0xFu:
      case 0x10u:
        goto LABEL_37;
      case 1u:
        v81 = sub_1E65D76F8();
        v82 = *(v81 - 8);
        if (!(*(v82 + 48))(v8, 1, v81))
        {
          (*(v82 + 8))(v8, v81);
        }

        v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);

        v84 = *(v83 + 64);
        v85 = sub_1E65E2CF8();
        v86 = *(v85 - 8);
        if (!(*(v86 + 48))(v8 + v84, 1, v85))
        {
          (*(v86 + 8))(v8 + v84, v85);
        }

        v30 = *(v83 + 96);
        v31 = sub_1E65E1FC8();
        v32 = *(v31 - 8);
        v33 = (*(v32 + 48))(v8 + v30, 1, v31);
        goto LABEL_59;
      case 3u:

        v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
        v52 = sub_1E65D72D8();
        goto LABEL_95;
      case 4u:
        sub_1E65E0B48();
        v93 = swift_getEnumCaseMultiPayload();
        if (v93 > 3)
        {
          if (v93 > 6 && v93 != 7)
          {
            goto LABEL_223;
          }
        }

        else if (v93 <= 1 && v93)
        {
          if (v93 == 1)
          {
            v94 = sub_1E65E0FD8();
            (*(*(v94 - 8) + 8))(v1 + v3, v94);
          }

LABEL_223:
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280);

LABEL_108:
          v101 = v8 + *(type metadata accessor for RouteDestination(0) + 20);
          type metadata accessor for RouteSource(0);
          v102 = swift_getEnumCaseMultiPayload();
          if (v102 <= 1)
          {
            if (v102)
            {
              if (v102 != 1)
              {
                goto LABEL_122;
              }
            }

            else
            {
              type metadata accessor for AppLaunchScope(0);
              if (swift_getEnumCaseMultiPayload() > 1)
              {
                goto LABEL_122;
              }
            }
          }

          else if (v102 != 2)
          {
            if (v102 == 3)
            {
              v103 = sub_1E65D74E8();
            }

            else
            {
              if (v102 != 4)
              {
                goto LABEL_122;
              }

              v103 = sub_1E65D8D48();
            }

            (*(*(v103 - 8) + 8))(v101, v103);
            goto LABEL_122;
          }

          v104 = v5;
          v105 = sub_1E65D74E8();
          v106 = *(v105 - 8);
          v107 = *(v106 + 8);
          v107(v101, v105);
          v108 = *(type metadata accessor for URLContext(0) + 20);
          if (!(*(v106 + 48))(v101 + v108, 1, v105))
          {
            v107(v101 + v108, v105);
          }

LABEL_121:

          v5 = v104;
          v7 = v262;
          v1 = v263;
          goto LABEL_122;
        }

        goto LABEL_223;
      case 6u:

        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
        v50 = *(v49 + 48);
        v51 = sub_1E65DB848();
        (*(*(v51 - 8) + 8))(v8 + v50, v51);
        v16 = *(v49 + 64);
        v52 = sub_1E65E1518();
        goto LABEL_95;
      case 7u:
        v71 = sub_1E65DB848();
        (*(*(v71 - 8) + 8))(v1 + v3, v71);
        v72 = &unk_1ED0720D0;
        v73 = &unk_1E65EA290;
        goto LABEL_93;
      case 8u:
      case 9u:

        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
        v14 = *(v13 + 48);
        v15 = sub_1E65DB848();
        (*(*(v15 - 8) + 8))(v8 + v14, v15);
        v16 = *(v13 + 64);
        goto LABEL_94;
      case 0xCu:

        sub_1E5F94E00(*(v8 + 16), *(v8 + 24));
        goto LABEL_108;
      case 0xEu:
        v47 = sub_1E65DB718();
        goto LABEL_107;
      case 0x11u:

        v72 = &unk_1ED0720E0;
        v73 = &unk_1E65EA2A0;
LABEL_93:
        v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v72, v73) + 48);
LABEL_94:
        v52 = sub_1E65D74E8();
        goto LABEL_95;
      case 0x12u:
        sub_1E5F94E14(*v8, *(v8 + 8), *(v8 + 16));
        goto LABEL_108;
      case 0x13u:
        goto LABEL_50;
      case 0x14u:

        goto LABEL_108;
      case 0x15u:

        v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
        v31 = sub_1E65D96F8();
        v32 = *(v31 - 8);
        if (!(*(v32 + 48))(v8 + v30, 1, v31))
        {
          goto LABEL_101;
        }

        goto LABEL_108;
      case 0x16u:
        __swift_destroy_boxed_opaque_existential_1((v1 + v3));
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
        v22 = v21[12];
        v23 = sub_1E65D74E8();
        (*(*(v23 - 8) + 8))(v8 + v22, v23);

        v24 = v21[20];
        v25 = sub_1E65DB3E8();
        v26 = *(v25 - 8);
        if (!(*(v26 + 48))(v8 + v24, 1, v25))
        {
          (*(v26 + 8))(v8 + v24, v25);
        }

        v27 = v21[32];
        v28 = sub_1E65DB5D8();
        v29 = *(v28 - 8);
        if (!(*(v29 + 48))(v8 + v27, 1, v28))
        {
          (*(v29 + 8))(v8 + v27, v28);
        }

        v30 = v21[36];
        v31 = sub_1E65D7A38();
        v32 = *(v31 - 8);
        v33 = (*(v32 + 48))(v8 + v30, 1, v31);
LABEL_59:
        v1 = v263;
        if (!v33)
        {
LABEL_101:
          (*(v32 + 8))(v8 + v30, v31);
        }

        goto LABEL_108;
      case 0x17u:
        v63 = sub_1E65E57D8();
        (*(*(v63 - 8) + 8))(v1 + v3, v63);
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
        v65 = *(v64 + 48);
        v66 = sub_1E65E5528();
        (*(*(v66 - 8) + 8))(v8 + v65, v66);
        if (*(v8 + *(v64 + 64) + 8) >= 0xCuLL)
        {
          goto LABEL_37;
        }

        goto LABEL_108;
      case 0x18u:

        v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0) + 48);
        v52 = sub_1E65DB848();
        goto LABEL_95;
      case 0x1Au:
        sub_1E65E52B8();
        v79 = swift_getEnumCaseMultiPayload();
        if (v79 == 1)
        {
        }

        else if (!v79)
        {
LABEL_50:
          v47 = sub_1E65D74E8();
LABEL_107:
          (*(*(v47 - 8) + 8))(v1 + v3, v47);
        }

        goto LABEL_108;
      case 0x1Bu:
        type metadata accessor for PlaylistType(0);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          goto LABEL_37;
        }

        v47 = sub_1E65DAEB8();
        goto LABEL_107;
      case 0x1Cu:
        v47 = sub_1E65D76F8();
        goto LABEL_107;
      case 0x1Du:
        v99 = sub_1E65E55E8();
        (*(*(v99 - 8) + 8))(v1 + v3, v99);
        v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
        v52 = sub_1E65D7EB8();
LABEL_95:
        (*(*(v52 - 8) + 8))(v8 + v16, v52);
        goto LABEL_108;
      case 0x1Eu:
        v57 = sub_1E65E56B8();
        (*(*(v57 - 8) + 8))(v1 + v3, v57);
        v58 = &unk_1ED072110;
        v59 = &unk_1E65EA2D0;
        goto LABEL_83;
      case 0x1Fu:
        v77 = sub_1E65DA308();
        (*(*(v77 - 8) + 8))(v1 + v3, v77);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810);
        goto LABEL_37;
      case 0x20u:
        v97 = sub_1E65E58D8();
        (*(*(v97 - 8) + 8))(v1 + v3, v97);
        v58 = &qword_1ED072120;
        v59 = &qword_1E65EA2E0;
LABEL_83:
        __swift_instantiateConcreteTypeFromMangledNameV2(v58, v59);

LABEL_37:

        goto LABEL_108;
      case 0x21u:
        v47 = sub_1E65D9048();
        goto LABEL_107;
      default:
        goto LABEL_108;
    }
  }

  if (EnumCaseMultiPayload == 2)
  {
    v10 = type metadata accessor for RouteDestination(0);
    if (!(*(*(v10 - 8) + 48))(v1 + v3, 1, v10))
    {
      type metadata accessor for RouteResource(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
        case 2u:
        case 0xAu:
        case 0xBu:
        case 0xDu:
        case 0xFu:
        case 0x10u:
          goto LABEL_167;
        case 1u:
          v191 = sub_1E65D76F8();
          v192 = *(v191 - 8);
          if (!(*(v192 + 48))(v8, 1, v191))
          {
            (*(v192 + 8))(v8, v191);
          }

          v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);

          v194 = *(v193 + 64);
          v195 = sub_1E65E2CF8();
          v196 = *(v195 - 8);
          if (!(*(v196 + 48))(v8 + v194, 1, v195))
          {
            (*(v196 + 8))(v8 + v194, v195);
          }

          v171 = *(v193 + 96);
          v197 = sub_1E65E1FC8();
          goto LABEL_197;
        case 3u:

          v161 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
          v178 = sub_1E65D72D8();
          goto LABEL_195;
        case 4u:
          sub_1E65E0B48();
          v198 = swift_getEnumCaseMultiPayload();
          if (v198 > 3)
          {
            if (v198 > 6 && v198 != 7)
            {
              goto LABEL_233;
            }
          }

          else if (v198 <= 1 && v198)
          {
            if (v198 == 1)
            {
              v199 = sub_1E65E0FD8();
              (*(*(v199 - 8) + 8))(v1 + v3, v199);
            }

LABEL_233:
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280);

LABEL_202:
            v202 = v8 + *(v10 + 20);
            type metadata accessor for RouteSource(0);
            v203 = swift_getEnumCaseMultiPayload();
            if (v203 <= 1)
            {
              if (v203)
              {
                v1 = v263;
                if (v203 != 1)
                {
                  goto LABEL_122;
                }
              }

              else
              {
                type metadata accessor for AppLaunchScope(0);
                v1 = v263;
                if (swift_getEnumCaseMultiPayload() > 1)
                {
                  goto LABEL_122;
                }
              }
            }

            else if (v203 != 2)
            {
              v1 = v263;
              if (v203 == 3)
              {
                v204 = sub_1E65D74E8();
                goto LABEL_211;
              }

              if (v203 == 4)
              {
                v204 = sub_1E65D8D48();
LABEL_211:
                (*(*(v204 - 8) + 8))(v202, v204);
              }

LABEL_122:

              break;
            }

            v104 = v5;
            v205 = sub_1E65D74E8();
            v206 = *(v205 - 8);
            v207 = *(v206 + 8);
            v207(v202, v205);
            v208 = *(type metadata accessor for URLContext(0) + 20);
            if (!(*(v206 + 48))(v202 + v208, 1, v205))
            {
              v207(v202 + v208, v205);
            }

            goto LABEL_121;
          }

          goto LABEL_233;
        case 6u:

          v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
          v176 = *(v175 + 48);
          v177 = sub_1E65DB848();
          (*(*(v177 - 8) + 8))(v8 + v176, v177);
          v161 = *(v175 + 64);
          v178 = sub_1E65E1518();
          goto LABEL_195;
        case 7u:
          v186 = sub_1E65DB848();
          (*(*(v186 - 8) + 8))(v1 + v3, v186);
          v187 = &unk_1ED0720D0;
          v188 = &unk_1E65EA290;
          goto LABEL_193;
        case 8u:
        case 9u:

          v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
          v159 = *(v158 + 48);
          v160 = sub_1E65DB848();
          (*(*(v160 - 8) + 8))(v8 + v159, v160);
          v161 = *(v158 + 64);
          goto LABEL_194;
        case 0xCu:

          sub_1E5F94E00(*(v8 + 16), *(v8 + 24));
          goto LABEL_202;
        case 0xEu:
          v174 = sub_1E65DB718();
          goto LABEL_201;
        case 0x11u:

          v187 = &unk_1ED0720E0;
          v188 = &unk_1E65EA2A0;
LABEL_193:
          v161 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v187, v188) + 48);
LABEL_194:
          v178 = sub_1E65D74E8();
          goto LABEL_195;
        case 0x12u:
          sub_1E5F94E14(*v8, *(v8 + 8), *(v8 + 16));
          goto LABEL_202;
        case 0x13u:
          goto LABEL_174;
        case 0x14u:

          goto LABEL_202;
        case 0x15u:

          v171 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
          v197 = sub_1E65D96F8();
LABEL_197:
          v172 = v197;
          v173 = *(v197 - 8);
          if (!(*(v173 + 48))(v8 + v171, 1, v197))
          {
            goto LABEL_198;
          }

          goto LABEL_202;
        case 0x16u:
          __swift_destroy_boxed_opaque_existential_1((v1 + v3));
          v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
          v163 = v162[12];
          v164 = sub_1E65D74E8();
          (*(*(v164 - 8) + 8))(v8 + v163, v164);

          v165 = v162[20];
          v166 = sub_1E65DB3E8();
          v167 = *(v166 - 8);
          if (!(*(v167 + 48))(v8 + v165, 1, v166))
          {
            (*(v167 + 8))(v8 + v165, v166);
          }

          v168 = v162[32];
          v169 = sub_1E65DB5D8();
          v170 = *(v169 - 8);
          if (!(*(v170 + 48))(v8 + v168, 1, v169))
          {
            (*(v170 + 8))(v8 + v168, v169);
          }

          v171 = v162[36];
          v172 = sub_1E65D7A38();
          v173 = *(v172 - 8);
          if (!(*(v173 + 48))(v8 + v171, 1, v172))
          {
LABEL_198:
            (*(v173 + 8))(v8 + v171, v172);
          }

          goto LABEL_202;
        case 0x17u:
          v182 = sub_1E65E57D8();
          (*(*(v182 - 8) + 8))(v1 + v3, v182);
          v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
          v184 = *(v183 + 48);
          v185 = sub_1E65E5528();
          (*(*(v185 - 8) + 8))(v8 + v184, v185);
          if (*(v8 + *(v183 + 64) + 8) >= 0xCuLL)
          {
            goto LABEL_167;
          }

          goto LABEL_202;
        case 0x18u:

          v161 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0) + 48);
          v178 = sub_1E65DB848();
          goto LABEL_195;
        case 0x1Au:
          sub_1E65E52B8();
          v190 = swift_getEnumCaseMultiPayload();
          if (v190 == 1)
          {
          }

          else if (!v190)
          {
LABEL_174:
            v174 = sub_1E65D74E8();
LABEL_201:
            (*(*(v174 - 8) + 8))(v1 + v3, v174);
          }

          goto LABEL_202;
        case 0x1Bu:
          type metadata accessor for PlaylistType(0);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            goto LABEL_167;
          }

          v174 = sub_1E65DAEB8();
          goto LABEL_201;
        case 0x1Cu:
          v174 = sub_1E65D76F8();
          goto LABEL_201;
        case 0x1Du:
          v201 = sub_1E65E55E8();
          (*(*(v201 - 8) + 8))(v1 + v3, v201);
          v161 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
          v178 = sub_1E65D7EB8();
LABEL_195:
          (*(*(v178 - 8) + 8))(v8 + v161, v178);
          goto LABEL_202;
        case 0x1Eu:
          v179 = sub_1E65E56B8();
          (*(*(v179 - 8) + 8))(v1 + v3, v179);
          v180 = &unk_1ED072110;
          v181 = &unk_1E65EA2D0;
          goto LABEL_188;
        case 0x1Fu:
          v189 = sub_1E65DA308();
          (*(*(v189 - 8) + 8))(v1 + v3, v189);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810);
          goto LABEL_167;
        case 0x20u:
          v200 = sub_1E65E58D8();
          (*(*(v200 - 8) + 8))(v1 + v3, v200);
          v180 = &qword_1ED072120;
          v181 = &qword_1E65EA2E0;
LABEL_188:
          __swift_instantiateConcreteTypeFromMangledNameV2(v180, v181);

LABEL_167:

          goto LABEL_202;
        case 0x21u:
          v174 = sub_1E65D9048();
          goto LABEL_201;
        default:
          goto LABEL_202;
      }
    }
  }

LABEL_141:

  v261 = v5;
  v260 = v1 + v7;
  v257 = v1 + v7 + *(v5 + 20);

  v264 = type metadata accessor for AppComposer(0);
  v117 = v257 + v264[5];
  swift_unknownObjectRelease();
  v118 = type metadata accessor for AppEnvironment(0);
  v119 = v118[6];
  v259 = type metadata accessor for AccountService();
  v258 = *(v259[-1].Description + 1);
  v258(v117 + v119, v259);
  v120 = v118[7];
  v256 = type metadata accessor for AppStateService();
  v255 = *(v256[-1].Description + 1);
  v255(v117 + v120, v256);
  v121 = v118[8];
  v254 = type metadata accessor for ArchivedSessionService();
  v253 = *(v254[-1].Description + 1);
  v253(v117 + v121, v254);
  v122 = v118[9];
  v252 = type metadata accessor for AssetService();
  v251 = *(v252[-1].Description + 1);
  v251(v117 + v122, v252);
  v123 = v118[10];
  v250 = type metadata accessor for AwardsService();
  v249 = *(v250[-1].Description + 1);
  v249(v117 + v123, v250);
  v124 = v118[11];
  v248 = type metadata accessor for BookmarkService();
  v247 = *(v248[-1].Description + 1);
  v247(v117 + v124, v248);
  v125 = v118[12];
  v246 = type metadata accessor for CatalogService();
  v245 = *(v246[-1].Description + 1);
  v245(v117 + v125, v246);
  v126 = v118[13];
  v244 = type metadata accessor for ConfigurationService();
  v243 = *(v244[-1].Description + 1);
  v243(v117 + v126, v244);
  v127 = v118[14];
  v242 = type metadata accessor for ContentAvailabilityService();
  v241 = *(v242[-1].Description + 1);
  v241(v117 + v127, v242);
  v128 = v118[15];
  v240 = type metadata accessor for EngagementService();
  v239 = *(v240[-1].Description + 1);
  v239(v117 + v128, v240);
  v129 = v118[16];
  v238 = type metadata accessor for HealthDataService();
  v237 = *(v238[-1].Description + 1);
  v237(v117 + v129, v238);
  v130 = v118[17];
  v236 = type metadata accessor for InteropService();
  v235 = *(v236[-1].Description + 1);
  v235(v117 + v130, v236);
  v131 = v118[18];
  v234 = type metadata accessor for LocalizationService();
  v233 = *(v234[-1].Description + 1);
  v233(v117 + v131, v234);
  v132 = v118[19];
  v232 = type metadata accessor for MarketingService();
  v231 = *(v232[-1].Description + 1);
  v231(v117 + v132, v232);
  v133 = v118[20];
  v230 = type metadata accessor for MetricService();
  v229 = *(v230[-1].Description + 1);
  v229(v117 + v133, v230);
  v134 = v118[21];
  v228 = type metadata accessor for PersonalizationService();
  v227 = *(v228[-1].Description + 1);
  v227(v117 + v134, v228);
  v135 = v118[22];
  v226 = type metadata accessor for PlayerService();
  v225 = *(v226[-1].Description + 1);
  v225(v117 + v135, v226);
  v136 = v118[23];
  v224 = type metadata accessor for PrivacyPreferenceService();
  v223 = *(v224[-1].Description + 1);
  v223(v117 + v136, v224);
  v137 = v118[24];
  v222 = type metadata accessor for RecommendationService();
  v221 = *(v222[-1].Description + 1);
  v221(v117 + v137, v222);
  v138 = v118[25];
  v220 = type metadata accessor for RemoteBrowsingService();
  v219 = *(v220[-1].Description + 1);
  v219(v117 + v138, v220);
  v139 = v118[26];
  v218 = type metadata accessor for SearchService();
  v217 = *(v218[-1].Description + 1);
  v217(v117 + v139, v218);
  v140 = v118[27];
  v211 = type metadata accessor for ServiceSubscriptionService();
  v216 = *(v211[-1].Description + 1);
  v216(v117 + v140, v211);
  v141 = v118[28];
  v209 = type metadata accessor for SessionService();
  v215 = *(v209[-1].Description + 1);
  v215(v117 + v141, v209);
  v142 = v118[29];
  v143 = type metadata accessor for SharePlayService();
  v214 = *(v143[-1].Description + 1);
  v214(v117 + v142, v143);
  v144 = v118[30];
  v145 = type metadata accessor for SiriService();
  v213 = *(v145[-1].Description + 1);
  v213(v117 + v144, v145);
  v146 = v118[31];
  v147 = type metadata accessor for SyncService();
  v212 = *(v147[-1].Description + 1);
  v212(v117 + v146, v147);

  v148 = v118[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v210 = *(QueueService[-1].Description + 1);
  v210(v117 + v148, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v117 + v118[34]));

  v150 = v118[36];
  v151 = type metadata accessor for WorkoutPlanService();
  v152 = *(v151[-1].Description + 1);
  v152(v117 + v150, v151);

  v153 = v257 + v264[7];

  v154 = v153 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v258(v154 + v118[6], v259);
  v255(v154 + v118[7], v256);
  v253(v154 + v118[8], v254);
  v251(v154 + v118[9], v252);
  v249(v154 + v118[10], v250);
  v247(v154 + v118[11], v248);
  v245(v154 + v118[12], v246);
  v243(v154 + v118[13], v244);
  v241(v154 + v118[14], v242);
  v239(v154 + v118[15], v240);
  v237(v154 + v118[16], v238);
  v235(v154 + v118[17], v236);
  v233(v154 + v118[18], v234);
  v231(v154 + v118[19], v232);
  v229(v154 + v118[20], v230);
  v227(v154 + v118[21], v228);
  v225(v154 + v118[22], v226);
  v223(v154 + v118[23], v224);
  v221(v154 + v118[24], v222);
  v219(v154 + v118[25], v220);
  v217(v154 + v118[26], v218);
  v216(v154 + v118[27], v211);
  v215(v154 + v118[28], v209);
  v214(v154 + v118[29], v143);
  v213(v154 + v118[30], v145);
  v212(v154 + v118[31], v147);

  v210(v154 + v118[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v154 + v118[34]));

  v152(v154 + v118[36], v151);
  swift_unknownObjectRelease();
  if (*(v257 + v264[9] + 8) >= 0xCuLL)
  {
  }

  v155 = (v257 + v264[10]);
  if (v155[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v155);
  }

  swift_unknownObjectRelease();
  v156 = (v260 + *(v261 + 28));
  if (v156[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v156);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}