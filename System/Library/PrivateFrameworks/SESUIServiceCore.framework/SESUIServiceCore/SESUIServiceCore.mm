uint64_t SEStorageManagementViewModel.ViennaUsageGroup.localizedTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup(0) + 20));

  return v1;
}

uint64_t type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup(uint64_t a1)
{
  result = qword_27FF31580;
  if (!qword_27FF31580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SEStorageManagementViewModel.ViennaUsageGroup.credentials.getter()
{
  type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup(0);
}

uint64_t SEStorageManagementViewModel.ViennaUsageGroup.credentials.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup(0) + 24);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SEStorageManagementViewModel.ViennaUsageGroup.baseUsage.setter(double a1)
{
  result = type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t SEStorageManagementViewModel.ViennaUsageGroup.usage.setter(double a1)
{
  result = type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t _s16SESUIServiceCore28SEStorageManagementViewModelV16ViennaUsageGroupV10identifier10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_262996B54();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SEStorageManagementViewModel.ViennaUsageGroup.lastUsedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314D0, &qword_262997510);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  v8 = sub_262996B24();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup(0);
  v13 = *(v1 + *(result + 24));
  v29 = *(v13 + 16);
  if (v29)
  {
    v14 = 0;
    v15 = (v13 + 32);
    v16 = (v9 + 48);
    v27 = v9;
    v28 = (v9 + 32);
    v17 = MEMORY[0x277D84F90];
    v25 = v5;
    v26 = v11;
    while (v14 < *(v13 + 16))
    {
      v18 = *v15;
      sub_262996C84();
      sub_262963C48(v5, v7);

      if ((*v16)(v7, 1, v8) == 1)
      {
        result = sub_262963CB8(v7);
      }

      else
      {
        v19 = v13;
        v20 = *v28;
        (*v28)(v11, v7, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_262965C08(0, v17[2] + 1, 1, v17, &qword_27FF31608, &qword_2629979F0, MEMORY[0x277CC9578]);
        }

        v22 = v17[2];
        v21 = v17[3];
        if (v22 >= v21 >> 1)
        {
          v17 = sub_262965C08((v21 > 1), v22 + 1, 1, v17, &qword_27FF31608, &qword_2629979F0, MEMORY[0x277CC9578]);
        }

        v17[2] = v22 + 1;
        v23 = v17 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22;
        v11 = v26;
        result = (v20)(v23, v26, v8);
        v13 = v19;
        v5 = v25;
      }

      ++v14;
      v15 += 3;
      if (v29 == v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
LABEL_13:
    sub_262963D20(v17, v24);
  }

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

uint64_t sub_262963C48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314D0, &qword_262997510);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_262963CB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314D0, &qword_262997510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_262963D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_262996B24();
  v5 = MEMORY[0x28223BE20](*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        sub_262967A40(&qword_27FF31600, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v20 = sub_262996D14();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

uint64_t SEStorageManagementViewModel.ViennaUsageGroup.CredentialEntry.id.getter()
{
  v0 = sub_262996B54();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_262996C64();
  v4 = sub_262996B34();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t SEStorageManagementViewModel.ViennaUsageGroup.CredentialEntry.init(credential:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t static SEStorageManagementViewModel.ViennaUsageGroup.CredentialEntry.== infix(_:_:)(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = *(a1 + 16);
  v4 = a2[1];
  v5 = *(a2 + 16);
  sub_2629658C8();
  return sub_262996DD4() & (v3 ^ v5 ^ 1) & (v2 == v4);
}

uint64_t sub_2629641F4()
{
  v1 = 0x6567617375;
  if (*v0 != 1)
  {
    v1 = 0x64657463656C6573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x69746E6564657263;
  }
}

uint64_t sub_262964250@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2629675D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_262964290(uint64_t a1)
{
  v2 = sub_262965958();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2629642CC(uint64_t a1)
{
  v2 = sub_262965958();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementViewModel.ViennaUsageGroup.CredentialEntry.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314E0, &qword_262997518);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v11 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262965958();
  v9 = v8;
  sub_262997074();
  v15 = v9;
  v14 = 0;
  sub_262996C94();
  sub_262967A40(&qword_27FF314F0, MEMORY[0x277D492D0], MEMORY[0x277D492D8]);
  sub_262996FB4();

  if (!v2)
  {
    v13 = 1;
    sub_262996FA4();
    v12 = 2;
    sub_262996F94();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t SEStorageManagementViewModel.ViennaUsageGroup.CredentialEntry.hash(into:)()
{
  v1 = *(v0 + 8);
  sub_262996DE4();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x26672E320](*&v2);
  return sub_262997024();
}

uint64_t SEStorageManagementViewModel.ViennaUsageGroup.CredentialEntry.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_262997004();
  sub_262996DE4();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x26672E320](*&v2);
  sub_262997024();
  return sub_262997044();
}

void SEStorageManagementViewModel.ViennaUsageGroup.CredentialEntry.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314F8, &qword_262997520);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262965958();
  sub_262997064();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_262996C94();
    v14[7] = 0;
    sub_262967A40(&qword_27FF31500, MEMORY[0x277D492D0], MEMORY[0x277D492E0]);
    sub_262996F44();
    v9 = v15;
    v14[6] = 1;
    sub_262996F34();
    v11 = v10;
    v14[5] = 2;
    v12 = sub_262996F24();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12 & 1;
    v13 = v9;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_262964898@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_262996B54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_262996C64();
  v6 = sub_262996B34();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  a1[1] = v8;
  return result;
}

uint64_t sub_26296497C(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = *(a1 + 16);
  v4 = a2[1];
  v5 = *(a2 + 16);
  sub_2629658C8();
  return sub_262996DD4() & (v3 ^ v5 ^ 1) & (v2 == v4);
}

uint64_t sub_2629649F4()
{
  sub_262997004();
  SEStorageManagementViewModel.ViennaUsageGroup.CredentialEntry.hash(into:)();
  return sub_262997044();
}

uint64_t sub_262964A54(uint64_t a1)
{
  sub_262997004();
  SEStorageManagementViewModel.ViennaUsageGroup.CredentialEntry.hash(into:)();
  return sub_262997044();
}

uint64_t SEStorageManagementViewModel.ViennaUsageGroup.init(identifier:localizedTitle:credentials:ownerApp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup(0);
  *(a6 + v12[8]) = 0;
  *(a6 + v12[9]) = 0;
  v13 = sub_262996B54();
  (*(*(v13 - 8) + 32))(a6, a1, v13);
  v14 = (a6 + v12[5]);
  *v14 = a2;
  v14[1] = a3;
  *(a6 + v12[6]) = a4;
  v15 = a6 + v12[7];

  return sub_2629659F8(a5, v15);
}

uint64_t sub_262964B9C()
{
  v1 = *v0;
  sub_262997004();
  MEMORY[0x26672E300](v1);
  return sub_262997044();
}

uint64_t sub_262964C14(uint64_t a1)
{
  v2 = *v1;
  sub_262997004();
  MEMORY[0x26672E300](v2);
  return sub_262997044();
}

uint64_t sub_262964C58()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x70704172656E776FLL;
  v4 = 0x6761735565736162;
  if (v1 != 4)
  {
    v4 = 0x6567617375;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x657A696C61636F6CLL;
  if (v1 != 1)
  {
    v5 = 0x69746E6564657263;
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

uint64_t sub_262964D2C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2629676F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_262964D60(uint64_t a1)
{
  v2 = sub_262966A2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262964D9C(uint64_t a1)
{
  v2 = sub_262966A2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementViewModel.ViennaUsageGroup.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31508, &qword_262997528);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262966A2C();
  sub_262997074();
  v14 = 0;
  sub_262996B54();
  sub_262967A40(&qword_27FF31518, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_262996FB4();
  if (!v2)
  {
    v9 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup(0);
    v13 = 1;
    sub_262996F84();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31520, &qword_262997530);
    sub_262966B1C(&qword_27FF31528, sub_262966AC8, MEMORY[0x277D83948]);
    sub_262996FB4();
    v11[14] = 3;
    type metadata accessor for SEStorageManagementViewModel.ApplicationInfo(0);
    sub_262967A40(&qword_27FF31538, type metadata accessor for SEStorageManagementViewModel.ApplicationInfo, &protocol conformance descriptor for SEStorageManagementViewModel.ApplicationInfo);
    sub_262996FB4();
    v11[13] = 4;
    sub_262996FA4();
    v11[12] = 5;
    sub_262996FA4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SEStorageManagementViewModel.ViennaUsageGroup.hash(into:)(uint64_t a1)
{
  sub_262996B54();
  sub_262967A40(&qword_27FF31540, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_262996D04();
  v3 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup(0);
  sub_262996D64();
  sub_2629668B0(a1, *(v1 + v3[6]));
  sub_262996D64();
  v4 = *(v1 + v3[8]);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x26672E320](*&v4);
  v5 = *(v1 + v3[9]);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  return MEMORY[0x26672E320](*&v5);
}

uint64_t SEStorageManagementViewModel.ViennaUsageGroup.hashValue.getter()
{
  sub_262997004();
  SEStorageManagementViewModel.ViennaUsageGroup.hash(into:)(v1);
  return sub_262997044();
}

uint64_t SEStorageManagementViewModel.ViennaUsageGroup.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v27 = type metadata accessor for SEStorageManagementViewModel.ApplicationInfo(0);
  MEMORY[0x28223BE20](v27);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_262996B54();
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31548, &qword_262997538);
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v8 = &v25 - v7;
  v9 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262966A2C();
  v31 = v8;
  v12 = v33;
  sub_262997064();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = v4;
  v13 = v28;
  v40 = 0;
  sub_262967A40(&qword_27FF31550, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v14 = v29;
  sub_262996F44();
  (*(v13 + 32))(v11, v14, v5);
  v39 = 1;
  v15 = sub_262996F14();
  v16 = &v11[v9[5]];
  *v16 = v15;
  v16[1] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31520, &qword_262997530);
  v37 = 2;
  sub_262966B1C(&qword_27FF31558, sub_262966B94, MEMORY[0x277D83978]);
  v29 = 0;
  sub_262996F44();
  v18 = v30;
  *&v11[v9[6]] = v38;
  v36 = 3;
  sub_262967A40(&qword_27FF31568, type metadata accessor for SEStorageManagementViewModel.ApplicationInfo, &protocol conformance descriptor for SEStorageManagementViewModel.ApplicationInfo);
  v19 = v33;
  sub_262996F44();
  sub_2629659F8(v19, &v11[v9[7]]);
  v35 = 4;
  sub_262996F34();
  *&v11[v9[8]] = v20;
  v34 = 5;
  sub_262996F34();
  v23 = v22;
  v24 = v9[9];
  (*(v18 + 8))(v31, v32);
  *&v11[v24] = v23;
  sub_262967978(v11, v26, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2629679E0(v11, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
}

uint64_t sub_262965820()
{
  sub_262997004();
  SEStorageManagementViewModel.ViennaUsageGroup.hash(into:)(v1);
  return sub_262997044();
}

uint64_t sub_262965864(uint64_t a1)
{
  sub_262997004();
  SEStorageManagementViewModel.ViennaUsageGroup.hash(into:)(v2);
  return sub_262997044();
}

unint64_t sub_2629658C8()
{
  result = qword_27FF314D8;
  if (!qword_27FF314D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF314D8);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_262965958()
{
  result = qword_27FF314E8;
  if (!qword_27FF314E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF314E8);
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

uint64_t sub_2629659F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageManagementViewModel.ApplicationInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_262965AD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF315E0, &qword_2629979D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_262965C08(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_262965DE4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  result = MEMORY[0x26672E300](v7);
  if (v7)
  {
    v9 = *(v3 + 20);
    v10 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_262967978(v10, v6, type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp);
      sub_262996D64();
      v12 = *&v6[v9];
      if (v12 == 0.0)
      {
        v12 = 0.0;
      }

      MEMORY[0x26672E320](*&v12);
      result = sub_2629679E0(v6, type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp);
      v10 += v11;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_262965F2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup(0);
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x26672E300](v8);
  if (v8)
  {
    v10 = v4[6];
    v17 = v4[5];
    v11 = v4[7];
    v12 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v13 = *(v5 + 72);
    do
    {
      sub_262967978(v12, v7, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
      sub_262996C14();
      sub_262967A40(&qword_27FF315C8, MEMORY[0x277D49298], MEMORY[0x277D492A8]);
      sub_262996D04();
      sub_2629660FC(a1, *&v7[v17]);
      v14 = *&v7[v10];
      if (v14 == 0.0)
      {
        v14 = 0.0;
      }

      MEMORY[0x26672E320](*&v14);
      v15 = *&v7[v11];
      if (v15 == 0.0)
      {
        v15 = 0.0;
      }

      MEMORY[0x26672E320](*&v15);
      result = sub_2629679E0(v7, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_2629660FC(uint64_t a1, uint64_t a2)
{
  v3 = sub_262996B24();
  v38 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v40 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314D0, &qword_262997510);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v37 - v6;
  v8 = sub_262996C14();
  v41 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0);
  v12 = *(v11 - 1);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a2;
  v15 = *(a2 + 16);
  result = MEMORY[0x26672E300](v15);
  v54 = v15;
  if (v15)
  {
    v17 = v11[8];
    v49 = v11[9];
    v50 = v17;
    v18 = v11[10];
    v47 = v11[11];
    v48 = v18;
    v46 = v55 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v19 = *(v12 + 72);
    v20 = 0;
    v21 = (v41 + 8);
    v22 = v38;
    v44 = (v38 + 6);
    v45 = v19;
    ++v38;
    v39 = (v22 + 4);
    v52 = v7;
    v53 = v3;
    v51 = v14;
    v42 = v10;
    v43 = (v41 + 8);
    do
    {
      v55 = v20;
      sub_262967978(v46 + v45 * v20, v14, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
      sub_262996D64();
      v26 = *(v14 + 2);
      MEMORY[0x26672E300](*(v26 + 16));
      v27 = *(v26 + 16);
      if (v27)
      {
        v28 = v26 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
        v29 = *(v41 + 72);
        v30 = *(v41 + 16);
        do
        {
          v30(v10, v28, v8);
          sub_262967A40(&qword_27FF315C8, MEMORY[0x277D49298], MEMORY[0x277D492A8]);
          sub_262996D04();
          (*v21)(v10, v8);
          v28 += v29;
          --v27;
        }

        while (v27);
      }

      v14 = v51;
      v31 = *(v51 + 3);
      MEMORY[0x26672E300](*(v31 + 16));
      v32 = *(v31 + 16);
      if (v32)
      {
        v33 = v31 + 40;
        do
        {

          sub_262996D64();

          v33 += 16;
          --v32;
        }

        while (v32);
      }

      sub_262996D64();
      v34 = v52;
      sub_262967904(&v14[v50], v52);
      v35 = v53;
      v36 = (*v44)(v34, 1, v53);
      v10 = v42;
      v21 = v43;
      if (v36 == 1)
      {
        sub_262997024();
      }

      else
      {
        v23 = v40;
        (*v39)(v40, v34, v35);
        sub_262997024();
        sub_262967A40(&qword_27FF315D0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
        sub_262996D04();
        (*v38)(v23, v35);
      }

      v24 = v55;
      sub_262997024();
      v25 = *&v14[v48];
      if (v25 == 0.0)
      {
        v25 = 0.0;
      }

      MEMORY[0x26672E320](*&v25);
      v20 = v24 + 1;
      sub_262997024();
      result = sub_2629679E0(v14, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
    }

    while (v20 != v54);
  }

  return result;
}

uint64_t sub_262966630(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup(0);
  v4 = *(v3 - 1);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  result = MEMORY[0x26672E300](v7);
  v27 = v7;
  if (v7)
  {
    v9 = 0;
    v10 = v3[6];
    v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v25 = v3[8];
    v26 = v10;
    v12 = v3[9];
    v23 = a2 + v11;
    v24 = v12;
    v22 = *(v4 + 72);
    do
    {
      sub_262967978(v23 + v22 * v9, v6, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
      sub_262996B54();
      sub_262967A40(&qword_27FF31540, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_262996D04();
      sub_262996D64();
      v15 = *&v6[v26];
      MEMORY[0x26672E300](*(v15 + 16));
      v16 = *(v15 + 16);
      if (v16)
      {
        v17 = v15 + 48;
        do
        {
          v18 = *(v17 - 16);
          v19 = *(v17 - 8);
          v17 += 24;
          v20 = v18;
          sub_262996DE4();
          if (v19 == 0.0)
          {
            v21 = 0.0;
          }

          else
          {
            v21 = v19;
          }

          MEMORY[0x26672E320](*&v21);
          sub_262997024();

          --v16;
        }

        while (v16);
      }

      sub_262996D64();
      v13 = *&v6[v25];
      if (v13 == 0.0)
      {
        v13 = 0.0;
      }

      MEMORY[0x26672E320](*&v13);
      v14 = *&v6[v24];
      if (v14 == 0.0)
      {
        v14 = 0.0;
      }

      ++v9;
      MEMORY[0x26672E320](*&v14);
      result = sub_2629679E0(v6, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
    }

    while (v9 != v27);
  }

  return result;
}

void sub_2629668B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x26672E300](v3);
  if (v3)
  {
    v4 = a2 + 48;
    do
    {
      v5 = *(v4 - 16);
      v6 = *(v4 - 8);
      v4 += 24;
      v7 = v5;
      sub_262996DE4();
      if (v6 == 0.0)
      {
        v8 = 0.0;
      }

      else
      {
        v8 = v6;
      }

      MEMORY[0x26672E320](*&v8);
      sub_262997024();

      --v3;
    }

    while (v3);
  }
}

BOOL _s16SESUIServiceCore28SEStorageManagementViewModelV16ViennaUsageGroupV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_262996B44() & 1) != 0 && ((v4 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup(0), v5 = v4[5], v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), (v9 || (sub_262996FD4()) && (sub_2629844D0(*(a1 + v4[6]), *(a2 + v4[6])), (v10) && ((v11 = v4[7], v12 = (a1 + v11), v13 = (a2 + v11), *v12 == *v13) ? (v14 = v12[1] == v13[1]) : (v14 = 0), (v14 || (sub_262996FD4()) && *(a1 + v4[8]) == *(a2 + v4[8]))))
  {
    return *(a1 + v4[9]) == *(a2 + v4[9]);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_262966A2C()
{
  result = qword_27FF31510;
  if (!qword_27FF31510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31510);
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

unint64_t sub_262966AC8()
{
  result = qword_27FF31530;
  if (!qword_27FF31530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31530);
  }

  return result;
}

uint64_t sub_262966B1C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF31520, &qword_262997530);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_262966B94()
{
  result = qword_27FF31560;
  if (!qword_27FF31560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31560);
  }

  return result;
}

unint64_t sub_262966BF8()
{
  result = qword_27FF31570;
  if (!qword_27FF31570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31570);
  }

  return result;
}

uint64_t sub_262966CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_262996B54();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for SEStorageManagementViewModel.ApplicationInfo(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_262966E2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_262996B54();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for SEStorageManagementViewModel.ApplicationInfo(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_262966F54(uint64_t a1)
{
  sub_262996B54();
  if (v1 <= 0x3F)
  {
    sub_262967008();
    if (v2 <= 0x3F)
    {
      type metadata accessor for SEStorageManagementViewModel.ApplicationInfo(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_262967008()
{
  if (!qword_27FF31590)
  {
    v0 = sub_262996DC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF31590);
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_26296706C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_2629670B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s16ViennaUsageGroupV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s16ViennaUsageGroupV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s16ViennaUsageGroupV15CredentialEntryV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s16ViennaUsageGroupV15CredentialEntryV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2629673C8()
{
  result = qword_27FF31598;
  if (!qword_27FF31598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31598);
  }

  return result;
}

unint64_t sub_262967420()
{
  result = qword_27FF315A0;
  if (!qword_27FF315A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF315A0);
  }

  return result;
}

unint64_t sub_262967478()
{
  result = qword_27FF315A8;
  if (!qword_27FF315A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF315A8);
  }

  return result;
}

unint64_t sub_2629674D0()
{
  result = qword_27FF315B0;
  if (!qword_27FF315B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF315B0);
  }

  return result;
}

unint64_t sub_262967528()
{
  result = qword_27FF315B8;
  if (!qword_27FF315B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF315B8);
  }

  return result;
}

unint64_t sub_262967580()
{
  result = qword_27FF315C0;
  if (!qword_27FF315C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF315C0);
  }

  return result;
}

uint64_t sub_2629675D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69746E6564657263 && a2 == 0xEA00000000006C61;
  if (v4 || (sub_262996FD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567617375 && a2 == 0xE500000000000000 || (sub_262996FD4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_262996FD4();

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

uint64_t sub_2629676F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_262996FD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xEE00656C74695464 || (sub_262996FD4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69746E6564657263 && a2 == 0xEB00000000736C61 || (sub_262996FD4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x70704172656E776FLL && a2 == 0xE800000000000000 || (sub_262996FD4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6761735565736162 && a2 == 0xE900000000000065 || (sub_262996FD4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6567617375 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_262996FD4();

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

uint64_t sub_262967904(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314D0, &qword_262997510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_262967978(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2629679E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_262967A40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static SEStorageManagementViewModel.ApplicationInfo.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_262996FD4();
  }
}

uint64_t SEStorageManagementViewModel.ApplicationInfo.bundleIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SEStorageManagementViewModel.ApplicationInfo.localizedName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SEStorageManagementViewModel.ApplicationInfo.lastUsedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SEStorageManagementViewModel.ApplicationInfo(0) + 24);

  return sub_262967904(v3, a1);
}

uint64_t type metadata accessor for SEStorageManagementViewModel.ApplicationInfo(uint64_t a1)
{
  result = qword_27FF31640;
  if (!qword_27FF31640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SEStorageManagementViewModel.ApplicationInfo.init(bundleId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SEStorageManagementViewModel.ApplicationInfo(0);
  v19 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v10 = sub_262968950(a1, a2, 1);
  *v8 = a1;
  *(v8 + 1) = a2;
  v11 = v10;
  v12 = [v10 localizedName];
  v13 = sub_262996D44();
  v15 = v14;

  *(v8 + 2) = v13;
  *(v8 + 3) = v15;
  v16 = *(v6 + 24);
  v17 = sub_262996B24();
  (*(*(v17 - 8) + 56))(&v8[v16], 1, 1, v17);
  sub_2629659F8(v8, a3);
  return (*(v19 + 56))(a3, 0, 1, v6);
}

uint64_t SEStorageManagementViewModel.ApplicationInfo.init(appInfo:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SEStorageManagementViewModel.ApplicationInfo(0);
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_262996CC4();
  v9 = v8;
  v10 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v11 = sub_262968950(v7, v9, 1);
  *v6 = sub_262996CC4();
  v6[1] = v12;
  v13 = [v11 localizedName];
  v14 = sub_262996D44();
  v16 = v15;

  v6[2] = v14;
  v6[3] = v16;
  v17 = *(v4 + 24);
  v18 = sub_262996B24();
  (*(*(v18 - 8) + 56))(v6 + v17, 1, 1, v18);
  sub_2629659F8(v6, a2);
  return (*(v20 + 56))(a2, 0, 1, v4);
}

uint64_t SEStorageManagementViewModel.ApplicationInfo.init(bundleId:lastUsedDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SEStorageManagementViewModel.ApplicationInfo(0);
  v19 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v12 = sub_262968950(a1, a2, 1);
  *v10 = a1;
  v10[1] = a2;
  v13 = v12;
  v14 = [v12 localizedName];
  v15 = sub_262996D44();
  v17 = v16;

  v10[2] = v15;
  v10[3] = v17;
  sub_262963C48(a3, v10 + *(v8 + 24));
  sub_2629659F8(v10, a4);
  return (*(v19 + 56))(a4, 0, 1, v8);
}

uint64_t sub_2629681A0()
{
  v1 = 0x657A696C61636F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x646573557473616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_262968214@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_262968F50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26296823C(uint64_t a1)
{
  v2 = sub_262968A2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262968278(uint64_t a1)
{
  v2 = sub_262968A2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementViewModel.ApplicationInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31610, &qword_2629979F8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262968A2C();
  sub_262997074();
  v8[15] = 0;
  sub_262996F84();
  if (!v1)
  {
    v8[14] = 1;
    sub_262996F84();
    type metadata accessor for SEStorageManagementViewModel.ApplicationInfo(0);
    v8[13] = 2;
    sub_262996B24();
    sub_262968B88(&qword_27FF31620, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_262996F74();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t SEStorageManagementViewModel.ApplicationInfo.hashValue.getter()
{
  sub_262997004();
  sub_262996D64();
  return sub_262997044();
}

uint64_t SEStorageManagementViewModel.ApplicationInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314D0, &qword_262997510);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31628, &qword_262997A00);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  v10 = type metadata accessor for SEStorageManagementViewModel.ApplicationInfo(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262968A2C();
  sub_262997064();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v10;
  v13 = v19;
  v23 = 0;
  *v12 = sub_262996F14();
  v12[1] = v14;
  v22 = 1;
  v12[2] = sub_262996F14();
  v12[3] = v15;
  sub_262996B24();
  v21 = 2;
  sub_262968B88(&qword_27FF31630, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_262996F04();
  (*(v13 + 8))(v9, v20);
  sub_262963C48(v6, v12 + *(v17 + 24));
  sub_262968A80(v12, v18);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_262968AE4(v12);
}

uint64_t sub_262968888(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_262996FD4();
  }
}

uint64_t sub_2629688B8()
{
  sub_262997004();
  sub_262996D64();
  return sub_262997044();
}

uint64_t sub_262968904(uint64_t a1)
{
  sub_262997004();
  sub_262996D64();
  return sub_262997044();
}

uint64_t sub_262968944@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

id sub_262968950(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_262996D34();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_262996AF4();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_262968A2C()
{
  result = qword_27FF31618;
  if (!qword_27FF31618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31618);
  }

  return result;
}

uint64_t sub_262968A80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageManagementViewModel.ApplicationInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_262968AE4(uint64_t a1)
{
  v2 = type metadata accessor for SEStorageManagementViewModel.ApplicationInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_262968B88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_262968BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314D0, &qword_262997510);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_262968CB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314D0, &qword_262997510);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_262968D64(uint64_t a1)
{
  sub_262968DE0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_262968DE0(uint64_t a1)
{
  if (!qword_27FF31650)
  {
    sub_262996B24();
    v1 = sub_262996DF4();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF31650);
    }
  }
}

unint64_t sub_262968E4C()
{
  result = qword_27FF31658;
  if (!qword_27FF31658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31658);
  }

  return result;
}

unint64_t sub_262968EA4()
{
  result = qword_27FF31660;
  if (!qword_27FF31660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31660);
  }

  return result;
}

unint64_t sub_262968EFC()
{
  result = qword_27FF31668;
  if (!qword_27FF31668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31668);
  }

  return result;
}

uint64_t sub_262968F50(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000026299C050 == a2 || (sub_262996FD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xED0000656D614E64 || (sub_262996FD4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646573557473616CLL && a2 == 0xEC00000065746144)
  {

    return 2;
  }

  else
  {
    v5 = sub_262996FD4();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t SEStorageManagementViewModel.MuirfieldBarItem.localizedTitle.getter()
{
  type metadata accessor for FindClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_262996D34();
  v3 = sub_262996D34();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_262996D44();
  return v5;
}

uint64_t sub_2629691E4()
{
  sub_262997004();
  MEMORY[0x26672E300](0);
  return sub_262997044();
}

uint64_t sub_262969250(uint64_t a1)
{
  sub_262997004();
  MEMORY[0x26672E300](0);
  return sub_262997044();
}

uint64_t sub_2629692A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6567617375 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_262996FD4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_262969334(uint64_t a1)
{
  v2 = sub_26296996C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262969370(uint64_t a1)
{
  v2 = sub_26296996C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementViewModel.MuirfieldBarItem.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31670, &qword_262997C30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26296996C();
  sub_262997074();
  sub_262996FA4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t SEStorageManagementViewModel.MuirfieldBarItem.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x26672E320](*&v1);
}

uint64_t SEStorageManagementViewModel.MuirfieldBarItem.hashValue.getter()
{
  v1 = *v0;
  sub_262997004();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x26672E320](*&v2);
  return sub_262997044();
}

uint64_t SEStorageManagementViewModel.MuirfieldBarItem.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31680, &qword_262997C38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26296996C();
  sub_262997064();
  if (!v2)
  {
    sub_262996F34();
    v10 = v9;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_262969710(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31670, &qword_262997C30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26296996C();
  sub_262997074();
  sub_262996FA4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_26296987C()
{
  v1 = *v0;
  sub_262997004();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x26672E320](*&v2);
  return sub_262997044();
}

uint64_t sub_2629698D8()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x26672E320](*&v1);
}

uint64_t sub_262969914(uint64_t a1)
{
  v2 = *v1;
  sub_262997004();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x26672E320](*&v3);
  return sub_262997044();
}

unint64_t sub_26296996C()
{
  result = qword_27FF31678;
  if (!qword_27FF31678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31678);
  }

  return result;
}

unint64_t sub_2629699C0(void *a1)
{
  a1[1] = sub_262969A00();
  a1[2] = sub_262969A54();
  a1[3] = sub_262969AA8();
  result = sub_262969AFC();
  a1[4] = result;
  return result;
}

unint64_t sub_262969A00()
{
  result = qword_27FF31688;
  if (!qword_27FF31688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31688);
  }

  return result;
}

unint64_t sub_262969A54()
{
  result = qword_27FF31690;
  if (!qword_27FF31690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31690);
  }

  return result;
}

unint64_t sub_262969AA8()
{
  result = qword_27FF31698;
  if (!qword_27FF31698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31698);
  }

  return result;
}

unint64_t sub_262969AFC()
{
  result = qword_27FF316A0;
  if (!qword_27FF316A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF316A0);
  }

  return result;
}

unint64_t sub_262969B54()
{
  result = qword_27FF316A8;
  if (!qword_27FF316A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF316A8);
  }

  return result;
}

uint64_t _s16MuirfieldBarItemVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s16MuirfieldBarItemVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t _s16MuirfieldBarItemV10CodingKeysOwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *_s16MuirfieldBarItemV10CodingKeysOwst(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_262969CF8()
{
  result = qword_27FF316B0;
  if (!qword_27FF316B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF316B0);
  }

  return result;
}

unint64_t sub_262969D50()
{
  result = qword_27FF316B8;
  if (!qword_27FF316B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF316B8);
  }

  return result;
}

unint64_t sub_262969DA8()
{
  result = qword_27FF316C0;
  if (!qword_27FF316C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF316C0);
  }

  return result;
}

uint64_t SESOpaqueObjectiveCBridgable<>._bridgeToObjectiveC()(uint64_t a1, uint64_t a2)
{
  sub_262996AE4();
  swift_allocObject();
  sub_262996AD4();
  v2 = sub_262996AC4();
  v4 = v3;
  v5 = sub_262996B04();
  sub_262969EB4(v2, v4);

  return v5;
}

uint64_t sub_262969EB4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t static SESOpaqueObjectiveCBridgable<>._forceBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_262996DF4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - v8;
  sub_262996AB4();
  swift_allocObject();
  sub_262996AA4();
  v10 = sub_262996B14();
  v12 = v11;
  sub_262996A94();
  (*(v7 + 8))(a2, v6);
  sub_262969EB4(v10, v12);

  (*(*(a3 - 8) + 56))(v9, 0, 1, a3);
  return (*(v7 + 32))(a2, v9, v6);
}

BOOL static SESOpaqueObjectiveCBridgable<>._conditionallyBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_262996DF4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  v21 = *(v7 + 8);
  v22 = a2;
  v21(a2, v6);
  sub_262996AB4();
  swift_allocObject();
  sub_262996AA4();
  v13 = sub_262996B14();
  v15 = v14;
  sub_262996A94();

  sub_262969EB4(v13, v15);
  v16 = *(a3 - 8);
  (*(v16 + 56))(v12, 0, 1, a3);
  v17 = v22;
  (*(v7 + 32))(v22, v12, v6);
  (*(v7 + 16))(v10, v17, v6);
  v18 = (*(v16 + 48))(v10, 1, a3) != 1;
  v21(v10, v6);
  return v18;
}

uint64_t static SESOpaqueObjectiveCBridgable<>._unconditionallyBridgeFromObjectiveC(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = sub_262996DF4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  v14 = *(a2 - 8);
  result = (*(v14 + 56))(&v16 - v12, 1, 1, a2);
  if (a1)
  {
    sub_262996EC4();
    (*(v8 + 16))(v11, v13, v7);
    result = (*(v14 + 48))(v11, 1, a2);
    if (result != 1)
    {
      (*(v8 + 8))(v13, v7);
      return (*(v14 + 32))(a4, v11, a2);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t CredentialType.localizedDescription.getter()
{
  v1 = v0;
  v2 = sub_262996B64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_262996C14();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v1, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == *MEMORY[0x277D49240])
  {
    (*(v7 + 96))(v9, v6);
    (*(v3 + 32))(v5, v9, v2);
    v11 = sub_26296BA1C();
    (*(v3 + 8))(v5, v2);
  }

  else if (v10 == *MEMORY[0x277D49238] || v10 == *MEMORY[0x277D491A8])
  {
    v11 = 0x584946204F444F54;
    (*(v7 + 8))(v9, v6);
  }

  else if (v10 == *MEMORY[0x277D491F0] || v10 == *MEMORY[0x277D491D8] || v10 == *MEMORY[0x277D49268] || v10 == *MEMORY[0x277D49200] || v10 == *MEMORY[0x277D491E0] || v10 == *MEMORY[0x277D49288] || v10 == *MEMORY[0x277D49208] || v10 == *MEMORY[0x277D491E8] || v10 == *MEMORY[0x277D49250] || v10 == *MEMORY[0x277D49210] || v10 == *MEMORY[0x277D49258] || v10 == *MEMORY[0x277D491B8] || v10 == *MEMORY[0x277D491B0] || v10 == *MEMORY[0x277D491C8] || v10 == *MEMORY[0x277D491C0] || v10 == *MEMORY[0x277D49220] || v10 == *MEMORY[0x277D49230] || v10 == *MEMORY[0x277D49260] || v10 == *MEMORY[0x277D49278] || v10 == *MEMORY[0x277D491F8] || v10 == *MEMORY[0x277D49218] || v10 == *MEMORY[0x277D49228] || v10 == *MEMORY[0x277D49248] || v10 == *MEMORY[0x277D491D0] || v10 == *MEMORY[0x277D49270] || v10 == *MEMORY[0x277D49280] || v10 == *MEMORY[0x277D49290])
  {
    type metadata accessor for FindClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = [objc_opt_self() bundleForClass_];
    v14 = sub_262996D34();
    v15 = sub_262996D34();
    v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

    v11 = sub_262996D44();
  }

  else
  {
    v18 = v7;
    type metadata accessor for FindClass();
    v19 = swift_getObjCClassFromMetadata();
    v20 = [objc_opt_self() bundleForClass_];
    v21 = sub_262996D34();
    v22 = sub_262996D34();
    v23 = [v20 localizedStringForKey:v21 value:0 table:v22];

    v11 = sub_262996D44();
    (*(v18 + 8))(v9, v6);
  }

  return v11;
}

uint64_t sub_26296BA1C()
{
  v1 = v0;
  v2 = sub_262996B64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D490C0] || v6 == *MEMORY[0x277D490A8] || v6 == *MEMORY[0x277D49128] || v6 == *MEMORY[0x277D490D0] || v6 == *MEMORY[0x277D490B0] || v6 == *MEMORY[0x277D490D8] || v6 == *MEMORY[0x277D490B8] || v6 == *MEMORY[0x277D490E0] || v6 == *MEMORY[0x277D49118] || v6 == *MEMORY[0x277D49088] || v6 == *MEMORY[0x277D49080] || v6 == *MEMORY[0x277D49098] || v6 == *MEMORY[0x277D49090] || v6 == *MEMORY[0x277D490F0] || (v19 = v5, v20 = v2, v6 == *MEMORY[0x277D49100]) || v6 == *MEMORY[0x277D49120] || v6 == *MEMORY[0x277D49138] || v6 == *MEMORY[0x277D490C8] || v6 == *MEMORY[0x277D490E8] || v6 == *MEMORY[0x277D490F8] || v6 == *MEMORY[0x277D49108] || v6 == *MEMORY[0x277D49130] || v6 == *MEMORY[0x277D49140] || v6 == *MEMORY[0x277D490A0] || v6 == *MEMORY[0x277D49110] || v6 == *MEMORY[0x277D49148])
  {
    type metadata accessor for FindClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    v9 = sub_262996D34();
    v10 = sub_262996D34();
    v11 = [v8 localizedStringForKey:v9 value:0 table:v10];

    v12 = sub_262996D44();
  }

  else
  {
    type metadata accessor for FindClass();
    v14 = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass_];
    v16 = sub_262996D34();
    v17 = sub_262996D34();
    v18 = [v15 localizedStringForKey:v16 value:0 table:v17];

    v12 = sub_262996D44();
    (*(v3 + 8))(v19, v20);
  }

  return v12;
}

uint64_t SEStorageManagementViewModel.PrimaryCategory.entries.getter()
{
  type metadata accessor for SEStorageManagementViewModel.PrimaryCategory(0);
}

uint64_t sub_26296CDA0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SEStorageManagementViewModel.PrimaryCategory.init(identifier:entries:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2629716FC(a1, a3, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier);
  result = type metadata accessor for SEStorageManagementViewModel.PrimaryCategory(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

double SEStorageManagementViewModel.PrimaryCategory.usage.getter()
{
  v1 = *(v0 + *(type metadata accessor for SEStorageManagementViewModel.PrimaryCategory(0) + 20));
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0.0;
  }

  v3 = v1 + 32;
  v4 = 0.0;
  do
  {
    sub_26296F988(v3, v8);
    v5 = v9;
    v6 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v4 = v4 + (*(v6 + 40))(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v8);
    v3 += 40;
    --v2;
  }

  while (v2);
  return v4;
}

uint64_t SEStorageManagementViewModel.PrimaryCategory.lastUsedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314D0, &qword_262997510);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - v6;
  v8 = sub_262996B24();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v26 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + *(type metadata accessor for SEStorageManagementViewModel.PrimaryCategory(0) + 20));
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v11 + 32;
    v14 = (v9 + 48);
    v24 = v9;
    v25 = (v9 + 32);
    v15 = MEMORY[0x277D84F90];
    do
    {
      sub_26296F988(v13, v27);
      v17 = v28;
      v16 = v29;
      __swift_project_boxed_opaque_existential_1(v27, v28);
      (*(v16 + 48))(v17, v16);
      sub_262963C48(v5, v7);
      __swift_destroy_boxed_opaque_existential_1(v27);
      if ((*v14)(v7, 1, v8) == 1)
      {
        sub_2629737D4(v7, &qword_27FF314D0, &qword_262997510);
      }

      else
      {
        v18 = *v25;
        (*v25)(v26, v7, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_2629658A0(0, *(v15 + 2) + 1, 1, v15);
        }

        v20 = *(v15 + 2);
        v19 = *(v15 + 3);
        if (v20 >= v19 >> 1)
        {
          v15 = sub_2629658A0((v19 > 1), v20 + 1, 1, v15);
        }

        *(v15 + 2) = v20 + 1;
        v18(&v15[((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v20], v26, v8);
      }

      v13 += 40;
      --v12;
    }

    while (v12);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  sub_262963D20(v15, v23);
}

uint64_t SEStorageManagementViewModel.PrimaryCategory.localizedTitle.getter()
{
  v1 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_262972420(v0, v9, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_2;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_2629716FC(v9, v6, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
    v18 = SEStorageManagementViewModel.WalletUsageCategory.localizedTitle.getter();
    v15 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory;
    v16 = v6;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_2629716FC(v9, v3, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
    v18 = *(v3 + 2);

    v15 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp;
    v16 = v3;
LABEL_7:
    sub_262971764(v16, v15);
    return v18;
  }

LABEL_2:
  type metadata accessor for FindClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  v13 = sub_262996D34();
  v14 = sub_262996D34();
  v17 = [v12 localizedStringForKey:v13 value:0 table:v14];

  v18 = sub_262996D44();
  return v18;
}

uint64_t sub_26296D700()
{
  type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier(0);
  sub_262996E84();
  return 0;
}

uint64_t SEStorageManagementViewModel.PrimaryCategory.id.getter()
{
  type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier(0);
  sub_262996E84();
  return 0;
}

uint64_t sub_26296D7A0@<X0>(void *a1@<X8>)
{
  type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier(0);
  result = sub_262996E84();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_26296D810()
{
  v1 = *v0;
  v2 = 0x6B6F6F6273736150;
  v3 = 1835619141;
  if (v1 != 5)
  {
    v3 = 0x6553616E6E656956;
  }

  v4 = 0x616E6E656956;
  if (v1 != 3)
  {
    v4 = 0x6C6569667269754DLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0xD000000000000016;
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

uint64_t sub_26296D8F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2629734AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26296D928(uint64_t a1)
{
  v2 = sub_262972138();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26296D964(uint64_t a1)
{
  v2 = sub_262972138();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26296D9AC@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_26296D9DC(uint64_t a1)
{
  v2 = sub_2629721E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26296DA18(uint64_t a1)
{
  v2 = sub_2629721E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26296DA54(uint64_t a1)
{
  v2 = sub_262972234();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26296DA90(uint64_t a1)
{
  v2 = sub_262972234();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26296DACC(uint64_t a1)
{
  v2 = sub_2629723CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26296DB08(uint64_t a1)
{
  v2 = sub_2629723CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26296DB44(uint64_t a1)
{
  v2 = sub_262972330();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26296DB80(uint64_t a1)
{
  v2 = sub_262972330();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26296DBBC(uint64_t a1)
{
  v2 = sub_2629722DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26296DBF8(uint64_t a1)
{
  v2 = sub_2629722DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26296DC34(uint64_t a1)
{
  v2 = sub_262972288();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26296DC70(uint64_t a1)
{
  v2 = sub_262972288();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26296DCD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000026299C4D0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_262996FD4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_26296DD68(uint64_t a1)
{
  v2 = sub_26297218C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26296DDA4(uint64_t a1)
{
  v2 = sub_26297218C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementViewModel.PrimaryCategory.Identifier.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF316C8, " L");
  v3 = *(v2 - 8);
  v59 = v2;
  v60 = v3;
  MEMORY[0x28223BE20](v2);
  v66 = &v45 - v4;
  v56 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp(0);
  MEMORY[0x28223BE20](v56);
  v65 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF316D0, &qword_262997EF0);
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x28223BE20](v6);
  v55 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF316D8, &qword_262997EF8);
  v53 = *(v8 - 8);
  v54 = v8;
  MEMORY[0x28223BE20](v8);
  v52 = &v45 - v9;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF316E0, &qword_262997F00);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v45 - v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF316E8, &qword_262997F08);
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v45 = &v45 - v11;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF316F0, &qword_262997F10);
  v48 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v63 = &v45 - v12;
  v62 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0);
  MEMORY[0x28223BE20](v62);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF316F8, &qword_262997F18);
  v61 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - v16;
  v18 = type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31700, &qword_262997F20);
  v69 = *(v21 - 8);
  v70 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v45 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262972138();
  v68 = v23;
  sub_262997074();
  sub_262972420(v67, v20, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v28 = v61;
    v29 = v14;
    v30 = v63;
    v31 = v64;
    v33 = v65;
    v32 = v66;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v71 = 0;
        sub_2629723CC();
        v42 = v70;
        v43 = v68;
        sub_262996F64();
        (*(v28 + 8))(v17, v15);
        return (*(v69 + 8))(v43, v42);
      }

      sub_2629716FC(v20, v65, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
      v77 = 6;
      sub_26297218C();
      v34 = v70;
      v35 = v68;
      sub_262996F64();
      sub_262972384(&qword_27FF31718, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp, &protocol conformance descriptor for SEStorageManagementViewModel.ViennaUsageApp);
      v36 = v59;
      sub_262996FB4();
      (*(v60 + 8))(v32, v36);
      v37 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp;
    }

    else
    {
      v33 = v29;
      sub_2629716FC(v20, v29, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
      v72 = 1;
      sub_262972330();
      v34 = v70;
      v35 = v68;
      sub_262996F64();
      sub_262972384(&qword_27FF31748, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory, &protocol conformance descriptor for SEStorageManagementViewModel.WalletUsageCategory);
      sub_262996FB4();
      (*(v48 + 8))(v30, v31);
      v37 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory;
    }

    sub_262971764(v33, v37);
    return (*(v69 + 8))(v35, v34);
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v75 = 4;
      sub_262972234();
      v38 = v52;
      v26 = v70;
      v27 = v68;
      sub_262996F64();
      v40 = v53;
      v39 = v54;
    }

    else
    {
      v76 = 5;
      sub_2629721E0();
      v38 = v55;
      v26 = v70;
      v27 = v68;
      sub_262996F64();
      v40 = v57;
      v39 = v58;
    }

    (*(v40 + 8))(v38, v39);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v73 = 2;
    sub_2629722DC();
    v25 = v45;
    v26 = v70;
    v27 = v68;
    sub_262996F64();
    (*(v46 + 8))(v25, v47);
  }

  else
  {
    v74 = 3;
    sub_262972288();
    v44 = v49;
    v26 = v70;
    v27 = v68;
    sub_262996F64();
    (*(v50 + 8))(v44, v51);
  }

  return (*(v69 + 8))(v27, v26);
}

uint64_t SEStorageManagementViewModel.PrimaryCategory.Identifier.hash(into:)(uint64_t a1)
{
  v26 = a1;
  v2 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_262996C14();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_262972420(v1, v17, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        return MEMORY[0x26672E300](0);
      }

      sub_2629716FC(v17, v4, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
      MEMORY[0x26672E300](6);
      sub_262996D64();
      v20 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp;
      v21 = v4;
    }

    else
    {
      sub_2629716FC(v17, v14, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
      v22 = v26;
      MEMORY[0x26672E300](1);
      sub_262972420(v14, v11, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
      v23 = (*(v6 + 48))(v11, 2, v5);
      if (v23)
      {
        if (v23 == 1)
        {
          v24 = 0;
        }

        else
        {
          v24 = 2;
        }

        MEMORY[0x26672E300](v24);
      }

      else
      {
        (*(v6 + 32))(v8, v11, v5);
        MEMORY[0x26672E300](1);
        sub_262972384(&qword_27FF315C8, MEMORY[0x277D49298], MEMORY[0x277D492A8]);
        sub_262996D04();
        (*(v6 + 8))(v8, v5);
      }

      sub_262965F2C(v22, *&v14[*(v12 + 20)]);
      v20 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory;
      v21 = v14;
    }

    return sub_262971764(v21, v20);
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      return MEMORY[0x26672E300](4);
    }

    else
    {
      return MEMORY[0x26672E300](5);
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return MEMORY[0x26672E300](2);
  }

  else
  {
    return MEMORY[0x26672E300](3);
  }
}

uint64_t sub_26296EBB0()
{
  sub_262997004();
  SEStorageManagementViewModel.PrimaryCategory.Identifier.hash(into:)(v1);
  return sub_262997044();
}

uint64_t SEStorageManagementViewModel.PrimaryCategory.Identifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31758, &qword_262997F28);
  v4 = *(v3 - 8);
  v84 = v3;
  v85 = v4;
  MEMORY[0x28223BE20](v3);
  v94 = &v66 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31760, &qword_262997F30);
  v82 = *(v6 - 8);
  v83 = v6;
  MEMORY[0x28223BE20](v6);
  v93 = &v66 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31768, &qword_262997F38);
  v80 = *(v8 - 8);
  v81 = v8;
  MEMORY[0x28223BE20](v8);
  v88 = &v66 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31770, &qword_262997F40);
  v11 = *(v10 - 8);
  v78 = v10;
  v79 = v11;
  MEMORY[0x28223BE20](v10);
  v87 = &v66 - v12;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31778, &qword_262997F48);
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v86 = &v66 - v13;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31780, &qword_262997F50);
  v77 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v92 = &v66 - v14;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31788, &qword_262997F58);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v91 = &v66 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31790, &unk_262997F60);
  v90 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v66 - v17;
  v19 = type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier(0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v66 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v66 - v26;
  v28 = a1[3];
  v95 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_262972138();
  v29 = v96;
  sub_262997064();
  if (v29)
  {
    goto LABEL_11;
  }

  v30 = v91;
  v67 = v25;
  v68 = v22;
  v31 = v92;
  v70 = 0;
  v33 = v93;
  v32 = v94;
  v71 = v19;
  v69 = v27;
  v96 = v18;
  v34 = sub_262996F54();
  if (*(v34 + 16) == 1)
  {
    v35 = *(v34 + 32);
    if (v35 != 7)
    {
      if (*(v34 + 32) > 2u)
      {
        if (*(v34 + 32) > 4u)
        {
          v36 = v89;
          if (v35 != 5)
          {
            v103 = 6;
            sub_26297218C();
            v60 = v32;
            v61 = v96;
            v62 = v70;
            sub_262996EE4();
            v63 = v90;
            if (!v62)
            {
              v93 = v16;
              type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp(0);
              sub_262972384(&qword_27FF317A0, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp, &protocol conformance descriptor for SEStorageManagementViewModel.ViennaUsageApp);
              v64 = v68;
              v65 = v84;
              sub_262996F44();
              (*(v85 + 8))(v60, v65);
              (*(v63 + 8))(v96, v93);
              swift_unknownObjectRelease();
              swift_storeEnumTagMultiPayload();
              v41 = v69;
              sub_2629716FC(v64, v69, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier);
              goto LABEL_33;
            }

            (*(v90 + 8))(v61, v16);
            goto LABEL_10;
          }

          v102 = 5;
          sub_2629721E0();
          v38 = v96;
          v55 = v70;
          sub_262996EE4();
          v40 = v90;
          if (!v55)
          {
            (*(v82 + 8))(v33, v83);
            (*(v40 + 8))(v38, v16);
            swift_unknownObjectRelease();
            v41 = v69;
            swift_storeEnumTagMultiPayload();
            goto LABEL_33;
          }
        }

        else
        {
          v36 = v89;
          if (v35 == 3)
          {
            v100 = 3;
            sub_262972288();
            v37 = v87;
            v38 = v96;
            v39 = v70;
            sub_262996EE4();
            v40 = v90;
            if (!v39)
            {
              (*(v79 + 8))(v37, v78);
              (*(v40 + 8))(v38, v16);
              swift_unknownObjectRelease();
              v41 = v69;
              swift_storeEnumTagMultiPayload();
LABEL_33:
              v54 = v95;
              goto LABEL_34;
            }
          }

          else
          {
            v101 = 4;
            sub_262972234();
            v58 = v88;
            v38 = v96;
            v59 = v70;
            sub_262996EE4();
            v40 = v90;
            if (!v59)
            {
              (*(v80 + 8))(v58, v81);
              (*(v40 + 8))(v38, v16);
              swift_unknownObjectRelease();
              v41 = v69;
              swift_storeEnumTagMultiPayload();
              goto LABEL_33;
            }
          }
        }

        goto LABEL_25;
      }

      if (*(v34 + 32))
      {
        v49 = v96;
        v50 = v70;
        if (v35 == 1)
        {
          v98 = 1;
          sub_262972330();
          v51 = v31;
          sub_262996EE4();
          if (!v50)
          {
            type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0);
            sub_262972384(&qword_27FF317A8, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory, &protocol conformance descriptor for SEStorageManagementViewModel.WalletUsageCategory);
            v52 = v67;
            v53 = v72;
            sub_262996F44();
            (*(v77 + 8))(v51, v53);
            (*(v90 + 8))(v49, v16);
            swift_unknownObjectRelease();
            v54 = v95;
            swift_storeEnumTagMultiPayload();
            v41 = v69;
            sub_2629716FC(v52, v69, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier);
            v36 = v89;
LABEL_34:
            sub_2629716FC(v41, v36, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier);
            v47 = v54;
            return __swift_destroy_boxed_opaque_existential_1(v47);
          }

          goto LABEL_23;
        }

        v99 = 2;
        sub_2629722DC();
        v57 = v86;
        sub_262996EE4();
        if (v50)
        {
LABEL_23:
          (*(v90 + 8))(v49, v16);
          goto LABEL_10;
        }

        (*(v75 + 8))(v57, v76);
        (*(v90 + 8))(v49, v16);
        swift_unknownObjectRelease();
        v41 = v69;
      }

      else
      {
        v97 = 0;
        sub_2629723CC();
        v38 = v96;
        v56 = v70;
        sub_262996EE4();
        if (v56)
        {
          v40 = v90;
LABEL_25:
          (*(v40 + 8))(v38, v16);
          goto LABEL_10;
        }

        (*(v73 + 8))(v30, v74);
        (*(v90 + 8))(v38, v16);
        swift_unknownObjectRelease();
        v41 = v69;
      }

      swift_storeEnumTagMultiPayload();
      v54 = v95;
      v36 = v89;
      goto LABEL_34;
    }
  }

  v42 = v16;
  v43 = sub_262996E44();
  swift_allocError();
  v45 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31798, &qword_2629991C0);
  *v45 = v71;
  v46 = v96;
  sub_262996EF4();
  sub_262996E34();
  (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D84160], v43);
  swift_willThrow();
  (*(v90 + 8))(v46, v42);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v47 = v95;
  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t sub_26296F918()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26296F988(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26296F9F0(uint64_t a1)
{
  sub_262997004();
  SEStorageManagementViewModel.PrimaryCategory.Identifier.hash(into:)(v2);
  return sub_262997044();
}

BOOL SEStorageManagementViewModel.PrimaryCategory.isPassbookSecondaryCategory.getter()
{
  v1 = type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_262972420(v0, v3, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = EnumCaseMultiPayload == 0;
  if (EnumCaseMultiPayload)
  {
    v6 = type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier;
  }

  else
  {
    v6 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory;
  }

  sub_262971764(v3, v6);
  return v5;
}

BOOL SEStorageManagementViewModel.PrimaryCategory.isViennaSecondaryCategory.getter()
{
  v1 = type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_262972420(v0, v3, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = EnumCaseMultiPayload == 1;
  if (EnumCaseMultiPayload == 1)
  {
    v6 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp;
  }

  else
  {
    v6 = type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier;
  }

  sub_262971764(v3, v6);
  return v5;
}

uint64_t sub_26296FBE4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x800000026299BF30;
  if (v2 == 1)
  {
    v4 = 0x800000026299BF30;
  }

  else
  {
    v4 = 0x800000026299BF50;
  }

  if (*a1)
  {
    v5 = 0xD000000000000017;
  }

  else
  {
    v5 = 0x696669746E656469;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA00000000007265;
  }

  if (*a2 != 1)
  {
    v3 = 0x800000026299BF50;
  }

  if (*a2)
  {
    v7 = 0xD000000000000017;
  }

  else
  {
    v7 = 0x696669746E656469;
  }

  if (*a2)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0xEA00000000007265;
  }

  if (v5 == v7 && v6 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_262996FD4();
  }

  return v9 & 1;
}

uint64_t sub_26296FCB8()
{
  sub_262997004();
  sub_262996D64();

  return sub_262997044();
}

uint64_t sub_26296FD68(uint64_t a1)
{
  sub_262996D64();
}

uint64_t sub_26296FE04(uint64_t a1)
{
  sub_262997004();
  sub_262996D64();

  return sub_262997044();
}

unint64_t sub_26296FEB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26297370C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26296FEE0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0x800000026299BF30;
  if (v2 != 1)
  {
    v4 = 0x800000026299BF50;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = 0xD000000000000017;
  }

  else
  {
    v6 = 0x696669746E656469;
  }

  if (!v5)
  {
    v3 = v4;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_26296FF4C()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0x696669746E656469;
  }
}

unint64_t sub_26296FFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26297370C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26296FFDC(uint64_t a1)
{
  v2 = sub_262972488();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262970018(uint64_t a1)
{
  v2 = sub_262972488();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementViewModel.PrimaryCategory.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier(0);
  MEMORY[0x28223BE20](v3);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF317B0, &unk_262997F70);
  v23 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  v8 = type metadata accessor for SEStorageManagementViewModel.PrimaryCategory(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262972488();
  v11 = v26;
  sub_262997064();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v8;
  v26 = a1;
  v12 = v10;
  v13 = v23;
  v14 = v24;
  LOBYTE(v28) = 0;
  sub_262972384(&qword_27FF317C0, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier, &protocol conformance descriptor for SEStorageManagementViewModel.PrimaryCategory.Identifier);
  v15 = v25;
  sub_262996F44();
  sub_2629716FC(v15, v12, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF317C8, &unk_26299A900);
  v27 = 1;
  sub_262972578(&qword_27FF317D0, &qword_27FF317A8, &protocol conformance descriptor for SEStorageManagementViewModel.WalletUsageCategory, MEMORY[0x277D83978]);
  sub_262996F44();
  v17 = v13;
  if (*(v28 + 16))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF317D8, &unk_262997F80);
    v27 = 2;
    sub_2629724DC(&qword_27FF317E0, &qword_27FF317A0, &protocol conformance descriptor for SEStorageManagementViewModel.ViennaUsageApp, MEMORY[0x277D83978]);
    sub_262996F44();
    v18 = v22;
    v19 = v7;
    v20 = v5;
    if (*(v28 + 16))
    {
      v21 = MEMORY[0x277D84F90];
    }

    else
    {
      v21 = sub_26297076C(v28, sub_2629717C4, &qword_27FF31980, &protocol conformance descriptor for SEStorageManagementViewModel.ViennaUsageApp, sub_262973858);
    }
  }

  else
  {
    v19 = v7;
    v20 = v5;
    v21 = sub_262970520(v28);
    v18 = v22;
  }

  (*(v17 + 8))(v19, v20);
  *(v12 + *(v18 + 20)) = v21;
  sub_262972420(v12, v14, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return sub_262971764(v12, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory);
}

uint64_t sub_262970520(uint64_t a1)
{
  v2 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v17 = MEMORY[0x277D84F90];
    sub_2629717C4(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_262972420(v8, v5, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_2629717C4((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_262972384(&qword_27FF31970, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory, &protocol conformance descriptor for SEStorageManagementViewModel.WalletUsageCategory);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_262972420(v5, boxed_opaque_existential_1, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
      *(v7 + 16) = v11 + 1;
      sub_2629737BC(&v14, v7 + 40 * v11 + 32);
      sub_262971764(v5, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_26297076C(uint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t), unint64_t *a3, uint64_t a4, void (*a5)(uint64_t *, unint64_t))
{
  v22 = a5;
  v9 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v24 = MEMORY[0x277D84F90];
    v21 = a2;
    a2(0, v13, 0);
    v14 = v24;
    v15 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v16 = *(v10 + 72);
    do
    {
      sub_262972420(v15, v12, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
      v24 = v14;
      v18 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v18 >= v17 >> 1)
      {
        v21(v17 > 1, v18 + 1, 1);
        v14 = v24;
      }

      v23[3] = v9;
      v23[4] = sub_262972384(a3, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp, a4);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
      sub_262972420(v12, boxed_opaque_existential_1, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
      *(v14 + 16) = v18 + 1;
      v22(v23, v14 + 40 * v18 + 32);
      sub_262971764(v12, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
      v15 += v16;
      --v13;
    }

    while (v13);
  }

  return v14;
}

uint64_t sub_262970980(uint64_t a1)
{
  v2 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v17 = MEMORY[0x277D84F90];
    sub_262971844(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_262972420(v8, v5, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_262971844((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_262972384(&qword_27FF31950, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory, &protocol conformance descriptor for SEStorageManagementViewModel.WalletUsageCategory);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_262972420(v5, boxed_opaque_existential_1, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
      *(v7 + 16) = v11 + 1;
      sub_2629737BC(&v14, v7 + 40 * v11 + 32);
      sub_262971764(v5, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_262970B84(uint64_t a1)
{
  v2 = type metadata accessor for SEStorageManagementViewModel.PrimaryCategory(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v17 = MEMORY[0x277D84F90];
    sub_262971844(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_262972420(v8, v5, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_262971844((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_262972384(&qword_27FF31938, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory, &protocol conformance descriptor for SEStorageManagementViewModel.PrimaryCategory);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_262972420(v5, boxed_opaque_existential_1, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory);
      *(v7 + 16) = v11 + 1;
      sub_2629737BC(&v14, v7 + 40 * v11 + 32);
      sub_262971764(v5, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t SEStorageManagementViewModel.PrimaryCategory.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF317E8, &unk_26299A910);
  MEMORY[0x28223BE20](v2 - 8);
  v58 = &v54 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF317F0, &qword_262997F90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v54 - v5;
  v7 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0);
  v64 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v63 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v57 = &v54 - v10;
  v67 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp(0);
  v59 = *(v67 - 8);
  v11 = MEMORY[0x28223BE20](v67);
  v62 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v54 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF317F8, &qword_262997F98);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v54 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262972488();
  v19 = v60;
  sub_262997074();
  LOBYTE(v66[0]) = 0;
  type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier(0);
  sub_262972384(&qword_27FF31800, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier, &protocol conformance descriptor for SEStorageManagementViewModel.PrimaryCategory.Identifier);
  v20 = v61;
  sub_262996FB4();
  if (v20)
  {
    return (*(v16 + 8))(v18, v15);
  }

  v54 = 0;
  v55 = v18;
  v22 = v57;
  v56 = v16;
  v61 = v15;
  result = type metadata accessor for SEStorageManagementViewModel.PrimaryCategory(0);
  v23 = *(v19 + *(result + 20));
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = 0;
    v26 = v23 + 32;
    while (1)
    {
      if (v25 >= *(v23 + 16))
      {
        __break(1u);
        goto LABEL_43;
      }

      sub_26296F988(v26, v66);
      sub_2629737BC(v66, v65);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31808, &qword_262997FA0);
      result = swift_dynamicCast();
      if (!result)
      {
        break;
      }

      ++v25;
      result = sub_262971764(v14, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
      v26 += 40;
      if (v24 == v25)
      {
        goto LABEL_8;
      }
    }

    LODWORD(v60) = 0;
    v27 = *(v23 + 16);
    if (!v27)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_8:
    LODWORD(v60) = 1;
    v27 = *(v23 + 16);
    if (!v27)
    {
LABEL_15:
      v31 = *(v23 + 16);
      if (v31)
      {
        v32 = v23 + 32;
        v33 = v63;
        v34 = (v64 + 56);
        v35 = (v64 + 48);
        v36 = MEMORY[0x277D84F90];
        do
        {
          sub_26296F988(v32, v66);
          sub_2629737BC(v66, v65);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31808, &qword_262997FA0);
          v37 = swift_dynamicCast();
          (*v34)(v6, v37 ^ 1u, 1, v7);
          if ((*v35)(v6, 1, v7) == 1)
          {
            sub_2629737D4(v6, &qword_27FF317F0, &qword_262997F90);
          }

          else
          {
            sub_2629716FC(v6, v33, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v36 = sub_262965A84(0, v36[2] + 1, 1, v36);
            }

            v39 = v36[2];
            v38 = v36[3];
            if (v39 >= v38 >> 1)
            {
              v36 = sub_262965A84((v38 > 1), v39 + 1, 1, v36);
            }

            v36[2] = v39 + 1;
            v40 = v36 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v39;
            v33 = v63;
            sub_2629716FC(v63, v40, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
          }

          v32 += 40;
          --v31;
        }

        while (v31);
      }

      else
      {
        v36 = MEMORY[0x277D84F90];
      }

      *&v66[0] = v36;
      v65[0] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF317C8, &unk_26299A900);
      sub_262972578(&qword_27FF31818, &qword_27FF31748, &protocol conformance descriptor for SEStorageManagementViewModel.WalletUsageCategory, MEMORY[0x277D83948]);
LABEL_38:
      v52 = v61;
      v53 = v55;
      sub_262996FB4();
      (*(v56 + 8))(v53, v52);
    }
  }

  v28 = 0;
  v29 = v23 + 32;
  v30 = v23 + 32;
  while (v28 < *(v23 + 16))
  {
    sub_26296F988(v30, v66);
    sub_2629737BC(v66, v65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31808, &qword_262997FA0);
    if (!swift_dynamicCast())
    {
      if ((v60 & 1) == 0)
      {
        return (*(v56 + 8))(v55, v61);
      }

      v41 = *(v23 + 16);
      if (v41)
      {
        v42 = v58;
        v43 = (v59 + 56);
        v44 = (v59 + 48);
        v45 = MEMORY[0x277D84F90];
        v46 = v67;
        do
        {
          sub_26296F988(v29, v66);
          sub_2629737BC(v66, v65);
          v47 = swift_dynamicCast();
          (*v43)(v42, v47 ^ 1u, 1, v46);
          if ((*v44)(v42, 1, v46) == 1)
          {
            sub_2629737D4(v42, &qword_27FF317E8, &unk_26299A910);
          }

          else
          {
            sub_2629716FC(v42, v62, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v45 = sub_262965A5C(0, v45[2] + 1, 1, v45);
            }

            v49 = v45[2];
            v48 = v45[3];
            v50 = v59;
            if (v49 >= v48 >> 1)
            {
              v51 = sub_262965A5C((v48 > 1), v49 + 1, 1, v45);
              v50 = v59;
              v45 = v51;
            }

            v45[2] = v49 + 1;
            sub_2629716FC(v62, v45 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v49, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
            v42 = v58;
            v46 = v67;
          }

          v29 += 40;
          --v41;
        }

        while (v41);
      }

      else
      {
        v45 = MEMORY[0x277D84F90];
      }

      *&v66[0] = v45;
      v65[0] = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF317D8, &unk_262997F80);
      sub_2629724DC(&qword_27FF31810, &qword_27FF31718, &protocol conformance descriptor for SEStorageManagementViewModel.ViennaUsageApp, MEMORY[0x277D83948]);
      goto LABEL_38;
    }

    ++v28;
    result = sub_262971764(v22, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
    v30 += 40;
    if (v27 == v28)
    {
      goto LABEL_15;
    }
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_2629716FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_262971764(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_2629717C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_262971B68(a1, a2, a3, *v3, &qword_27FF31978, &qword_262998A48, &qword_27FF31808, &qword_262997FA0);
  *v3 = result;
  return result;
}

char *sub_262971804(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_262971884(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_262971824(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_262971990(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_262971844(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_262971B68(a1, a2, a3, *v3, &qword_27FF31940, &qword_262998A28, &qword_27FF31948, &qword_262998A30);
  *v3 = result;
  return result;
}

char *sub_262971884(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31960, &qword_262998A38);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_262971990(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31968, &qword_262998A40);
  v10 = *(type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0) - 8);
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
  v15 = *(type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0) - 8);
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

void *sub_262971B68(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
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

uint64_t _s16SESUIServiceCore28SEStorageManagementViewModelV15PrimaryCategoryV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31988, &unk_262998A50);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v28 - v18;
  v20 = *(v17 + 56);
  sub_262972420(a1, &v28 - v18, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier);
  sub_262972420(a2, &v19[v20], type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_32;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_32;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_32;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_262972420(v19, v15, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_2629716FC(&v19[v20], v9, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
      v26 = _s16SESUIServiceCore28SEStorageManagementViewModelV19WalletUsageCategoryV2eeoiySbAE_AEtFZ_0(v15, v9);
      sub_262971764(v9, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
      sub_262971764(v15, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
      sub_262971764(v19, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier);
      return v26 & 1;
    }

    v24 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory;
    v25 = v15;
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  sub_262972420(v19, v13, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v24 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp;
    v25 = v13;
LABEL_27:
    sub_262971764(v25, v24);
LABEL_28:
    sub_2629737D4(v19, &qword_27FF31988, &unk_262998A50);
    goto LABEL_29;
  }

  sub_2629716FC(&v19[v20], v6, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
  if (*v13 == *v6 && v13[1] == v6[1])
  {
    sub_262971764(v6, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
    sub_262971764(v13, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
    goto LABEL_32;
  }

  v23 = sub_262996FD4();
  sub_262971764(v6, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
  sub_262971764(v13, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
  if (v23)
  {
LABEL_32:
    sub_262971764(v19, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier);
    v26 = 1;
    return v26 & 1;
  }

  sub_262971764(v19, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier);
LABEL_29:
  v26 = 0;
  return v26 & 1;
}

unint64_t sub_262972138()
{
  result = qword_27FF31708;
  if (!qword_27FF31708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31708);
  }

  return result;
}

unint64_t sub_26297218C()
{
  result = qword_27FF31710;
  if (!qword_27FF31710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31710);
  }

  return result;
}

unint64_t sub_2629721E0()
{
  result = qword_27FF31720;
  if (!qword_27FF31720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31720);
  }

  return result;
}

unint64_t sub_262972234()
{
  result = qword_27FF31728;
  if (!qword_27FF31728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31728);
  }

  return result;
}

unint64_t sub_262972288()
{
  result = qword_27FF31730;
  if (!qword_27FF31730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31730);
  }

  return result;
}

unint64_t sub_2629722DC()
{
  result = qword_27FF31738;
  if (!qword_27FF31738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31738);
  }

  return result;
}

unint64_t sub_262972330()
{
  result = qword_27FF31740;
  if (!qword_27FF31740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31740);
  }

  return result;
}

uint64_t sub_262972384(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2629723CC()
{
  result = qword_27FF31750;
  if (!qword_27FF31750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31750);
  }

  return result;
}

uint64_t sub_262972420(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_262972488()
{
  result = qword_27FF317B8;
  if (!qword_27FF317B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF317B8);
  }

  return result;
}

uint64_t sub_2629724DC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF317D8, &unk_262997F80);
    sub_262972384(a2, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_262972578(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF317C8, &unk_26299A900);
    sub_262972384(a2, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_262972614(void *a1)
{
  a1[1] = sub_262972384(&qword_27FF31820, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory, &protocol conformance descriptor for SEStorageManagementViewModel.PrimaryCategory);
  a1[2] = sub_262972384(&qword_27FF31828, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory, &protocol conformance descriptor for SEStorageManagementViewModel.PrimaryCategory);
  a1[3] = sub_262972384(&qword_27FF31830, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory, &protocol conformance descriptor for SEStorageManagementViewModel.PrimaryCategory);
  result = sub_262972384(&qword_27FF31838, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory, &protocol conformance descriptor for SEStorageManagementViewModel.PrimaryCategory);
  a1[4] = result;
  return result;
}

uint64_t sub_26297278C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier(0);
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

uint64_t sub_26297285C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier(0);
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

void sub_262972914(uint64_t a1)
{
  type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier(319);
  if (v1 <= 0x3F)
  {
    sub_262972998(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_262972998(uint64_t a1)
{
  if (!qword_27FF31860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF31808, &qword_262997FA0);
    v1 = sub_262996DC4();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF31860);
    }
  }
}

void sub_262972A4C(uint64_t a1)
{
  sub_262972AF8(319, &qword_27FF31878, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
  if (v1 <= 0x3F)
  {
    sub_262972AF8(319, &qword_27FF31880, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_262972AF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t _s15PrimaryCategoryV10IdentifierO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s15PrimaryCategoryV10IdentifierO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_262972D20()
{
  result = qword_27FF31888;
  if (!qword_27FF31888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31888);
  }

  return result;
}

unint64_t sub_262972D78()
{
  result = qword_27FF31890;
  if (!qword_27FF31890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31890);
  }

  return result;
}

unint64_t sub_262972DD0()
{
  result = qword_27FF31898;
  if (!qword_27FF31898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31898);
  }

  return result;
}

unint64_t sub_262972E28()
{
  result = qword_27FF318A0;
  if (!qword_27FF318A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF318A0);
  }

  return result;
}

unint64_t sub_262972E80()
{
  result = qword_27FF318A8;
  if (!qword_27FF318A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF318A8);
  }

  return result;
}

unint64_t sub_262972ED8()
{
  result = qword_27FF318B0;
  if (!qword_27FF318B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF318B0);
  }

  return result;
}

unint64_t sub_262972F30()
{
  result = qword_27FF318B8;
  if (!qword_27FF318B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF318B8);
  }

  return result;
}

unint64_t sub_262972F88()
{
  result = qword_27FF318C0;
  if (!qword_27FF318C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF318C0);
  }

  return result;
}

unint64_t sub_262972FE0()
{
  result = qword_27FF318C8;
  if (!qword_27FF318C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF318C8);
  }

  return result;
}

unint64_t sub_262973038()
{
  result = qword_27FF318D0;
  if (!qword_27FF318D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF318D0);
  }

  return result;
}

unint64_t sub_262973090()
{
  result = qword_27FF318D8;
  if (!qword_27FF318D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF318D8);
  }

  return result;
}

unint64_t sub_2629730E8()
{
  result = qword_27FF318E0;
  if (!qword_27FF318E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF318E0);
  }

  return result;
}

unint64_t sub_262973140()
{
  result = qword_27FF318E8;
  if (!qword_27FF318E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF318E8);
  }

  return result;
}

unint64_t sub_262973198()
{
  result = qword_27FF318F0;
  if (!qword_27FF318F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF318F0);
  }

  return result;
}

unint64_t sub_2629731F0()
{
  result = qword_27FF318F8;
  if (!qword_27FF318F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF318F8);
  }

  return result;
}

unint64_t sub_262973248()
{
  result = qword_27FF31900;
  if (!qword_27FF31900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31900);
  }

  return result;
}

unint64_t sub_2629732A0()
{
  result = qword_27FF31908;
  if (!qword_27FF31908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31908);
  }

  return result;
}

unint64_t sub_2629732F8()
{
  result = qword_27FF31910;
  if (!qword_27FF31910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31910);
  }

  return result;
}

unint64_t sub_262973350()
{
  result = qword_27FF31918;
  if (!qword_27FF31918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31918);
  }

  return result;
}

unint64_t sub_2629733A8()
{
  result = qword_27FF31920;
  if (!qword_27FF31920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31920);
  }

  return result;
}

unint64_t sub_262973400()
{
  result = qword_27FF31928;
  if (!qword_27FF31928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31928);
  }

  return result;
}

unint64_t sub_262973458()
{
  result = qword_27FF31930;
  if (!qword_27FF31930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31930);
  }

  return result;
}

uint64_t sub_2629734AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B6F6F6273736150 && a2 == 0xE800000000000000;
  if (v4 || (sub_262996FD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026299C490 == a2 || (sub_262996FD4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000026299C4B0 == a2 || (sub_262996FD4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616E6E656956 && a2 == 0xE600000000000000 || (sub_262996FD4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6569667269754DLL && a2 == 0xE900000000000064 || (sub_262996FD4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1835619141 && a2 == 0xE400000000000000 || (sub_262996FD4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6553616E6E656956 && a2 == 0xEF797261646E6F63)
  {

    return 6;
  }

  else
  {
    v6 = sub_262996FD4();

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

unint64_t sub_26297370C(uint64_t a1, uint64_t a2)
{
  v2 = sub_262996ED4();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2629737BC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2629737D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t SEStorageManagementUIServerXPCParameters.Present.deviceConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_262996CE4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SEStorageManagementUIServerXPCParameters.Present.deviceConfiguration.setter(uint64_t a1)
{
  v3 = sub_262996CE4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SEStorageManagementUIServerXPCParameters.Present.displayConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SEStorageManagementUIServerXPCParameters.Present(0) + 20);
  v4 = sub_262996CD4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SEStorageManagementUIServerXPCParameters.Present(uint64_t a1)
{
  result = qword_27FF31AB0;
  if (!qword_27FF31AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SEStorageManagementUIServerXPCParameters.Present.displayConfiguration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SEStorageManagementUIServerXPCParameters.Present(0) + 20);
  v4 = sub_262996CD4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SEStorageManagementUIServerXPCParameters.Present.proposedCredentials.getter()
{
  type metadata accessor for SEStorageManagementUIServerXPCParameters.Present(0);
}

uint64_t SEStorageManagementUIServerXPCParameters.Present.proposedCredentials.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SEStorageManagementUIServerXPCParameters.Present(0) + 24);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SEStorageManagementUIServerXPCParameters.Present.passes.getter()
{
  type metadata accessor for SEStorageManagementUIServerXPCParameters.Present(0);
}

uint64_t SEStorageManagementUIServerXPCParameters.Present.passes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SEStorageManagementUIServerXPCParameters.Present(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SEStorageManagementUIServerXPCParameters.Present.muirfieldApplications.getter()
{
  type metadata accessor for SEStorageManagementUIServerXPCParameters.Present(0);
}

uint64_t SEStorageManagementUIServerXPCParameters.Present.muirfieldApplications.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SEStorageManagementUIServerXPCParameters.Present(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SEStorageManagementUIServerXPCParameters.Present.eSimProfiles.getter()
{
  type metadata accessor for SEStorageManagementUIServerXPCParameters.Present(0);
}

uint64_t SEStorageManagementUIServerXPCParameters.Present.eSimProfiles.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SEStorageManagementUIServerXPCParameters.Present(0) + 36);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SEStorageManagementUIServerXPCParameters.Present.secureElementCredentials.getter()
{
  type metadata accessor for SEStorageManagementUIServerXPCParameters.Present(0);
}

uint64_t SEStorageManagementUIServerXPCParameters.Present.secureElementCredentials.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SEStorageManagementUIServerXPCParameters.Present(0) + 40);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SEStorageManagementUIServerXPCParameters.Present.credentialConfigs.getter()
{
  type metadata accessor for SEStorageManagementUIServerXPCParameters.Present(0);
}

uint64_t SEStorageManagementUIServerXPCParameters.Present.credentialConfigs.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SEStorageManagementUIServerXPCParameters.Present(0) + 44);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SEStorageManagementUIServerXPCParameters.Present.init(deviceConfiguration:displayConfiguration:provisioning:passes:muirfieldApplications:eSimProfiles:secureElementCredentials:credentialConfigs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v18 = sub_262996CE4();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v19 = type metadata accessor for SEStorageManagementUIServerXPCParameters.Present(0);
  v20 = v19[5];
  v21 = sub_262996CD4();
  result = (*(*(v21 - 8) + 32))(a9 + v20, a2, v21);
  *(a9 + v19[6]) = a3;
  *(a9 + v19[7]) = a4;
  *(a9 + v19[8]) = a5;
  *(a9 + v19[9]) = a6;
  *(a9 + v19[10]) = a7;
  *(a9 + v19[11]) = a8;
  return result;
}

unint64_t sub_26297406C()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000018;
    if (v1 != 6)
    {
      v5 = 0xD000000000000011;
    }

    v6 = 0xD000000000000015;
    if (v1 != 4)
    {
      v6 = 0x666F72506D695365;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x736573736170;
    v3 = 0xD000000000000013;
    if (v1 == 2)
    {
      v2 = 0xD000000000000013;
    }

    if (*v0)
    {
      v3 = 0xD000000000000014;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_262974170@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26297628C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2629741A4(uint64_t a1)
{
  v2 = sub_262974660();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2629741E0(uint64_t a1)
{
  v2 = sub_262974660();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementUIServerXPCParameters.Present.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31990, &qword_262998A60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262974660();
  sub_262997074();
  LOBYTE(v12) = 0;
  sub_262996CE4();
  sub_2629758C0(&qword_27FF319A0, MEMORY[0x277D49368], MEMORY[0x277D49370]);
  sub_262996FB4();
  if (!v2)
  {
    v9 = type metadata accessor for SEStorageManagementUIServerXPCParameters.Present(0);
    LOBYTE(v12) = 1;
    sub_262996CD4();
    sub_2629758C0(&qword_27FF319A8, MEMORY[0x277D49318], MEMORY[0x277D49320]);
    sub_262996FB4();
    v12 = *(v3 + v9[6]);
    HIBYTE(v11) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF319B0, &qword_262998A68);
    sub_2629746B4();
    sub_262996FB4();
    v12 = *(v3 + v9[7]);
    HIBYTE(v11) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF319C8, &qword_262998A70);
    sub_262974768();
    sub_262996FB4();
    v12 = *(v3 + v9[8]);
    HIBYTE(v11) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF319E0, &qword_262998A78);
    sub_26297481C();
    sub_262996FB4();
    v12 = *(v3 + v9[9]);
    HIBYTE(v11) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF319F0, &unk_262998A80);
    sub_2629748D0(&qword_27FF319F8, sub_262974948, MEMORY[0x277D83948]);
    sub_262996FB4();
    v12 = *(v3 + v9[10]);
    HIBYTE(v11) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31A08, &qword_26299ADD0);
    sub_26297499C();
    sub_262996FB4();
    v12 = *(v3 + v9[11]);
    HIBYTE(v11) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31A18, &qword_262998A90);
    sub_262974A50();
    sub_262996FB4();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_262974660()
{
  result = qword_27FF31998;
  if (!qword_27FF31998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31998);
  }

  return result;
}

unint64_t sub_2629746B4()
{
  result = qword_27FF319B8;
  if (!qword_27FF319B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF319B0, &qword_262998A68);
    sub_2629758C0(&qword_27FF319C0, MEMORY[0x277D49350], MEMORY[0x277D49358]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF319B8);
  }

  return result;
}

unint64_t sub_262974768()
{
  result = qword_27FF319D0;
  if (!qword_27FF319D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF319C8, &qword_262998A70);
    sub_2629758C0(&qword_27FF319D8, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry, &protocol conformance descriptor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF319D0);
  }

  return result;
}

unint64_t sub_26297481C()
{
  result = qword_27FF319E8;
  if (!qword_27FF319E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF319E0, &qword_262998A78);
    sub_2629758C0(&qword_27FF31538, type metadata accessor for SEStorageManagementViewModel.ApplicationInfo, &protocol conformance descriptor for SEStorageManagementViewModel.ApplicationInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF319E8);
  }

  return result;
}

uint64_t sub_2629748D0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF319F0, &unk_262998A80);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_262974948()
{
  result = qword_27FF31A00;
  if (!qword_27FF31A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31A00);
  }

  return result;
}

unint64_t sub_26297499C()
{
  result = qword_27FF31A10;
  if (!qword_27FF31A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF31A08, &qword_26299ADD0);
    sub_2629758C0(&qword_27FF314F0, MEMORY[0x277D492D0], MEMORY[0x277D492D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31A10);
  }

  return result;
}

unint64_t sub_262974A50()
{
  result = qword_27FF31A20;
  if (!qword_27FF31A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF31A18, &qword_262998A90);
    sub_2629758C0(&qword_27FF31A28, MEMORY[0x277D492E8], MEMORY[0x277D492F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31A20);
  }

  return result;
}

uint64_t SEStorageManagementUIServerXPCParameters.Present.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = sub_262996CD4();
  v30 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_262996CE4();
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v31 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31A30, &qword_262998A98);
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v8 = &v25 - v7;
  v9 = type metadata accessor for SEStorageManagementUIServerXPCParameters.Present(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262974660();
  v33 = v8;
  v12 = v35;
  sub_262997064();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v4;
  v35 = v9;
  v26 = v11;
  v14 = v30;
  LOBYTE(v37) = 0;
  sub_2629758C0(&qword_27FF31A38, MEMORY[0x277D49368], MEMORY[0x277D49378]);
  v15 = v31;
  sub_262996F44();
  v16 = v26;
  (*(v29 + 32))(v26, v15, v5);
  LOBYTE(v37) = 1;
  sub_2629758C0(&qword_27FF31A40, MEMORY[0x277D49318], MEMORY[0x277D49328]);
  v17 = v28;
  sub_262996F44();
  v18 = v32;
  v25 = v5;
  v19 = v13;
  v20 = v35;
  (*(v14 + 32))(&v16[v35[5]], v19, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF319B0, &qword_262998A68);
  v36 = 2;
  sub_26297534C();
  v21 = v33;
  v31 = 0;
  sub_262996F44();
  *&v16[v20[6]] = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF319C8, &qword_262998A70);
  v36 = 3;
  sub_262975400();
  sub_262996F44();
  *&v16[v20[7]] = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF319E0, &qword_262998A78);
  v36 = 4;
  sub_2629754B4();
  sub_262996F44();
  *&v16[v20[8]] = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF319F0, &unk_262998A80);
  v36 = 5;
  sub_2629748D0(&qword_27FF31A70, sub_262975568, MEMORY[0x277D83978]);
  sub_262996F44();
  *&v16[v20[9]] = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31A08, &qword_26299ADD0);
  v36 = 6;
  sub_2629755BC();
  sub_262996F44();
  *&v16[v20[10]] = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31A18, &qword_262998A90);
  v36 = 7;
  sub_262975670();
  sub_262996F44();
  (*(v18 + 8))(v21, v34);
  v23 = v26;
  v22 = v27;
  *&v26[v35[11]] = v37;
  sub_262975724(v23, v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_262975788(v23);
}

unint64_t sub_26297534C()
{
  result = qword_27FF31A48;
  if (!qword_27FF31A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF319B0, &qword_262998A68);
    sub_2629758C0(&qword_27FF31A50, MEMORY[0x277D49350], MEMORY[0x277D49360]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31A48);
  }

  return result;
}

unint64_t sub_262975400()
{
  result = qword_27FF31A58;
  if (!qword_27FF31A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF319C8, &qword_262998A70);
    sub_2629758C0(&qword_27FF31A60, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry, &protocol conformance descriptor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31A58);
  }

  return result;
}

unint64_t sub_2629754B4()
{
  result = qword_27FF31A68;
  if (!qword_27FF31A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF319E0, &qword_262998A78);
    sub_2629758C0(&qword_27FF31568, type metadata accessor for SEStorageManagementViewModel.ApplicationInfo, &protocol conformance descriptor for SEStorageManagementViewModel.ApplicationInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31A68);
  }

  return result;
}

unint64_t sub_262975568()
{
  result = qword_27FF31A78;
  if (!qword_27FF31A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31A78);
  }

  return result;
}

unint64_t sub_2629755BC()
{
  result = qword_27FF31A80;
  if (!qword_27FF31A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF31A08, &qword_26299ADD0);
    sub_2629758C0(&qword_27FF31500, MEMORY[0x277D492D0], MEMORY[0x277D492E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31A80);
  }

  return result;
}

unint64_t sub_262975670()
{
  result = qword_27FF31A88;
  if (!qword_27FF31A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF31A18, &qword_262998A90);
    sub_2629758C0(&qword_27FF31A90, MEMORY[0x277D492E8], MEMORY[0x277D492F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31A88);
  }

  return result;
}

uint64_t sub_262975724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageManagementUIServerXPCParameters.Present(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_262975788(uint64_t a1)
{
  v2 = type metadata accessor for SEStorageManagementUIServerXPCParameters.Present(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_262975814(void *a1)
{
  a1[1] = sub_2629758C0(&qword_27FF31A98, type metadata accessor for SEStorageManagementUIServerXPCParameters.Present, &protocol conformance descriptor for SEStorageManagementUIServerXPCParameters.Present);
  a1[2] = sub_2629758C0(&qword_27FF31AA0, type metadata accessor for SEStorageManagementUIServerXPCParameters.Present, &protocol conformance descriptor for SEStorageManagementUIServerXPCParameters.Present);
  result = sub_2629758C0(&qword_27FF31AA8, type metadata accessor for SEStorageManagementUIServerXPCParameters.Present, &protocol conformance descriptor for SEStorageManagementUIServerXPCParameters.Present);
  a1[3] = result;
  return result;
}

uint64_t sub_2629758C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_262975908(uint64_t a1)
{
  sub_262996AE4();
  swift_allocObject();
  sub_262996AD4();
  sub_2629758C0(&qword_27FF31AA0, type metadata accessor for SEStorageManagementUIServerXPCParameters.Present, &protocol conformance descriptor for SEStorageManagementUIServerXPCParameters.Present);
  v1 = sub_262996AC4();
  v3 = v2;
  v4 = sub_262996B04();
  sub_262969EB4(v1, v3);

  return v4;
}

uint64_t sub_2629759F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B08, &qword_262998CE8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  sub_262996AB4();
  swift_allocObject();
  sub_262996AA4();
  v8 = sub_262996B14();
  v10 = v9;
  sub_2629758C0(&qword_27FF31A98, type metadata accessor for SEStorageManagementUIServerXPCParameters.Present, &protocol conformance descriptor for SEStorageManagementUIServerXPCParameters.Present);
  sub_262996A94();
  sub_262976524(a2);
  sub_262969EB4(v8, v10);

  (*(*(a3 - 8) + 56))(v7, 0, 1, a3);
  return sub_26297658C(v7, a2);
}

uint64_t sub_262975BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_262996CE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_262996CD4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_262975CE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_262996CE4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_262996CD4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_262975DF0(uint64_t a1)
{
  sub_262996CE4();
  if (v1 <= 0x3F)
  {
    sub_262996CD4();
    if (v2 <= 0x3F)
    {
      sub_262975FE0(319, &qword_27FF31AC0, MEMORY[0x277D49350]);
      if (v3 <= 0x3F)
      {
        sub_262975FE0(319, &qword_27FF31AC8, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
        if (v4 <= 0x3F)
        {
          sub_262975FE0(319, &qword_27FF31AD0, type metadata accessor for SEStorageManagementViewModel.ApplicationInfo);
          if (v5 <= 0x3F)
          {
            sub_262975F90();
            if (v6 <= 0x3F)
            {
              sub_262975FE0(319, &qword_27FF31AE0, MEMORY[0x277D492D0]);
              if (v7 <= 0x3F)
              {
                sub_262975FE0(319, &qword_27FF31AE8, MEMORY[0x277D492E8]);
                if (v8 <= 0x3F)
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

void sub_262975F90()
{
  if (!qword_27FF31AD8)
  {
    v0 = sub_262996DC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF31AD8);
    }
  }
}

void sub_262975FE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_262996DC4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SEStorageManagementUIServerXPCParameters.Present.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SEStorageManagementUIServerXPCParameters.Present.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_262976188()
{
  result = qword_27FF31AF0;
  if (!qword_27FF31AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31AF0);
  }

  return result;
}

unint64_t sub_2629761E0()
{
  result = qword_27FF31AF8;
  if (!qword_27FF31AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31AF8);
  }

  return result;
}

unint64_t sub_262976238()
{
  result = qword_27FF31B00;
  if (!qword_27FF31B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31B00);
  }

  return result;
}

uint64_t sub_26297628C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x800000026299C4F0 == a2 || (sub_262996FD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000026299C510 == a2 || (sub_262996FD4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000026299C530 == a2 || (sub_262996FD4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736573736170 && a2 == 0xE600000000000000 || (sub_262996FD4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x800000026299C550 == a2 || (sub_262996FD4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x666F72506D695365 && a2 == 0xEC00000073656C69 || (sub_262996FD4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x800000026299C570 == a2 || (sub_262996FD4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026299C590 == a2)
  {

    return 7;
  }

  else
  {
    v5 = sub_262996FD4();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_262976524(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B08, &qword_262998CE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26297658C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B08, &qword_262998CE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_26297663C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

char *sub_26297674C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v30[3] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B10, &qword_262998D60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_262996C14();
  v10 = MEMORY[0x28223BE20](v9);
  v29 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v26 = &v24 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v24 = v12;
  v27 = (v12 + 32);
  v28 = (v12 + 48);
  v15 = (a3 + 40);
  v16 = MEMORY[0x277D84F90];
  v25 = a1;
  while (1)
  {
    v17 = *v15;
    v30[0] = *(v15 - 1);
    v30[1] = v17;

    a1(v30);
    if (v3)
    {
      break;
    }

    if ((*v28)(v8, 1, v9) == 1)
    {
      sub_2629737D4(v8, &qword_27FF31B10, &qword_262998D60);
    }

    else
    {
      v18 = v9;
      v19 = v26;
      v20 = *v27;
      (*v27)(v26, v8, v18);
      v20(v29, v19, v18);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_262965AAC(0, *(v16 + 2) + 1, 1, v16);
      }

      v22 = *(v16 + 2);
      v21 = *(v16 + 3);
      if (v22 >= v21 >> 1)
      {
        v16 = sub_262965AAC((v21 > 1), v22 + 1, 1, v16);
      }

      *(v16 + 2) = v22 + 1;
      v20(&v16[((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v22], v29, v18);
      v9 = v18;
      a1 = v25;
    }

    v15 += 2;
    if (!--v14)
    {
      return v16;
    }
  }

  return v16;
}

uint64_t sub_262976A40(uint64_t a1, uint64_t (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(sub_262996C14() - 8);
    result = a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
      return result;
    }
  }

  return v11;
}

void sub_262976B1C(id a1, void (*a2)(id *, id *), uint64_t a3, unint64_t a4)
{
  v13 = a1;
  if (a4 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; a1 = v10)
  {
    v7 = 0;
    while (1)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        a1 = MEMORY[0x26672E110](v7, a4, a3);
      }

      else
      {
        if (v7 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        a1 = *(a4 + 8 * v7 + 32);
      }

      v8 = a1;
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = a1;
      a2(&v13, &v12);

      if (!v4)
      {
        ++v7;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    v10 = a1;
    i = sub_262996E94();
  }
}

void *SESnapshot.appletTypes(forAIDs:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B10, &qword_262998D60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v31 - v3;
  v5 = sub_262996C14();
  v6 = MEMORY[0x28223BE20](v5);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v37 = &v31 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v36 = &v31 - v11;
  MEMORY[0x28223BE20](v10);
  v40 = &v31 - v13;
  v14 = *(a1 + 16);
  v38 = v12;
  v33 = v14;
  if (v14)
  {
    v15 = (v12 + 56);
    v39 = (v12 + 32);
    v16 = MEMORY[0x277D84F90];
    v17 = a1 + 40;
    v34 = (v12 + 56);
    v35 = v5;
    do
    {

      sub_262996BA4();

      (*v15)(v4, 0, 1, v5);
      v18 = *v39;
      v19 = v37;
      (*v39)(v37, v4, v5);
      v20 = v16;
      v21 = v36;
      v18(v36, v19, v5);
      v22 = v21;
      v16 = v20;
      v18(v40, v22, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_262965AAC(0, v20[2] + 1, 1, v20);
      }

      v24 = v16[2];
      v23 = v16[3];
      v15 = v34;
      if (v24 >= v23 >> 1)
      {
        v16 = sub_262965AAC((v23 > 1), v24 + 1, 1, v16);
      }

      v16[2] = v24 + 1;
      v25 = v16 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v24;
      v5 = v35;
      v18(v25, v40, v35);
      v17 += 16;
      --v14;
    }

    while (v14);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v26 = v33;
  if (v16[2] != v33)
  {

    v27 = *MEMORY[0x277D49140];
    v28 = sub_262996B64();
    v29 = v32;
    (*(*(v28 - 8) + 104))(v32, v27, v28);
    (*(v38 + 104))(v29, *MEMORY[0x277D49240], v5);
    return sub_262977038(v29, v26);
  }

  return v16;
}

uint64_t sub_262977038(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = sub_262996C14();
      v5 = sub_262996DB4();
      *(v5 + 16) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(v5 + v7, v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = v5 + v10 + v7;
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }

    v12 = sub_262996C14();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

Swift::Int __swiftcall SESnapshot.requiredStorage(for:)(Swift::OpaquePointer a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B18, &qword_262998D68);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v78 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v77 = &v70 - v5;
  v84 = 0;
  v6 = sub_262996C14();
  v7 = MEMORY[0x28223BE20](v6);
  v83 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v74 = &v70 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v14 = &v70 - v13;
  v15 = *(a1._rawValue + 2);
  v81 = v11;
  v76 = v12;
  if (!v15)
  {
    v20 = MEMORY[0x277D84F98];
LABEL_17:
    v40 = 0;
    v41 = 0;
    v75 = v20;
    v44 = v20[8];
    v43 = v20 + 8;
    v42 = v44;
    v45 = 1 << *(v43 - 32);
    v46 = -1;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    v47 = v46 & v42;
    v48 = (v45 + 63) >> 6;
    v49 = v77;
    v73 = v76 + 16;
    v82 = (v76 + 32);
    v79 = (v76 + 8);
    v50 = v78;
    v71 = v43;
    v72 = v48;
    while (1)
    {
      if (!v47)
      {
        if (v48 <= v41 + 1)
        {
          v53 = v41 + 1;
        }

        else
        {
          v53 = v48;
        }

        v54 = v53 - 1;
        while (1)
        {
          v52 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            break;
          }

          if (v52 >= v48)
          {
            v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B20, &qword_262998D70);
            (*(*(v67 - 8) + 56))(v50, 1, 1, v67);
            v47 = 0;
            v41 = v54;
            goto LABEL_33;
          }

          v47 = v71[v52];
          ++v41;
          if (v47)
          {
            v80 = v40;
            v41 = v52;
            goto LABEL_32;
          }
        }

        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v80 = v40;
      v52 = v41;
LABEL_32:
      v55 = __clz(__rbit64(v47));
      v47 &= v47 - 1;
      v56 = v55 | (v52 << 6);
      v57 = v75;
      v58 = v76;
      v59 = v74;
      (*(v76 + 16))(v74, v75[6] + *(v76 + 72) * v56, v6);
      v60 = *(v57[7] + 8 * v56);
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B20, &qword_262998D70);
      v62 = *(v61 + 48);
      v63 = *(v58 + 32);
      v50 = v78;
      v63(v78, v59, v6);
      *(v50 + v62) = v60;
      (*(*(v61 - 8) + 56))(v50, 0, 1, v61);
      v49 = v77;
      v40 = v80;
      v48 = v72;
LABEL_33:
      sub_26297A4A8(v50, v49);
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B20, &qword_262998D70);
      if ((*(*(v64 - 8) + 48))(v49, 1, v64) == 1)
      {
        break;
      }

      v6 = v81;
      (*v82)(v83, v49, v81);
      v65 = v84;
      v66 = sub_262996BB4();
      v84 = v65;
      if (v65)
      {
        MEMORY[0x26672E610](v84);
        v51 = 0;
        v84 = 0;
      }

      else
      {
        v51 = v66;
      }

      (*v79)(v83, v6);
      v35 = __OFADD__(v40, v51);
      v40 += v51;
      if (v35)
      {
        goto LABEL_40;
      }
    }

    v68 = _s9SEService10SESnapshotC16SESUIServiceCoreE15requiredStorage3forSiAC19ProposedESimProfileV_tF_0();
    v35 = __OFADD__(v40, v68);
    result = v40 + v68;
    if (v35)
    {
      goto LABEL_44;
    }

    return result;
  }

  v16 = v12 + 16;
  v17 = *(v12 + 16);
  v18 = a1._rawValue + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v19 = *(v12 + 72);
  v82 = (v12 + 8);
  v20 = MEMORY[0x277D84F98];
  while (1)
  {
    v17(v14, v18, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v85 = v20;
    v23 = sub_262979C5C(v14);
    v24 = v20[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      break;
    }

    v27 = v22;
    if (v20[3] >= v26)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26297A238();
        v20 = v85;
      }

      v6 = v81;
      if (v27)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v80 = v15;
      v28 = v19;
      v29 = v16;
      v30 = v17;
      sub_262979CE0(v26, isUniquelyReferenced_nonNull_native);
      v31 = v85;
      v32 = sub_262979C5C(v14);
      if ((v27 & 1) != (v33 & 1))
      {
        goto LABEL_45;
      }

      v23 = v32;
      v20 = v31;
      v17 = v30;
      v16 = v29;
      v19 = v28;
      v15 = v80;
      v6 = v81;
      if (v27)
      {
        goto LABEL_13;
      }
    }

    v20[(v23 >> 6) + 8] |= 1 << v23;
    v17((v20[6] + v23 * v19), v14, v6);
    *(v20[7] + 8 * v23) = 0;
    v34 = v20[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_43;
    }

    v20[2] = v36;
LABEL_13:
    v37 = v20[7];
    v38 = *(v37 + 8 * v23);
    v35 = __OFADD__(v38, 1);
    v39 = v38 + 1;
    if (v35)
    {
      goto LABEL_42;
    }

    *(v37 + 8 * v23) = v39;
    (*v82)(v14, v6);
    v18 += v19;
    if (!--v15)
    {
      goto LABEL_17;
    }
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_262996FF4();
  __break(1u);
  return result;
}

uint64_t SESnapshot.requiredStorage(for:)()
{
  v0 = sub_262996BC4();
  v1 = _s9SEService10SESnapshotC16SESUIServiceCoreE15requiredStorage3forSiAC19ProposedESimProfileV_tF_0();
  v2 = __OFADD__(v0, v1);
  result = v0 + v1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2629779A4()
{
  v0 = sub_262996BC4();
  v1 = _s9SEService10SESnapshotC16SESUIServiceCoreE15requiredStorage3forSiAC19ProposedESimProfileV_tF_0();
  v2 = __OFADD__(v0, v1);
  result = v0 + v1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

void sub_262977AA0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_262996D34();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_262996D34();
    v4 = [v2 stringArrayForKey_];

    if (v4)
    {
      v5 = sub_262996DA4();

      v6 = *(v5 + 16);
      if (v6)
      {
        v7 = 0;
        v8 = v5 + 40;
        v9 = MEMORY[0x277D84F90];
        do
        {
          v10 = (v8 + 16 * v7);
          v11 = v7;
          while (1)
          {
            if (v11 >= *(v5 + 16))
            {
              __break(1u);
              return;
            }

            v12 = *(v10 - 1);
            v13 = *v10;
            v14 = v12 == 1701736270 && v13 == 0xE400000000000000;
            if (!v14 && (sub_262996FD4() & 1) == 0)
            {
              break;
            }

            ++v11;
            v10 += 2;
            if (v6 == v11)
            {
              goto LABEL_21;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_262971804(0, *(v9 + 16) + 1, 1);
          }

          v16 = *(v9 + 16);
          v15 = *(v9 + 24);
          v17 = v16 + 1;
          if (v16 >= v15 >> 1)
          {
            sub_262971804((v15 > 1), v16 + 1, 1);
            v17 = v16 + 1;
          }

          v7 = v11 + 1;
          *(v9 + 16) = v17;
          v18 = v9 + 16 * v16;
          *(v18 + 32) = v12;
          *(v18 + 40) = v13;
          v8 = v5 + 40;
        }

        while (v6 - 1 != v11);
      }

LABEL_21:
    }

    else
    {
    }
  }
}

uint64_t sub_262977CEC(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0);
  v25 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_26297A80C(a3 + v15 + v16 * v13, v12);
      v17 = a1(v12);
      if (v3)
      {
        sub_26297A870(v12);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_26297BB58(v12, v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_262971824(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_262971824((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        result = sub_26297BB58(v24, v14 + v15 + v20 * v16);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_26297A870(v12);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_15:

    return v14;
  }

  return result;
}

char *MockSESnapshot.appletTypes(forAIDs:)(uint64_t a1)
{
  v3 = sub_262996C14();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = v1;
  result = sub_26297674C(sub_26297A518, v11, a1);
  v8 = *(a1 + 16);
  if (*(result + 2) != v8)
  {

    v9 = *MEMORY[0x277D49140];
    v10 = sub_262996B64();
    (*(*(v10 - 8) + 104))(v6, v9, v10);
    (*(v4 + 104))(v6, *MEMORY[0x277D49240], v3);
    return sub_262977038(v6, v8);
  }

  return result;
}

uint64_t sub_262978078@<X0>(uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B10, &qword_262998D60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  sub_262996BA4();
  if (v2)
  {
    MEMORY[0x26672E610](v2);
    v7 = sub_262996C14();
    v8 = *(*(v7 - 8) + 56);
    v8(v6, 1, 1, v7);
    sub_2629737D4(v6, &qword_27FF31B10, &qword_262998D60);
    return (v8)(a2, 1, 1, v7);
  }

  else
  {
    v10 = sub_262996C14();
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    v12(v6, 0, 1, v10);
    (*(v11 + 32))(a2, v6, v10);
    return (v12)(a2, 0, 1, v10);
  }
}

uint64_t MockSESnapshot.totalUsage(of:)(uint64_t a1)
{
  v3 = sub_262996C14();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v4 + 16))(v6, a1, v3);
  if ((*(v4 + 88))(v6, v3) == *MEMORY[0x277D49240])
  {
    v7 = (*(v4 + 96))(v6, v3);
    v8 = *(v1 + 8);
    MEMORY[0x28223BE20](v7);
    *&v13[-16] = a1;

    v9 = *(sub_262977CEC(sub_26297A534, &v13[-32], v8) + 16);

    v10 = sub_262996B64();
    result = (*(*(v10 - 8) + 8))(v6, v10);
  }

  else
  {
    result = (*(v4 + 8))(v6, v3);
    v9 = 1;
  }

  v12 = 100000 * v9;
  if ((v9 * 100000) >> 64 != (100000 * v9) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  result = v12 + 100000;
  if (__OFADD__(v12, 100000))
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_262978464(uint64_t a1, unint64_t a2)
{
  v30 = a2;
  v3 = sub_262996C14();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v28 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B58, &qword_262998DE8);
  MEMORY[0x28223BE20](v6);
  v31 = &v28 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B10, &qword_262998D60);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v29 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  v16 = *(a1 + 16);
  if (*(v16 + 16))
  {
    v17 = *(v4 + 16);
    v17(&v28 - v14, v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);
    v18 = *(v4 + 56);
    v18(v15, 0, 1, v3);
  }

  else
  {
    v18 = *(v4 + 56);
    v18(&v28 - v14, 1, 1, v3);
    v17 = *(v4 + 16);
  }

  v17(v13, v30, v3);
  v18(v13, 0, 1, v3);
  v19 = *(v6 + 48);
  v20 = v31;
  sub_26297BBBC(v15, v31);
  sub_26297BBBC(v13, v20 + v19);
  v21 = *(v4 + 48);
  if (v21(v20, 1, v3) != 1)
  {
    v24 = v29;
    sub_26297BBBC(v20, v29);
    if (v21(v20 + v19, 1, v3) != 1)
    {
      v25 = v28;
      (*(v4 + 32))(v28, v20 + v19, v3);
      sub_26297BB14(&qword_27FF31B48, MEMORY[0x277D492B0]);
      v23 = sub_262996D24();
      v26 = *(v4 + 8);
      v26(v25, v3);
      sub_2629737D4(v13, &qword_27FF31B10, &qword_262998D60);
      sub_2629737D4(v15, &qword_27FF31B10, &qword_262998D60);
      v26(v29, v3);
      sub_2629737D4(v31, &qword_27FF31B10, &qword_262998D60);
      return v23 & 1;
    }

    sub_2629737D4(v13, &qword_27FF31B10, &qword_262998D60);
    v22 = v31;
    sub_2629737D4(v15, &qword_27FF31B10, &qword_262998D60);
    (*(v4 + 8))(v24, v3);
    goto LABEL_9;
  }

  sub_2629737D4(v13, &qword_27FF31B10, &qword_262998D60);
  v22 = v31;
  sub_2629737D4(v15, &qword_27FF31B10, &qword_262998D60);
  if (v21(v22 + v19, 1, v3) != 1)
  {
LABEL_9:
    sub_2629737D4(v22, &qword_27FF31B58, &qword_262998DE8);
    v23 = 0;
    return v23 & 1;
  }

  sub_2629737D4(v22, &qword_27FF31B10, &qword_262998D60);
  v23 = 1;
  return v23 & 1;
}

Swift::Int __swiftcall MockSESnapshot.requiredStorage(for:)(Swift::OpaquePointer a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B18, &qword_262998D68);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v67 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = v63 - v5;
  v7 = sub_262996C14();
  v8 = MEMORY[0x28223BE20](v7);
  v65 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v63 - v11;
  v13 = *(a1._rawValue + 2);
  v66 = v10;
  if (v13)
  {
    v14 = *(v10 + 16);
    v15 = a1._rawValue + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v16 = *(v10 + 72);
    v70 = (v10 + 8);
    v71 = v14;
    v17 = MEMORY[0x277D84F98];
    while (1)
    {
      v71(v12, v15, v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = v17;
      v19 = sub_262979C5C(v12);
      v21 = *(v17 + 16);
      v22 = (v20 & 1) == 0;
      v23 = __OFADD__(v21, v22);
      v24 = v21 + v22;
      if (v23)
      {
        goto LABEL_42;
      }

      v25 = v20;
      if (*(v17 + 24) < v24)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_8;
      }

      v35 = v16;
      v36 = v19;
      sub_26297A238();
      v19 = v36;
      v16 = v35;
      v17 = v72;
      if ((v25 & 1) == 0)
      {
LABEL_9:
        *(v17 + 8 * (v19 >> 6) + 64) |= 1 << v19;
        v27 = v16;
        v28 = *(v17 + 48) + v19 * v16;
        v29 = v19;
        v71(v28, v12, v7);
        *(*(v17 + 56) + 8 * v29) = 0;
        v30 = *(v17 + 16);
        v23 = __OFADD__(v30, 1);
        v31 = v30 + 1;
        if (v23)
        {
          goto LABEL_44;
        }

        v19 = v29;
        *(v17 + 16) = v31;
        v16 = v27;
      }

LABEL_11:
      v32 = *(v17 + 56);
      v33 = *(v32 + 8 * v19);
      v23 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v23)
      {
        goto LABEL_43;
      }

      *(v32 + 8 * v19) = v34;
      (*v70)(v12, v7);
      v15 += v16;
      if (!--v13)
      {
        goto LABEL_17;
      }
    }

    sub_262979CE0(v24, isUniquelyReferenced_nonNull_native);
    v17 = v72;
    v19 = sub_262979C5C(v12);
    if ((v25 & 1) != (v26 & 1))
    {
      goto LABEL_45;
    }

LABEL_8:
    if ((v25 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  v17 = MEMORY[0x277D84F98];
LABEL_17:
  v71 = v7;
  v37 = 0;
  v38 = 0;
  v39 = *(v17 + 64);
  v63[0] = v17 + 64;
  v40 = 1 << *(v17 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & v39;
  v43 = (v40 + 63) >> 6;
  v44 = v67;
  v63[1] = v66 + 32;
  v63[2] = v66 + 16;
  v68 = (v66 + 8);
  v69 = v17;
  v64 = v6;
  if ((v41 & v39) != 0)
  {
    while (1)
    {
      v70 = v37;
      v45 = v38;
LABEL_29:
      v48 = __clz(__rbit64(v42));
      v42 &= v42 - 1;
      v49 = v48 | (v45 << 6);
      v51 = v65;
      v50 = v66;
      v52 = v71;
      (*(v66 + 16))(v65, *(v17 + 48) + *(v66 + 72) * v49, v71);
      v53 = *(*(v17 + 56) + 8 * v49);
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B20, &qword_262998D70);
      v55 = *(v54 + 48);
      v56 = *(v50 + 32);
      v44 = v67;
      v56(v67, v51, v52);
      *(v44 + v55) = v53;
      (*(*(v54 - 8) + 56))(v44, 0, 1, v54);
      v47 = v45;
      v6 = v64;
      v37 = v70;
LABEL_30:
      sub_26297A4A8(v44, v6);
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B20, &qword_262998D70);
      if ((*(*(v57 - 8) + 48))(v6, 1, v57) == 1)
      {
        break;
      }

      v58 = *&v6[*(v57 + 48)];
      v59 = 100000 * v58;
      v17 = v69;
      if ((v58 * 100000) >> 64 != (100000 * v58) >> 63)
      {
        goto LABEL_39;
      }

      v23 = __OFADD__(v59, 100000);
      v60 = v59 + 100000;
      if (v23)
      {
        goto LABEL_40;
      }

      v23 = __OFADD__(v37, v60);
      v37 += v60;
      if (v23)
      {
        goto LABEL_41;
      }

      (*v68)(v6, v71);
      v38 = v47;
      if (!v42)
      {
        goto LABEL_21;
      }
    }

    return v37;
  }

  else
  {
LABEL_21:
    if (v43 <= v38 + 1)
    {
      v46 = v38 + 1;
    }

    else
    {
      v46 = v43;
    }

    v47 = v46 - 1;
    while (1)
    {
      v45 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v45 >= v43)
      {
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B20, &qword_262998D70);
        (*(*(v61 - 8) + 56))(v44, 1, 1, v61);
        v42 = 0;
        goto LABEL_30;
      }

      v42 = *(v63[0] + 8 * v45);
      ++v38;
      if (v42)
      {
        v70 = v37;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    result = sub_262996FF4();
    __break(1u);
  }

  return result;
}

uint64_t MockSESnapshot.requiredStorage(for:)()
{
  return 200000;
}

{
  return 200000;
}

void MockSESnapshot.totalUsed.getter()
{
  v1 = sub_262996C14();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v27 - v6;
  v8 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0) - 8;
  MEMORY[0x28223BE20](v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 8);
  v13 = MEMORY[0x277D84FA0];
  v30 = MEMORY[0x277D84FA0];
  v29 = *(v12 + 16);
  if (v29)
  {
    v14 = 0;
    v28 = v12 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v27[0] = v0;
    v27[1] = v2 + 16;
    while (v14 < *(v12 + 16))
    {
      v15 = v9;
      sub_26297A80C(v28 + *(v9 + 72) * v14, v11);
      v16 = *(v11 + 2);
      if (!*(v16 + 16))
      {
        goto LABEL_16;
      }

      ++v14;
      (*(v2 + 16))(v5, v16 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v1);
      sub_26297A554(v7, v5);
      (*(v2 + 8))(v7, v1);
      sub_26297A870(v11);
      v9 = v15;
      if (v29 == v14)
      {
        v13 = v30;
        v0 = v27[0];
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_7:
  v17 = *(v13 + 16);
  if (v17)
  {
    v18 = sub_262979B60(*(v13 + 16), 0);
    v19 = sub_26297B3D0(&v30, &v18[(*(v2 + 80) + 32) & ~*(v2 + 80)], v17, v13);
    v20 = sub_26297B674(v30);
    if (v19 == v17)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v18 = MEMORY[0x277D84F90];
LABEL_11:
  MEMORY[0x28223BE20](v20);
  v27[-2] = v0;
  v21 = sub_262976A40(0, sub_26297B67C, &v27[-4], v18);

  MEMORY[0x28223BE20](v22);
  v27[-2] = v0;
  sub_262976B1C(0, sub_26297B698, &v27[-4], v23);
  v25 = v21 + v24;
  if (__OFADD__(v21, v24))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  sub_262977AA0();
  if ((v26 & 1) != 0 && __OFADD__(v25, 200000))
  {
    goto LABEL_18;
  }
}

uint64_t sub_262979260(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_262996C14();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a2, v6);
  if ((*(v7 + 88))(v9, v6) == *MEMORY[0x277D49240])
  {
    v10 = (*(v7 + 96))(v9, v6);
    v11 = *(a3 + 8);
    MEMORY[0x28223BE20](v10);
    v19[-2] = a2;

    v12 = *(sub_262977CEC(sub_26297BC44, &v19[-4], v11) + 16);

    v13 = sub_262996B64();
    result = (*(*(v13 - 8) + 8))(v9, v13);
  }

  else
  {
    result = (*(v7 + 8))(v9, v6);
    v12 = 1;
  }

  v15 = 100000 * v12;
  if ((v12 * 100000) >> 64 != (100000 * v12) >> 63)
  {
    __break(1u);
    goto LABEL_9;
  }

  v16 = v15 + 100000;
  if (__OFADD__(v15, 100000))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v17 = __OFADD__(*a1, v16);
  v18 = *a1 + v16;
  if (!v17)
  {
    *a1 = v18;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_262979488(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v25 = a1;
  v3 = sub_262996B54();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_262996C14();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v24 - v12);
  sub_262996C54();
  v14 = sub_262996B34();
  v16 = v15;
  (*(v4 + 8))(v6, v3);
  *v13 = v14;
  v13[1] = v16;
  (*(v8 + 104))(v13, *MEMORY[0x277D49238], v7);
  (*(v8 + 16))(v11, v13, v7);
  if ((*(v8 + 88))(v11, v7) == *MEMORY[0x277D49240])
  {
    v17 = (*(v8 + 96))(v11, v7);
    v18 = *(v24 + 8);
    MEMORY[0x28223BE20](v17);
    *(&v24 - 2) = v13;

    v19 = *(sub_262977CEC(sub_26297BC44, (&v24 - 4), v18) + 16);

    v20 = sub_262996B64();
    result = (*(*(v20 - 8) + 8))(v11, v20);
  }

  else
  {
    result = (*(v8 + 8))(v11, v7);
    v19 = 1;
  }

  v22 = 100000 * v19;
  if ((v19 * 100000) >> 64 != (100000 * v19) >> 63)
  {
    __break(1u);
    goto LABEL_9;
  }

  v23 = v22 + 100000;
  if (__OFADD__(v22, 100000))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = (*(v8 + 8))(v13, v7);
  if (!__OFADD__(*v25, v23))
  {
    *v25 += v23;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t MockSESnapshot.getLifeCycleState(instanceAID:)()
{
  type metadata accessor for MockSESnapshot(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B28, &qword_262998D78);
  sub_262996C24();
  if (v1)
  {
    return 7;
  }

  else
  {
    return 130;
  }
}

uint64_t MockSESnapshot.availableStorage.getter()
{
  MockSESnapshot.totalUsed.getter();
  v1 = __OFSUB__(1000000, v0);
  result = 1000000 - v0;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t MockSESnapshot.init(snapshot:passes:credentials:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  type metadata accessor for MockSESnapshot(0);
  result = sub_262996C34();
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

char *sub_262979930(uint64_t a1)
{
  v3 = sub_262996C14();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = v1;
  result = sub_26297674C(sub_26297BC2C, v11, a1);
  v8 = *(a1 + 16);
  if (*(result + 2) != v8)
  {

    v9 = *MEMORY[0x277D49140];
    v10 = sub_262996B64();
    (*(*(v10 - 8) + 104))(v6, v9, v10);
    (*(v4 + 104))(v6, *MEMORY[0x277D49240], v3);
    return sub_262977038(v6, v8);
  }

  return result;
}

uint64_t sub_262979AC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B28, &qword_262998D78);
  sub_262996C24();
  if (v1)
  {
    return 7;
  }

  else
  {
    return 130;
  }
}

void *sub_262979B60(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF315E8, &qword_2629979D8);
  v4 = *(sub_262996C14() - 8);
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

unint64_t sub_262979C5C(uint64_t a1)
{
  sub_262996C14();
  sub_26297BB14(&qword_27FF315C8, MEMORY[0x277D492A8]);
  v2 = sub_262996CF4();

  return sub_26297A08C(a1, v2);
}

uint64_t sub_262979CE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_262996C14();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B60, &unk_262998DF0);
  v40 = v4;
  result = sub_262996EB4();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_26297BB14(&qword_27FF315C8, MEMORY[0x277D492A8]);
      result = sub_262996CF4();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

unint64_t sub_26297A08C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_262996C14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_26297BB14(&qword_27FF31B48, MEMORY[0x277D492B0]);
      v15 = sub_262996D24();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

char *sub_26297A238()
{
  v1 = v0;
  v31 = sub_262996C14();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B60, &unk_262998DF0);
  v3 = *v0;
  v4 = sub_262996EA4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_26297A4A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B18, &qword_262998D68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26297A554(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_262996C14();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_26297BB14(&qword_27FF315C8, MEMORY[0x277D492A8]);
  v33 = a2;
  v11 = sub_262996CF4();
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
      sub_26297BB14(&qword_27FF31B48, MEMORY[0x277D492B0]);
      v21 = sub_262996D24();
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
    sub_26297AC14(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_26297A80C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26297A870(uint64_t a1)
{
  v2 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26297A8CC(uint64_t a1)
{
  v2 = v1;
  v36 = sub_262996C14();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B50, &qword_262998DE0);
  result = sub_262996E14();
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
      sub_26297BB14(&qword_27FF315C8, MEMORY[0x277D492A8]);
      result = sub_262996CF4();
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

uint64_t sub_26297AC14(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_262996C14();
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
    sub_26297A8CC(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_26297AE90();
      goto LABEL_12;
    }

    sub_26297B0C8(v10 + 1);
  }

  v12 = *v3;
  sub_26297BB14(&qword_27FF315C8, MEMORY[0x277D492A8]);
  v13 = sub_262996CF4();
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
      sub_26297BB14(&qword_27FF31B48, MEMORY[0x277D492B0]);
      v21 = sub_262996D24();
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
  result = sub_262996FE4();
  __break(1u);
  return result;
}

void *sub_26297AE90()
{
  v1 = v0;
  v2 = sub_262996C14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B50, &qword_262998DE0);
  v6 = *v0;
  v7 = sub_262996E04();
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

uint64_t sub_26297B0C8(uint64_t a1)
{
  v2 = v1;
  v33 = sub_262996C14();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B50, &qword_262998DE0);
  v7 = sub_262996E14();
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
      sub_26297BB14(&qword_27FF315C8, MEMORY[0x277D492A8]);
      result = sub_262996CF4();
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

uint64_t sub_26297B3D0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_262996C14();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
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
    v37 = a4 + 56;
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
      v23 = *(a4 + 48);
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

uint64_t type metadata accessor for MockSESnapshot(uint64_t a1)
{
  result = qword_27FF31B30;
  if (!qword_27FF31B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of SESnapshotDataProviding.requiredStorage(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 32))(a1, a2);
}

{
  return (*(a3 + 40))(a1, a2);
}

{
  return (*(a3 + 48))(a1, a2);
}

uint64_t sub_26297B804(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B28, &qword_262998D78);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_26297B8D4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B28, &qword_262998D78);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26297B984(uint64_t a1)
{
  sub_262996BD4();
  if (v1 <= 0x3F)
  {
    sub_26297BA70(319, &qword_27FF31AC8, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
    if (v2 <= 0x3F)
    {
      sub_26297BA70(319, &qword_27FF31AE0, MEMORY[0x277D492D0]);
      if (v3 <= 0x3F)
      {
        sub_26297BAC4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26297BA70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_262996DC4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26297BAC4()
{
  if (!qword_27FF31B40)
  {
    v0 = sub_262996C44();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF31B40);
    }
  }
}

uint64_t sub_26297BB14(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_262996C14();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26297BB58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26297BBBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B10, &qword_262998D60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::String __swiftcall localizedString(for:table:)(Swift::String a1, SESUIServiceCore::LocalizedStringTable table)
{
  type metadata accessor for FindClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_262996D34();
  v5 = sub_262996D34();

  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v7 = sub_262996D44();
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

uint64_t sub_26297BDE4(unsigned __int8 a1)
{
  sub_262997004();
  sub_262996D64();

  return sub_262997044();
}

uint64_t sub_26297BED8(uint64_t a1, unsigned __int8 a2)
{
  sub_262997004();
  sub_262996D64();

  return sub_262997044();
}

unint64_t LocalizedStringTable.rawValue.getter()
{
  v1 = 0xD000000000000015;
  v2 = *v0;
  v3 = 0xD00000000000001ALL;
  v4 = 0xD000000000000019;
  if (v2 == 4)
  {
    v4 = 0xD000000000000016;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  if (v2 == 1)
  {
    v1 = 0xD000000000000017;
  }

  if (!*v0)
  {
    v1 = 0xD00000000000001FLL;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t formattedLocalizedString(for:table:_:)(uint64_t a1, void *a2, char *a3, uint64_t a4)
{
  v7 = *a3;

  v8 = sub_26297C2EC(a4, a1, a2, v7);

  return v8;
}

SESUIServiceCore::LocalizedStringTable_optional __swiftcall LocalizedStringTable.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_262996ED4();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26297C14C(uint64_t a1)
{
  sub_262996D64();
}

void sub_26297C23C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000015;
  v3 = *v1;
  v4 = "ESimTypes_Localizable";
  v5 = 0xD00000000000001ALL;
  v6 = "UsageFrequency_Localizable";
  v7 = 0xD000000000000019;
  if (v3 == 4)
  {
    v7 = 0xD000000000000016;
  }

  else
  {
    v6 = "Functional_Localizable";
  }

  if (v3 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = "SEStorageManagement_Localizable";
  if (v3 == 1)
  {
    v2 = 0xD000000000000017;
  }

  else
  {
    v8 = "AppletTypes_Localizable";
  }

  if (*v1)
  {
    v9 = v8;
  }

  else
  {
    v2 = 0xD00000000000001FLL;
    v9 = "viennaSecondaryCategory";
  }

  if (*v1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v2 = v5;
    v10 = v4;
  }

  *a1 = v2;
  a1[1] = v10 | 0x8000000000000000;
}

uint64_t sub_26297C2EC(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v31._countAndFlagsBits = a2;
  v31._object = a3;
  sub_262996E74();
  v5 = swift_allocObject();
  v5[2] = 8;
  v5[3] = 0;
  v6 = v5 + 3;
  v5[4] = 0;
  v5[5] = 0;
  v7 = *(a1 + 16);
  if (!v7)
  {
LABEL_26:
    v25 = sub_262996E64();
    v32 = a4;
    localizedString(for:table:)(v31, &v32);
    v26 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v27 = sub_262996D34();

    v28 = [v26 initWithFormat:v27 arguments:v25];

    v29 = sub_262996D44();

    return v29;
  }

  v8 = 0;
  v9 = a1 + 32;
  while (1)
  {
    __swift_project_boxed_opaque_existential_1((v9 + 40 * v8), *(v9 + 40 * v8 + 24));
    result = sub_262997054();
    v11 = *v6;
    v12 = *(result + 16);
    v13 = __OFADD__(*v6, v12);
    v14 = *v6 + v12;
    if (v13)
    {
      break;
    }

    v15 = v5[4];
    if (v15 >= v14)
    {
      goto LABEL_18;
    }

    if (v15 + 0x4000000000000000 < 0)
    {
      goto LABEL_29;
    }

    v16 = v5[5];
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    v5[4] = v14;
    if ((v14 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_30;
    }

    v17 = result;
    v18 = swift_slowAlloc();
    v19 = v18;
    v5[5] = v18;
    if (v16)
    {
      if (v18 != v16 || v18 >= &v16[8 * v11])
      {
        memmove(v18, v16, 8 * v11);
      }

      sub_262996E54();
      result = v17;
LABEL_18:
      v19 = v5[5];
      if (!v19)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    result = v17;
    if (!v19)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v21 = *(result + 16);
    if (v21)
    {
      v22 = (result + 32);
      v23 = *v6;
      while (1)
      {
        v24 = *v22++;
        *&v19[8 * v23] = v24;
        v23 = *v6 + 1;
        if (__OFADD__(*v6, 1))
        {
          break;
        }

        *v6 = v23;
        if (!--v21)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v8 == v7)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}