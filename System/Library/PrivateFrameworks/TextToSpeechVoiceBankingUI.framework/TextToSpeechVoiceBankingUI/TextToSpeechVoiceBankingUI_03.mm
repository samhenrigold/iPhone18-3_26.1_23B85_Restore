uint64_t sub_26EE5BAD4(unint64_t a1, char *a2, char *a3, char *a4)
{
  v71 = sub_26EF37FEC();
  v8 = *(v71 - 8);
  v9 = MEMORY[0x28223BE20](v71);
  v68 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v67 = &v59 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v70 = &v59 - v14;
  result = MEMORY[0x28223BE20](v13);
  v69 = &v59 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (&a2[-a1] == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_70;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_71;
  }

  v20 = &a2[-a1] / v18;
  v74 = a1;
  v73 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || &a2[v22] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = &a4[v22];
    if (v22 < 1)
    {
      v44 = &a4[v22];
    }

    else
    {
      v63 = a4;
      v64 = (v8 + 16);
      v62 = (v8 + 8);
      v42 = -v18;
      v43 = &a4[v22];
      v44 = v41;
      v65 = v42;
      while (2)
      {
        while (1)
        {
          v60 = v44;
          v45 = &a2[v42];
          v69 = &a2[v42];
          v66 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v74 = a2;
              v72 = v60;
              goto LABEL_68;
            }

            v47 = a3;
            v61 = v44;
            v48 = *v64;
            v70 = (v43 + v42);
            v49 = v71;
            (v48)(v67);
            (v48)(v68, v45, v49);
            v50 = sub_26EF37EFC();
            v52 = v51;
            if (sub_26EF37EFC() == v50 && v53 == v52)
            {
              v54 = 0;
            }

            else
            {
              v54 = sub_26EF3B82C();
            }

            v42 = v65;
            a3 = v65 + v47;
            v55 = *v62;
            v56 = v71;
            (*v62)(v68, v71);
            v55(v67, v56);
            if (v54)
            {
              break;
            }

            v57 = v70;
            v44 = v70;
            if (v47 < v43 || a3 >= v43)
            {
              swift_arrayInitWithTakeFrontToBack();
              v45 = v69;
            }

            else
            {
              v45 = v69;
              if (v47 != v43)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v43 = v44;
            v46 = v57 > v63;
            a2 = v66;
            if (!v46)
            {
              goto LABEL_66;
            }
          }

          if (v47 < v66 || a3 >= v66)
          {
            break;
          }

          a2 = v69;
          v58 = v63;
          v44 = v61;
          if (v47 != v66)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v43 <= v58)
          {
            goto LABEL_66;
          }
        }

        a2 = v69;
        swift_arrayInitWithTakeFrontToBack();
        v44 = v61;
        if (v43 > v63)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v74 = a2;
    v72 = v44;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v68 = &a4[v21];
    v72 = &a4[v21];
    if (v21 >= 1 && a2 < a3)
    {
      v24 = *(v8 + 16);
      v66 = v18;
      v67 = (v8 + 16);
      v64 = (v8 + 8);
      v65 = v24;
      do
      {
        v25 = a3;
        v26 = a2;
        v27 = a2;
        v28 = v71;
        v29 = v65;
        v65(v69, v27, v71);
        v29(v70, a4, v28);
        v30 = sub_26EF37EFC();
        v32 = v31;
        if (sub_26EF37EFC() == v30 && v33 == v32)
        {

          v34 = *v64;
          v35 = v71;
          (*v64)(v70, v71);
          v34(v69, v35);
        }

        else
        {
          v36 = sub_26EF3B82C();

          v37 = *v64;
          v38 = v71;
          (*v64)(v70, v71);
          v37(v69, v38);
          if (v36)
          {
            a2 = &v66[v26];
            a3 = v25;
            if (a1 < v26 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v40 = v66;
            goto LABEL_37;
          }
        }

        v39 = a4;
        v40 = v66;
        a4 = &v66[a4];
        a2 = v26;
        a3 = v25;
        if (a1 < v39 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v39)
        {
          swift_arrayInitWithTakeBackToFront();
          v73 = a4;
          goto LABEL_37;
        }

        v73 = a4;
LABEL_37:
        a1 += v40;
        v74 = a1;
      }

      while (a4 < v68 && a2 < a3);
    }
  }

LABEL_68:
  sub_26EE5C1F4(&v74, &v73, &v72);
  return 1;
}

char *sub_26EE5C168(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26EE13990(v3);
    v3 = result;
  }

  v5 = *(v3 + 2);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[16 * a1];
    v8 = *(v7 + 4);
    memmove(v7 + 32, v7 + 48, 16 * (v5 - 1 - a1));
    *(v3 + 2) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_26EE5C1F4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_26EF37FEC();
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

void *sub_26EE5C2D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26EE5C2F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26EE5C2F8(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A90, &unk_26EF3EF40);
  v10 = *(sub_26EF37FEC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_26EF37FEC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_26EE5C4F4(uint64_t a1)
{
  v2 = sub_26EF396EC();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return MEMORY[0x274381D30](v4);
}

uint64_t sub_26EE5C5D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoiceInformationSection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE5C634()
{
  v1 = type metadata accessor for VoiceInformationSection(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v16 = *(*(v1 - 8) + 64);
  v4 = sub_26EF38AAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v15 = *(v5 + 64);
  v7 = v0 + v3;
  sub_26EE05C9C(*(v0 + v3), *(v0 + v3 + 8));

  v8 = *(v1 + 28);
  if (!(*(v5 + 48))(v0 + v3 + v8, 1, v4))
  {
    (*(v5 + 8))(v7 + v8, v4);
  }

  v9 = *(v1 + 32);
  v10 = sub_26EF38DBC();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v7 + v9, 1, v10))
  {
    (*(v11 + 8))(v7 + v9, v10);
  }

  v12 = v2 | v6;
  v13 = (v3 + v16 + v6) & ~v6;
  (*(v5 + 8))(v0 + v13, v4);

  return MEMORY[0x2821FE8E8](v0, v13 + v15, v12 | 7);
}

uint64_t sub_26EE5C86C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoiceInformationSection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE5C8D0()
{
  v1 = *(type metadata accessor for VoiceInformationSection(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_26EF38AAC() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_26EE598E0(v0 + v2, v5);
}

uint64_t sub_26EE5C99C()
{
  v1 = type metadata accessor for VoiceInformationSection(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v16 = *(*(v1 - 8) + 64);
  v4 = sub_26EF38AAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v15 = *(v5 + 64);
  swift_unknownObjectRelease();
  v7 = v0 + v3;
  sub_26EE05C9C(*(v0 + v3), *(v0 + v3 + 8));

  v8 = *(v1 + 28);
  if (!(*(v5 + 48))(v0 + v3 + v8, 1, v4))
  {
    (*(v5 + 8))(v7 + v8, v4);
  }

  v9 = *(v1 + 32);
  v10 = sub_26EF38DBC();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v7 + v9, 1, v10))
  {
    (*(v11 + 8))(v7 + v9, v10);
  }

  v12 = v2 | v6;
  v13 = (v3 + v16 + v6) & ~v6;
  (*(v5 + 8))(v0 + v13, v4);

  return MEMORY[0x2821FE8E8](v0, v13 + v15, v12 | 7);
}

uint64_t sub_26EE5CBDC()
{
  v2 = *(type metadata accessor for VoiceInformationSection(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_26EF38AAC() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_26EE05D7C;

  return sub_26EE59B74(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t sub_26EE5CD08(uint64_t a1)
{
  v1 = sub_26EF37EFC();
  v3 = v2;
  if (v1 == sub_26EF37EFC() && v3 == v4)
  {

    v7 = 0;
  }

  else
  {
    v6 = sub_26EF3B82C();

    v7 = v6 ^ 1;
  }

  return v7 & 1;
}

unint64_t sub_26EE5CDBC()
{
  result = qword_2806C7AC8;
  if (!qword_2806C7AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7AC0, &qword_26EF3EF88);
    sub_26EE154C8(&qword_2806C7AD0, &qword_2806C7AD8, &qword_26EF3EF90, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7AC8);
  }

  return result;
}

uint64_t sub_26EE5CE6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26EE5CEB4(uint64_t a1)
{
  v2 = type metadata accessor for RenameVoiceView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26EE5CF34()
{
  v0 = sub_26EF3A34C();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VoiceBankingNavigationModel(0);
  v3 = sub_26EE43684();
  sub_26EE43690();
  return VoiceBankingNavigationModel.__allocating_init(itemPath:columnVisibility:)(v3, v2);
}

id VBManagerView.init(authenticationCallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *sub_26EED2EB8();
  type metadata accessor for VoiceBankingSession(0);
  v7 = v6;
  sub_26EF3AAEC();
  *a3 = v10;
  *(a3 + 8) = v11;
  *(a3 + 16) = sub_26EE5CF34;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = sub_26EE5CFC8;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = sub_26EE5CFF4;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = sub_26EE5D020;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7AF0, &unk_26EF3EFB0);
  sub_26EF3AAEC();
  *(a3 + 112) = v10;
  *(a3 + 120) = v11;
  v8 = [objc_opt_self() sharedInstance];
  [v8 allowAppUsage];

  sub_26EF3AAEC();
  *(a3 + 128) = v10;
  *(a3 + 136) = v11;
  result = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  *(a3 + 144) = result;
  *(a3 + 152) = a1;
  *(a3 + 168) = sub_26EE60C40;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  *(a3 + 160) = a2;
  return result;
}

uint64_t VBManagerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v114 = a1;
  v2 = v1[9];
  v132 = v1[8];
  v133 = v2;
  v134[0] = v1[10];
  *(v134 + 9) = *(v1 + 169);
  v3 = v1[5];
  v128 = v1[4];
  v129 = v3;
  v4 = v1[7];
  v130 = v1[6];
  v131 = v4;
  v5 = v1[1];
  v124 = *v1;
  v125 = v5;
  v6 = v1[3];
  v126 = v1[2];
  v127 = v6;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7AF8, &qword_26EF3EFC0);
  MEMORY[0x28223BE20](v112);
  v113 = &v95 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7B00, &qword_26EF3EFC8);
  v110 = *(v8 - 8);
  v111 = v8;
  MEMORY[0x28223BE20](v8);
  v109 = &v95 - v9;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7B08, &qword_26EF3EFD0);
  MEMORY[0x28223BE20](v107);
  v108 = &v95 - v10;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7B10, &qword_26EF3EFD8);
  MEMORY[0x28223BE20](v103);
  v106 = &v95 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7B18, &qword_26EF3EFE0);
  v100 = *(v12 - 8);
  v101 = v12;
  MEMORY[0x28223BE20](v12);
  v99 = &v95 - v13;
  v98 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7B20, &qword_26EF3EFE8) - 8);
  MEMORY[0x28223BE20](v98);
  v116 = &v95 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7B28, &qword_26EF3EFF0);
  v16 = *(v15 - 8);
  v96 = v15;
  v97 = v16;
  MEMORY[0x28223BE20](v15);
  v115 = &v95 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7B30, &qword_26EF3EFF8);
  MEMORY[0x28223BE20](v18);
  v20 = &v95 - v19;
  sub_26EE5E004(&v124, &v95 - v19);
  v117 = *(&v125 + 1);
  v118 = v125;
  v21 = v126;
  v22 = type metadata accessor for VoiceBankingNavigationModel(0);
  v23 = sub_26EE67148(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel, &protocol conformance descriptor for VoiceBankingNavigationModel);
  sub_26EF3976C();
  VoiceBankingNavigationModel.$presentManagerRootView.getter();

  v24 = swift_allocObject();
  v25 = v131;
  v24[7] = v130;
  v24[8] = v25;
  v26 = v129;
  v24[5] = v128;
  v24[6] = v26;
  *(v24 + 185) = *(v134 + 9);
  v27 = v134[0];
  v24[10] = v133;
  v24[11] = v27;
  v24[9] = v132;
  v28 = v125;
  v24[1] = v124;
  v24[2] = v28;
  v29 = v127;
  v24[3] = v126;
  v24[4] = v29;
  v30 = &v20[*(v18 + 56)];
  *v30 = sub_26EE60C80;
  v30[1] = v24;
  v120 = v132;
  sub_26EE60C88(&v124, &v121);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AAFC();
  v31 = sub_26EE154C8(&qword_2806C7B38, &qword_2806C7B30, &qword_26EF3EFF8, MEMORY[0x277CDDB50]);
  sub_26EF3A8FC();
  sub_26EE14578(v20, &qword_2806C7B30, &qword_26EF3EFF8);
  v104 = v21;
  v105 = v22;
  sub_26EF3977C();
  swift_getKeyPath();
  v102 = v23;
  sub_26EF399BC();

  type metadata accessor for RootView(0);
  *&v121 = v18;
  *(&v121 + 1) = MEMORY[0x277D839B0];
  v122 = v31;
  v123 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  sub_26EE67148(&qword_2806C7B40, type metadata accessor for RootView, &unk_26EF3D4B8);
  v32 = v116;
  v33 = v96;
  v34 = v115;
  sub_26EF3A8BC();

  (*(v97 + 8))(v34, v33);
  v120 = v124;
  v121 = v124;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7B48, &qword_26EF41080);
  sub_26EF3AAFC();
  v36 = v119;
  v37 = VoiceBankingSession.dataStoreEventPublisher.getter();

  v38 = swift_allocObject();
  v39 = v133;
  v38[9] = v132;
  v38[10] = v39;
  v38[11] = v134[0];
  *(v38 + 185) = *(v134 + 9);
  v40 = v129;
  v38[5] = v128;
  v38[6] = v40;
  v41 = v131;
  v38[7] = v130;
  v38[8] = v41;
  v42 = v125;
  v38[1] = v124;
  v38[2] = v42;
  v43 = v127;
  v38[3] = v126;
  v38[4] = v43;
  v44 = v98;
  *(v32 + *(v98 + 15)) = v37;
  v45 = (v32 + *(v44 + 16));
  *v45 = sub_26EE60CC0;
  v45[1] = v38;
  sub_26EF3B2DC();
  sub_26EE60C88(&v124, &v121);
  sub_26EE60C88(&v124, &v121);
  v46 = sub_26EF3B2CC();
  v47 = swift_allocObject();
  v48 = MEMORY[0x277D85700];
  *(v47 + 16) = v46;
  *(v47 + 24) = v48;
  v49 = v133;
  *(v47 + 160) = v132;
  *(v47 + 176) = v49;
  *(v47 + 192) = v134[0];
  *(v47 + 201) = *(v134 + 9);
  v50 = v129;
  *(v47 + 96) = v128;
  *(v47 + 112) = v50;
  v51 = v131;
  *(v47 + 128) = v130;
  *(v47 + 144) = v51;
  v52 = v125;
  *(v47 + 32) = v124;
  *(v47 + 48) = v52;
  v53 = v127;
  *(v47 + 64) = v126;
  *(v47 + 80) = v53;
  v54 = sub_26EF3B30C();
  v55 = *(v54 - 8);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF0;
  v58 = &v95 - v57;
  sub_26EF3B2EC();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v97 = sub_26EF39A1C();
    v98 = &v95;
    v96 = *(v97 - 8);
    MEMORY[0x28223BE20](v97);
    v95 = &v95 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v121 = 0;
    *(&v121 + 1) = 0xE000000000000000;
    sub_26EF3B70C();

    *&v121 = 0xD00000000000003BLL;
    *(&v121 + 1) = 0x800000026EF45790;
    *&v119 = 99;
    v60 = sub_26EF3B7FC();
    MEMORY[0x274383240](v60);

    v115 = v35;
    MEMORY[0x28223BE20](v61);
    (*(v55 + 16))(&v95 - v57, &v95 - v57, v54);
    v62 = v95;
    sub_26EF39A0C();
    (*(v55 + 8))(v58, v54);
    v63 = v99;
    sub_26EE14D98(v116, v99, &qword_2806C7B20, &qword_26EF3EFE8);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7B50, &qword_26EF3F040);
    (*(v96 + 32))(v63 + *(v64 + 36), v62, v97);
  }

  else
  {
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7B78, &qword_26EF3F050);
    v63 = v99;
    v66 = (v99 + *(v65 + 36));
    v67 = sub_26EF3990C();
    (*(v55 + 32))(&v66[*(v67 + 20)], &v95 - v57, v54);
    *v66 = &unk_26EF3F038;
    *(v66 + 1) = v47;
    sub_26EE14D98(v116, v63, &qword_2806C7B20, &qword_26EF3EFE8);
  }

  v68 = swift_allocObject();
  v69 = v133;
  v68[9] = v132;
  v68[10] = v69;
  v68[11] = v134[0];
  *(v68 + 185) = *(v134 + 9);
  v70 = v129;
  v68[5] = v128;
  v68[6] = v70;
  v71 = v131;
  v68[7] = v130;
  v68[8] = v71;
  v72 = v125;
  v68[1] = v124;
  v68[2] = v72;
  v73 = v127;
  v68[3] = v126;
  v68[4] = v73;
  v74 = v106;
  (*(v100 + 32))(v106, v63, v101);
  v75 = (v74 + *(v103 + 36));
  *v75 = sub_26EE60D58;
  v75[1] = v68;
  v75[2] = 0;
  v75[3] = 0;
  v76 = swift_allocObject();
  v77 = v133;
  v76[9] = v132;
  v76[10] = v77;
  v76[11] = v134[0];
  *(v76 + 185) = *(v134 + 9);
  v78 = v129;
  v76[5] = v128;
  v76[6] = v78;
  v79 = v131;
  v76[7] = v130;
  v76[8] = v79;
  v80 = v125;
  v76[1] = v124;
  v76[2] = v80;
  v81 = v127;
  v76[3] = v126;
  v76[4] = v81;
  v82 = v108;
  sub_26EE14D98(v74, v108, &qword_2806C7B10, &qword_26EF3EFD8);
  v83 = (v82 + *(v107 + 36));
  *v83 = 0;
  v83[1] = 0;
  v83[2] = sub_26EE60D80;
  v83[3] = v76;
  v119 = v120;
  sub_26EE60C88(&v124, &v121);
  sub_26EE60C88(&v124, &v121);
  sub_26EF3AAFC();
  v84 = v121;
  type metadata accessor for VoiceBankingSession(0);
  sub_26EE60DA8();
  sub_26EE67148(&qword_2806C65C0, type metadata accessor for VoiceBankingSession, &protocol conformance descriptor for VoiceBankingSession);
  v85 = v109;
  sub_26EF3A67C();

  sub_26EE14578(v82, &qword_2806C7B08, &qword_26EF3EFD0);
  v86 = sub_26EF3976C();
  v87 = sub_26EF394AC();
  v88 = v113;
  (*(v110 + 32))(v113, v85, v111);
  v89 = (v88 + *(v112 + 36));
  *v89 = v87;
  v89[1] = v86;
  type metadata accessor for VoiceBankingAudioServiceViewModel(0);
  sub_26EE67148(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
  v90 = sub_26EF3976C();
  v91 = sub_26EF394AC();
  v92 = v114;
  sub_26EE14D98(v88, v114, &qword_2806C7AF8, &qword_26EF3EFC0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7B70, &qword_26EF3F048);
  v94 = (v92 + *(result + 36));
  *v94 = v91;
  v94[1] = v90;
  return result;
}

uint64_t sub_26EE5E004@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v54 = a1;
  v59 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7CB8, &qword_26EF3F430);
  v55 = *(v56 - 1);
  MEMORY[0x28223BE20](v56);
  v53 = &v52 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7D98, &qword_26EF3F518);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v67 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v62 = &v52 - v7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7DA0, &qword_26EF3F520);
  v57 = *(v58 - 8);
  v8 = MEMORY[0x28223BE20](v58);
  v71 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v69 = &v52 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7DA8, &qword_26EF3F528);
  v65 = *(v11 - 8);
  v66 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v70 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v68 = &v52 - v14;
  v15 = sub_26EF387DC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7DB0, &qword_26EF3F530);
  v63 = *(v19 - 8);
  v64 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v61 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v52 - v22;
  v24 = *MEMORY[0x277CE76C8];
  v25 = *(v16 + 104);
  v25(v18, v24, v15);
  v74 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7DB8, &qword_26EF3F538);
  v26 = MEMORY[0x277CE14C0];
  sub_26EE154C8(&qword_2806C7DC0, &qword_2806C7DB8, &qword_26EF3F538, MEMORY[0x277CE14C0]);
  v60 = v23;
  sub_26EF3877C();
  v25(v18, v24, v15);
  v27 = v54;
  v73 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7DC8, &qword_26EF3F540);
  sub_26EE154C8(&qword_2806C7DD0, &qword_2806C7DC8, &qword_26EF3F540, v26);
  sub_26EF3879C();
  v25(v18, v24, v15);
  v72 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7CA8, &qword_26EF3F428);
  sub_26EE65F70();
  sub_26EF3879C();
  if (TTSVBIsInternalUIBuild())
  {
    v28 = sub_26EF39EAC();
    MEMORY[0x28223BE20](v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7C50, &unk_26EF3F0F0);
    sub_26EE154C8(&qword_2806C7C58, &qword_2806C7C50, &unk_26EF3F0F0, MEMORY[0x277CE14C0]);
    v29 = v53;
    sub_26EF3AD2C();
    v30 = v55;
    v31 = v62;
    v32 = v56;
    (*(v55 + 32))(v62, v29, v56);
    v33 = 0;
    v34 = v32;
    v35 = v30;
  }

  else
  {
    v33 = 1;
    v31 = v62;
    v34 = v56;
    v35 = v55;
  }

  (*(v35 + 56))(v31, v33, 1, v34);
  v36 = v64;
  v37 = *(v63 + 16);
  v38 = v61;
  v37(v61, v60, v64);
  v56 = *(v65 + 16);
  (v56)(v70, v68, v66);
  v39 = v57;
  v40 = *(v57 + 16);
  v41 = v58;
  v40(v71, v69, v58);
  sub_26EE13B88(v31, v67, &qword_2806C7D98, &qword_26EF3F518);
  v42 = v59;
  v37(v59, v38, v36);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7DD8, &qword_26EF3F548);
  v44 = v66;
  (v56)(&v42[v43[12]], v70, v66);
  v40(&v42[v43[16]], v71, v41);
  v45 = v67;
  sub_26EE13B88(v67, &v42[v43[20]], &qword_2806C7D98, &qword_26EF3F518);
  sub_26EE14578(v62, &qword_2806C7D98, &qword_26EF3F518);
  v46 = *(v39 + 8);
  v46(v69, v41);
  v47 = *(v65 + 8);
  v48 = v44;
  v47(v68, v44);
  v49 = v64;
  v50 = *(v63 + 8);
  v50(v60, v64);
  sub_26EE14578(v45, &qword_2806C7D98, &qword_26EF3F518);
  v46(v71, v41);
  v47(v70, v48);
  return (v50)(v61, v49);
}

uint64_t sub_26EE5E90C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_26EF387DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7C98, &qword_26EF3F420);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7C90, &qword_26EF3F418);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = a1[9];
  v40 = a1[8];
  v41 = v19;
  v42[0] = a1[10];
  *(v42 + 9) = *(a1 + 169);
  v20 = a1[5];
  v36 = a1[4];
  v37 = v20;
  v21 = a1[7];
  v38 = a1[6];
  v39 = v21;
  v22 = a1[1];
  v32 = *a1;
  v33 = v22;
  v23 = a1[3];
  v34 = a1[2];
  v35 = v23;
  sub_26EE5ECA4(&v28 - v17);
  (*(v4 + 104))(v6, *MEMORY[0x277CE76C0], v3);
  v31 = a1;
  v30 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7C08, &qword_26EF3F0C8);
  sub_26EE63944();
  sub_26EF3878C();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7C00, &qword_26EF3F0C0);
  (*(*(v24 - 8) + 56))(v12, 0, 1, v24);
  sub_26EE67304(v18, v16);
  sub_26EE13B88(v12, v10, &qword_2806C7C98, &qword_26EF3F420);
  v25 = v29;
  sub_26EE67304(v16, v29);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7DE8, &qword_26EF3F558);
  sub_26EE13B88(v10, v25 + *(v26 + 48), &qword_2806C7C98, &qword_26EF3F420);
  sub_26EE14578(v12, &qword_2806C7C98, &qword_26EF3F420);
  sub_26EE14578(v18, &qword_2806C7C90, &qword_26EF3F418);
  sub_26EE14578(v10, &qword_2806C7C98, &qword_26EF3F420);
  return sub_26EE14578(v16, &qword_2806C7C90, &qword_26EF3F418);
}

uint64_t sub_26EE5ECA4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7B80, &qword_26EF3F058);
  MEMORY[0x28223BE20](v3);
  v5 = v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7B88, &qword_26EF3F060);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v25 - v8;
  v10 = v1[9];
  v35 = v1[8];
  v36 = v10;
  v37[0] = v1[10];
  *(v37 + 9) = *(v1 + 169);
  v11 = v1[5];
  v31 = v1[4];
  v32 = v11;
  v12 = v1[7];
  v33 = v1[6];
  v34 = v12;
  v13 = v1[1];
  v27 = *v1;
  v28 = v13;
  v14 = v1[3];
  v29 = v1[2];
  v30 = v14;
  v15 = *(sub_26EE60F30() + 16);

  if (v15)
  {
    v25[1] = v3;
    v25[2] = a1;
    type metadata accessor for VoiceRefreshViewModel(0);
    sub_26EE67148(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel, &unk_26EF41418);
    sub_26EF3976C();
    sub_26EEA65A4();
    v17 = v16;

    v26[24] = v17;
    v25[0] = swift_getKeyPath();
    v18 = swift_allocObject();
    v19 = v36;
    v18[9] = v35;
    v18[10] = v19;
    v18[11] = v37[0];
    *(v18 + 185) = *(v37 + 9);
    v20 = v32;
    v18[5] = v31;
    v18[6] = v20;
    v21 = v34;
    v18[7] = v33;
    v18[8] = v21;
    v22 = v28;
    v18[1] = v27;
    v18[2] = v22;
    v23 = v30;
    v18[3] = v29;
    v18[4] = v23;
    sub_26EE60C88(&v27, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7BE8, &qword_26EF3F0B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7BA0, &qword_26EF3F068);
    sub_26EE154C8(&qword_2806C7BF0, &qword_2806C7BE8, &qword_26EF3F0B8, MEMORY[0x277D83980]);
    sub_26EE67148(&qword_2806C7BF8, type metadata accessor for TTSVBVoicesByLocaleContainer, &unk_26EF413B0);
    sub_26EE612D8();
    sub_26EF3ACEC();
    (*(v7 + 16))(v5, v9, v6);
    swift_storeEnumTagMultiPayload();
    sub_26EE6139C(&qword_2806C7B90, &qword_2806C7B88, &qword_26EF3F060, sub_26EE612D8);
    sub_26EF3A06C();
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_26EE6139C(&qword_2806C7B90, &qword_2806C7B88, &qword_26EF3F060, sub_26EE612D8);
    return sub_26EF3A06C();
  }
}

uint64_t sub_26EE5F0DC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v28 = a2;
  v3 = sub_26EF3875C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v26 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  sub_26EE5F3A4();
  v15 = sub_26EE17094();
  v16._object = 0x800000026EF45840;
  v17 = v15 & 1;
  v16._countAndFlagsBits = 0xD000000000000012;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v16, v17, 0);
  v18 = sub_26EE17094();
  v19._countAndFlagsBits = 0xD000000000000019;
  v19._object = 0x800000026EF45860;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v19, v18 & 1, 0);
  v29 = *(a1 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AB1C();
  sub_26EF3876C();
  v20 = *(v4 + 16);
  v20(v9, v14, v3);
  v21 = v27;
  v20(v27, v12, v3);
  v22 = v28;
  v20(v28, v9, v3);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7DE0, &qword_26EF3F550);
  v20(&v22[*(v23 + 48)], v21, v3);
  v24 = *(v4 + 8);
  v24(v12, v3);
  v24(v14, v3);
  v24(v21, v3);
  return (v24)(v9, v3);
}

uint64_t sub_26EE5F3A4()
{
  type metadata accessor for VBCloudSyncModel();
  sub_26EE67148(&qword_2806C7C18, type metadata accessor for VBCloudSyncModel, &protocol conformance descriptor for VBCloudSyncModel);
  sub_26EF3976C();
  v0 = sub_26EE9BFBC();

  if (v0)
  {
    v1 = 0xD000000000000014;
  }

  else
  {
    v1 = 0xD000000000000026;
  }

  if (v0)
  {
    v2 = "VB_USE_ICLOUD_TITLE";
  }

  else
  {
    v2 = "kingUI/VBManagerView.swift:";
  }

  v3 = sub_26EE17094();
  v4._object = (v2 | 0x8000000000000000);
  v5 = v3 & 1;
  v4._countAndFlagsBits = v1;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v4, v5, 0);

  v6 = sub_26EE17094();
  v7._object = 0x800000026EF45800;
  v8 = v6 & 1;
  v7._countAndFlagsBits = 0xD000000000000013;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v7, v8, 0);
  sub_26EF3976C();
  sub_26EE9BB94();

  sub_26EF3976C();
  sub_26EE9BFBC();

  return sub_26EF3876C();
}

uint64_t sub_26EE5F580@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7C20, &qword_26EF3F0D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - v5;
  v7 = v1[9];
  v8 = v1[10];
  v9 = v1[7];
  v44 = v1[8];
  v45 = v7;
  v46[0] = v8;
  *(v46 + 9) = *(v1 + 169);
  v10 = v1[5];
  v40 = v1[4];
  v41 = v10;
  v11 = v1[7];
  v42 = v1[6];
  v43 = v11;
  v12 = v1[1];
  v36 = *v1;
  v37 = v12;
  v13 = v1[3];
  v38 = v1[2];
  v39 = v13;
  v33 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7C28, &qword_26EF3F0D8);
  sub_26EF3AAFC();
  v14 = *(v30._countAndFlagsBits + 16);

  if (v14)
  {
    MEMORY[0x28223BE20](v15);
    v16 = sub_26EE17094();
    v17._countAndFlagsBits = 0xD00000000000001BLL;
    v17._object = 0x800000026EF45880;
    v33 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v17, v16 & 1, 0);
    sub_26EE12538(v33._countAndFlagsBits, v33._object, v18);
    v33._countAndFlagsBits = sub_26EF3A5DC();
    v33._object = v19;
    v34 = v20 & 1;
    v35 = v21;
    v22 = sub_26EE17094();
    v23._object = 0x800000026EF458A0;
    v24 = v22 & 1;
    v23._countAndFlagsBits = 0xD000000000000016;
    v30 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v23, v24, 0);
    v30._countAndFlagsBits = sub_26EF3A5DC();
    v30._object = v25;
    v31 = v26 & 1;
    v32 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7C30, &qword_26EF3F0E0);
    sub_26EE63B50();
    sub_26EF3AD5C();
    (*(v4 + 32))(a1, v6, v3);
    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  return (*(v4 + 56))(a1, v28, 1, v3);
}

uint64_t sub_26EE5F84C(unsigned __int8 *a1, uint64_t a2)
{
  v3 = sub_26EF3883C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = sub_26EE27DAC();
  (*(v4 + 16))(v6, v8, v3);
  v9 = sub_26EF3881C();
  v10 = sub_26EF3B43C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v7;
    _os_log_impl(&dword_26EE01000, v9, v10, "VBManagerView: onChange presentManagerRootView=%{BOOL}d. Will update timer.", v11, 8u);
    MEMORY[0x2743842A0](v11, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  type metadata accessor for VoiceRefreshViewModel(0);
  sub_26EE67148(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel, &unk_26EF41418);
  sub_26EF3976C();
  sub_26EEA7B10(v7 ^ 1);
}

void sub_26EE5FA30(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = [objc_opt_self() sharedInstance];
  [v3 setAllowAppUsage_];
}

uint64_t sub_26EE5FAA4(uint64_t a1, _OWORD *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24[-v4];
  v6 = sub_26EF3883C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_26EF3915C();
  if (result)
  {
    v11 = sub_26EE27DAC();
    (*(v7 + 16))(v9, v11, v6);
    v12 = sub_26EF3881C();
    v13 = sub_26EF3B43C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_26EE01000, v12, v13, "VBManagerView: Got db event, voices did change. Will refresh voices and models", v14, 2u);
      MEMORY[0x2743842A0](v14, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    v15 = sub_26EF3B30C();
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    sub_26EF3B2DC();
    sub_26EE60C88(a2, v24);
    v16 = sub_26EF3B2CC();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    *(v17 + 16) = v16;
    *(v17 + 24) = v18;
    v19 = a2[9];
    *(v17 + 160) = a2[8];
    *(v17 + 176) = v19;
    *(v17 + 192) = a2[10];
    *(v17 + 201) = *(a2 + 169);
    v20 = a2[5];
    *(v17 + 96) = a2[4];
    *(v17 + 112) = v20;
    v21 = a2[7];
    *(v17 + 128) = a2[6];
    *(v17 + 144) = v21;
    v22 = a2[1];
    *(v17 + 32) = *a2;
    *(v17 + 48) = v22;
    v23 = a2[3];
    *(v17 + 64) = a2[2];
    *(v17 + 80) = v23;
    sub_26EE2C388(0, 0, v5, &unk_26EF3F510, v17);
  }

  return result;
}

uint64_t sub_26EE5FD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_26EF3B2DC();
  v4[3] = sub_26EF3B2CC();
  v6 = sub_26EF3B29C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_26EE5FDE4, v6, v5);
}

uint64_t sub_26EE5FDE4()
{
  type metadata accessor for VoiceRefreshViewModel(0);
  sub_26EE67148(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel, &unk_26EF41418);
  *(v0 + 48) = sub_26EF3976C();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_26EE5FEE8;

  return sub_26EEA69C4();
}

uint64_t sub_26EE5FEE8()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_26EE6002C, v3, v2);
}

uint64_t sub_26EE6002C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26EE6008C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a3;
  v4 = sub_26EF38A2C();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = sub_26EF3883C();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  sub_26EF3B2DC();
  v3[16] = sub_26EF3B2CC();
  v7 = sub_26EF3B29C();
  v3[17] = v7;
  v3[18] = v6;

  return MEMORY[0x2822009F8](sub_26EE601E8, v7, v6);
}

uint64_t sub_26EE601E8()
{
  *(v0 + 16) = **(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7B48, &qword_26EF41080);
  sub_26EF3AAFC();
  *(v0 + 152) = *(v0 + 48);
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_26EE602AC;

  return VoiceBankingSession.loadStores()();
}

uint64_t sub_26EE602AC()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_26EE607AC;
  }

  else
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_26EE603C8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_26EE603C8()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = sub_26EE27DAC();
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_26EF3881C();
  v6 = sub_26EF3B43C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26EE01000, v5, v6, "VBManagerView: body loaded task. Will refresh voices and models", v7, 2u);
    MEMORY[0x2743842A0](v7, -1, -1);
  }

  v8 = v0[15];
  v9 = v0[12];
  v10 = v0[13];

  (*(v10 + 8))(v8, v9);
  type metadata accessor for VoiceRefreshViewModel(0);
  sub_26EE67148(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel, &unk_26EF41418);
  v0[22] = sub_26EF3976C();
  v11 = swift_task_alloc();
  v0[23] = v11;
  *v11 = v0;
  v11[1] = sub_26EE60588;

  return sub_26EEA69C4();
}

uint64_t sub_26EE60588()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_26EE606CC, v3, v2);
}

uint64_t sub_26EE606CC()
{

  v1 = *(v0 + 64);
  sub_26EF3B15C();
  v2 = sub_26EF38B8C();

  *(v0 + 32) = *(v1 + 112);
  *(v0 + 56) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7C28, &qword_26EF3F0D8);
  sub_26EF3AB0C();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26EE607AC()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);

  sub_26EF3934C();
  v3 = v1;
  v4 = sub_26EF3881C();
  v5 = sub_26EF3B45C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 168);
  if (v6)
  {
    v9 = *(v0 + 80);
    v8 = *(v0 + 88);
    v10 = *(v0 + 72);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    (*(v9 + 104))(v8, *MEMORY[0x277D704D8], v10);
    sub_26EF38A4C();
    sub_26EE67148(&unk_2806C9CD0, MEMORY[0x277D70518], MEMORY[0x277D70520]);
    swift_allocError();
    sub_26EF389BC();
    (*(v9 + 8))(v8, v10);
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&dword_26EE01000, v4, v5, "%@", v11, 0xCu);
    sub_26EE14578(v12, &qword_2806C7140, &unk_26EF3E420);
    MEMORY[0x2743842A0](v12, -1, -1);
    MEMORY[0x2743842A0](v11, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  v14 = *(v0 + 64);
  sub_26EF3B15C();
  v15 = sub_26EF38B8C();

  *(v0 + 32) = *(v14 + 112);
  *(v0 + 56) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7C28, &qword_26EF3F0D8);
  sub_26EF3AB0C();

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_26EE60A64(uint64_t a1, const char *a2, char a3)
{
  v5 = sub_26EF3883C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26EE27DAC();
  (*(v6 + 16))(v8, v9, v5);
  v10 = sub_26EF3881C();
  v11 = sub_26EF3B47C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_26EE01000, v10, v11, a2, v12, 2u);
    MEMORY[0x2743842A0](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  type metadata accessor for VoiceRefreshViewModel(0);
  sub_26EE67148(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel, &unk_26EF41418);
  sub_26EF3976C();
  sub_26EEA7B10(a3 & 1);
}

uint64_t sub_26EE60C70(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x2821F96F8](a1, a2);
  }

  else
  {
  }
}

uint64_t sub_26EE60CC8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26EE15538;

  return sub_26EE6008C(v2, v3, v0 + 32);
}

unint64_t sub_26EE60DA8()
{
  result = qword_2806C7B58;
  if (!qword_2806C7B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7B08, &qword_26EF3EFD0);
    sub_26EE60E34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7B58);
  }

  return result;
}

unint64_t sub_26EE60E34()
{
  result = qword_2806C7B60;
  if (!qword_2806C7B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7B10, &qword_26EF3EFD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7B20, &qword_26EF3EFE8);
    sub_26EE154C8(&qword_2806C7B68, &qword_2806C7B20, &qword_26EF3EFE8, MEMORY[0x277CDDB50]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7B60);
  }

  return result;
}

uint64_t sub_26EE60F30()
{
  v28 = sub_26EF38AAC();
  v1 = *(v28 - 8);
  v2 = MEMORY[0x28223BE20](v28);
  v31 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - v4;
  v6 = v0[9];
  v33[8] = v0[8];
  v33[9] = v6;
  *v34 = v0[10];
  *&v34[9] = *(v0 + 169);
  v7 = v0[5];
  v33[4] = v0[4];
  v33[5] = v7;
  v8 = v0[7];
  v33[6] = v0[6];
  v33[7] = v8;
  v9 = v0[1];
  v33[0] = *v0;
  v33[1] = v9;
  v10 = v0[3];
  v33[2] = v0[2];
  v33[3] = v10;
  type metadata accessor for VoiceRefreshViewModel(0);
  sub_26EE67148(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel, &unk_26EF41418);
  sub_26EF3976C();
  v11 = sub_26EEA652C();

  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = 0;
    v30 = v1 + 16;
    v26 = (v1 + 8);
    v29 = (v1 + 32);
    v14 = MEMORY[0x277D84F90];
    v15 = v28;
    v27 = v11;
    v25 = v12;
    while (v13 < *(v11 + 16))
    {
      v16 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v17 = *(v1 + 72);
      (*(v1 + 16))(v5, v11 + v16 + v17 * v13, v15);
      if (sub_26EE64A98(v5, v33))
      {
        v18 = *v29;
        (*v29)(v31, v5, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26EE659E8(0, *(v14 + 16) + 1, 1);
          v14 = v32;
        }

        v21 = *(v14 + 16);
        v20 = *(v14 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_26EE659E8((v20 > 1), v21 + 1, 1);
          v14 = v32;
        }

        *(v14 + 16) = v21 + 1;
        v22 = v14 + v16 + v21 * v17;
        v15 = v28;
        v18(v22, v31, v28);
        v11 = v27;
        v12 = v25;
      }

      else
      {
        (*v26)(v5, v15);
      }

      if (v12 == ++v13)
      {
        goto LABEL_13;
      }
    }

    __break(1u);

    (*v26)(v5, v15);

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_13:

    return v14;
  }

  return result;
}

unint64_t sub_26EE612D8()
{
  result = qword_2806C7B98;
  if (!qword_2806C7B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7BA0, &qword_26EF3F068);
    sub_26EE6139C(&qword_2806C7BA8, &qword_2806C7BB0, &qword_26EF3F070, sub_26EE61418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7B98);
  }

  return result;
}

uint64_t sub_26EE6139C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26EE61418()
{
  result = qword_2806C7BB8;
  if (!qword_2806C7BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7BC0, &qword_26EF3F078);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7BC8, &qword_26EF3F080);
    sub_26EF39B6C();
    sub_26EE61528();
    sub_26EE67148(&qword_2806C6BB8, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7BB8);
  }

  return result;
}

unint64_t sub_26EE61528()
{
  result = qword_2806C7BD0;
  if (!qword_2806C7BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7BC8, &qword_26EF3F080);
    sub_26EE154C8(&qword_2806C7BD8, &qword_2806C7BE0, &qword_26EF3F088, MEMORY[0x277CDF028]);
    sub_26EE154C8(&qword_2806C7020, &qword_2806C7028, &unk_26EF3F090, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7BD0);
  }

  return result;
}

uint64_t sub_26EE6160C(uint64_t a1)
{
  v1 = sub_26EEA5AE8();
  sub_26EE12538(v1, v2, v3);
  sub_26EF3A5DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7BB0, &qword_26EF3F070);
  sub_26EE6139C(&qword_2806C7BA8, &qword_2806C7BB0, &qword_26EF3F070, sub_26EE61418);
  return sub_26EF3AD4C();
}

uint64_t sub_26EE616FC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v53 = sub_26EF39B6C();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7BC8, &qword_26EF3F080);
  MEMORY[0x28223BE20](v49);
  v50 = &v46 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7D38, &unk_26EF3F4B0);
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v48 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_26EF38AAC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v46 - v17;
  v19 = a2[9];
  v57[8] = a2[8];
  v57[9] = v19;
  *v58 = a2[10];
  *&v58[9] = *(a2 + 169);
  v20 = a2[5];
  v57[4] = a2[4];
  v57[5] = v20;
  v21 = a2[7];
  v57[6] = a2[6];
  v57[7] = v21;
  v22 = a2[1];
  v57[0] = *a2;
  v57[1] = v22;
  v23 = a2[3];
  v57[2] = a2[2];
  v57[3] = v23;
  v24 = sub_26EE60F30();
  v56 = a1;
  sub_26EE61DE8(sub_26EE66AFC, v24, v11);

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_26EE14578(v11, &qword_2806C7080, &unk_26EF3DBF0);
    return (*(v54 + 56))(a3, 1, 1, v55);
  }

  else
  {
    v47 = a3;
    v26 = *(v13 + 32);
    v26(v18, v11, v12);
    (*(v13 + 16))(v16, v18, v12);
    v27 = (*(v13 + 80) + 201) & ~*(v13 + 80);
    v28 = swift_allocObject();
    v29 = a2[9];
    v28[9] = a2[8];
    v28[10] = v29;
    v28[11] = a2[10];
    *(v28 + 185) = *(a2 + 169);
    v30 = a2[5];
    v28[5] = a2[4];
    v28[6] = v30;
    v31 = a2[7];
    v28[7] = a2[6];
    v28[8] = v31;
    v32 = a2[1];
    v28[1] = *a2;
    v28[2] = v32;
    v33 = a2[3];
    v28[3] = a2[2];
    v28[4] = v33;
    v34 = (v26)(v28 + v27, v16, v12);
    MEMORY[0x28223BE20](v34);
    *(&v46 - 2) = v18;
    *(&v46 - 1) = a2;
    sub_26EE60C88(a2, v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7D40, &qword_26EF3F4C0);
    sub_26EE66CDC();
    v35 = v50;
    sub_26EF3AB4C();
    type metadata accessor for VBCloudSyncModel();
    sub_26EE67148(&qword_2806C7C18, type metadata accessor for VBCloudSyncModel, &protocol conformance descriptor for VBCloudSyncModel);
    sub_26EF3976C();
    v36 = VBCloudSyncModel.hasDevicePasscode.getter();

    KeyPath = swift_getKeyPath();
    v38 = swift_allocObject();
    *(v38 + 16) = (v36 & 1) == 0;
    v39 = (v35 + *(v49 + 36));
    *v39 = KeyPath;
    v39[1] = sub_26EE673E4;
    v39[2] = v38;
    v40 = v51;
    sub_26EF39B5C();
    sub_26EE61528();
    sub_26EE67148(&qword_2806C6BB8, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    v41 = v48;
    v42 = v53;
    sub_26EF3A65C();
    (*(v52 + 8))(v40, v42);
    sub_26EE14578(v35, &qword_2806C7BC8, &qword_26EF3F080);
    v43 = v54;
    v44 = v47;
    v45 = v55;
    (*(v54 + 32))(v47, v41, v55);
    (*(v43 + 56))(v44, 0, 1, v45);
    return (*(v13 + 8))(v18, v12);
  }
}

uint64_t sub_26EE61DE8@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a1;
  v6 = sub_26EF38AAC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v20 = v7;
    v21 = a3;
    v12 = *(v7 + 16);
    v11 = v7 + 16;
    v22 = v12;
    v13 = (v11 - 8);
    v14 = a2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    while (1)
    {
      v22(v9, v14, v6);
      v16 = v23(v9);
      if (v3)
      {
        return (*v13)(v9, v6);
      }

      if (v16)
      {
        break;
      }

      (*v13)(v9, v6);
      v14 += v15;
      if (!--v10)
      {
        v17 = 1;
        v7 = v20;
        a3 = v21;
        return (*(v7 + 56))(a3, v17, 1, v6);
      }
    }

    v7 = v20;
    a3 = v21;
    (*(v20 + 32))(v21, v9, v6);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return (*(v7 + 56))(a3, v17, 1, v6);
}

uint64_t sub_26EE61FBC(_OWORD *a1, uint64_t a2)
{
  v4 = sub_26EF38AAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22[-v9];
  v11 = sub_26EF3B30C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a2, v4);
  sub_26EF3B2DC();
  sub_26EE60C88(a1, v22);
  v12 = sub_26EF3B2CC();
  v13 = (*(v5 + 80) + 217) & ~*(v5 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v12;
  *(v14 + 24) = v15;
  v16 = a1[9];
  *(v14 + 160) = a1[8];
  *(v14 + 176) = v16;
  *(v14 + 192) = a1[10];
  *(v14 + 201) = *(a1 + 169);
  v17 = a1[5];
  *(v14 + 96) = a1[4];
  *(v14 + 112) = v17;
  v18 = a1[7];
  *(v14 + 128) = a1[6];
  *(v14 + 144) = v18;
  v19 = a1[1];
  *(v14 + 32) = *a1;
  *(v14 + 48) = v19;
  v20 = a1[3];
  *(v14 + 64) = a1[2];
  *(v14 + 80) = v20;
  (*(v5 + 32))(v14 + v13, v7, v4);
  sub_26EE2C388(0, 0, v10, &unk_26EF3F4F8, v14);
}

uint64_t sub_26EE621FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_26EF37EDC();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  sub_26EF3B2DC();
  v5[7] = sub_26EF3B2CC();
  v8 = sub_26EF3B29C();
  v5[8] = v8;
  v5[9] = v7;

  return MEMORY[0x2822009F8](sub_26EE622F0, v8, v7);
}

uint64_t sub_26EE622F0()
{
  type metadata accessor for VBAuthenticationChallengeModel();
  sub_26EE67148(&qword_2806C7D18, type metadata accessor for VBAuthenticationChallengeModel, &protocol conformance descriptor for VBAuthenticationChallengeModel);
  v0[10] = sub_26EF3976C();
  v1 = sub_26EE17094();
  v2._object = 0x800000026EF45A30;
  v3 = v1 & 1;
  v2._countAndFlagsBits = 0xD000000000000024;
  v4 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v2, v3, 0);
  v0[11] = v4._object;
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_26EE62434;

  return VBAuthenticationChallengeModel.presentAuthenticationChallenge(localizedReason:)(v4._countAndFlagsBits, v4._object);
}

uint64_t sub_26EE62434(char a1)
{
  v2 = *v1;
  *(*v1 + 104) = a1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);

  return MEMORY[0x2822009F8](sub_26EE6259C, v4, v3);
}

uint64_t sub_26EE6259C()
{
  v1 = *(v0 + 104);

  if (v1 == 1)
  {
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v0 + 32);
    v6 = *(*(v0 + 16) + 152);
    MEMORY[0x274380B50](v2);
    v7 = sub_26EF38A7C();
    v6(v3, v7, v8);

    (*(v4 + 8))(v3, v5);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_26EE62684@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_26EF38AAC();
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  sub_26EECD5EC(v7, a3);
  type metadata accessor for VoiceRefreshViewModel(0);
  sub_26EE67148(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel, &unk_26EF41418);
  v9 = sub_26EF3976C();
  v10 = sub_26EF394AC();
  v11 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7D68, &unk_26EF3F4D0) + 36));
  *v11 = v10;
  v11[1] = v9;
  v12 = sub_26EF3AE4C();
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7D58, &qword_26EF3F4C8);
  v16 = a3 + *(v15 + 36);
  sub_26EE82F84(v15);
  v17 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7D90, &unk_26EF3F4E0) + 36));
  *v17 = v12;
  v17[1] = v14;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7D40, &qword_26EF3F4C0);
  *(a3 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_26EE62864@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7138, &unk_26EF3DCC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32[-v5];
  v7 = sub_26EE17094();
  v8._object = 0x800000026EF459E0;
  v9 = v7 & 1;
  v8._countAndFlagsBits = 0xD000000000000018;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v8, v9, 0);
  v10 = a1[9];
  v41 = a1[8];
  v42 = v10;
  v43[0] = a1[10];
  *(v43 + 9) = *(a1 + 169);
  v11 = a1[5];
  v37 = a1[4];
  v38 = v11;
  v12 = a1[7];
  v39 = a1[6];
  v40 = v12;
  v13 = a1[1];
  v33 = *a1;
  v34 = v13;
  v14 = a1[3];
  v35 = a1[2];
  v36 = v14;
  sub_26EE62B04();
  v15 = sub_26EF3961C();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  v16 = swift_allocObject();
  v17 = a1[9];
  v16[9] = a1[8];
  v16[10] = v17;
  v16[11] = a1[10];
  *(v16 + 185) = *(a1 + 169);
  v18 = a1[5];
  v16[5] = a1[4];
  v16[6] = v18;
  v19 = a1[7];
  v16[7] = a1[6];
  v16[8] = v19;
  v20 = a1[1];
  v16[1] = *a1;
  v16[2] = v20;
  v21 = a1[3];
  v16[3] = a1[2];
  v16[4] = v21;
  sub_26EE60C88(a1, v32);
  sub_26EF3874C();
  v22 = a1[9];
  v41 = a1[8];
  v42 = v22;
  v43[0] = a1[10];
  *(v43 + 9) = *(a1 + 169);
  v23 = a1[5];
  v37 = a1[4];
  v38 = v23;
  v24 = a1[7];
  v39 = a1[6];
  v40 = v24;
  v25 = a1[1];
  v33 = *a1;
  v34 = v25;
  v26 = a1[3];
  v35 = a1[2];
  v36 = v26;
  v27 = sub_26EE6369C();
  KeyPath = swift_getKeyPath();
  v29 = swift_allocObject();
  *(v29 + 16) = (v27 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7C08, &qword_26EF3F0C8);
  v31 = (a2 + *(result + 36));
  *v31 = KeyPath;
  v31[1] = sub_26EE274EC;
  v31[2] = v29;
  return result;
}

uint64_t sub_26EE62B04()
{
  v1 = *(v0 + 5);
  v2 = *(v0 + 6);
  v3 = *(v0 + 56);
  v4 = *(v0 + 8);
  v5 = *(v0 + 9);
  v6 = *(v0 + 80);
  v7 = *(v0 + 18);
  type metadata accessor for VBCloudSyncModel();
  sub_26EE67148(&qword_2806C7C18, type metadata accessor for VBCloudSyncModel, &protocol conformance descriptor for VBCloudSyncModel);
  sub_26EF3976C();
  v8 = VBCloudSyncModel.hasDevicePasscode.getter();

  if ((v8 & 1) == 0)
  {
    v12 = sub_26EE17094();
    v14 = 0xD000000000000031;
    v15 = 0x800000026EF458C0;
LABEL_10:
    v29 = 0;
    v30 = 0;

    return TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(*&v14, v12 & 1, *&v29)._countAndFlagsBits;
  }

  v33 = *v0;
  v34 = v0[1];
  v35 = *(v0 + 4);
  v36 = v2;
  LOBYTE(v37) = v3;
  *(&v37 + 1) = *(v0 + 57);
  HIDWORD(v37) = *(v0 + 15);
  v38[0] = v6;
  *&v38[48] = v0[8];
  *&v38[33] = *(v0 + 113);
  *&v38[17] = *(v0 + 97);
  *&v38[1] = *(v0 + 81);
  LOBYTE(v41) = *(v0 + 184);
  v40 = *(v0 + 168);
  v39 = *(v0 + 152);
  v9 = *(sub_26EE60F30() + 16);

  if (v9 < sub_26EF3899C())
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel(0);
    sub_26EE67148(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
    v10 = sub_26EF3976C();
    v11 = sub_26EF0FFFC();

    v12 = sub_26EE17094();
    if (v11)
    {
      v13 = "VB_CONNECT_MICROPHONE_FOOTER";
      v14 = 0xD000000000000025;
    }

    else
    {
      v13 = "VB_VOICE_LIMIT_FOOTER";
      v14 = 0xD00000000000001CLL;
    }

    v15 = v13 | 0x8000000000000000;
    goto LABEL_10;
  }

  v16 = sub_26EE17094();
  v17._object = 0x800000026EF45900;
  v18 = v16 & 1;
  v17._countAndFlagsBits = 0xD000000000000015;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v17, v18, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_26EF3C6B0;
  v20 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  [v7 setNumberStyle_];
  v21 = [v7 stringFromNumber_];
  if (v21)
  {
    v22 = v21;
    v23 = sub_26EF3B0FC();
    v25 = v24;
  }

  else
  {

    v23 = 0;
    v25 = 0xE000000000000000;
  }

  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 64) = sub_26EE1EFBC(v26, v27, v28);
  *(v19 + 32) = v23;
  *(v19 + 40) = v25;
  v32 = sub_26EF3B10C();

  return v32;
}

uint64_t sub_26EE62E8C(_OWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_26EF3B30C();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_26EF3B2DC();
  sub_26EE60C88(a1, v15);
  v6 = sub_26EF3B2CC();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  v9 = a1[9];
  *(v7 + 160) = a1[8];
  *(v7 + 176) = v9;
  *(v7 + 192) = a1[10];
  *(v7 + 201) = *(a1 + 169);
  v10 = a1[5];
  *(v7 + 96) = a1[4];
  *(v7 + 112) = v10;
  v11 = a1[7];
  *(v7 + 128) = a1[6];
  *(v7 + 144) = v11;
  v12 = a1[1];
  *(v7 + 32) = *a1;
  *(v7 + 48) = v12;
  v13 = a1[3];
  *(v7 + 64) = a1[2];
  *(v7 + 80) = v13;
  sub_26EE2C388(0, 0, v4, &unk_26EF3F4A8, v7);
}

uint64_t sub_26EE62FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_26EF3B2DC();
  v4[3] = sub_26EF3B2CC();
  v6 = sub_26EF3B29C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_26EE63084, v6, v5);
}

uint64_t sub_26EE63084()
{
  type metadata accessor for VBAuthenticationChallengeModel();
  sub_26EE67148(&qword_2806C7D18, type metadata accessor for VBAuthenticationChallengeModel, &protocol conformance descriptor for VBAuthenticationChallengeModel);
  v0[6] = sub_26EF3976C();
  v1._object = 0x800000026EF45A00;
  v1._countAndFlagsBits = 0xD000000000000024;
  v2 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v1, 1, 0);
  v0[7] = v2._object;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_26EE631C4;

  return VBAuthenticationChallengeModel.presentAuthenticationChallenge(localizedReason:)(v2._countAndFlagsBits, v2._object);
}

uint64_t sub_26EE631C4(char a1)
{
  v2 = *v1;
  *(*v1 + 72) = a1;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);

  return MEMORY[0x2822009F8](sub_26EE6332C, v4, v3);
}

uint64_t sub_26EE6332C()
{
  v1 = *(v0 + 72);

  if (v1 == 1)
  {
    sub_26EE633A0();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26EE633A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v18 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9CA0, &qword_26EF3F100);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v18 - v5;
  v8 = *v0;
  v7 = v0[1];
  v9 = v0[2];
  v18[1] = v0[3];
  v18[2] = v9;
  type metadata accessor for VoiceBankingNavigationModel(0);
  sub_26EE67148(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel, &protocol conformance descriptor for VoiceBankingNavigationModel);
  sub_26EF3976C();
  v10 = VoiceBankingNavigationModel.itemPath.modify(&v20);
  *v11 = MEMORY[0x277D84F90];

  (v10)(&v20, 0);

  v20 = v8;
  v21 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7B48, &qword_26EF41080);
  sub_26EF3AAFC();
  v12 = v19;
  v13 = sub_26EF38E9C();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  sub_26EED6AEC(v6);

  v20 = v8;
  v21 = v7;
  sub_26EF3AAFC();
  v14 = v19;
  v15 = sub_26EF37EDC();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  v16 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceID;
  swift_beginAccess();
  sub_26EE65A2C(v3, v14 + v16);
  swift_endAccess();

  sub_26EF3976C();
  v20 = 0;
  LOBYTE(v21) = 1;
  VoiceBankingNavigationModel.initialViewType.setter(&v20);

  sub_26EF3976C();
  VoiceBankingNavigationModel.presentManagerRootView.setter(1);
}

uint64_t sub_26EE6369C()
{
  if (sub_26EE648D0())
  {
    return 0;
  }

  type metadata accessor for VBCloudSyncModel();
  sub_26EE67148(&qword_2806C7C18, type metadata accessor for VBCloudSyncModel, &protocol conformance descriptor for VBCloudSyncModel);
  sub_26EF3976C();
  v0 = VBCloudSyncModel.hasDevicePasscode.getter();

  if ((v0 & 1) == 0)
  {
    return 0;
  }

  v1 = *(sub_26EE60F30() + 16);

  if (v1 >= sub_26EF3899C())
  {
    return 0;
  }

  type metadata accessor for VoiceBankingAudioServiceViewModel(0);
  sub_26EE67148(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel, &unk_26EF44398);
  v2 = sub_26EF3976C();
  v3 = sub_26EF0FFFC();

  return v3 & 1;
}

uint64_t sub_26EE638E0@<X0>(uint64_t a1@<X8>)
{
  v8 = sub_26EE62B04();
  sub_26EE12538(v8, v2, v3);
  result = sub_26EF3A5DC();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

unint64_t sub_26EE63944()
{
  result = qword_2806C7C10;
  if (!qword_2806C7C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7C08, &qword_26EF3F0C8);
    sub_26EE67148(&qword_2806C7100, MEMORY[0x277CE7690], MEMORY[0x277CE7688]);
    sub_26EE154C8(&qword_2806C7020, &qword_2806C7028, &unk_26EF3F090, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7C10);
  }

  return result;
}

uint64_t sub_26EE63A2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7C28, &qword_26EF3F0D8);
  sub_26EF3AB1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7CE0, &qword_26EF3F458);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7C48, &qword_26EF3F0E8);
  sub_26EE66394();
  sub_26EE154C8(&qword_2806C7C40, &qword_2806C7C48, &qword_26EF3F0E8, MEMORY[0x277CDF068]);
  sub_26EE66480();
  return sub_26EF3ACFC();
}

unint64_t sub_26EE63B50()
{
  result = qword_2806C7C38;
  if (!qword_2806C7C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7C30, &qword_26EF3F0E0);
    sub_26EE154C8(&qword_2806C7C40, &qword_2806C7C48, &qword_26EF3F0E8, MEMORY[0x277CDF068]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7C38);
  }

  return result;
}

uint64_t sub_26EE63C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7D08, &qword_26EF3F460);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v14 - v5;
  sub_26EE13B88(a1, v14 - v5, &qword_2806C7D08, &qword_26EF3F460);
  sub_26EF3B2DC();
  v7 = sub_26EF3B2CC();
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v7;
  *(v9 + 24) = v10;
  sub_26EE66538(v6, v9 + v8);
  sub_26EE13B88(a1, v6, &qword_2806C7D08, &qword_26EF3F460);
  v11 = sub_26EF3B2CC();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  sub_26EE66538(v6, v12 + v8);
  sub_26EF3AC7C();
  v14[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7470, &qword_26EF3E1D0);
  sub_26EE154C8(&qword_2806C7478, &qword_2806C7470, &qword_26EF3E1D0, MEMORY[0x277CE1138]);
  return sub_26EF3ABCC();
}

uint64_t sub_26EE63E48@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_26EF38BBC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7D08, &qword_26EF3F460);
  MEMORY[0x274382CF0](v6);
  v7 = sub_26EF38B9C();
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7 & 1;
  return result;
}

uint64_t sub_26EE63F40(unsigned __int8 *a1)
{
  v1 = sub_26EF38BBC();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7D08, &qword_26EF3F460);
  MEMORY[0x274382CF0]();
  sub_26EF38B6C();
  (*(v2 + 16))(v5, v7, v1);
  sub_26EF3AC3C();
  return (*(v2 + 8))(v7, v1);
}

uint64_t sub_26EE64094@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26EF38BBC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7D08, &qword_26EF3F460);
  MEMORY[0x274382CF0]();
  sub_26EF38BAC();
  v7 = *(v3 + 8);
  v7(v5, v2);
  v8 = sub_26EF3B0BC();

  v9 = TTSUIAppImageForBundleID(v8);

  if (v9)
  {
    v9 = sub_26EF3AA7C();
  }

  MEMORY[0x274382CF0](v6);
  v10 = sub_26EF38B7C();
  v12 = v11;
  v13 = (v7)(v5, v2);
  v23[0] = v10;
  v23[1] = v12;
  sub_26EE12538(v13, v14, v15);
  v16 = sub_26EF3A5DC();
  v18 = v17;
  LOBYTE(v12) = v19;
  v21 = v20;

  LOBYTE(v12) = v12 & 1;
  sub_26EE13B20(v16, v18, v12);

  *a1 = v9;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18;
  *(a1 + 24) = v12;
  *(a1 + 32) = v21;
  sub_26EE12ABC(v16, v18, v12);
}

uint64_t sub_26EE642A4@<X0>(char *a1@<X8>)
{
  v43 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7178, &qword_26EF3DD70);
  v45 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v42 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v41 = &v37 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v44 = &v37 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v40 = &v37 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v39 = &v37 - v11;
  MEMORY[0x28223BE20](v10);
  v38 = &v37 - v12;
  sub_26EF39EAC();
  sub_26EF3B2DC();
  v13 = sub_26EF3B2CC();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  v16 = sub_26EF3B2CC();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  sub_26EF3AC7C();
  sub_26EF3ABDC();
  sub_26EF39EAC();
  v18 = sub_26EF3B2CC();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v15;
  v20 = sub_26EF3B2CC();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v15;
  sub_26EF3AC7C();
  v22 = v39;
  sub_26EF3ABDC();
  sub_26EF39EAC();
  v23 = sub_26EF3B2CC();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = v15;
  v25 = sub_26EF3B2CC();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v15;
  sub_26EF3AC7C();
  v27 = v40;
  sub_26EF3ABDC();
  v28 = v44;
  v29 = *(v45 + 16);
  v30 = v38;
  v29(v44, v38, v1);
  v31 = v41;
  v29(v41, v22, v1);
  v32 = v42;
  v29(v42, v27, v1);
  v33 = v43;
  v29(v43, v28, v1);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7CD8, &qword_26EF3F450);
  v29(&v33[*(v34 + 48)], v31, v1);
  v29(&v33[*(v34 + 64)], v32, v1);
  v35 = *(v45 + 8);
  v35(v27, v1);
  v35(v22, v1);
  v35(v30, v1);
  v35(v32, v1);
  v35(v31, v1);
  return (v35)(v44, v1);
}

void sub_26EE64808(uint64_t (*a1)(void)@<X0>, _BYTE *a2@<X8>)
{
  sub_26EE660E4();
  v4 = sub_26EF3B48C();
  LOBYTE(a1) = a1();

  *a2 = a1 & 1;
}

void sub_26EE64860(unsigned __int8 *a1, void (*a2)(uint64_t))
{
  v3 = *a1;
  sub_26EE660E4();
  v4 = sub_26EF3B48C();
  a2(v3);
}

uint64_t sub_26EE648D0()
{
  v0 = sub_26EF38DBC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VoiceRefreshViewModel(0);
  sub_26EE67148(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel, &unk_26EF41418);
  sub_26EF3976C();
  v4 = sub_26EEA6568();

  v6 = 0;
  v7 = *(v4 + 16);
  while (1)
  {
    v8 = v6;
    if (v7 == v6)
    {
LABEL_5:

      return v7 != v8;
    }

    if (v6 >= *(v4 + 16))
    {
      break;
    }

    (*(v1 + 16))(v3, v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v6++, v0);
    v9 = sub_26EF38CFC();
    result = (*(v1 + 8))(v3, v0);
    if (v9)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26EE64A98(uint64_t a1, uint64_t a2)
{
  v73 = sub_26EF391EC();
  v3 = *(v73 - 8);
  v4 = MEMORY[0x28223BE20](v73);
  v59 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v58 = &v53 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v72 = &v53 - v9;
  MEMORY[0x28223BE20](v8);
  v71 = &v53 - v10;
  v64 = sub_26EF38DBC();
  v11 = *(v64 - 8);
  v12 = MEMORY[0x28223BE20](v64);
  v57 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v56 = &v53 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v63 = &v53 - v17;
  MEMORY[0x28223BE20](v16);
  v70 = &v53 - v18;
  type metadata accessor for VoiceRefreshViewModel(0);
  sub_26EE67148(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel, &unk_26EF41418);
  sub_26EF3976C();
  v19 = sub_26EEA6568();

  v75 = a1;
  result = sub_26EE65474(sub_26EE66174, v74, v19);
  v21 = result;
  v22 = *(result + 16);
  v65 = result;
  v66 = v11;
  v69 = v22;
  if (v22)
  {
    v23 = 0;
    v62 = (v11 + 16);
    v54 = v3;
    v61 = (v3 + 8);
    v55 = (v11 + 8);
    v24 = (v11 + 32);
    v25 = MEMORY[0x277D84F90];
    v26 = v64;
    while (1)
    {
      if (v23 >= *(v21 + 16))
      {
        __break(1u);
        goto LABEL_37;
      }

      v68 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v67 = *(v11 + 72);
      (*(v11 + 16))(v70, v21 + v68 + v67 * v23, v26);
      sub_26EF38D1C();
      sub_26EF391BC();
      sub_26EE67148(&qword_2806C7A60, MEMORY[0x277D70650], MEMORY[0x277D70668]);
      sub_26EF3B1DC();
      sub_26EF3B1DC();
      if (v78 == v76 && v79 == v77)
      {
        break;
      }

      v60 = sub_26EF3B82C();
      v29 = *v61;
      v30 = v73;
      (*v61)(v72, v73);
      v29(v71, v30);

      if (v60)
      {
        goto LABEL_10;
      }

      v26 = v64;
      result = (*v55)(v70, v64);
      v21 = v65;
      v11 = v66;
LABEL_4:
      if (v69 == ++v23)
      {
        goto LABEL_17;
      }
    }

    v27 = *v61;
    v28 = v73;
    (*v61)(v72, v73);
    v27(v71, v28);

LABEL_10:
    v31 = *v24;
    v26 = v64;
    (*v24)(v63, v70, v64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80 = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_26EE66130(0, *(v25 + 16) + 1, 1);
      v26 = v64;
      v25 = v80;
    }

    v21 = v65;
    v34 = *(v25 + 16);
    v33 = *(v25 + 24);
    if (v34 >= v33 >> 1)
    {
      sub_26EE66130((v33 > 1), v34 + 1, 1);
      v26 = v64;
      v25 = v80;
    }

    *(v25 + 16) = v34 + 1;
    result = (v31)(v25 + v68 + v34 * v67, v63, v26);
    v11 = v66;
    goto LABEL_4;
  }

  if (!AXDeviceIsWatch())
  {
    goto LABEL_34;
  }

  v54 = v3;
  v25 = MEMORY[0x277D84F90];
  v26 = v64;
LABEL_17:
  v35 = *(v25 + 16);

  if (v35 && (result = AXDeviceSupportsAppleIntelligence(), result) && (result = AXDeviceIsWatch(), (result & 1) == 0))
  {
LABEL_34:

    return 1;
  }

  else if (v69)
  {
    v36 = 0;
    v37 = v66;
    v68 = v66 + 16;
    v67 = (v54 + 8);
    v62 = (v66 + 8);
    v63 = (v66 + 32);
    v70 = MEMORY[0x277D84F90];
    v38 = v56;
    while (v36 < *(v21 + 16))
    {
      v72 = ((*(v37 + 80) + 32) & ~*(v37 + 80));
      v71 = *(v37 + 72);
      (*(v37 + 16))(v38, &v72[v21 + v71 * v36], v26);
      v39 = v58;
      v40 = v26;
      sub_26EF38D1C();
      v41 = v59;
      sub_26EF391BC();
      sub_26EE67148(&qword_2806C7CC8, MEMORY[0x277D70650], MEMORY[0x277D70660]);
      v42 = v38;
      v43 = v73;
      v44 = sub_26EF3B0AC();
      v45 = *v67;
      (*v67)(v41, v43);
      v45(v39, v43);
      if (v44)
      {
        result = (*v62)(v42, v40);
        v26 = v40;
        v38 = v42;
        v21 = v65;
      }

      else
      {
        v46 = *v63;
        (*v63)(v57, v42, v40);
        v47 = v70;
        v48 = swift_isUniquelyReferenced_nonNull_native();
        v49 = v47;
        v78 = v47;
        if (v48)
        {
          v26 = v40;
        }

        else
        {
          sub_26EE66130(0, *(v47 + 2) + 1, 1);
          v26 = v64;
          v49 = v78;
        }

        v21 = v65;
        v51 = *(v49 + 2);
        v50 = *(v49 + 3);
        if (v51 >= v50 >> 1)
        {
          sub_26EE66130((v50 > 1), v51 + 1, 1);
          v26 = v64;
          v49 = v78;
        }

        *(v49 + 2) = v51 + 1;
        v70 = v49;
        result = v46(&v72[v49 + v51 * v71], v57, v26);
        v38 = v56;
      }

      ++v36;
      v37 = v66;
      if (v69 == v36)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    __break(1u);
  }

  else
  {
    v70 = MEMORY[0x277D84F90];
LABEL_33:

    v52 = *(v70 + 2);

    return v52 != 0;
  }

  return result;
}

uint64_t sub_26EE65340(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_26EF37EDC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v15 - v10;
  v12 = a3(v9);
  MEMORY[0x274380B50](v12);
  LOBYTE(a3) = sub_26EF37EAC();
  v13 = *(v5 + 8);
  v13(v8, v4);
  v13(v11, v4);
  return a3 & 1;
}

uint64_t sub_26EE65474(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = sub_26EF38DBC();
  v7 = MEMORY[0x28223BE20](v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = MEMORY[0x277D84F90];
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26EE66130(0, *(v23 + 16) + 1, 1);
          v23 = v40;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_26EE66130((v25 > 1), v26 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
LABEL_14:

    return v37;
  }

  return result;
}

uint64_t sub_26EE65748@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v20 = MEMORY[0x277D84A98];
  v21 = v4;
  v22 = MEMORY[0x277D84AA8];
  v23 = v5;
  v6 = sub_26EF3A51C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v16[-v11];
  v17 = v4;
  v18 = v5;
  v19 = v2;
  sub_26EF3A50C();
  swift_getWitnessTable();
  v13 = *(v7 + 16);
  v13(v12, v10, v6);
  v14 = *(v7 + 8);
  v14(v10, v6);
  v13(a2, v12, v6);
  return (v14)(v12, v6);
}

uint64_t sub_26EE658F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 16);
  v8(v7);
  (v8)(a3, v7, a2);
  return (*(v5 + 8))(v7, a2);
}

void *sub_26EE659E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26EE661B8(a1, a2, a3, *v3, &qword_2806C7CC0, &qword_26EF3F438, MEMORY[0x277D70530]);
  *v3 = result;
  return result;
}

uint64_t sub_26EE65A2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE65A9C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

__n128 __swift_memcpy185_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_26EE65C90(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 185))
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

uint64_t sub_26EE65CD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 184) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 185) = 1;
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

    *(result + 185) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26EE65D74()
{
  result = qword_2806C7C60;
  if (!qword_2806C7C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7B70, &qword_26EF3F048);
    sub_26EE65E2C();
    sub_26EE154C8(&qword_2806C7C80, &qword_2806C7C88, &qword_26EF3F410, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7C60);
  }

  return result;
}

unint64_t sub_26EE65E2C()
{
  result = qword_2806C7C68;
  if (!qword_2806C7C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7AF8, &qword_26EF3EFC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7B08, &qword_26EF3EFD0);
    type metadata accessor for VoiceBankingSession(255);
    sub_26EE60DA8();
    sub_26EE67148(&qword_2806C65C0, type metadata accessor for VoiceBankingSession, &protocol conformance descriptor for VoiceBankingSession);
    swift_getOpaqueTypeConformance2();
    sub_26EE154C8(&qword_2806C7C70, &qword_2806C7C78, &qword_26EF3F408, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7C68);
  }

  return result;
}

unint64_t sub_26EE65F70()
{
  result = qword_2806C7CA0;
  if (!qword_2806C7CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7CA8, &qword_26EF3F428);
    sub_26EE65FF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7CA0);
  }

  return result;
}

unint64_t sub_26EE65FF4()
{
  result = qword_2806C7CB0;
  if (!qword_2806C7CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7C20, &qword_26EF3F0D0);
    sub_26EE63B50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7CB0);
  }

  return result;
}

unint64_t sub_26EE660E4()
{
  result = qword_2806C9C00;
  if (!qword_2806C9C00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2806C9C00);
  }

  return result;
}

void *sub_26EE66130(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26EE661B8(a1, a2, a3, *v3, &qword_2806C7CD0, &unk_26EF3F440, MEMORY[0x277D705D8]);
  *v3 = result;
  return result;
}

void *sub_26EE661B8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

unint64_t sub_26EE66394()
{
  result = qword_2806C7CE8;
  if (!qword_2806C7CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7CE0, &qword_26EF3F458);
    sub_26EE154C8(&qword_2806C7CF0, &qword_2806C7AF0, &unk_26EF3EFB0, MEMORY[0x277D83960]);
    sub_26EE154C8(&qword_2806C7CF8, &qword_2806C7AF0, &unk_26EF3EFB0, MEMORY[0x277D83980]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7CE8);
  }

  return result;
}

unint64_t sub_26EE66480()
{
  result = qword_2806C7D00;
  if (!qword_2806C7D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7D08, &qword_26EF3F460);
    sub_26EE67148(&qword_2806C7D10, MEMORY[0x277D70560], MEMORY[0x277D70568]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7D00);
  }

  return result;
}

uint64_t sub_26EE66538(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7D08, &qword_26EF3F460);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE665A8@<X0>(_BYTE *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7D08, &qword_26EF3F460);

  return sub_26EE63E48(a1);
}

uint64_t objectdestroy_82Tm()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7D08, &qword_26EF3F460) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[10];
  v6 = sub_26EF38BBC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EE66728(unsigned __int8 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7D08, &qword_26EF3F460);

  return sub_26EE63F40(a1);
}

__n128 sub_26EE667A4@<Q0>(uint64_t a2@<X8>)
{
  v3 = sub_26EF39E4C();
  sub_26EE64094(&v8);
  v4 = v9;
  v5 = v10;
  v6 = v11;
  result = v8;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 40) = v4;
  *(a2 + 48) = v5;
  *(a2 + 56) = v6;
  return result;
}

uint64_t sub_26EE66828()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26EE05D7C;

  return sub_26EE62FEC(v2, v3, v4, v0 + 32);
}

uint64_t sub_26EE668B8()
{
  v1 = *(v0 + 24);
  v14 = **(v0 + 16);
  v2 = swift_allocObject();
  v3 = v1[3];
  v5 = *v1;
  v4 = v1[1];
  v2[3] = v1[2];
  v2[4] = v3;
  v2[1] = v5;
  v2[2] = v4;
  v6 = v1[7];
  v8 = v1[4];
  v7 = v1[5];
  v2[7] = v1[6];
  v2[8] = v6;
  v2[5] = v8;
  v2[6] = v7;
  v10 = v1[9];
  v9 = v1[10];
  v11 = v1[8];
  *(v2 + 185) = *(v1 + 169);
  v2[10] = v10;
  v2[11] = v9;
  v2[9] = v11;

  sub_26EE60C88(v1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7D20, &qword_26EF412D0);
  sub_26EF37EDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7BC0, &qword_26EF3F078);
  sub_26EE154C8(&qword_2806C7D28, &qword_2806C7D20, &qword_26EF412D0, MEMORY[0x277D83980]);
  sub_26EE61418();
  sub_26EE67148(&qword_2806C7D30, MEMORY[0x277D70530], MEMORY[0x277D70548]);
  return sub_26EF3ACFC();
}

uint64_t objectdestroyTm_4()
{

  sub_26EE05CA8(*(v0 + 32), *(v0 + 40));
  sub_26EE60C70(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  sub_26EE05CA8(*(v0 + 80), *(v0 + 88));
  sub_26EE05CA8(*(v0 + 104), *(v0 + 112));

  sub_26EE05CA8(*(v0 + 184), *(v0 + 192));

  return MEMORY[0x2821FE8E8](v0, 201, 7);
}

uint64_t sub_26EE66B40()
{
  v1 = sub_26EF38AAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 201) & ~v3;
  v5 = *(v2 + 64);

  sub_26EE05CA8(*(v0 + 32), *(v0 + 40));
  sub_26EE60C70(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  sub_26EE05CA8(*(v0 + 80), *(v0 + 88));
  sub_26EE05CA8(*(v0 + 104), *(v0 + 112));

  sub_26EE05CA8(*(v0 + 184), *(v0 + 192));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26EE66C70()
{
  v1 = *(sub_26EF38AAC() - 8);
  v2 = v0 + ((*(v1 + 80) + 201) & ~*(v1 + 80));

  return sub_26EE61FBC((v0 + 16), v2);
}

unint64_t sub_26EE66CDC()
{
  result = qword_2806C7D48;
  if (!qword_2806C7D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7D40, &qword_26EF3F4C0);
    sub_26EE66D94();
    sub_26EE154C8(&qword_2806C6B98, &qword_2806C6BA0, &qword_26EF41DF0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7D48);
  }

  return result;
}

unint64_t sub_26EE66D94()
{
  result = qword_2806C7D50;
  if (!qword_2806C7D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7D58, &qword_26EF3F4C8);
    sub_26EE66E4C();
    sub_26EE154C8(&qword_2806C7D88, &qword_2806C7D90, &unk_26EF3F4E0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7D50);
  }

  return result;
}

unint64_t sub_26EE66E4C()
{
  result = qword_2806C7D60;
  if (!qword_2806C7D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7D68, &unk_26EF3F4D0);
    sub_26EE67148(&qword_2806C7D70, type metadata accessor for VoiceCell, &unk_26EF42350);
    sub_26EE154C8(&qword_2806C7D78, &qword_2806C7D80, &qword_26EF41150, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7D60);
  }

  return result;
}

uint64_t sub_26EE66F44()
{
  v1 = sub_26EF38AAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 217) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  sub_26EE05CA8(*(v0 + 48), *(v0 + 56));
  sub_26EE60C70(*(v0 + 72), *(v0 + 80), *(v0 + 88));
  sub_26EE05CA8(*(v0 + 96), *(v0 + 104));
  sub_26EE05CA8(*(v0 + 120), *(v0 + 128));

  sub_26EE05CA8(*(v0 + 200), *(v0 + 208));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26EE6707C()
{
  v2 = *(sub_26EF38AAC() - 8);
  v3 = (*(v2 + 80) + 217) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE15538;

  return sub_26EE621FC(v4, v5, v6, v0 + 32, v0 + v3);
}

uint64_t sub_26EE67148(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_6Tm()
{
  swift_unknownObjectRelease();

  sub_26EE05CA8(*(v0 + 48), *(v0 + 56));
  sub_26EE60C70(*(v0 + 72), *(v0 + 80), *(v0 + 88));
  sub_26EE05CA8(*(v0 + 96), *(v0 + 104));
  sub_26EE05CA8(*(v0 + 120), *(v0 + 128));

  sub_26EE05CA8(*(v0 + 200), *(v0 + 208));

  return MEMORY[0x2821FE8E8](v0, 217, 7);
}

uint64_t sub_26EE67240()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26EE15538;

  return sub_26EE5FD4C(v2, v3, v4, v0 + 32);
}

uint64_t sub_26EE67304(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7C90, &qword_26EF3F418);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id CoreSynthesisVoicePickable.__allocating_init(voice:fetcher:locale:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v27 = a2;
  v28 = a3;
  v6 = sub_26EF382EC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(v4);
  v11 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable__fetcher;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  sub_26EF3803C();
  v12 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable__voice;
  v13 = sub_26EF383FC();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v10[v12], a1, v13);
  sub_26EF383BC();
  v15 = (*(v7 + 88))(v9, v6);
  if (v15 == *MEMORY[0x277D702A0])
  {
    (*(v7 + 96))(v9, v6);
    v16 = *v9;
    v17 = 1;
LABEL_7:
    v18 = &v10[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable__downloadState];
    *v18 = v16;
    v18[4] = v17;
    v19 = v27;
    MEMORY[0x274384370](&v10[v11]);
    swift_unknownObjectWeakInit();

    v20 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable__locale;
    v21 = sub_26EF37FEC();
    v22 = *(v21 - 8);
    v23 = &v10[v20];
    v24 = v28;
    (*(v22 + 16))(v23, v28, v21);
    v29.receiver = v10;
    v29.super_class = v4;
    v25 = objc_msgSendSuper2(&v29, sel_init);
    (*(v22 + 8))(v24, v21);
    (*(v14 + 8))(a1, v13);

    return v25;
  }

  if (v15 == *MEMORY[0x277D70298])
  {
    v16 = 0;
    v17 = 2;
    goto LABEL_7;
  }

  if (v15 == *MEMORY[0x277D70290])
  {
    v17 = 2;
    v16 = 1;
    goto LABEL_7;
  }

  result = sub_26EF3B81C();
  __break(1u);
  return result;
}

id CoreSynthesisVoicePickable.init(voice:fetcher:locale:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = sub_26EE73004(a1, a2, a3);

  return v4;
}

void sub_26EE67710(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1)
    {
      type metadata accessor for CoreSynthesisVoicePickableFetcher(0);
      v5 = v4;
      v6 = sub_26EF3B5AC();

      if ((v6 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_6:
      swift_unknownObjectWeakAssign();

      return;
    }
  }

  else if (!a1)
  {
    goto LABEL_6;
  }

LABEL_8:
  KeyPath = swift_getKeyPath();
  v8 = MEMORY[0x28223BE20](KeyPath);
  (*((*MEMORY[0x277D85000] & *v1) + 0x1A0))(v8, sub_26EE732EC);
}

uint64_t sub_26EE67884(char *a1)
{
  v2 = v1;
  v4 = sub_26EF383FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable__voice;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, &v2[v8], v4);
  sub_26EE73470(&qword_2806C7DF8, MEMORY[0x277D702F8], MEMORY[0x277D70308]);
  v15 = a1;
  LOBYTE(a1) = sub_26EF3B0AC();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v15, v4);
    swift_beginAccess();
    (*(v5 + 40))(&v2[v8], v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v12 = MEMORY[0x28223BE20](KeyPath);
    v13 = v15;
    *(&v15 - 2) = v2;
    *(&v15 - 1) = v13;
    (*((*MEMORY[0x277D85000] & *v2) + 0x1A0))(v12, sub_26EE7336C);
  }

  return (v10)(v15, v4);
}

uint64_t sub_26EE67B18(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = v1 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable__downloadState;
  v5 = swift_beginAccess();
  sub_26EE733B4(v5, v6, v7);
  result = sub_26EF3B0AC();
  if (result)
  {
    *v4 = v2;
    v4[4] = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x28223BE20](KeyPath);
    (*((*MEMORY[0x277D85000] & *v1) + 0x1A0))(v10, sub_26EE73408);
  }

  return result;
}

uint64_t sub_26EE67C84(char *a1)
{
  v2 = v1;
  v4 = sub_26EF37FEC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable__locale;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, &v2[v8], v4);
  sub_26EE73470(&qword_2806C7E08, MEMORY[0x277CC9788], MEMORY[0x277CC97A0]);
  v15 = a1;
  LOBYTE(a1) = sub_26EF3B0AC();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v15, v4);
    swift_beginAccess();
    (*(v5 + 40))(&v2[v8], v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v12 = MEMORY[0x28223BE20](KeyPath);
    v13 = v15;
    *(&v15 - 2) = v2;
    *(&v15 - 1) = v13;
    (*((*MEMORY[0x277D85000] & *v2) + 0x1A0))(v12, sub_26EE734B8);
  }

  return (v10)(v15, v4);
}

void (*sub_26EE67F18(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable__fetcher;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_26EE67FB0;
}

void sub_26EE67FB0(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_26EE6802C()
{
  swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v0) + 0x198))();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_26EE680C8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x98))();
  *a2 = result;
  return result;
}

uint64_t sub_26EE68124(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xA0);
  v4 = *a1;
  return v3(v2);
}

uint64_t (*sub_26EE6818C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v1) + 0x198))(KeyPath);

  v4[5] = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_26EE73470(&qword_2806C7E10, type metadata accessor for CoreSynthesisVoicePickable, &protocol conformance descriptor for CoreSynthesisVoicePickable);
  sub_26EF3802C();

  v4[7] = sub_26EE67F18(v4);
  return sub_26EE682EC;
}

uint64_t sub_26EE683D4(uint64_t a1, void **a2)
{
  v4 = sub_26EF383FC();
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*((*MEMORY[0x277D85000] & **a2) + 0xD0))(v6);
}

uint64_t (*sub_26EE684D0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v1) + 0x198))(KeyPath);

  v4[5] = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_26EE73470(&qword_2806C7E10, type metadata accessor for CoreSynthesisVoicePickable, &protocol conformance descriptor for CoreSynthesisVoicePickable);
  sub_26EF3802C();

  v4[7] = sub_26EE682F8(v4);
  return sub_26EE68630;
}

uint64_t sub_26EE6863C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v108 = a1;
  v3 = sub_26EF3821C();
  v94 = *(v3 - 8);
  v95 = v3;
  MEMORY[0x28223BE20](v3);
  v93 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_26EF3824C();
  v100 = *(v102 - 8);
  v5 = MEMORY[0x28223BE20](v102);
  v97 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v99 = &v92 - v8;
  MEMORY[0x28223BE20](v7);
  v101 = &v92 - v9;
  v10 = sub_26EF37FEC();
  MEMORY[0x28223BE20](v10 - 8);
  v107 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26EF383AC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v92 - v17;
  v19 = sub_26EF383FC();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v96 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v98 = &v92 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v92 - v26;
  v28 = *((*MEMORY[0x277D85000] & *v1) + 0xC8);
  v103 = (*MEMORY[0x277D85000] & *v1) + 200;
  v106 = v28;
  v28(v25);
  sub_26EF383CC();
  v30 = *(v20 + 8);
  v29 = (v20 + 8);
  v104 = v19;
  v105 = v30;
  v30(v27, v19);
  sub_26EF3838C();
  sub_26EE73470(&qword_2806C7E18, MEMORY[0x277D702B8], MEMORY[0x277D702C0]);
  v31 = sub_26EF3B63C();
  v32 = *(v13 + 8);
  v32(v16, v12);
  v33 = (v32)(v18, v12);
  if (v31)
  {
    v34 = sub_26EE17094();
    v35._object = 0xEE006C616E6F7372;
    v36 = v34 & 1;
    v35._countAndFlagsBits = 0x65702E70756F7267;
    v37 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v35, v36, 0);
    countAndFlagsBits = v37._countAndFlagsBits;
    object = v37._object;
    v40 = v107;
    (*((*MEMORY[0x277D85000] & *v2) + 0x120))();
    LOBYTE(v111[0]) = 0;
LABEL_5:
    v47 = v108;
    v48 = countAndFlagsBits;
    v49 = object;
    v50 = 0;
    v51 = v40;
    v52 = 1;
    v53 = 0;
    return sub_26EE295F4(v48, v49, v50, v51, v52, v53, v111, v47);
  }

  v106(v33);
  sub_26EF383CC();
  v105(v27, v104);
  sub_26EF3837C();
  v41 = sub_26EF3B63C();
  v32(v16, v12);
  v42 = (v32)(v18, v12);
  if (v41)
  {
    v43 = sub_26EE17094();
    v44._object = 0xED000079746C6576;
    v45 = v43 & 1;
    v44._countAndFlagsBits = 0x6F6E2E70756F7267;
    v46 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v44, v45, 0);
    countAndFlagsBits = v46._countAndFlagsBits;
    object = v46._object;
    v40 = v107;
    (*((*MEMORY[0x277D85000] & *v2) + 0x120))();
    LOBYTE(v111[0]) = 1;
    goto LABEL_5;
  }

  v106(v42);
  sub_26EF383CC();
  v105(v27, v104);
  sub_26EF3836C();
  v54 = sub_26EF3B63C();
  v32(v16, v12);
  v55 = (v32)(v18, v12);
  if (v54)
  {
    v56 = sub_26EE17094() & 1;
    v57._countAndFlagsBits = 0x69732E70756F7267;
    v57._object = 0xEA00000000006972;
    v58 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v57, v56, 0);
    v59 = v107;
    (*((*MEMORY[0x277D85000] & *v2) + 0x120))();
    LOBYTE(v111[0]) = 2;
    v47 = v108;
    v48 = v58._countAndFlagsBits;
    v49 = v58._object;
    v50 = 1;
    v51 = v59;
  }

  else
  {
    v60 = v98;
    v92 = v2;
    v106(v55);
    sub_26EF382DC();
    v98 = v29;
    v105(v60, v104);
    v61 = v99;
    v62 = v100;
    (*(v100 + 104))(v99, *MEMORY[0x277D70258], v102);
    sub_26EE73470(&qword_2806C7E20, MEMORY[0x277D70260], MEMORY[0x277D70268]);
    sub_26EF3B1DC();
    sub_26EF3B1DC();
    if (v111[0] == v109 && v111[1] == v110)
    {
      v63 = 1;
    }

    else
    {
      v63 = sub_26EF3B82C();
    }

    v64 = *(v62 + 8);
    v65 = v102;
    v64(v61, v102);
    v64(v101, v65);

    v67 = v92;
    if (v63)
    {
      v68 = v107;
      (*((*MEMORY[0x277D85000] & *v92) + 0x120))(v66);
      LOBYTE(v111[0]) = 2;
      v48 = 0x636E6575716F6C45;
      v47 = v108;
      v49 = 0xE900000000000065;
      v50 = 1;
      v51 = v68;
    }

    else
    {
      v69 = v96;
      v106(v66);
      v70 = v97;
      sub_26EF382DC();
      v71 = v69;
      v72 = v104;
      v105(v71, v104);
      v73 = (*(v62 + 88))(v70, v65);
      v74 = v65;
      v75 = MEMORY[0x277D85000];
      if (v73 == *MEMORY[0x277D70238])
      {
        (*(v62 + 96))(v70, v74);
        v77 = v93;
        v76 = v94;
        v78 = v95;
        (*(v94 + 32))(v93, v70, v95);
        v79 = sub_26EF3820C();
        v81 = v80;
        v82 = *v75 & *v67;
        v83 = v107;
        (*(v82 + 288))();
        LOBYTE(v111[0]) = 2;
        sub_26EE295F4(v79, v81, 1, v83, 0, 1, v111, v108);
        return (*(v76 + 8))(v77, v78);
      }

      v85 = (v64)(v70, v74);
      v106(v85);
      v86 = sub_26EF3826C();
      v87 = v72;
      v89 = v88;
      v90 = (v105)(v27, v87);
      v91 = v107;
      (*((*v75 & *v67) + 0x120))(v90);
      LOBYTE(v111[0]) = 2;
      v47 = v108;
      v48 = v86;
      v49 = v89;
      v50 = 0;
      v51 = v91;
    }
  }

  v52 = 0;
  v53 = 1;
  return sub_26EE295F4(v48, v49, v50, v51, v52, v53, v111, v47);
}

uint64_t sub_26EE6917C()
{
  v1 = sub_26EF3824C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26EF3823C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_26EF383FC();
  v9 = *(v43 - 8);
  v10 = MEMORY[0x28223BE20](v43);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - v13;
  if (TTSIsInternalBuild())
  {
    v38 = v8;
    v39 = v6;
    v40 = v5;
    v15 = *((*MEMORY[0x277D85000] & *v0) + 0xC8);
    v42 = v1;
    v15();
    v16 = sub_26EF3829C();
    v41 = v4;
    v17 = v2;
    v19 = v18;
    v20 = *(v9 + 8);
    v21 = v14;
    v22 = v43;
    v23 = v20(v21, v43);
    v46 = v16;
    v47 = v19;
    v24 = v17;
    v25 = v41;
    v26 = v42;
    (v15)(v23);
    sub_26EF382DC();
    v20(v12, v22);
    if ((*(v24 + 88))(v25, v26) == *MEMORY[0x277D70240])
    {
      (*(v24 + 96))(v25, v26);
      v28 = v39;
      v27 = v40;
      v29 = v25;
      v30 = v38;
      (*(v39 + 32))(v38, v29, v40);
      sub_26EF3B40C();
      v31 = MEMORY[0x2743834C0]();
      v32 = *MEMORY[0x277CE7918];
      swift_beginAccess();
      v33 = *(v31 + v32);

      LOBYTE(v31) = sub_26EF3B3EC();
      if (v31)
      {
        v44 = 10272;
        v45 = 0xE200000000000000;
        v34 = sub_26EF3822C();
        MEMORY[0x274383240](v34);

        MEMORY[0x274383240](41, 0xE100000000000000);
        MEMORY[0x274383240](v44, v45);
      }

      (*(v28 + 8))(v30, v27);
    }

    else
    {
      (*(v24 + 8))(v25, v26);
    }

    return v46;
  }

  else
  {
    (*((*MEMORY[0x277D85000] & *v0) + 0xC8))();
    v35 = sub_26EF3829C();
    (*(v9 + 8))(v14, v43);
    return v35;
  }
}

unint64_t sub_26EE6960C(uint64_t (*a1)(uint64_t))
{
  v3 = sub_26EF383FC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*((*MEMORY[0x277D85000] & *v1) + 0xC8))(v5);
  v9 = a1(v8);
  (*(v4 + 8))(v7, v3);
  return v9 | ((HIDWORD(v9) & 1) << 32);
}

uint64_t sub_26EE697E4(uint64_t a1, void **a2)
{
  v4 = sub_26EF37FEC();
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x128))(v6);
}

uint64_t sub_26EE6991C@<X0>(uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v4) + 0x198))();

  v8 = *a2;
  swift_beginAccess();
  v9 = a3(0);
  return (*(*(v9 - 8) + 16))(a4, &v4[v8], v9);
}

uint64_t sub_26EE69A00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v7 = a3(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  (*(v8 + 16))(&v13 - v9, a2, v7);
  v11 = *a4;
  swift_beginAccess();
  (*(v8 + 40))(a1 + v11, v10, v7);
  return swift_endAccess();
}

uint64_t (*sub_26EE69B14(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v1) + 0x198))(KeyPath);

  v4[5] = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_26EE73470(&qword_2806C7E10, type metadata accessor for CoreSynthesisVoicePickable, &protocol conformance descriptor for CoreSynthesisVoicePickable);
  sub_26EF3802C();

  v4[7] = sub_26EE69728(v4);
  return sub_26EE69C74;
}

uint64_t sub_26EE69C98(uint64_t (*a1)(uint64_t))
{
  v3 = sub_26EF383FC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*((*MEMORY[0x277D85000] & *v1) + 0xC8))(v5);
  v9 = a1(v8);
  (*(v4 + 8))(v7, v3);
  return v9;
}

void *sub_26EE69E10@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x160))(&v5);
  v4 = BYTE4(v5);
  *a2 = v5;
  *(a2 + 4) = v4;
  return result;
}

uint64_t sub_26EE69E8C(int *a1, void **a2)
{
  v2 = *(a1 + 4);
  v3 = *a2;
  v5 = *a1;
  v6 = v2;
  return (*((*MEMORY[0x277D85000] & *v3) + 0x168))(&v5);
}

uint64_t sub_26EE69F04@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v1) + 0x198))();

  v3 = v1 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable__downloadState;
  result = swift_beginAccess();
  v5 = v3[4];
  *a1 = *v3;
  *(a1 + 4) = v5;
  return result;
}

uint64_t (*sub_26EE69FB8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v1) + 0x198))(KeyPath);

  v4[5] = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_26EE73470(&qword_2806C7E10, type metadata accessor for CoreSynthesisVoicePickable, &protocol conformance descriptor for CoreSynthesisVoicePickable);
  sub_26EF3802C();

  v4[7] = sub_26EE69DB0(v4);
  return sub_26EE6A118;
}

void sub_26EE6A124()
{
  v1 = v0;
  v2 = sub_26EF383AC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v9 = sub_26EF383FC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0xC8))(v11);
  sub_26EF383CC();
  (*(v10 + 8))(v13, v9);
  sub_26EF3839C();
  sub_26EE73470(&qword_2806C7E18, MEMORY[0x277D702B8], MEMORY[0x277D702C0]);
  v15 = sub_26EF3B63C();
  v16 = *(v3 + 8);
  v16(v6, v2);
  v17 = (v16)(v8, v2);
  if (v15)
  {
    v21 = 1;
    v22 = 2;
    v17 = (*((*v14 & *v1) + 0x168))(&v21);
  }

  v18 = (*((*v14 & *v1) + 0x98))(v17);
  if (v18)
  {
    v19 = v18;
    (*((*v14 & *v18) + 0x158))(v1);
  }
}

uint64_t sub_26EE6A41C(float a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x160);
  v5 = v4(&v9);
  sub_26EE733B4(v5, v6, v7);
  result = sub_26EF3B0AC();
  if ((result & 1) == 0)
  {
    v4(&v9);
    result = sub_26EF3B0AC();
    if ((result & 1) == 0)
    {
      *&v9 = a1;
      BYTE4(v9) = 0;
      return (*((*v3 & *v1) + 0x168))(&v9);
    }
  }

  return result;
}

void sub_26EE6A578()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x98))();
  if (v2)
  {
    v3 = v2;
    (*((*v1 & *v2) + 0x150))(v0);
  }
}

void *sub_26EE6A63C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26EF383AC();
  v26 = *(v4 - 8);
  v27 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v25 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v24 = &v24 - v7;
  v8 = sub_26EF383FC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *((*MEMORY[0x277D85000] & *v1) + 0xC8);
  v13(v10);
  v14 = a1;
  v15 = MEMORY[0x274380370](v12, a1);
  v16 = *(v9 + 8);
  result = v16(v12, v8);
  if ((v15 & 1) == 0)
  {
    (*(v9 + 16))(v12, v14, v8);
    v18 = (*((*MEMORY[0x277D85000] & *v2) + 0xD0))(v12);
    v13(v18);
    v19 = v24;
    sub_26EF383CC();
    v16(v12, v8);
    v20 = v25;
    sub_26EF3830C();
    sub_26EE73470(&qword_2806C7E18, MEMORY[0x277D702B8], MEMORY[0x277D702C0]);
    v21 = v27;
    v22 = sub_26EF3B63C();
    v23 = *(v26 + 8);
    v23(v20, v21);
    result = (v23)(v19, v21);
    if ((v22 & 1) == 0 || (result = (*((*MEMORY[0x277D85000] & *v2) + 0x160))(&v28, result), BYTE4(v28)))
    {
      MEMORY[0x28223BE20](result);
      *(&v24 - 2) = v2;
      sub_26EF3AEAC();
      sub_26EF3992C();
    }
  }

  return result;
}

uint64_t sub_26EE6A9D8(void *a1)
{
  v2 = sub_26EF382EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26EF383FC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *a1) + 0xC8))(v8);
  sub_26EF383BC();
  v12 = (*(v3 + 88))(v5, v2);
  if (v12 == *MEMORY[0x277D702A0])
  {
    (*(v7 + 8))(v10, v6);
    (*(v3 + 96))(v5, v2);
    v13 = *v5;
    v14 = 1;
LABEL_7:
    v17 = v13;
    v18 = v14;
    return (*((*v11 & *a1) + 0x168))(&v17);
  }

  if (v12 == *MEMORY[0x277D70298])
  {
    (*(v7 + 8))(v10, v6);
    v13 = 0;
    v14 = 2;
    goto LABEL_7;
  }

  if (v12 == *MEMORY[0x277D70290])
  {
    (*(v7 + 8))(v10, v6);
    v14 = 2;
    v13 = 1;
    goto LABEL_7;
  }

  result = sub_26EF3B81C();
  __break(1u);
  return result;
}

id CoreSynthesisVoicePickable.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreSynthesisVoicePickable(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26EE6B21C@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **v1) + 0xF0))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26EE6B278()
{

  sub_26EF385AC();
}

uint64_t sub_26EE6B2C8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t sub_26EE6B324(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xC0);

  return v2(v3);
}

uint64_t sub_26EE6B3D0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_currentIdMap;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t CoreSynthesisVoicePickableFetcher.filterBlock.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_filterBlock);
  sub_26EE21114(v1, *(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_filterBlock + 8));
  return v1;
}

void *sub_26EE6B4C8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_26EF3B79C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_26EE7123C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x2743837E0](v5, a1);
        v8 = *(v17 + 16);
        v7 = *(v17 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_26EE7123C((v7 > 1), v8 + 1, 1);
        }

        ++v5;
        v9 = sub_26EE73470(&qword_2806C7EB8, type metadata accessor for CoreSynthesisVoicePickable, &protocol conformance descriptor for CoreSynthesisVoicePickable);
        *(v17 + 16) = v8 + 1;
        v10 = v17 + 16 * v8;
        *(v10 + 32) = v6;
        *(v10 + 40) = v9;
      }

      while (v2 != v5);
    }

    else
    {
      v11 = (a1 + 32);
      do
      {
        v12 = *(v17 + 16);
        v13 = *(v17 + 24);
        v14 = *v11;
        if (v12 >= v13 >> 1)
        {
          sub_26EE7123C((v13 > 1), v12 + 1, 1);
        }

        v15 = sub_26EE73470(&qword_2806C7EB8, type metadata accessor for CoreSynthesisVoicePickable, &protocol conformance descriptor for CoreSynthesisVoicePickable);
        *(v17 + 16) = v12 + 1;
        v16 = v17 + 16 * v12;
        *(v16 + 32) = v14;
        *(v16 + 40) = v15;
        ++v11;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t CoreSynthesisVoicePickableFetcher.requiredTraits.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_requiredTraits;
  v4 = sub_26EF383AC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CoreSynthesisVoicePickableFetcher.SiriVoicePolicy.hashValue.getter()
{
  v1 = *v0;
  sub_26EF3B87C();
  MEMORY[0x274383950](v1);
  return sub_26EF3B8CC();
}

void *sub_26EE6B7B4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE8))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_26EE6B820(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x277D85000] & *v2) + 0xF0))(&v4);
}

uint64_t sub_26EE6B888@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_siriVoicePolicy;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_26EE6B8DC(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_siriVoicePolicy;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

char *CoreSynthesisVoicePickableFetcher.__allocating_init(source:requiredTraits:siriPolicy:filterBlock:)(void *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  v13 = *a3;
  v14 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher__pickableStreams;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7E28, &unk_26EF3F610);
  swift_allocObject();
  *&v12[v14] = sub_26EF3857C();
  v15 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_assetService;
  *&v12[v15] = [objc_allocWithZone(MEMORY[0x277CE6678]) init];
  *&v12[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_currentIdMap] = MEMORY[0x277D84F98];
  *&v12[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_currentVoices] = MEMORY[0x277D84F90];
  v16 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_databaseClient;
  sub_26EF384AC();
  *&v12[v16] = sub_26EF3849C();
  sub_26EE7354C(a1, &v12[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_source]);
  v17 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_requiredTraits;
  v18 = sub_26EF383AC();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v12[v17], a2, v18);
  v20 = &v12[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_filterBlock];
  *v20 = a4;
  v20[1] = a5;
  v12[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_siriVoicePolicy] = v13;
  sub_26EE21114(a4, a5);
  v28.receiver = v12;
  v28.super_class = v6;
  v21 = objc_msgSendSuper2(&v28, sel_init);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = v21;

  sub_26EF3858C();

  v24 = MEMORY[0x277D85000];
  v25 = (*((*MEMORY[0x277D85000] & *v22) + 0x120))(v23);
  (*((*v24 & *v22) + 0x108))(v25);

  sub_26EE18828(a4, a5);
  (*(v19 + 8))(a2, v18);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v22;
}

char *CoreSynthesisVoicePickableFetcher.init(source:requiredTraits:siriPolicy:filterBlock:)(void *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *a3;
  v12 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher__pickableStreams;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7E28, &unk_26EF3F610);
  swift_allocObject();
  *&v5[v12] = sub_26EF3857C();
  v13 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_assetService;
  *&v6[v13] = [objc_allocWithZone(MEMORY[0x277CE6678]) init];
  *&v6[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_currentIdMap] = MEMORY[0x277D84F98];
  *&v6[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_currentVoices] = MEMORY[0x277D84F90];
  v14 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_databaseClient;
  sub_26EF384AC();
  *&v6[v14] = sub_26EF3849C();
  sub_26EE7354C(a1, &v6[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_source]);
  v15 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_requiredTraits;
  v16 = sub_26EF383AC();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v6[v15], a2, v16);
  v18 = &v6[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_filterBlock];
  *v18 = a4;
  v18[1] = a5;
  v6[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_siriVoicePolicy] = v11;
  sub_26EE21114(a4, a5);
  v25.receiver = v6;
  v25.super_class = type metadata accessor for CoreSynthesisVoicePickableFetcher(0);
  v19 = objc_msgSendSuper2(&v25, sel_init);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = v19;

  sub_26EF3858C();

  v22 = MEMORY[0x277D85000];
  v23 = (*((*MEMORY[0x277D85000] & *v20) + 0x120))(v21);
  (*((*v22 & *v20) + 0x108))(v23);

  sub_26EE18828(a4, a5);
  (*(v17 + 8))(a2, v16);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v20;
}

uint64_t sub_26EE6BF50(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_26EE6BF70, 0, 0);
}

uint64_t sub_26EE6BF70()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_currentVoices);
    v3 = Strong;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v4 = *(v0 + 40);
  v5 = sub_26EE6B4C8(v2);

  *v4 = v5;
  v6 = *(v0 + 8);

  return v6();
}

id CoreSynthesisVoicePickableFetcher.__deallocating_deinit()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x110))();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreSynthesisVoicePickableFetcher(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26EE6C218(uint64_t a1)
{
  v2 = sub_26EF383FC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  v7 = sub_26EE73720(v6);

  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 56);
  v11 = (v8 + 63) >> 6;
  v82 = v3 + 16;
  v12 = (v3 + 8);

  v13 = 0;
  v77 = 0;
  v76 = MEMORY[0x277D84F90];
LABEL_4:
  if (v10)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    if (v14 >= v11)
    {
      break;
    }

    v10 = *(v7 + 56 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
LABEL_9:
      (*(v3 + 16))(v5, *(v7 + 48) + *(v3 + 72) * (__clz(__rbit64(v10)) | (v13 << 6)), v2);
      v15 = v77;
      sub_26EE6CA28(v5, v75, v84);
      v77 = v15;
      if (v15)
      {

        (*v12)(v5, v2);

        __break(1u);
        return result;
      }

      v10 &= v10 - 1;
      (*v12)(v5, v2);
      v1 = v84[0];
      if (v84[0])
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = sub_26EE71BCC(0, v76[2] + 1, 1, v76);
        }

        v17 = v76[2];
        v16 = v76[3];
        v18 = (v17 + 1);
        if (v17 >= v16 >> 1)
        {
          v80 = v76[2];
          v81 = (v17 + 1);
          v20 = sub_26EE71BCC((v16 > 1), v17 + 1, 1, v76);
          v17 = v80;
          v18 = v81;
          v76 = v20;
        }

        v19 = v76;
        v76[2] = v18;
        v19[v17 + 4] = v1;
      }

      goto LABEL_4;
    }
  }

  v21 = v76;
  v22 = v76[2];
  if (v22)
  {
    v23 = 0;
    v24 = MEMORY[0x277D84F90];
    v81 = v76 + 4;
    v74 = v22;
    while (1)
    {
      if (v23 >= v21[2])
      {
        goto LABEL_68;
      }

      v25 = v81[v23];
      v26 = v25 >> 62;
      if (v25 >> 62)
      {
        v27 = sub_26EF3B79C();
      }

      else
      {
        v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v1 = v24 >> 62;
      if (v24 >> 62)
      {
        v44 = sub_26EF3B79C();
        v29 = v44 + v27;
        if (__OFADD__(v44, v27))
        {
          goto LABEL_69;
        }
      }

      else
      {
        v28 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v29 = v28 + v27;
        if (__OFADD__(v28, v27))
        {
          goto LABEL_69;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (v1)
      {
        isUniquelyReferenced_nonNull_bridgeObject = 0;
      }

      if (isUniquelyReferenced_nonNull_bridgeObject != 1 || (v31 = v24 & 0xFFFFFFFFFFFFFF8, v32 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18), v82 = v24, v29 > (v32 >> 1)))
      {
        if (v1)
        {
          sub_26EF3B79C();
        }

        v82 = sub_26EF3B72C();
        v31 = v82 & 0xFFFFFFFFFFFFFF8;
      }

      v33 = *(v31 + 16);
      v1 = *(v31 + 24);
      if (v26)
      {
        v35 = v31;
        v36 = sub_26EF3B79C();
        v31 = v35;
        v34 = v36;
        if (!v36)
        {
LABEL_18:

          if (v27 > 0)
          {
            goto LABEL_70;
          }

          goto LABEL_19;
        }
      }

      else
      {
        v34 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v34)
        {
          goto LABEL_18;
        }
      }

      if (((v1 >> 1) - v33) < v27)
      {
        goto LABEL_73;
      }

      v37 = v31 + 8 * v33 + 32;
      v80 = v31;
      if (v26)
      {
        v1 = &qword_2806C7E58;
        if (v34 < 1)
        {
          goto LABEL_75;
        }

        v78 = v27;
        *&v79 = v23;
        sub_26EE154C8(&qword_2806C7E60, &qword_2806C7E58, &unk_26EF3F638, MEMORY[0x277D83988]);
        for (i = 0; i != v34; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7E58, &unk_26EF3F638);
          v1 = sub_26EE72CD8(v84, i, v25);
          v40 = *v39;
          (v1)(v84, 0);
          *(v37 + 8 * i) = v40;
        }

        v21 = v76;
        v22 = v74;
        v27 = v78;
        v23 = v79;
      }

      else
      {
        type metadata accessor for CoreSynthesisVoicePickable(0);
        swift_arrayInitWithCopy();
      }

      if (v27 > 0)
      {
        v41 = *(v80 + 2);
        v42 = __OFADD__(v41, v27);
        v43 = v41 + v27;
        if (v42)
        {
          goto LABEL_74;
        }

        *(v80 + 2) = v43;
      }

LABEL_19:
      ++v23;
      v24 = v82;
      if (v23 == v22)
      {
        goto LABEL_51;
      }
    }
  }

  v24 = MEMORY[0x277D84F90];
LABEL_51:

  v45 = v75;
  *(v75 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_currentVoices) = v24;

  v78 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_currentVoices;
  v1 = *(v45 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_currentVoices);
  if (v1 >> 62)
  {
    goto LABEL_76;
  }

  for (j = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_26EF3B79C())
  {

    if (!j)
    {
      break;
    }

    v81 = (v1 & 0xFFFFFFFFFFFFFF8);
    v82 = v1 & 0xC000000000000001;
    v47 = MEMORY[0x277D84F98];
    v48 = 4;
    v79 = xmmword_26EF3F560;
    v80 = v1;
    while (1)
    {
      v55 = v48 - 4;
      if (v82)
      {
        v56 = MEMORY[0x2743837E0](v48 - 4, v1);
      }

      else
      {
        if (v55 >= v81[2])
        {
          goto LABEL_72;
        }

        v56 = *(v1 + 8 * v48);
      }

      v57 = v56;
      v58 = v48 - 3;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      v59 = j;
      v60 = *((*MEMORY[0x277D85000] & *v56) + 0xF0);

      v62 = (v60)(v61);
      v64 = v63;
      v65 = v60();
      if (v47[2])
      {
        v67 = sub_26EE1FCF4(v65, v66);
        v69 = v68;

        v49 = MEMORY[0x277D84F90];
        if (v69)
        {
          v49 = *(v47[7] + 8 * v67);
        }
      }

      else
      {

        v49 = MEMORY[0x277D84F90];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7EB0, &qword_26EF3F8A0);
      inited = swift_initStackObject();
      *(inited + 16) = v79;
      *(inited + 32) = v57;
      v83 = v49;
      v51 = v57;
      sub_26EE7148C(inited);
      v52 = v83;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83 = v47;
      sub_26EE71824(v52, v62, v64, isUniquelyReferenced_nonNull_native);

      v47 = v83;
      ++v48;
      j = v59;
      v54 = v58 == v59;
      v1 = v80;
      if (v54)
      {
        goto LABEL_66;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    ;
  }

  v47 = MEMORY[0x277D84F98];
LABEL_66:

  (*((*MEMORY[0x277D85000] & *v75) + 0xC0))(v47);

  v71 = sub_26EE6B4C8(v70);

  v83 = v71;
  sub_26EF3859C();
}

void sub_26EE6CA28(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v174 = a3;
  v177 = a2;
  v159 = sub_26EF383DC();
  v157 = *(v159 - 8);
  v4 = MEMORY[0x28223BE20](v159);
  v160 = &v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v158 = &v148 - v6;
  v173 = sub_26EF3824C();
  v176 = *(v173 - 8);
  v7 = MEMORY[0x28223BE20](v173);
  v9 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v172 = &v148 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v170 = &v148 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v171 = &v148 - v15;
  MEMORY[0x28223BE20](v14);
  v164 = &v148 - v16;
  v165 = sub_26EF3823C();
  v167 = *(v165 - 8);
  v17 = MEMORY[0x28223BE20](v165);
  v150 = &v148 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v155 = &v148 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v154 = &v148 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v151 = &v148 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v152 = &v148 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v153 = &v148 - v28;
  MEMORY[0x28223BE20](v27);
  v163 = &v148 - v29;
  v30 = sub_26EF383AC();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v148 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v148 - v35;
  sub_26EF383CC();
  sub_26EF3836C();
  v37 = sub_26EE73470(&qword_2806C7E18, MEMORY[0x277D702B8], MEMORY[0x277D702C0]);
  v38 = sub_26EF3B63C();
  v41 = *(v31 + 8);
  v39 = v31 + 8;
  v40 = v41;
  v41(v34, v30);
  v42 = (v41)(v36, v30);
  v43 = v177;
  v166 = v34;
  v168 = v41;
  v169 = v36;
  v162 = v9;
  if ((v38 & 1) == 0)
  {
LABEL_13:
    v59 = v43;
    sub_26EF383CC();
    sub_26EF3834C();
    v164 = v37;
    v60 = sub_26EF3B63C();
    v40(v34, v30);
    v40(v36, v30);
    v61 = a1;
    v62 = v172;
    if (v60)
    {
      v149 = v39;
      v161 = v30;
      v63 = v172;
      sub_26EF382DC();
      v64 = v173;
      (*(v176 + 104))(v170, *MEMORY[0x277D70248], v173);
      sub_26EE73470(&qword_2806C7E20, MEMORY[0x277D70260], MEMORY[0x277D70268]);
      sub_26EF3B1DC();
      sub_26EF3B1DC();
      if (v178 == v182 && v179 == v183)
      {
        v65 = *(v176 + 8);
        v65(v170, v64);
        v65(v171, v64);

        goto LABEL_59;
      }

      LODWORD(v163) = sub_26EF3B82C();
      v62 = v63;
      v66 = *(v176 + 8);
      v66(v170, v64);
      v66(v171, v64);

      v30 = v161;
      if (v163)
      {
        goto LABEL_59;
      }
    }

    v67 = *(v59 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_filterBlock);
    if (v67)
    {
      v68 = *(v59 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_filterBlock + 8);

      v69 = v67(v61);
      sub_26EE18828(v67, v68);
      if ((v69 & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    v70 = v169;
    sub_26EF383CC();
    v71 = v166;
    sub_26EF3835C();
    v72 = sub_26EF3B63C();
    v73 = v71;
    v74 = v168;
    v168(v73, v30);
    v74(v70, v30);
    if (v72)
    {
      goto LABEL_59;
    }

    sub_26EF382DC();
    v75 = v162;
    (*(v167 + 104))(v162, *MEMORY[0x277D70200], v165);
    v76 = v176;
    v77 = v173;
    (*(v176 + 104))(v75, *MEMORY[0x277D70240], v173);
    sub_26EE73470(&qword_2806C7E20, MEMORY[0x277D70260], MEMORY[0x277D70268]);
    sub_26EF3B1DC();
    sub_26EF3B1DC();
    if (v178 == v182 && v179 == v183)
    {
      v78 = *(v76 + 8);
      v78(v75, v77);
      v78(v62, v77);
    }

    else
    {
      v79 = sub_26EF3B82C();
      v80 = *(v76 + 8);
      v80(v75, v77);
      v80(v62, v77);

      if ((v79 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v81 = v158;
    sub_26EF383EC();
    v82 = v157;
    v83 = v160;
    v84 = v159;
    (*(v157 + 104))(v160, *MEMORY[0x277D702D8], v159);
    sub_26EE73470(&qword_2806C7EE0, MEMORY[0x277D702E0], MEMORY[0x277D702E8]);
    v85 = sub_26EF3B0AC();
    v86 = *(v82 + 8);
    v86(v83, v84);
    v86(v81, v84);
    if ((v85 & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_26:
    v87 = sub_26EF382BC();
    v89 = v88;
    v90 = MEMORY[0x277D85000];
    v91 = (*((*MEMORY[0x277D85000] & *v177) + 0xB8))();
    if (*(v91 + 16))
    {
      v92 = sub_26EE1FCF4(v87, v89);
      v94 = v93;

      if (v94)
      {
        v95 = *(*(v91 + 56) + 8 * v92);

        if (v95 >> 62)
        {
          v96 = sub_26EF3B79C();
          if (!v96)
          {
            goto LABEL_75;
          }
        }

        else
        {
          v96 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v96)
          {
            goto LABEL_75;
          }
        }

        if (v96 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v96; ++i)
        {
          if ((v95 & 0xC000000000000001) != 0)
          {
            v98 = MEMORY[0x2743837E0](i, v95);
          }

          else
          {
            v98 = *(v95 + 8 * i + 32);
          }

          v99 = v98;
          (*((*v90 & *v98) + 0x190))(v61);
        }

LABEL_75:
        *v174 = v95;
        return;
      }
    }

    else
    {
    }

    sub_26EF3828C();
    v105 = v180;
    v106 = v181;
    v107 = __swift_project_boxed_opaque_existential_1(&v178, v180);
    MEMORY[0x28223BE20](v107);
    v108 = v177;
    *(&v148 - 2) = v61;
    *(&v148 - 1) = v108;
    v109 = type metadata accessor for CoreSynthesisVoicePickable(0);
    v110 = v175;
    v112 = sub_26EE6E328(sub_26EE74A18, (&v148 - 4), v105, v109, MEMORY[0x277D84A98], v106, MEMORY[0x277D84AC0], v111);
    v175 = v110;
    *v174 = v112;
    __swift_destroy_boxed_opaque_existential_1(&v178);
    return;
  }

  v44 = v39;
  v156 = a1;
  v45 = *((*MEMORY[0x277D85000] & *v177) + 0xE8);
  v45(&v178, v42);
  if (v178)
  {
    v161 = v30;
    v46 = v164;
    sub_26EF382DC();
    v47 = v176;
    v48 = v173;
    if ((*(v176 + 88))(v46, v173) != *MEMORY[0x277D70240])
    {
      (*(v47 + 8))(v46, v48);
      a1 = v156;
      v30 = v161;
      v43 = v177;
      v34 = v166;
      v40 = v168;
      v36 = v169;
      goto LABEL_13;
    }

    (*(v47 + 96))(v46, v48);
    v49 = v163;
    v50 = v165;
    v51 = (*(v167 + 32))(v163, v46, v165);
    v45(&v184, v51);
    v52 = v37;
    if (!v184)
    {
      (*(v167 + 8))(v49, v50);
      v30 = v161;
      v58 = v44;
LABEL_12:
      a1 = v156;
      v34 = v166;
      v40 = v168;
      v36 = v169;
      v37 = v52;
      v43 = v177;
      v39 = v58;
      goto LABEL_13;
    }

    v149 = v44;
    if (v184 != 1)
    {
      v100 = *MEMORY[0x277D70218];
      v101 = *(v167 + 104);
      v102 = v154;
      v164 = (v167 + 104);
      v153 = v101;
      (v101)(v154, v100, v50);
      v103 = sub_26EE73470(&qword_2806C7EE8, MEMORY[0x277D70228], MEMORY[0x277D70230]);
      sub_26EF3B1DC();
      v152 = v103;
      sub_26EF3B1DC();
      v30 = v161;
      if (v178 == v182 && v179 == v183)
      {
        v104 = 1;
      }

      else
      {
        v104 = sub_26EF3B82C();
      }

      v117 = *(v167 + 8);
      v118 = v102;
      v119 = (v167 + 8);
      v120 = v165;
      v117(v118, v165);

      if (v104)
      {
        goto LABEL_58;
      }

      v154 = v117;
      (v153)(v155, *MEMORY[0x277D70208], v120);
      sub_26EF3B1DC();
      sub_26EF3B1DC();
      if (v178 == v182 && v179 == v183)
      {
        v121 = v154;
        (v154)(v155, v120);

        v121(v49, v120);
        goto LABEL_59;
      }

      v129 = sub_26EF3B82C();
      v117 = v154;
      (v154)(v155, v120);

      if (v129)
      {
LABEL_58:
        v117(v49, v120);
        goto LABEL_59;
      }

      (v153)(v150, *MEMORY[0x277D70210], v120);
      sub_26EF3B1DC();
      sub_26EF3B1DC();
      if (v178 == v182 && v179 == v183)
      {
        v137 = v165;
        v138 = v154;
        (v154)(v150, v165);

        goto LABEL_70;
      }

      v139 = sub_26EF3B82C();
      v137 = v165;
      v138 = v154;
      (v154)(v150, v165);

      if (v139)
      {
LABEL_70:
        v140 = v49;
        v141 = v169;
        sub_26EF383CC();
        v164 = v119;
        v142 = v166;
        sub_26EF3833C();
        v143 = sub_26EF3B63C();
        v144 = v142;
        v145 = v168;
        v146 = v149;
        v168(v144, v30);
        v145(v141, v30);
        v147 = v140;
        v58 = v146;
        v138(v147, v137);
        v130 = v174;
        if (v143)
        {
          goto LABEL_60;
        }

        goto LABEL_12;
      }

      v138(v49, v137);
      goto LABEL_73;
    }

    v53 = *MEMORY[0x277D70220];
    v54 = *(v167 + 104);
    v55 = v153;
    v164 = (v167 + 104);
    v155 = v54;
    (v54)(v153, v53, v50);
    v56 = sub_26EE73470(&qword_2806C7EE8, MEMORY[0x277D70228], MEMORY[0x277D70230]);
    sub_26EF3B1DC();
    v154 = v56;
    sub_26EF3B1DC();
    if (v178 == v182 && v179 == v183)
    {
      v57 = 1;
    }

    else
    {
      v57 = sub_26EF3B82C();
    }

    v113 = *(v167 + 8);
    v114 = v55;
    v115 = v165;
    v113(v114, v165);

    if (v57)
    {
LABEL_53:
      v113(v49, v115);
      goto LABEL_59;
    }

    v116 = v152;
    (v155)(v152, *MEMORY[0x277D70210], v115);
    sub_26EF3B1DC();
    sub_26EF3B1DC();
    if (v178 == v182 && v179 == v183)
    {
      v113(v116, v115);
    }

    else
    {
      v122 = sub_26EF3B82C();
      v113(v116, v115);

      if ((v122 & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    v123 = v169;
    sub_26EF3831C();
    v124 = sub_26EF382CC();
    v168(v123, v161);
    if (v124)
    {
      goto LABEL_53;
    }

LABEL_54:
    v125 = v151;
    (v155)(v151, *MEMORY[0x277D70208], v115);
    sub_26EF3B1DC();
    sub_26EF3B1DC();
    if (v178 == v182 && v179 == v183)
    {
      v113(v125, v115);

      v127 = v168;
      v126 = v169;
      v128 = v113;
      v52 = v37;
    }

    else
    {
      v131 = sub_26EF3B82C();
      v113(v125, v115);

      v127 = v168;
      v126 = v169;
      v128 = v113;
      v52 = v37;
      if ((v131 & 1) == 0)
      {
        v128(v163, v115);
        v30 = v161;
LABEL_73:
        v58 = v149;
        goto LABEL_12;
      }
    }

    v132 = v128;
    sub_26EF3832C();
    v133 = sub_26EF382CC();
    v134 = v126;
    v30 = v161;
    v135 = v149;
    v127(v134, v161);
    v136 = v115;
    v58 = v135;
    v132(v163, v136);
    v130 = v174;
    if (v133)
    {
      goto LABEL_60;
    }

    goto LABEL_12;
  }

LABEL_59:
  v130 = v174;
LABEL_60:
  *v130 = 0;
}

void sub_26EE6DF4C(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v37 = a3;
  v39 = a1;
  v40 = a4;
  v5 = sub_26EF382EC();
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26EF37FEC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26EF383FC();
  v13 = *(v12 - 1);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 16);
  v16(v15, a2, v12);
  v38 = v9;
  v35 = *(v9 + 16);
  v36 = v11;
  v17 = v39;
  v39 = v8;
  v35(v11, v17, v8);
  v34 = type metadata accessor for CoreSynthesisVoicePickable(0);
  v18 = objc_allocWithZone(v34);
  v19 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable__fetcher;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v31 = v37;
  sub_26EF3803C();
  v37 = v12;
  v20 = v12;
  v21 = v33;
  v16(&v18[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable__voice], v15, v20);
  v22 = v32;
  sub_26EF383BC();
  v23 = (*(v22 + 88))(v7, v21);
  if (v23 == *MEMORY[0x277D702A0])
  {
    (*(v22 + 96))(v7, v21);
    v24 = *v7;
    v25 = 1;
LABEL_7:
    v26 = &v18[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable__downloadState];
    *v26 = v24;
    v26[4] = v25;
    v27 = v31;
    MEMORY[0x274384370](&v18[v19]);
    swift_unknownObjectWeakInit();

    v28 = v36;
    v29 = v39;
    v35(&v18[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable__locale], v36, v39);
    v41.receiver = v18;
    v41.super_class = v34;
    v30 = objc_msgSendSuper2(&v41, sel_init);
    (*(v38 + 8))(v28, v29);
    (*(v13 + 8))(v15, v37);

    *v40 = v30;
    return;
  }

  if (v23 == *MEMORY[0x277D70298])
  {
    v24 = 0;
    v25 = 2;
    goto LABEL_7;
  }

  if (v23 == *MEMORY[0x277D70290])
  {
    v25 = 2;
    v24 = 1;
    goto LABEL_7;
  }

  sub_26EF3B81C();
  __break(1u);
}

uint64_t sub_26EE6E328(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_26EF3B38C();
  if (!v19)
  {
    return sub_26EF3B23C();
  }

  v41 = v19;
  v45 = sub_26EF3B76C();
  v32 = sub_26EF3B77C();
  sub_26EF3B74C();
  result = sub_26EF3B37C();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_26EF3B3AC();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_26EF3B75C();
      result = sub_26EF3B39C();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26EE6E748()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7E68, &qword_26EF3F648);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_source), *(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI33CoreSynthesisVoicePickableFetcher_source + 24));
  sub_26EF3808C();
  v11 = sub_26EF3B30C();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v8, v10, v4);
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v12;
  (*(v5 + 32))(&v14[v13], v8, v4);
  sub_26EE6F2A4(0, 0, v3, &unk_26EF3F658, v14);

  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_26EE6E9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7EA0, &qword_26EF3F890);
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26EE6EA8C, 0, 0);
}

uint64_t sub_26EE6EA8C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[21] = v2;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7E68, &qword_26EF3F648);
    *v2 = v0;
    v2[1] = sub_26EE6EC2C;

    return MEMORY[0x282138898](v0 + 13, v3);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7E68, &qword_26EF3F648);
    sub_26EF3856C();
    swift_beginAccess();
    v4 = swift_task_alloc();
    v0[22] = v4;
    *v4 = v0;
    v4[1] = sub_26EE6EEFC;
    v5 = v0[17];

    return MEMORY[0x2822003E8](v0 + 14, 0, 0, v5);
  }
}

uint64_t sub_26EE6EC2C()
{

  return MEMORY[0x2822009F8](sub_26EE6ED28, 0, 0);
}

uint64_t sub_26EE6ED28()
{
  v11 = v0;
  v1 = v0[13];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_26EE7125C(*(v1 + 16), 0);
    v4 = *(sub_26EF383FC() - 8);
    v5 = sub_26EE72D60(&v10, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, v1);
    sub_26EE74A10(v10);
    if (v5 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  v6 = v0[20];
  (*((*MEMORY[0x277D85000] & *v6) + 0x118))(v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7E68, &qword_26EF3F648);
  sub_26EF3856C();
  swift_beginAccess();
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_26EE6EEFC;
  v8 = v0[17];

  return MEMORY[0x2822003E8](v0 + 14, 0, 0, v8);
}

uint64_t sub_26EE6EEFC()
{

  return MEMORY[0x2822009F8](sub_26EE6EFF8, 0, 0);
}

uint64_t sub_26EE6EFF8()
{
  v1 = v0[14];
  if (!v1)
  {
    goto LABEL_11;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v0[18] + 8))(v0[19], v0[17]);

    goto LABEL_13;
  }

  v3 = Strong;
  v4 = *(v1 + 16);
  if (!v4)
  {

    v8 = MEMORY[0x277D84F90];
LABEL_17:
    (*((*MEMORY[0x277D85000] & *v3) + 0x118))(v8);

    v17 = swift_task_alloc();
    v0[22] = v17;
    *v17 = v0;
    v17[1] = sub_26EE6EEFC;
    v12 = v0[17];
    v9 = (v0 + 14);
    v10 = 0;
    v11 = 0;

    return MEMORY[0x2822003E8](v9, v10, v11, v12);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7EA8, &qword_26EF3F898);
  v5 = *(sub_26EF383FC() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  v9 = _swift_stdlib_malloc_size(v8);
  if (!v6)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return MEMORY[0x2822003E8](v9, v10, v11, v12);
  }

  if (v9 - v7 == 0x8000000000000000 && v6 == -1)
  {
    goto LABEL_21;
  }

  v8[2] = v4;
  v8[3] = 2 * ((v9 - v7) / v6);
  v14 = sub_26EE72D60((v0 + 2), v8 + v7, v4, v1);
  sub_26EE74A10(v0[2]);
  if (v14 == v4)
  {
    goto LABEL_17;
  }

  __break(1u);
LABEL_11:
  (*(v0[18] + 8))(v0[19], v0[17]);
LABEL_13:

  v15 = v0[1];

  return v15();
}

uint64_t sub_26EE6F2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_26EE74938(a3, v22 - v9);
  v11 = sub_26EF3B30C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_26EE749A8(v10);
  }

  else
  {
    sub_26EF3B2FC();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_26EF3B29C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_26EF3B12C() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_26EE749A8(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26EE749A8(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_26EE6F510(uint64_t a1, uint64_t a2, float a3)
{
  v7 = MEMORY[0x277D85000];
  v8 = (*((*MEMORY[0x277D85000] & *v3) + 0xB8))();
  if (*(v8 + 16) && (v9 = sub_26EE1FCF4(a1, a2), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (v11 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26EF3B79C())
  {
    v13 = 0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x2743837E0](v13, v11);
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      (*((*v7 & *v14) + 0x180))(a3);

      ++v13;
      if (v16 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:
}

uint64_t sub_26EE6F6EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*((*MEMORY[0x277D85000] & *v3) + 0xB8))();
  if (*(v6 + 16) && (v7 = sub_26EE1FCF4(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (v9 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26EF3B79C())
  {
    for (j = 0; ; ++j)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x2743837E0](j, v9);
      }

      else
      {
        if (j >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v12 = *(v9 + 8 * j + 32);
      }

      v13 = v12;
      v14 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      MEMORY[0x28223BE20](v12);
      sub_26EF3AEAC();
      sub_26EF3992C();

      if (v14 == i)
      {
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

uint64_t sub_26EE6F8B0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_26EF3B30C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;
  v7[5] = a1;
  v8 = v1;
  v9 = a1;
  sub_26EE6F2A4(0, 0, v5, &unk_26EF3F668, v7);
}

uint64_t sub_26EE6F9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7E90, &qword_26EF3F880);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = sub_26EF383FC();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7E98, &qword_26EF3F888);
  v5[11] = v8;
  v5[12] = *(v8 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26EE6FB58, 0, 0);
}

uint64_t sub_26EE6FB58()
{
  v1 = v0[3];
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0xC8);
  v3 = ((*MEMORY[0x277D85000] & *v1) + 200) & 0xFFFFFFFFFFFFLL | 0x5A18000000000000;
  v0[14] = v2;
  v0[15] = v3;
  v2();
  v8 = (*MEMORY[0x277D70360] + MEMORY[0x277D70360]);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_26EE6FC60;
  v5 = v0[13];
  v6 = v0[10];

  return v8(v5, v6);
}

uint64_t sub_26EE6FC60()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v2[17] = v0;

  v6 = *(v4 + 8);
  v2[18] = v6;
  v2[19] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  if (v0)
  {
    v7 = sub_26EE701AC;
  }

  else
  {
    v7 = sub_26EE6FDE4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26EE6FDE4()
{
  sub_26EF3B31C();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_26EE6FE9C;
  v2 = *(v0 + 32);

  return MEMORY[0x2822003E8](v0 + 168, 0, 0, v2);
}

uint64_t sub_26EE6FE9C()
{

  return MEMORY[0x2822009F8](sub_26EE6FF98, 0, 0);
}

uint64_t sub_26EE6FF98()
{
  v1 = *(v0 + 168);
  if (*(v0 + 172))
  {
    v3 = *(v0 + 96);
    v2 = *(v0 + 104);
    v4 = *(v0 + 88);
    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
    (*(v3 + 8))(v2, v4);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 144);
    v8 = *(v0 + 72);
    v9 = *(v0 + 56);
    v10 = *(v0 + 16);
    (*(v0 + 112))();
    v11 = sub_26EF382BC();
    v13 = v12;
    v7(v8, v9);
    (*((*MEMORY[0x277D85000] & *v10) + 0x130))(v11, v13, v1);

    v14 = swift_task_alloc();
    *(v0 + 160) = v14;
    *v14 = v0;
    v14[1] = sub_26EE6FE9C;
    v15 = *(v0 + 32);

    return MEMORY[0x2822003E8](v0 + 168, 0, 0, v15);
  }
}

uint64_t sub_26EE701AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26EE70238(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v2 - 8);
  v51 = &v42 - v3;
  v4 = sub_26EF382EC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v49 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v50 = &v42 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v42 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - v13;
  v15 = sub_26EF383FC();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v46 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v42 - v20;
  v22 = *((*MEMORY[0x277D85000] & *a1) + 0xC8);
  v23 = (*MEMORY[0x277D85000] & *a1) + 200;
  v53 = a1;
  v44 = v23;
  v45 = v22;
  v22(v19);
  sub_26EF383BC();
  v24 = *(v16 + 8);
  v47 = v16 + 8;
  v48 = v15;
  v43 = v24;
  v24(v21, v15);
  v25 = 1;
  *v12 = 1;
  v26 = *MEMORY[0x277D702A0];
  v42 = *(v5 + 104);
  v42(v12, v26, v4);
  sub_26EE73470(&qword_2806C7E70, MEMORY[0x277D702A8], MEMORY[0x277D702B0]);
  sub_26EF3B1DC();
  sub_26EF3B1DC();
  if (v56 != v54 || v57 != v55)
  {
    v25 = sub_26EF3B82C();
  }

  v27 = *(v5 + 8);
  v27(v12, v4);
  v27(v14, v4);

  if (v25)
  {
    v29 = &unk_26EF3F688;
    v30 = v53;
  }

  else
  {
    v31 = v46;
    v30 = v53;
    v45(v28);
    v32 = v50;
    sub_26EF383BC();
    v43(v31, v48);
    v33 = v49;
    v42(v49, *MEMORY[0x277D70290], v4);
    sub_26EF3B1DC();
    sub_26EF3B1DC();
    if (v56 == v54 && v57 == v55)
    {
      v27(v33, v4);
      v27(v32, v4);
    }

    else
    {
      v34 = sub_26EF3B82C();
      v27(v33, v4);
      v27(v32, v4);

      if ((v34 & 1) == 0)
      {
        return result;
      }
    }

    v29 = &unk_26EF3F678;
  }

  v36 = sub_26EF3B30C();
  v37 = v51;
  (*(*(v36 - 8) + 56))(v51, 1, 1, v36);
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v39 = v52;
  v38[4] = v52;
  v38[5] = v30;
  v40 = v39;
  v41 = v30;
  sub_26EE6F2A4(0, 0, v37, v29, v38);
}

uint64_t sub_26EE707D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_26EF383FC();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26EE708A0, 0, 0);
}

uint64_t sub_26EE708A0()
{
  v1 = v0[3];
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0xC8);
  v3 = ((*MEMORY[0x277D85000] & *v1) + 200) & 0xFFFFFFFFFFFFLL | 0x5A18000000000000;
  v0[8] = v2;
  v0[9] = v3;
  v2();
  v7 = (*MEMORY[0x277D70358] + MEMORY[0x277D70358]);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_26EE709A4;
  v5 = v0[7];

  return v7(v5);
}

uint64_t sub_26EE709A4()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v2[11] = v0;

  v6 = *(v4 + 8);
  v2[12] = v6;
  v2[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  if (v0)
  {
    v7 = sub_26EE74A50;
  }

  else
  {
    v7 = sub_26EE70B28;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26EE70B28()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  (*(v0 + 64))();
  v5 = sub_26EF382BC();
  v7 = v6;
  v1(v2, v3);
  (*((*MEMORY[0x277D85000] & *v4) + 0x138))(v5, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_26EE70C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_26EF383FC();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26EE70D0C, 0, 0);
}

uint64_t sub_26EE70D0C()
{
  v1 = v0[3];
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0xC8);
  v3 = ((*MEMORY[0x277D85000] & *v1) + 200) & 0xFFFFFFFFFFFFLL | 0x5A18000000000000;
  v0[8] = v2;
  v0[9] = v3;
  v2();
  v7 = (*MEMORY[0x277D70350] + MEMORY[0x277D70350]);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_26EE70E10;
  v5 = v0[7];

  return v7(v5);
}

uint64_t sub_26EE70E10()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v2[11] = v0;

  v6 = *(v4 + 8);
  v2[12] = v6;
  v2[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  if (v0)
  {
    v7 = sub_26EE710AC;
  }

  else
  {
    v7 = sub_26EE70F94;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26EE70F94()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  (*(v0 + 64))();
  v5 = sub_26EF382BC();
  v7 = v6;
  v1(v2, v3);
  (*((*MEMORY[0x277D85000] & *v4) + 0x148))(v5, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_26EE710AC()
{

  v1 = *(v0 + 8);

  return v1();
}

id CoreSynthesisVoicePickableFetcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *sub_26EE7123C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26EE71358(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26EE7125C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7EA8, &qword_26EF3F898);
  v4 = *(sub_26EF383FC() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26EE71358(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7EC0, &qword_26EF3F8A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7EC8, &qword_26EF3F8B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26EE7148C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_26EF3B79C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_26EF3B79C();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_26EE71B10(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_26EE72B34(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_26EE7157C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7ED0, &qword_26EF3F8B8);
  v34 = v4;
  result = sub_26EF3B7BC();
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_26EF3B87C();
      sub_26EF3B16C();
      result = sub_26EF3B8CC();
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
      *(*(v7 + 56) + 8 * v15) = v24;
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

uint64_t sub_26EE71824(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26EE1FCF4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_26EE7157C(v16, a4 & 1);
      v11 = sub_26EE1FCF4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_26EF3B86C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_26EE719A0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void *sub_26EE719A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7ED0, &qword_26EF3F8B8);
  v2 = *v0;
  v3 = sub_26EF3B7AC();
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

unint64_t sub_26EE71B10(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      sub_26EF3B79C();
    }

    result = sub_26EF3B72C();
    *v2 = result;
  }

  return result;
}

void *sub_26EE71BCC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7ED8, &qword_26EF3F8C0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7E58, &unk_26EF3F638);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26EE71D00(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_26EF383FC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_26EE73470(&qword_2806C7EF0, MEMORY[0x277D702F8], MEMORY[0x277D70300]);
  v33 = a2;
  v11 = sub_26EF3B04C();
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
      sub_26EE73470(&qword_2806C7DF8, MEMORY[0x277D702F8], MEMORY[0x277D70308]);
      v21 = sub_26EF3B0AC();
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
    sub_26EE7233C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_26EE71FE0(uint64_t a1)
{
  v2 = v1;
  v36 = sub_26EF383FC();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7EF8, &unk_26EF3F8C8);
  result = sub_26EF3B6DC();
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
      sub_26EE73470(&qword_2806C7EF0, MEMORY[0x277D702F8], MEMORY[0x277D70300]);
      result = sub_26EF3B04C();
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

uint64_t sub_26EE7233C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_26EF383FC();
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
    sub_26EE71FE0(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_26EE725E0();
      goto LABEL_12;
    }

    sub_26EE72818(v10 + 1);
  }

  v12 = *v3;
  sub_26EE73470(&qword_2806C7EF0, MEMORY[0x277D702F8], MEMORY[0x277D70300]);
  v13 = sub_26EF3B04C();
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
      sub_26EE73470(&qword_2806C7DF8, MEMORY[0x277D702F8], MEMORY[0x277D70308]);
      v21 = sub_26EF3B0AC();
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
  result = sub_26EF3B85C();
  __break(1u);
  return result;
}

void *sub_26EE725E0()
{
  v1 = v0;
  v2 = sub_26EF383FC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7EF8, &unk_26EF3F8C8);
  v6 = *v0;
  v7 = sub_26EF3B6CC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

uint64_t sub_26EE72818(uint64_t a1)
{
  v2 = v1;
  v33 = sub_26EF383FC();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7EF8, &unk_26EF3F8C8);
  v7 = sub_26EF3B6DC();
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
      sub_26EE73470(&qword_2806C7EF0, MEMORY[0x277D702F8], MEMORY[0x277D70300]);
      result = sub_26EF3B04C();
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

uint64_t sub_26EE72B34(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_26EF3B79C();
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
      result = sub_26EF3B79C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_26EE154C8(&qword_2806C7E60, &qword_2806C7E58, &unk_26EF3F638, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7E58, &unk_26EF3F638);
            v9 = sub_26EE72CD8(v13, i, a3);
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
        type metadata accessor for CoreSynthesisVoicePickable(0);
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

void (*sub_26EE72CD8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2743837E0](a2, a3);
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
    return sub_26EE72D58;
  }

  __break(1u);
  return result;
}

uint64_t sub_26EE72D60(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_26EF383FC();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 56);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

id sub_26EE73004(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v27 = a2;
  v7 = sub_26EF382EC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable__fetcher;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  sub_26EF3803C();
  v12 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable__voice;
  v13 = sub_26EF383FC();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v4[v12], a1, v13);
  sub_26EF383BC();
  v15 = (*(v8 + 88))(v10, v7);
  if (v15 == *MEMORY[0x277D702A0])
  {
    (*(v8 + 96))(v10, v7);
    v16 = *v10;
    v17 = 1;
LABEL_7:
    v18 = &v4[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable__downloadState];
    *v18 = v16;
    v18[4] = v17;
    v19 = v27;
    MEMORY[0x274384370](&v4[v11]);
    swift_unknownObjectWeakInit();

    v20 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable__locale;
    v21 = sub_26EF37FEC();
    v22 = *(v21 - 8);
    (*(v22 + 16))(&v4[v20], a3, v21);
    v23 = type metadata accessor for CoreSynthesisVoicePickable(0);
    v28.receiver = v4;
    v28.super_class = v23;
    v24 = objc_msgSendSuper2(&v28, sel_init);
    (*(v22 + 8))(a3, v21);
    (*(v14 + 8))(a1, v13);
    return v24;
  }

  if (v15 == *MEMORY[0x277D70298])
  {
    v16 = 0;
    v17 = 2;
    goto LABEL_7;
  }

  if (v15 == *MEMORY[0x277D70290])
  {
    v17 = 2;
    v16 = 1;
    goto LABEL_7;
  }

  result = sub_26EF3B81C();
  __break(1u);
  return result;
}

unint64_t sub_26EE733B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806C7E00;
  if (!qword_2806C7E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7E00);
  }

  return result;
}

uint64_t sub_26EE73408()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 28);
  v3 = *(v0 + 16) + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI26CoreSynthesisVoicePickable__downloadState;
  result = swift_beginAccess();
  *v3 = v1;
  *(v3 + 4) = v2;
  return result;
}

uint64_t sub_26EE73470(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26EE7354C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26EE735B0()
{
  MEMORY[0x274384370](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26EE735E8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26EE15538;

  return sub_26EE6BF50(a1, v1);
}

uint64_t sub_26EE73684(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26EE05D7C;

  return sub_26EE6BF50(a1, v1);
}

uint64_t sub_26EE73720(uint64_t a1)
{
  v2 = sub_26EF383FC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_26EE73470(&qword_2806C7EF0, MEMORY[0x277D702F8], MEMORY[0x277D70300]);
  result = MEMORY[0x274383430](v9, v2, v10);
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
      sub_26EE71D00(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_26EE738BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7E68, &qword_26EF3F648);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26EE73994()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7E68, &qword_26EF3F648) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26EE05D7C;

  return sub_26EE6E9C0(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_26EE73AB8(int a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2;
  return (*((*MEMORY[0x277D85000] & *v3) + 0x168))(&v5);
}

uint64_t sub_26EE73B34()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE15538;

  return sub_26EE6F9BC(v4, v5, v6, v2, v3);
}

uint64_t sub_26EE73BCC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE15538;

  return sub_26EE70C40(v4, v5, v6, v2, v3);
}

uint64_t objectdestroy_17Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26EE73CAC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE15538;

  return sub_26EE707D4(v4, v5, v6, v2, v3);
}

uint64_t sub_26EE73D44(void *a1)
{
  a1[1] = sub_26EE73470(&qword_2806C7E10, type metadata accessor for CoreSynthesisVoicePickable, &protocol conformance descriptor for CoreSynthesisVoicePickable);
  a1[2] = sub_26EE73470(&qword_2806C7E78, type metadata accessor for CoreSynthesisVoicePickable, MEMORY[0x277D85378]);
  result = sub_26EE73470(&qword_2806C7E80, type metadata accessor for CoreSynthesisVoicePickable, &protocol conformance descriptor for CoreSynthesisVoicePickable);
  a1[3] = result;
  return result;
}

unint64_t sub_26EE73DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806C7E88;
  if (!qword_2806C7E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7E88);
  }

  return result;
}

uint64_t sub_26EE73E50(uint64_t a1)
{
  result = sub_26EF383FC();
  if (v2 <= 0x3F)
  {
    result = sub_26EF37FEC();
    if (v3 <= 0x3F)
    {
      result = sub_26EF3804C();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_26EE74350(uint64_t a1)
{
  result = sub_26EF383AC();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CoreSynthesisVoicePickableFetcher.SiriVoicePolicy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CoreSynthesisVoicePickableFetcher.SiriVoicePolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26EE74938(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE749A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26EE74A6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26EF39DDC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7510, &unk_26EF3E320);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_26EE13B88(v2, &v14 - v9, &qword_2806C7510, &unk_26EF3E320);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26EF3988C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_26EF3B46C();
    v13 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t type metadata accessor for RenameVoiceView(uint64_t a1)
{
  result = qword_2806CC080;
  if (!qword_2806CC080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EE74CB8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RenameVoiceView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F00, &qword_26EF3F908);
  MEMORY[0x28223BE20](v7);
  v9 = &v23[-v8];
  v24 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F08, &qword_26EF3F910);
  sub_26EE75D80();
  sub_26EF3A50C();
  sub_26EE7607C(v2, &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_26EE760E4(&v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10);
  v12 = &v9[*(v7 + 36)];
  sub_26EF3990C();
  sub_26EF3B2EC();
  *v12 = &unk_26EF3F958;
  v12[1] = v11;
  v13 = sub_26EE17094() & 1;
  v14._countAndFlagsBits = 0x454D414E5F4256;
  v14._object = 0xE700000000000000;
  v25 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v14, v13, 0);
  v15 = sub_26EE76214();
  sub_26EE12538(v15, v16, v17);
  sub_26EF3A75C();

  sub_26EE762FC(v9);
  sub_26EE7607C(v2, &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v18 = swift_allocObject();
  sub_26EE760E4(&v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v18 + v10);
  v19 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F78, &qword_26EF3F968) + 36));
  *v19 = sub_26EE76364;
  v19[1] = v18;
  v19[2] = 0;
  v19[3] = 0;
  sub_26EE7607C(v2, &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v20 = swift_allocObject();
  sub_26EE760E4(&v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v20 + v10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F80, &qword_26EF3F970);
  v22 = (a1 + *(result + 36));
  *v22 = 0;
  v22[1] = 0;
  v22[2] = sub_26EE76410;
  v22[3] = v20;
  return result;
}

uint64_t sub_26EE74FB4(uint64_t a1)
{
  *(v1 + 56) = a1;
  sub_26EF3B2DC();
  *(v1 + 64) = sub_26EF3B2CC();
  v3 = sub_26EF3B29C();

  return MEMORY[0x2822009F8](sub_26EE7504C, v3, v2);
}

uint64_t sub_26EE7504C()
{
  v1 = *(v0 + 56);

  v2 = type metadata accessor for RenameVoiceView(0);
  v3 = (v1 + *(v2 + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = (v1 + *(v2 + 28));
  v7 = *v6;
  v8 = *(v6 + 2);
  *(v0 + 16) = v7;
  *(v0 + 32) = v8;
  *(v0 + 40) = v5;
  *(v0 + 48) = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F88, &qword_26EF41A70);
  sub_26EF3AB0C();
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_26EE75110()
{
  v0[2] = sub_26EF3B2DC();
  v0[3] = sub_26EF3B2CC();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_26EE751BC;

  return sub_26EE752F8();
}

uint64_t sub_26EE751BC()
{

  v1 = sub_26EF3B29C();

  return MEMORY[0x2822009F8](sub_26EE6002C, v1, v0);
}

uint64_t sub_26EE752F8()
{
  v1[20] = v0;
  v2 = sub_26EF38A2C();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v3 = sub_26EF3883C();
  v1[24] = v3;
  v1[25] = *(v3 - 8);
  v1[26] = swift_task_alloc();
  v4 = sub_26EF3988C();
  v1[27] = v4;
  v1[28] = *(v4 - 8);
  v1[29] = swift_task_alloc();
  v5 = sub_26EF39DDC();
  v1[30] = v5;
  v1[31] = *(v5 - 8);
  v1[32] = swift_task_alloc();
  sub_26EF3B2DC();
  v1[33] = sub_26EF3B2CC();
  v7 = sub_26EF3B29C();
  v1[34] = v7;
  v1[35] = v6;

  return MEMORY[0x2822009F8](sub_26EE75500, v7, v6);
}

uint64_t sub_26EE75500()
{
  v1 = v0[20];
  v2 = type metadata accessor for RenameVoiceView(0);
  v0[36] = v2;
  v3 = (v1 + v2[7]);
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v0[2] = *v3;
  v0[3] = v4;
  v0[4] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F88, &qword_26EF41A70);
  sub_26EF3AAFC();
  v7 = (v1 + v2[9]);
  if (v0[11] == *v7 && v0[12] == v7[1])
  {
  }

  else
  {
    v9 = sub_26EF3B82C();

    if ((v9 & 1) == 0)
    {
      v0[5] = v5;
      v0[6] = v4;
      v0[7] = v6;
      sub_26EF3AAFC();
      v11 = v0[13];
      v10 = v0[14];

      v12 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v12 = v11 & 0xFFFFFFFFFFFFLL;
      }

      if (v12)
      {
        v13 = v0[20];
        v14 = v13 + v2[5];
        v15 = *v14;
        if (*(v14 + 8) == 1)
        {
          v16 = v15;
        }

        else
        {
          v27 = v0[32];
          v28 = v0[31];
          v29 = v0[30];

          sub_26EF3B46C();
          v22 = sub_26EF3A36C();
          sub_26EF3880C();

          sub_26EF39DCC();
          swift_getAtKeyPath();
          sub_26EE05C9C(v15, 0);
          (*(v28 + 8))(v27, v29);
          v16 = v0[19];
          v13 = v0[20];
        }

        v0[37] = v16;
        v0[8] = v5;
        v0[9] = v4;
        v0[10] = v6;
        sub_26EF3AAFC();
        v23 = v0[15];
        v24 = v0[16];
        v0[38] = v24;
        v25 = v2[10];
        v26 = swift_task_alloc();
        v0[39] = v26;
        *v26 = v0;
        v26[1] = sub_26EE7582C;

        return VoiceBankingSession.updateVoiceName(voiceName:voiceID:)(v23, v24, v13 + v25);
      }
    }
  }

  v18 = v0[28];
  v17 = v0[29];
  v19 = v0[27];
  sub_26EE74A6C(v17);
  sub_26EF3987C();
  (*(v18 + 8))(v17, v19);

  v20 = v0[1];

  return v20();
}

uint64_t sub_26EE7582C()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = v2[34];
    v4 = v2[35];
    v5 = sub_26EE75A14;
  }

  else
  {
    v6 = v2[37];

    v3 = v2[34];
    v4 = v2[35];
    v5 = sub_26EE7594C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_26EE7594C()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];

  sub_26EE74A6C(v1);
  sub_26EF3987C();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_26EE75A14()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 296);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 192);

  v6 = sub_26EE27DAC();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v1;
  v8 = sub_26EF3881C();
  v9 = sub_26EF3B47C();

  if (os_log_type_enabled(v8, v9))
  {
    v11 = *(v0 + 176);
    v10 = *(v0 + 184);
    v12 = *(v0 + 168);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    (*(v11 + 104))(v10, *MEMORY[0x277D704D8], v12);
    sub_26EF38A4C();
    sub_26EE786C0(&unk_2806C9CD0, MEMORY[0x277D70518], MEMORY[0x277D70520]);
    swift_allocError();
    sub_26EF389BC();
    (*(v11 + 8))(v10, v12);
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v15;
    *v14 = v15;
    _os_log_impl(&dword_26EE01000, v8, v9, "%@", v13, 0xCu);
    sub_26EE14578(v14, &qword_2806C7140, &unk_26EF3E420);
    MEMORY[0x2743842A0](v14, -1, -1);
    MEMORY[0x2743842A0](v13, -1, -1);
  }

  v16 = *(v0 + 320);
  v17 = *(v0 + 288);
  v19 = *(v0 + 200);
  v18 = *(v0 + 208);
  v20 = *(v0 + 192);
  v21 = *(v0 + 160);

  (*(v19 + 8))(v18, v20);
  v22 = v21 + *(v17 + 24);
  v23 = *(v22 + 8);
  *(v0 + 136) = *v22;
  *(v0 + 144) = v23;
  *(v0 + 328) = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AB0C();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_26EE75D08(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F20, &qword_26EF3F918);
  sub_26EE75E10();
  return sub_26EF3AD6C();
}

unint64_t sub_26EE75D80()
{
  result = qword_2806C7F10;
  if (!qword_2806C7F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7F08, &qword_26EF3F910);
    sub_26EE75E10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7F10);
  }

  return result;
}

unint64_t sub_26EE75E10()
{
  result = qword_2806C7F18;
  if (!qword_2806C7F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7F20, &qword_26EF3F918);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7F28, &qword_26EF3F920);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7F30, &qword_26EF3F928);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7F38, &qword_26EF3F930);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7F40, &unk_26EF3F938);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6788, &unk_26EF3D080);
    v1 = sub_26EE154C8(&qword_2806C7F48, &qword_2806C7F40, &unk_26EF3F938, MEMORY[0x277CDF1A8]);
    sub_26EE12538(v1, v2, v3);
    sub_26EE154C8(&qword_2806C6790, &qword_2806C6788, &unk_26EF3D080, MEMORY[0x277CDF028]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_26EE154C8(&qword_2806C7F50, &qword_2806C7F58, &qword_26EF3F948, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7F18);
  }

  return result;
}

uint64_t sub_26EE7607C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RenameVoiceView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE760E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RenameVoiceView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE76148()
{
  v2 = *(type metadata accessor for RenameVoiceView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE05D7C;

  return sub_26EE74FB4(v0 + v3);
}

unint64_t sub_26EE76214()
{
  result = qword_2806C7F60;
  if (!qword_2806C7F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7F00, &qword_26EF3F908);
    sub_26EE154C8(&qword_2806C7F68, &qword_2806C7F70, &qword_26EF3F960, MEMORY[0x277CDE5A0]);
    sub_26EE786C0(&qword_2806C6708, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7F60);
  }

  return result;
}

uint64_t sub_26EE762FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F00, &qword_26EF3F908);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26EE76364()
{
  type metadata accessor for RenameVoiceView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F90, &qword_26EF3F978);
  return sub_26EF3965C();
}

uint64_t sub_26EE76430@<X0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v2 = sub_26EF399DC();
  v82 = *(v2 - 8);
  v83 = v2;
  MEMORY[0x28223BE20](v2);
  v80 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RenameVoiceView(0);
  v5 = (v4 - 8);
  v79 = *(v4 - 8);
  v78 = *(v79 + 64);
  MEMORY[0x28223BE20](v4);
  v77 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_26EF397BC();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v72 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F40, &unk_26EF3F938);
  v66 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v58 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F38, &qword_26EF3F930);
  v69 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v63 = &v58 - v9;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F30, &qword_26EF3F928);
  v71 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v65 = &v58 - v10;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F28, &qword_26EF3F920);
  v74 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v67 = &v58 - v11;
  v12 = sub_26EE17094() & 1;
  v13._countAndFlagsBits = 0x454D414E5F4256;
  v13._object = 0xE700000000000000;
  v14 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v13, v12, 0);
  v15 = (v1 + v5[9]);
  v16 = *v15;
  countAndFlagsBits = v15[1]._countAndFlagsBits;
  v94 = v16;
  v95 = countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F88, &qword_26EF41A70);
  v18 = sub_26EF3AB1C();
  v85 = v14;
  v61 = sub_26EE12538(v18, v19, v20);
  sub_26EF3AEEC();
  v21 = sub_26EE17094();
  v22._object = 0x800000026EF45C20;
  v23 = v21 & 1;
  v22._countAndFlagsBits = 0xD00000000000001BLL;
  v94 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v22, v23, 0);
  v24 = v5[8];
  v60 = v1;
  v25 = (v1 + v24);
  v26 = *v25;
  v27 = *(v25 + 1);
  v92 = v26;
  v93 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AB1C();
  v84 = v1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6788, &unk_26EF3D080);
  v28 = sub_26EE154C8(&qword_2806C7F48, &qword_2806C7F40, &unk_26EF3F938, MEMORY[0x277CDF1A8]);
  v57 = sub_26EE154C8(&qword_2806C6790, &qword_2806C6788, &unk_26EF3D080, MEMORY[0x277CDF028]);
  v29 = v61;
  v30 = v64;
  v31 = v63;
  v32 = v62;
  sub_26EF3A89C();

  (*(v66 + 8))(v32, v30);
  v33 = v60;
  v34 = v60 + v5[10];
  v35 = *v34;
  v36 = *(v34 + 8);
  LOBYTE(v34) = *(v34 + 16);
  LOBYTE(v85._countAndFlagsBits) = v35;
  v85._object = v36;
  LOBYTE(v86) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F90, &qword_26EF3F978);
  sub_26EF3966C();
  v85._countAndFlagsBits = v30;
  v85._object = MEMORY[0x277D837D0];
  v86 = v59;
  v87 = MEMORY[0x277CE0BD8];
  v88 = v28;
  v89 = v29;
  v90 = v57;
  v91 = MEMORY[0x277CE0BC8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v65;
  v39 = v68;
  sub_26EF3A8CC();

  (*(v69 + 8))(v31, v39);
  v40 = v72;
  sub_26EF397AC();
  v85._countAndFlagsBits = v39;
  v85._object = OpaqueTypeConformance2;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = v67;
  v43 = v70;
  sub_26EF3A6AC();
  (*(v75 + 8))(v40, v76);
  v44 = v43;
  (*(v71 + 8))(v38, v43);
  v45 = v77;
  sub_26EE7607C(v33, v77);
  v46 = (*(v79 + 80) + 16) & ~*(v79 + 80);
  v47 = swift_allocObject();
  sub_26EE760E4(v45, v47 + v46);
  v48 = v80;
  sub_26EF399CC();
  v85._countAndFlagsBits = v44;
  v85._object = v41;
  swift_getOpaqueTypeConformance2();
  v49 = v81;
  v50 = v73;
  sub_26EF3A91C();

  (*(v82 + 8))(v48, v83);
  (*(v74 + 8))(v42, v50);
  v51 = sub_26EF3AE4C();
  v53 = v52;
  v54 = v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F20, &qword_26EF3F918) + 36);
  sub_26EE772C8(v54);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F58, &qword_26EF3F948);
  v56 = (v54 + *(result + 36));
  *v56 = v51;
  v56[1] = v53;
  return result;
}

uint64_t sub_26EE76E14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7138, &unk_26EF3DCC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_26EE17094() & 1;
  v4._countAndFlagsBits = 0x4B4F5F4256;
  v4._object = 0xE500000000000000;
  v10 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v4, v3, 0);
  v5 = sub_26EF3961C();
  v6 = (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_26EE12538(v6, v7, v8);
  return sub_26EF3AB5C();
}

uint64_t sub_26EE76F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for RenameVoiceView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_26EF3B30C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_26EE7607C(a1, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26EF3B2DC();
  v12 = sub_26EF3B2CC();
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v12;
  *(v14 + 24) = v15;
  sub_26EE760E4(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_26EE2C388(0, 0, v10, a3, v14);
}

uint64_t sub_26EE770E0()
{
  v0[2] = sub_26EF3B2DC();
  v0[3] = sub_26EF3B2CC();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_26EE7718C;

  return sub_26EE752F8();
}

uint64_t sub_26EE7718C()
{

  v1 = sub_26EF3B29C();

  return MEMORY[0x2822009F8](sub_26EE789C4, v1, v0);
}

uint64_t sub_26EE772C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F98, &qword_26EF3F980);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - v6;
  v8 = v1 + *(type metadata accessor for RenameVoiceView(0) + 28);
  v9 = *v8;
  v10 = *(v8 + 16);
  v18 = v9;
  v19 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F88, &qword_26EF41A70);
  sub_26EF3AAFC();
  v12 = v17[1];
  v11 = v17[2];

  v13 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v13 = v12 & 0xFFFFFFFFFFFFLL;
  }

  v14 = 1;
  if (v13)
  {
    *v7 = sub_26EF39E4C();
    *(v7 + 1) = 0;
    v7[16] = 1;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7FA0, &unk_26EF3F988);
    sub_26EE77460(v2, &v7[*(v15 + 44)]);
    sub_26EE14D98(v7, a1, &qword_2806C7F98, &qword_26EF3F980);
    v14 = 0;
  }

  return (*(v5 + 56))(a1, v14, 1, v4);
}

uint64_t sub_26EE77460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RenameVoiceView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7FC8, &qword_26EF3FA18);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7FD0, &qword_26EF3FA20);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  sub_26EE7607C(a1, &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  sub_26EE760E4(&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  sub_26EF3AB4C();
  v18 = sub_26EF3A1BC();
  *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7FD8, &qword_26EF3FA28) + 36)] = v18;
  LOBYTE(v18) = sub_26EF3A40C();
  sub_26EF3962C();
  v19 = &v9[*(v7 + 36)];
  *v19 = v18;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  v24 = sub_26EE17094() & 1;
  v25._countAndFlagsBits = 0x5241454C435F4256;
  v25._object = 0xE800000000000000;
  v31 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v25, v24, 0);
  v26 = sub_26EE78484();
  sub_26EE12538(v26, v27, v28);
  sub_26EF3A78C();

  sub_26EE14578(v9, &qword_2806C7FC8, &qword_26EF3FA18);
  sub_26EE13B88(v15, v13, &qword_2806C7FD0, &qword_26EF3FA20);
  *a2 = 0;
  *(a2 + 8) = 1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8010, &unk_26EF3FA40);
  sub_26EE13B88(v13, a2 + *(v29 + 48), &qword_2806C7FD0, &qword_26EF3FA20);
  sub_26EE14578(v15, &qword_2806C7FD0, &qword_26EF3FA20);
  return sub_26EE14578(v13, &qword_2806C7FD0, &qword_26EF3FA20);
}

uint64_t sub_26EE777A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26EF3AA8C();
  *a1 = result;
  return result;
}

uint64_t sub_26EE777EC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7510, &unk_26EF3E320);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_26EE7784C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_26EE14D98(a1, a5, &qword_2806C7568, &unk_26EF3E3D0);
  v9 = type metadata accessor for RenameVoiceView(0);
  v10 = a5 + v9[5];
  type metadata accessor for VoiceBankingSession(0);
  sub_26EE786C0(&qword_2806C65C0, type metadata accessor for VoiceBankingSession, &protocol conformance descriptor for VoiceBankingSession);
  *v10 = sub_26EF3973C();
  *(v10 + 8) = v11 & 1;
  v12 = a5 + v9[6];
  sub_26EF3AAEC();
  *v12 = v21;
  *(v12 + 8) = *(&v21 + 1);
  v13 = a5 + v9[7];
  sub_26EF3AAEC();
  *v13 = v21;
  *(v13 + 16) = v22;
  v14 = a5 + v9[8];
  *v14 = sub_26EF3967C() & 1;
  *(v14 + 8) = v15;
  *(v14 + 16) = v16 & 1;
  v17 = (a5 + v9[9]);
  *v17 = a2;
  v17[1] = a3;
  v18 = v9[10];
  v19 = sub_26EF37EDC();
  return (*(*(v19 - 8) + 32))(a5 + v18, a4, v19);
}

uint64_t sub_26EE779F4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26EE17094();
  v3._object = 0x800000026EF45C60;
  v4 = v2 & 1;
  v3._countAndFlagsBits = 0xD00000000000001ELL;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v3, v4, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26EF3C6B0;
  type metadata accessor for RenameVoiceView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F88, &qword_26EF41A70);
  v6 = sub_26EF3AAFC();
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_26EE1EFBC(v6, v7, v8);
  *(v5 + 32) = v16;
  *(v5 + 40) = v17;
  sub_26EF3B10C();

  sub_26EE12538(v9, v10, v11);
  result = sub_26EF3A5DC();
  *a1 = result;
  *(a1 + 8) = v13;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v15;
  return result;
}

uint64_t sub_26EE77C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7568, &unk_26EF3E3D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_26EF37EDC();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_26EE77D4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7568, &unk_26EF3E3D0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_26EF37EDC();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_26EE77E80(uint64_t a1)
{
  sub_26EE77FC0(319, &qword_2806C7570, MEMORY[0x277CDD848]);
  if (v1 <= 0x3F)
  {
    sub_26EE77FC0(319, &qword_2806C66B0, type metadata accessor for VoiceBankingSession);
    if (v2 <= 0x3F)
    {
      sub_26EE78014(319, &qword_2806C7350, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        sub_26EE78014(319, &qword_2806C7FA8, MEMORY[0x277D837D0]);
        if (v4 <= 0x3F)
        {
          sub_26EE78060();
          if (v5 <= 0x3F)
          {
            sub_26EF37EDC();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_26EE77FC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26EF3972C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26EE78014(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_26EF3AB2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26EE78060()
{
  if (!qword_2806C7FB0)
  {
    v0 = sub_26EF3968C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C7FB0);
    }
  }
}

unint64_t sub_26EE780BC()
{
  result = qword_2806C7FB8;
  if (!qword_2806C7FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7F80, &qword_26EF3F970);
    sub_26EE78148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7FB8);
  }

  return result;
}

unint64_t sub_26EE78148()
{
  result = qword_2806C7FC0;
  if (!qword_2806C7FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7F78, &qword_26EF3F968);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7F00, &qword_26EF3F908);
    v1 = sub_26EE76214();
    sub_26EE12538(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7FC0);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for RenameVoiceView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7510, &unk_26EF3E320);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26EF3988C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  sub_26EE05C9C(*(v5 + *(v1 + 20)), *(v5 + *(v1 + 20) + 8));

  v7 = *(v1 + 40);
  v8 = sub_26EF37EDC();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EE783E0()
{
  type metadata accessor for RenameVoiceView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F88, &qword_26EF41A70);
  return sub_26EF3AB0C();
}

unint64_t sub_26EE78484()
{
  result = qword_2806C7FE0;
  if (!qword_2806C7FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7FC8, &qword_26EF3FA18);
    sub_26EE78510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7FE0);
  }

  return result;
}

unint64_t sub_26EE78510()
{
  result = qword_2806C7FE8;
  if (!qword_2806C7FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7FD8, &qword_26EF3FA28);
    sub_26EE154C8(&qword_2806C7FF0, &qword_2806C7FF8, &qword_26EF3FA30, MEMORY[0x277CDF028]);
    sub_26EE154C8(&qword_2806C8000, &qword_2806C8008, &qword_26EF3FA38, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7FE8);
  }

  return result;
}

uint64_t sub_26EE785F8()
{
  type metadata accessor for RenameVoiceView(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26EE15538;

  return sub_26EE770E0();
}

uint64_t sub_26EE786C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_26Tm()
{
  v1 = type metadata accessor for RenameVoiceView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7510, &unk_26EF3E320);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26EF3988C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  sub_26EE05C9C(*(v5 + *(v1 + 20)), *(v5 + *(v1 + 20) + 8));

  v7 = *(v1 + 40);
  v8 = sub_26EF37EDC();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EE788C4()
{
  type metadata accessor for RenameVoiceView(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26EE15538;

  return sub_26EE75110();
}