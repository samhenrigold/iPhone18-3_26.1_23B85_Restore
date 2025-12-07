unint64_t sub_26297C540()
{
  result = qword_27FF31B68;
  if (!qword_27FF31B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31B68);
  }

  return result;
}

uint64_t SEStorageManagementViewModel.ESimProfile.ctUserLabel.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SEStorageManagementViewModel.ESimProfile.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SEStorageManagementViewModel.ESimProfile.lastUsedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_262996B24();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t SEStorageManagementViewModel.ESimProfile.init(iccid:ctUserLabel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (!a4)
  {

    result = 0;
    a2 = 0;
    a3 = 0;
  }

  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  a5[4] = 0;
  return result;
}

BOOL static SEStorageManagementViewModel.ESimProfile.== infix(_:_:)(double *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = a1[4];
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (v8 || (sub_262996FD4()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_262996FD4()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26297C788()
{
  v1 = 0x614C726573557463;
  if (*v0 != 1)
  {
    v1 = 0x6567617375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6469636369;
  }
}

uint64_t sub_26297C7E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26297D37C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26297C80C(uint64_t a1)
{
  v2 = sub_26297CA44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26297C848(uint64_t a1)
{
  v2 = sub_26297CA44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementViewModel.ESimProfile.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B70, &qword_262998EE0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[0] = *(v1 + 24);
  v10[1] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26297CA44();
  sub_262997074();
  v13 = 0;
  v8 = v10[2];
  sub_262996F84();
  if (!v8)
  {
    v12 = 1;
    sub_262996F84();
    v11 = 2;
    sub_262996FA4();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_26297CA44()
{
  result = qword_27FF31B78;
  if (!qword_27FF31B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31B78);
  }

  return result;
}

uint64_t SEStorageManagementViewModel.ESimProfile.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_262996D64();
  sub_262996D64();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  return MEMORY[0x26672E320](*&v3);
}

uint64_t SEStorageManagementViewModel.ESimProfile.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_262997004();
  sub_262996D64();
  sub_262996D64();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x26672E320](*&v2);
  return sub_262997044();
}

uint64_t SEStorageManagementViewModel.ESimProfile.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B80, &qword_262998EE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26297CA44();
  sub_262997064();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v9 = sub_262996F14();
  v11 = v10;
  v19 = v9;
  v21 = 1;
  v17 = sub_262996F14();
  v18 = v12;
  v20 = 2;
  sub_262996F34();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  v15 = v18;
  *a2 = v19;
  *(a2 + 1) = v11;
  *(a2 + 2) = v17;
  *(a2 + 3) = v15;
  *(a2 + 4) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26297CE08@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_262996B24();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_26297CE74()
{
  v1 = *v0;

  return v1;
}

BOOL sub_26297CED4(double *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = a1[4];
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (v8 || (sub_262996FD4()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_262996FD4()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26297CF78(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_262996D64();
  sub_262996D64();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  return MEMORY[0x26672E320](*&v3);
}

uint64_t sub_26297CFE0(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_262997004();
  sub_262996D64();
  sub_262996D64();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x26672E320](*&v3);
  return sub_262997044();
}

unint64_t sub_26297D070(void *a1)
{
  a1[1] = sub_262975568();
  a1[2] = sub_262974948();
  a1[3] = sub_26297D0B0();
  result = sub_26297D104();
  a1[4] = result;
  return result;
}

unint64_t sub_26297D0B0()
{
  result = qword_27FF31B88;
  if (!qword_27FF31B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31B88);
  }

  return result;
}

unint64_t sub_26297D104()
{
  result = qword_27FF31B90;
  if (!qword_27FF31B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31B90);
  }

  return result;
}

unint64_t sub_26297D15C()
{
  result = qword_27FF31B98;
  if (!qword_27FF31B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31B98);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26297D1C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_26297D20C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26297D278()
{
  result = qword_27FF31BA0;
  if (!qword_27FF31BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31BA0);
  }

  return result;
}

unint64_t sub_26297D2D0()
{
  result = qword_27FF31BA8;
  if (!qword_27FF31BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31BA8);
  }

  return result;
}

unint64_t sub_26297D328()
{
  result = qword_27FF31BB0;
  if (!qword_27FF31BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31BB0);
  }

  return result;
}

uint64_t sub_26297D37C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6469636369 && a2 == 0xE500000000000000;
  if (v4 || (sub_262996FD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614C726573557463 && a2 == 0xEB000000006C6562 || (sub_262996FD4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567617375 && a2 == 0xE500000000000000)
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

uint64_t SEStorageManagementViewModel.WalletUsageCategory.localizedTitle.getter()
{
  v1 = v0;
  v2 = sub_262996C14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2629818FC(v1, v8, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
  if ((*(v3 + 48))(v8, 2, v2))
  {
    type metadata accessor for FindClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    v11 = sub_262996D34();
    v12 = sub_262996D34();
    v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

    v14 = sub_262996D44();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v14 = CredentialType.localizedDescription.getter();
    (*(v3 + 8))(v5, v2);
  }

  return v14;
}

uint64_t SEStorageManagementViewModel.WalletUsageCategory.entries.getter()
{
  type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0);
}

uint64_t SEStorageManagementViewModel.WalletUsageCategory.passCount.getter()
{
  v1 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0) + 20));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = *(v1 + 20);
    v9 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    while (1)
    {
      result = sub_2629818FC(v9, v4, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
      v12 = *(*&v4[v8] + 16);
      v13 = __OFADD__(v7, v12);
      v7 += v12;
      if (v13)
      {
        break;
      }

      sub_262981964(v4, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t SEStorageManagementViewModel.WalletUsageCategory.allDeletable.getter()
{
  v1 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0);
  v10 = *(v0 + *(result + 20));
  v19 = *(v10 + 16);
  if (v19)
  {
    v11 = 0;
    v17 = v6;
    v18 = v5;
    while (2)
    {
      if (v11 >= *(v10 + 16))
      {
LABEL_13:
        __break(1u);
        return result;
      }

      result = sub_2629818FC(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v11, v8, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
      v12 = 0;
      ++v11;
      v13 = *&v8[*(v5 + 20)];
      v14 = *(v13 + 16);
      while (v14 != v12)
      {
        if (v12 >= *(v13 + 16))
        {
          __break(1u);
          goto LABEL_13;
        }

        sub_2629818FC(v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v12++, v4, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
        v15 = v4[*(v1 + 36)];
        result = sub_262981964(v4, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
        if ((v15 & 1) == 0)
        {
          sub_262981964(v8, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
          return 0;
        }
      }

      result = sub_262981964(v8, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
      v5 = v18;
      v6 = v17;
      if (v11 != v19)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

uint64_t SEStorageManagementViewModel.WalletUsageCategory.init(identifier:entries:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2629819C4(a1, a3);
  result = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_26297DC10()
{
  if (*v0)
  {
    return 0x73656972746E65;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_26297DC50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_262996FD4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73656972746E65 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_262996FD4();

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

uint64_t sub_26297DD40(uint64_t a1)
{
  v2 = sub_262981A28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26297DD7C(uint64_t a1)
{
  v2 = sub_262981A28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementViewModel.WalletUsageCategory.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31BB8, &qword_262999160);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262981A28();
  sub_262997074();
  v12 = 0;
  type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(0);
  sub_262981A7C(&qword_27FF31BC8, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier, &protocol conformance descriptor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
  sub_262996FB4();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31BD0, &qword_262999168);
    sub_262981AC4(&qword_27FF31BD8, &qword_27FF31BE0, &protocol conformance descriptor for SEStorageManagementViewModel.WalletUsageGroup, MEMORY[0x277D83948]);
    sub_262996FB4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SEStorageManagementViewModel.WalletUsageCategory.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_262996C14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2629818FC(v2, v10, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
  v11 = (*(v5 + 48))(v10, 2, v4);
  if (v11)
  {
    if (v11 == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = 2;
    }

    MEMORY[0x26672E300](v12);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    MEMORY[0x26672E300](1);
    sub_262981A7C(&qword_27FF315C8, MEMORY[0x277D49298], MEMORY[0x277D492A8]);
    sub_262996D04();
    (*(v5 + 8))(v7, v4);
  }

  v13 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0);
  return sub_262965F2C(a1, *(v2 + *(v13 + 20)));
}

uint64_t SEStorageManagementViewModel.WalletUsageCategory.hashValue.getter()
{
  v1 = v0;
  v2 = sub_262996C14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_262997004();
  sub_2629818FC(v1, v8, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    MEMORY[0x26672E300](v10);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x26672E300](1);
    sub_262981A7C(&qword_27FF315C8, MEMORY[0x277D49298], MEMORY[0x277D492A8]);
    sub_262996D04();
    (*(v3 + 8))(v5, v2);
  }

  v11 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0);
  sub_262965F2C(v14, *(v1 + *(v11 + 20)));
  return sub_262997044();
}

uint64_t SEStorageManagementViewModel.WalletUsageCategory.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(0);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31BE8, &unk_262999170);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262981A28();
  sub_262997064();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v18;
  v13 = v11;
  v23 = 0;
  sub_262981A7C(&qword_27FF31BF0, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier, &protocol conformance descriptor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
  v14 = v19;
  sub_262996F44();
  sub_2629819C4(v20, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31BD0, &qword_262999168);
  v22 = 1;
  sub_262981AC4(&qword_27FF31BF8, &qword_27FF31C00, &protocol conformance descriptor for SEStorageManagementViewModel.WalletUsageGroup, MEMORY[0x277D83978]);
  sub_262996F44();
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 20)) = v21;
  sub_2629818FC(v13, v17, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_262981964(v13, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
}

double SEStorageManagementViewModel.WalletUsageCategory.usage.getter()
{
  v1 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0) + 20));
  v6 = *(v5 + 16);
  if (!v6)
  {
    return 0.0;
  }

  v7 = *(v1 + 28);
  v8 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v9 = *(v2 + 72);
  v10 = 0.0;
  do
  {
    sub_2629818FC(v8, v4, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
    v11 = *&v4[v7];
    sub_262981964(v4, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
    v10 = v10 + v11;
    v8 += v9;
    --v6;
  }

  while (v6);
  return v10;
}

uint64_t SEStorageManagementViewModel.WalletUsageCategory.lastUsedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v57 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0);
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v3 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314D0, &qword_262997510);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v55 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v55 - v11;
  v13 = sub_262996B24();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v76 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v74 = &v55 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v75 = &v55 - v20;
  MEMORY[0x28223BE20](v19);
  v65 = &v55 - v21;
  v22 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup(0);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v68 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v1 + *(type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0) + 20));
  v64 = *(v25 + 16);
  if (v64)
  {
    v26 = 0;
    v63 = v25 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v27 = *(v22 + 20);
    v61 = *(v23 + 72);
    v62 = v27;
    v78 = (v14 + 48);
    v79 = (v14 + 32);
    v73 = v14 + 16;
    v69 = v14 + 8;
    v58 = (v14 + 56);
    v66 = MEMORY[0x277D84F90];
    v70 = v3;
    v28 = v14;
    v77 = v14;
    v59 = v12;
    v60 = v10;
    while (1)
    {
      v67 = v26;
      v29 = v68;
      sub_2629818FC(v63 + v61 * v26, v68, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
      v30 = *(v29 + v62);
      v31 = *(v30 + 16);
      if (v31)
      {
        v32 = *(v57 + 32);
        v33 = v30 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
        v34 = *(v56 + 72);
        v35 = MEMORY[0x277D84F90];
        do
        {
          sub_2629818FC(v33, v3, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
          sub_262967904(&v3[v32], v7);
          sub_262981964(v3, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
          if ((*v78)(v7, 1, v13) == 1)
          {
            sub_2629737D4(v7, &qword_27FF314D0, &qword_262997510);
          }

          else
          {
            v36 = *v79;
            (*v79)(v76, v7, v13);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v35 = sub_2629658A0(0, *(v35 + 2) + 1, 1, v35);
            }

            v38 = *(v35 + 2);
            v37 = *(v35 + 3);
            if (v38 >= v37 >> 1)
            {
              v35 = sub_2629658A0((v37 > 1), v38 + 1, 1, v35);
            }

            *(v35 + 2) = v38 + 1;
            v28 = v77;
            v36(&v35[((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v77 + 72) * v38], v76, v13);
            v3 = v70;
          }

          v33 += v34;
          --v31;
        }

        while (v31);
      }

      else
      {
        v35 = MEMORY[0x277D84F90];
      }

      v39 = *(v35 + 2);
      if (v39)
      {
        v40 = &v35[(*(v28 + 80) + 32) & ~*(v28 + 80)];
        v71 = *(v28 + 16);
        v72 = v40;
        result = v71(v75);
        v42 = v74;
        if (v39 != 1)
        {
          v50 = 1;
          while (1)
          {
            v51 = v50 + 1;
            if (__OFADD__(v50, 1))
            {
              break;
            }

            (v71)(v42, &v72[*(v28 + 72) * v50], v13);
            sub_262981A7C(&qword_27FF31600, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
            v52 = v75;
            v53 = sub_262996D14();
            v28 = v77;
            v54 = *(v77 + 8);
            if (v53)
            {
              v54(v52, v13);
              result = (*v79)(v52, v42, v13);
            }

            else
            {
              result = (v54)(v42, v13);
            }

            ++v50;
            v42 = v74;
            if (v51 == v39)
            {
              goto LABEL_18;
            }
          }

          __break(1u);
          return result;
        }

LABEL_18:
        v43 = v60;
        (*v79)(v60, v75, v13);
        (*v58)(v43, 0, 1, v13);
      }

      else
      {
        v43 = v60;
        (*v58)(v60, 1, 1, v13);
      }

      v44 = v59;
      sub_262963C48(v43, v59);
      sub_262981964(v68, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
      if ((*v78)(v44, 1, v13) == 1)
      {
        sub_2629737D4(v44, &qword_27FF314D0, &qword_262997510);
      }

      else
      {
        v45 = *v79;
        (*v79)(v65, v44, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = sub_2629658A0(0, *(v66 + 2) + 1, 1, v66);
        }

        v47 = *(v66 + 2);
        v46 = *(v66 + 3);
        if (v47 >= v46 >> 1)
        {
          v66 = sub_2629658A0((v46 > 1), v47 + 1, 1, v66);
        }

        v48 = v65;
        v49 = v66;
        *(v66 + 2) = v47 + 1;
        v28 = v77;
        v45(&v49[((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v77 + 72) * v47], v48, v13);
      }

      v26 = v67 + 1;
      if (v67 + 1 == v64)
      {
        goto LABEL_33;
      }
    }
  }

  v66 = MEMORY[0x277D84F90];
LABEL_33:
  sub_262963D20(v66, v55);
}

uint64_t SEStorageManagementViewModel.WalletUsageCategory.id.getter()
{
  type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(0);
  sub_262996E84();
  return 0;
}

uint64_t sub_26297F0FC()
{
  type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(0);
  sub_262996E84();
  return 0;
}

double sub_26297F14C(uint64_t a1)
{
  v3 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup(0);
  v4 = MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + *(a1 + 20));
  v9 = *(v8 + 16);
  if (!v9)
  {
    return 0.0;
  }

  v10 = *(v4 + 28);
  v11 = v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v12 = *(v5 + 72);
  v13 = 0.0;
  do
  {
    sub_2629818FC(v11, v7, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
    v14 = *&v7[v10];
    sub_262981964(v7, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
    v13 = v13 + v14;
    v11 += v12;
    --v9;
  }

  while (v9);
  return v13;
}

uint64_t sub_26297F2B4@<X0>(void *a1@<X8>)
{
  type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(0);
  result = sub_262996E84();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_26297F314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s16SESUIServiceCore28SEStorageManagementViewModelV19WalletUsageCategoryV10IdentifierO2eeoiySbAG_AGtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_262982B48(v7, v8);
}

uint64_t sub_26297F384(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_262996C14();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_262997004();
  sub_2629818FC(v4, v11, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
  v12 = (*(v6 + 48))(v11, 2, v5);
  if (v12)
  {
    if (v12 == 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = 2;
    }

    MEMORY[0x26672E300](v13);
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    MEMORY[0x26672E300](1);
    sub_262981A7C(&qword_27FF315C8, MEMORY[0x277D49298], MEMORY[0x277D492A8]);
    sub_262996D04();
    (*(v6 + 8))(v8, v5);
  }

  sub_262965F2C(v16, *(v4 + *(a2 + 20)));
  return sub_262997044();
}

uint64_t SEStorageManagementViewModel.WalletUsageCategory.Identifier.init(credentialType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_262996C14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_262996B64();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - v13;
  (*(v5 + 16))(v7, a1, v4);
  if ((*(v5 + 88))(v7, v4) == *MEMORY[0x277D49240])
  {
    v15 = *(v5 + 96);
    v38 = v4;
    v15(v7, v4);
    v16 = a1;
    v17 = a2;
    v18 = *(v9 + 32);
    v18(v14, v7, v8);
    v18(v12, v14, v8);
    v19 = (*(v9 + 88))(v12, v8);
    if (v19 != *MEMORY[0x277D490C0] && v19 != *MEMORY[0x277D490A8])
    {
      if (v19 == *MEMORY[0x277D49128] || v19 == *MEMORY[0x277D490D0])
      {
        goto LABEL_15;
      }

      v30 = v19 == *MEMORY[0x277D490B0] || v19 == *MEMORY[0x277D490D8];
      v31 = v30 || v19 == *MEMORY[0x277D490B8];
      v32 = v31 || v19 == *MEMORY[0x277D490E0];
      if (!v32 && v19 != *MEMORY[0x277D49118])
      {
        if (v19 == *MEMORY[0x277D49088] || v19 == *MEMORY[0x277D49080] || v19 == *MEMORY[0x277D49098] || v19 == *MEMORY[0x277D49090] || v19 == *MEMORY[0x277D490F0])
        {
          goto LABEL_15;
        }

        if (v19 != *MEMORY[0x277D49100] && v19 != *MEMORY[0x277D49120])
        {
          if (v19 == *MEMORY[0x277D49138] || v19 == *MEMORY[0x277D490C8] || v19 == *MEMORY[0x277D490E8])
          {
            goto LABEL_15;
          }

          if (v19 != *MEMORY[0x277D490F8])
          {
            if (v19 != *MEMORY[0x277D49108] && v19 != *MEMORY[0x277D49130])
            {
              if (v19 == *MEMORY[0x277D49140])
              {
LABEL_45:
                v34 = v16;
                v4 = v38;
                (*(v5 + 8))(v34, v38);
                v25 = *(v5 + 56);
                v26 = v17;
                goto LABEL_9;
              }

              if (v19 != *MEMORY[0x277D490A0])
              {
                if (v19 == *MEMORY[0x277D49110])
                {
                  goto LABEL_45;
                }

                if (v19 != *MEMORY[0x277D49148])
                {
                  v35 = v16;
                  v36 = v38;
                  (*(v5 + 8))(v35, v38);
                  (*(v5 + 56))(v17, 2, 2, v36);
                  return (*(v9 + 8))(v12, v8);
                }
              }
            }

LABEL_15:
            v29 = v16;
            v4 = v38;
            (*(v5 + 8))(v29, v38);
            v25 = *(v5 + 56);
            v26 = v17;
            v27 = 1;
            return v25(v26, v27, 2, v4);
          }
        }
      }
    }

    v21 = v16;
    v22 = v38;
    (*(v5 + 32))(v17, v21, v38);
    return (*(v5 + 56))(v17, 0, 2, v22);
  }

  v24 = *(v5 + 8);
  v24(a1, v4);
  v24(v7, v4);
  v25 = *(v5 + 56);
  v26 = a2;
LABEL_9:
  v27 = 2;
  return v25(v26, v27, 2, v4);
}

uint64_t sub_26297FAF4(uint64_t a1)
{
  v2 = sub_262981C5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26297FB30(uint64_t a1)
{
  v2 = sub_262981C5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26297FB6C()
{
  v1 = 0x7041656C676E6973;
  if (*v0 != 1)
  {
    v1 = 0x726568746FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737365636361;
  }
}

uint64_t sub_26297FBC8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_262982814(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26297FBF0(uint64_t a1)
{
  v2 = sub_262981B60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26297FC2C(uint64_t a1)
{
  v2 = sub_262981B60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26297FC68(uint64_t a1)
{
  v2 = sub_262981BB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26297FCA4(uint64_t a1)
{
  v2 = sub_262981BB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26297FCEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

uint64_t sub_26297FD6C(uint64_t a1)
{
  v2 = sub_262981C08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26297FDA8(uint64_t a1)
{
  v2 = sub_262981C08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementViewModel.WalletUsageCategory.Identifier.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31C08, &qword_262999180);
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x28223BE20](v2);
  v28 = &v25 - v3;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31C10, &qword_262999188);
  v27 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v33 = &v25 - v4;
  v5 = sub_262996C14();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v32 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31C18, &qword_262999190);
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31C20, &qword_262999198);
  v14 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v16 = &v25 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262981B60();
  v17 = v6;
  sub_262997074();
  sub_2629818FC(v34, v13, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
  v18 = (*(v6 + 48))(v13, 2, v5);
  if (v18)
  {
    if (v18 == 1)
    {
      v36 = 0;
      sub_262981C5C();
      v19 = v35;
      sub_262996F64();
      (*(v25 + 8))(v10, v26);
    }

    else
    {
      v38 = 2;
      sub_262981BB4();
      v24 = v28;
      v19 = v35;
      sub_262996F64();
      (*(v29 + 8))(v24, v30);
    }

    return (*(v14 + 8))(v16, v19);
  }

  else
  {
    v20 = v27;
    (*(v6 + 32))(v32, v13, v5);
    v37 = 1;
    sub_262981C08();
    v21 = v35;
    sub_262996F64();
    sub_262981A7C(&qword_27FF31C40, MEMORY[0x277D49298], MEMORY[0x277D492A0]);
    v22 = v31;
    sub_262996FB4();
    (*(v20 + 8))(v33, v22);
    (*(v17 + 8))(v32, v5);
    return (*(v14 + 8))(v16, v21);
  }
}

uint64_t SEStorageManagementViewModel.WalletUsageCategory.Identifier.hash(into:)(uint64_t a1)
{
  v2 = sub_262996C14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2629818FC(v1, v8, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    return MEMORY[0x26672E300](v10);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x26672E300](1);
    sub_262981A7C(&qword_27FF315C8, MEMORY[0x277D49298], MEMORY[0x277D492A8]);
    sub_262996D04();
    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t SEStorageManagementViewModel.WalletUsageCategory.Identifier.hashValue.getter()
{
  v1 = v0;
  v2 = sub_262996C14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_262997004();
  sub_2629818FC(v1, v8, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    MEMORY[0x26672E300](v10);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x26672E300](1);
    sub_262981A7C(&qword_27FF315C8, MEMORY[0x277D49298], MEMORY[0x277D492A8]);
    sub_262996D04();
    (*(v3 + 8))(v5, v2);
  }

  return sub_262997044();
}

uint64_t SEStorageManagementViewModel.WalletUsageCategory.Identifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31C50, &qword_2629991A0);
  v53 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v52 = &v42 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31C58, &qword_2629991A8);
  v49 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v51 = &v42 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31C60, &qword_2629991B0);
  v50 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31C68, &qword_2629991B8);
  v55 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - v8;
  v10 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - v14;
  v16 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_262981B60();
  v17 = v56;
  sub_262997064();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v57);
  }

  v56 = v10;
  v19 = v50;
  v18 = v51;
  v43 = v13;
  v44 = v15;
  v20 = v52;
  v21 = v53;
  v45 = 0;
  v22 = v54;
  v23 = sub_262996F54();
  v24 = (2 * *(v23 + 16)) | 1;
  v58 = v23;
  v59 = v23 + 32;
  v60 = 0;
  v61 = v24;
  v25 = sub_262973850();
  if (v25 != 3 && v60 == v61 >> 1)
  {
    if (v25)
    {
      v26 = v55;
      if (v25 == 1)
      {
        v62 = 1;
        sub_262981C08();
        v27 = v18;
        v28 = v45;
        sub_262996EE4();
        if (!v28)
        {
          v29 = sub_262996C14();
          sub_262981A7C(&qword_27FF31C70, MEMORY[0x277D49298], MEMORY[0x277D492B8]);
          v30 = v43;
          v31 = v47;
          sub_262996F44();
          (*(v49 + 8))(v27, v31);
          (*(v26 + 8))(v9, v7);
          swift_unknownObjectRelease();
          (*(*(v29 - 8) + 56))(v30, 0, 2, v29);
          v32 = v44;
          sub_2629819C4(v30, v44);
          goto LABEL_19;
        }

        goto LABEL_16;
      }

      v62 = 2;
      sub_262981BB4();
      v39 = v45;
      sub_262996EE4();
      if (v39)
      {
LABEL_16:
        (*(v26 + 8))(v9, v7);
        goto LABEL_10;
      }

      (*(v21 + 8))(v20, v48);
      (*(v26 + 8))(v9, v7);
      swift_unknownObjectRelease();
      v41 = sub_262996C14();
      v32 = v44;
      (*(*(v41 - 8) + 56))(v44, 2, 2, v41);
    }

    else
    {
      v62 = 0;
      sub_262981C5C();
      v37 = v45;
      sub_262996EE4();
      v38 = v55;
      if (v37)
      {
        (*(v55 + 8))(v9, v7);
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1(v57);
      }

      (*(v19 + 8))(v6, v46);
      (*(v38 + 8))(v9, v7);
      swift_unknownObjectRelease();
      v40 = sub_262996C14();
      v32 = v44;
      (*(*(v40 - 8) + 56))(v44, 1, 2, v40);
    }

LABEL_19:
    sub_2629819C4(v32, v22);
    return __swift_destroy_boxed_opaque_existential_1(v57);
  }

  v33 = sub_262996E44();
  swift_allocError();
  v35 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31798, &qword_2629991C0);
  *v35 = v56;
  sub_262996EF4();
  sub_262996E34();
  (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
  swift_willThrow();
  (*(v55 + 8))(v9, v7);
LABEL_10:
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t sub_262980EA8(uint64_t a1)
{
  v2 = sub_262996C14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2629818FC(v1, v8, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    return MEMORY[0x26672E300](v10);
  }

  else
  {
    (*(v3 + 32))(v6, v8, v2);
    MEMORY[0x26672E300](1);
    sub_262981A7C(&qword_27FF315C8, MEMORY[0x277D49298], MEMORY[0x277D492A8]);
    sub_262996D04();
    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_262981080(uint64_t a1)
{
  v2 = v1;
  v3 = sub_262996C14();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_262997004();
  sub_2629818FC(v2, v9, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
  v10 = (*(v4 + 48))(v9, 2, v3);
  if (v10)
  {
    if (v10 == 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = 2;
    }

    MEMORY[0x26672E300](v11);
  }

  else
  {
    (*(v4 + 32))(v7, v9, v3);
    MEMORY[0x26672E300](1);
    sub_262981A7C(&qword_27FF315C8, MEMORY[0x277D49298], MEMORY[0x277D492A8]);
    sub_262996D04();
    (*(v4 + 8))(v7, v3);
  }

  return sub_262997044();
}

uint64_t _s16SESUIServiceCore28SEStorageManagementViewModelV19WalletUsageCategoryV10IdentifierO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_262996C14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31D28, &qword_2629998C0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_2629818FC(a1, &v21 - v13, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
  sub_2629818FC(a2, &v14[v15], type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
  v16 = *(v5 + 48);
  v17 = v16(v14, 2, v4);
  if (!v17)
  {
    sub_2629818FC(v14, v10, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
    if (!v16(&v14[v15], 2, v4))
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v18 = MEMORY[0x26672DEF0](v10, v7);
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      sub_262981964(v14, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
      return v18 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_9;
  }

  if (v17 == 1)
  {
    if (v16(&v14[v15], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v16(&v14[v15], 2, v4) != 2)
  {
LABEL_9:
    sub_2629737D4(v14, &qword_27FF31D28, &qword_2629998C0);
    v18 = 0;
    return v18 & 1;
  }

  sub_262981964(v14, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
  v18 = 1;
  return v18 & 1;
}

uint64_t _s16SESUIServiceCore28SEStorageManagementViewModelV19WalletUsageCategoryV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_262996C14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31D28, &qword_2629998C0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = *(v12 + 56);
  sub_2629818FC(a1, &v23 - v13, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
  sub_2629818FC(a2, &v14[v15], type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
  v16 = *(v5 + 48);
  v17 = v16(v14, 2, v4);
  if (v17)
  {
    if (v17 == 1)
    {
      if (v16(&v14[v15], 2, v4) == 1)
      {
        goto LABEL_10;
      }
    }

    else if (v16(&v14[v15], 2, v4) == 2)
    {
LABEL_10:
      sub_262981964(v14, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
      v21 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0);
      v18 = sub_262982B48(*(a1 + *(v21 + 20)), *(a2 + *(v21 + 20)));
      return v18 & 1;
    }
  }

  else
  {
    sub_2629818FC(v14, v10, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
    if (!v16(&v14[v15], 2, v4))
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v19 = MEMORY[0x26672DEF0](v10, v7);
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      if ((v19 & 1) == 0)
      {
        sub_262981964(v14, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
        v18 = 0;
        return v18 & 1;
      }

      goto LABEL_10;
    }

    (*(v5 + 8))(v10, v4);
  }

  sub_2629737D4(v14, &qword_27FF31D28, &qword_2629998C0);
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_2629818FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_262981964(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2629819C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_262981A28()
{
  result = qword_27FF31BC0;
  if (!qword_27FF31BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31BC0);
  }

  return result;
}

uint64_t sub_262981A7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_262981AC4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF31BD0, &qword_262999168);
    sub_262981A7C(a2, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_262981B60()
{
  result = qword_27FF31C28;
  if (!qword_27FF31C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31C28);
  }

  return result;
}

unint64_t sub_262981BB4()
{
  result = qword_27FF31C30;
  if (!qword_27FF31C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31C30);
  }

  return result;
}

unint64_t sub_262981C08()
{
  result = qword_27FF31C38;
  if (!qword_27FF31C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31C38);
  }

  return result;
}

unint64_t sub_262981C5C()
{
  result = qword_27FF31C48;
  if (!qword_27FF31C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31C48);
  }

  return result;
}

uint64_t sub_262981CB4(void *a1)
{
  a1[1] = sub_262981A7C(&qword_27FF317A8, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory, &protocol conformance descriptor for SEStorageManagementViewModel.WalletUsageCategory);
  a1[2] = sub_262981A7C(&qword_27FF31748, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory, &protocol conformance descriptor for SEStorageManagementViewModel.WalletUsageCategory);
  a1[3] = sub_262981A7C(&qword_27FF31C78, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory, &protocol conformance descriptor for SEStorageManagementViewModel.WalletUsageCategory);
  result = sub_262981A7C(&qword_27FF31C80, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory, &protocol conformance descriptor for SEStorageManagementViewModel.WalletUsageCategory);
  a1[4] = result;
  return result;
}

uint64_t sub_262981E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(0);
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

uint64_t sub_262981EFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(0);
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

void sub_262981FB4(uint64_t a1)
{
  type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(319);
  if (v1 <= 0x3F)
  {
    sub_262982038(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_262982038(uint64_t a1)
{
  if (!qword_27FF31CA8)
  {
    type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup(255);
    v1 = sub_262996DC4();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF31CA8);
    }
  }
}

uint64_t sub_2629820A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_262996C14();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_262982124(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_262996C14();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_2629821A8(uint64_t a1)
{
  v1 = sub_262996C14();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t _s19WalletUsageCategoryV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s19WalletUsageCategoryV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2629823A0()
{
  result = qword_27FF31CC0;
  if (!qword_27FF31CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31CC0);
  }

  return result;
}

unint64_t sub_2629823F8()
{
  result = qword_27FF31CC8;
  if (!qword_27FF31CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31CC8);
  }

  return result;
}

unint64_t sub_262982450()
{
  result = qword_27FF31CD0;
  if (!qword_27FF31CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31CD0);
  }

  return result;
}

unint64_t sub_2629824A8()
{
  result = qword_27FF31CD8;
  if (!qword_27FF31CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31CD8);
  }

  return result;
}

unint64_t sub_262982500()
{
  result = qword_27FF31CE0;
  if (!qword_27FF31CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31CE0);
  }

  return result;
}

unint64_t sub_262982558()
{
  result = qword_27FF31CE8;
  if (!qword_27FF31CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31CE8);
  }

  return result;
}

unint64_t sub_2629825B0()
{
  result = qword_27FF31CF0;
  if (!qword_27FF31CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31CF0);
  }

  return result;
}

unint64_t sub_262982608()
{
  result = qword_27FF31CF8;
  if (!qword_27FF31CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31CF8);
  }

  return result;
}

unint64_t sub_262982660()
{
  result = qword_27FF31D00;
  if (!qword_27FF31D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31D00);
  }

  return result;
}

unint64_t sub_2629826B8()
{
  result = qword_27FF31D08;
  if (!qword_27FF31D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31D08);
  }

  return result;
}

unint64_t sub_262982710()
{
  result = qword_27FF31D10;
  if (!qword_27FF31D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31D10);
  }

  return result;
}

unint64_t sub_262982768()
{
  result = qword_27FF31D18;
  if (!qword_27FF31D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31D18);
  }

  return result;
}

unint64_t sub_2629827C0()
{
  result = qword_27FF31D20;
  if (!qword_27FF31D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31D20);
  }

  return result;
}

uint64_t sub_262982814(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737365636361 && a2 == 0xE600000000000000;
  if (v4 || (sub_262996FD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7041656C676E6973 && a2 == 0xEC00000074656C70 || (sub_262996FD4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
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

uint64_t sub_26298293C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = (&v22 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(v8 + 72);
  while (1)
  {
    result = sub_2629876BC(v13, v10, type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp);
    if (!v11)
    {
      break;
    }

    sub_2629876BC(v14, v7, type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp);
    v21 = *v10 == *v7 && v10[1] == v7[1];
    if (!v21 && (sub_262996FD4() & 1) == 0)
    {
      sub_262987724(v7, type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp);
      sub_262987724(v10, type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp);
      return 0;
    }

    v16 = *(v4 + 20);
    v17 = *(v10 + v16);
    v18 = *(v7 + v16);
    sub_262987724(v7, type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp);
    sub_262987724(v10, type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp);
    result = v17 == v18;
    v20 = v17 != v18 || v11-- == 1;
    v14 += v15;
    v13 += v15;
    if (v20)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_262982B48(uint64_t a1, uint64_t a2)
{
  v4 = sub_262996B24();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314D0, &qword_262997510);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v84 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31E70, &qword_262999F98);
  MEMORY[0x28223BE20](v11);
  v13 = &v84 - v12;
  v14 = sub_262996C14();
  v116 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v114 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v84 - v17;
  v107 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0);
  v104 = *(v107 - 1);
  v19 = MEMORY[0x28223BE20](v107);
  v115 = (&v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v113 = (&v84 - v21);
  v22 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup(0);
  v23 = MEMORY[0x28223BE20](v22);
  v106 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v105 = &v84 - v27;
  v28 = *(a1 + 16);
  if (v28 != *(a2 + 16))
  {
    return 0;
  }

  if (!v28 || a1 == a2)
  {
    return 1;
  }

  v101 = v25;
  v95 = v11;
  v96 = v13;
  v86 = v10;
  v85 = v7;
  v97 = v4;
  v29 = 0;
  v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v31 = a1 + v30;
  v32 = a2 + v30;
  v110 = (v116 + 8);
  v111 = v116 + 16;
  v94 = (v5 + 48);
  v84 = (v5 + 32);
  v87 = (v5 + 8);
  v33 = *(v26 + 72);
  v34 = v113;
  v36 = v105;
  v35 = v106;
  v102 = v28;
  while (1)
  {
    result = sub_2629876BC(v31 + v33 * v29, v36, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
    if (v29 == v102)
    {
      break;
    }

    sub_2629876BC(v32 + v33 * v29, v35, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
    result = MEMORY[0x26672DEF0](v36, v35);
    v38 = v101;
    if ((result & 1) == 0 || (v39 = *(v101 + 20), v40 = *(v36 + v39), v41 = *(v40 + 16), v103 = *(v35 + v39), v41 != *(v103 + 16)))
    {
LABEL_59:
      sub_262987724(v35, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
      sub_262987724(v36, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
      return 0;
    }

    if (v41 && v40 != v103)
    {
      v42 = 0;
      v43 = (*(v104 + 80) + 32) & ~*(v104 + 80);
      v99 = v40 + v43;
      v98 = v103 + v43;
      v93 = v29;
      v92 = v31;
      v91 = v32;
      v112 = v14;
      v90 = v33;
      v89 = v40;
      v88 = v41;
      while (1)
      {
        if (v42 >= *(v40 + 16))
        {
          goto LABEL_64;
        }

        v44 = v42;
        v45 = *(v104 + 72) * v42;
        result = sub_2629876BC(v99 + v45, v34, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
        v46 = *(v103 + 16);
        v100 = v44;
        if (v44 >= v46)
        {
          goto LABEL_65;
        }

        v47 = v98 + v45;
        v48 = v115;
        sub_2629876BC(v47, v115, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
        result = *v34;
        if (*v34 != *v48 || v34[1] != v48[1])
        {
          result = sub_262996FD4();
          if ((result & 1) == 0)
          {
            goto LABEL_58;
          }
        }

        v49 = v113[2];
        v50 = v115[2];
        v51 = *(v49 + 16);
        if (v51 != *(v50 + 16))
        {
          goto LABEL_58;
        }

        if (v51 && v49 != v50)
        {
          break;
        }

LABEL_24:
        v62 = v113[3];
        v63 = v115[3];
        v64 = *(v62 + 16);
        if (v64 != *(v63 + 16))
        {
          goto LABEL_58;
        }

        if (v64 && v62 != v63)
        {
          v65 = (v62 + 40);
          v66 = (v63 + 40);
          do
          {
            v67 = *(v65 - 1) == *(v66 - 1) && *v65 == *v66;
            if (!v67 && (sub_262996FD4() & 1) == 0)
            {
              goto LABEL_58;
            }

            v65 += 2;
            v66 += 2;
          }

          while (--v64);
        }

        if ((v113[4] != v115[4] || v113[5] != v115[5]) && (sub_262996FD4() & 1) == 0)
        {
          goto LABEL_58;
        }

        v68 = v107[8];
        v69 = *(v95 + 48);
        v70 = v96;
        sub_262967904(v113 + v68, v96);
        sub_262967904(v115 + v68, v70 + v69);
        v71 = *v94;
        v72 = v97;
        if ((*v94)(v70, 1, v97) == 1)
        {
          if (v71(v70 + v69, 1, v72) != 1)
          {
            goto LABEL_57;
          }

          sub_2629737D4(v70, &qword_27FF314D0, &qword_262997510);
        }

        else
        {
          v73 = v86;
          sub_262967904(v70, v86);
          if (v71(v70 + v69, 1, v72) == 1)
          {
            (*v87)(v73, v72);
LABEL_57:
            sub_2629737D4(v70, &qword_27FF31E70, &qword_262999F98);
LABEL_58:
            sub_262987724(v115, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
            sub_262987724(v113, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
            v36 = v105;
            v35 = v106;
            goto LABEL_59;
          }

          v74 = v85;
          (*v84)(v85, v70 + v69, v72);
          sub_262987674(&qword_27FF31E78, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
          v75 = sub_262996D24();
          v76 = *v87;
          (*v87)(v74, v72);
          v76(v73, v72);
          sub_2629737D4(v70, &qword_27FF314D0, &qword_262997510);
          if ((v75 & 1) == 0)
          {
            goto LABEL_58;
          }
        }

        if (*(v113 + v107[9]) != *(v115 + v107[9]) || *(v113 + v107[10]) != *(v115 + v107[10]))
        {
          goto LABEL_58;
        }

        v77 = v107[11];
        v34 = v113;
        v78 = *(v113 + v77);
        v79 = *(v115 + v77);
        sub_262987724(v115, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
        result = sub_262987724(v34, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
        v67 = v78 == v79;
        v36 = v105;
        v35 = v106;
        v38 = v101;
        v29 = v93;
        v31 = v92;
        v32 = v91;
        v14 = v112;
        v33 = v90;
        v40 = v89;
        if (!v67)
        {
          goto LABEL_59;
        }

        v42 = v100 + 1;
        if (v100 + 1 == v88)
        {
          goto LABEL_48;
        }
      }

      v52 = 0;
      v53 = (*(v116 + 80) + 32) & ~*(v116 + 80);
      v108 = v50 + v53;
      v109 = v49 + v53;
      while (v52 < *(v49 + 16))
      {
        v54 = *(v116 + 72) * v52;
        v55 = *(v116 + 16);
        v56 = v112;
        result = v55(v18, v109 + v54, v112);
        if (v52 >= *(v50 + 16))
        {
          goto LABEL_62;
        }

        v57 = v18;
        v58 = v114;
        v55(v114, v108 + v54, v56);
        sub_262987674(&qword_27FF31B48, MEMORY[0x277D49298], MEMORY[0x277D492B0]);
        v59 = sub_262996D24();
        v60 = *v110;
        v61 = v58;
        v18 = v57;
        (*v110)(v61, v56);
        result = v60(v57, v56);
        if ((v59 & 1) == 0)
        {
          goto LABEL_58;
        }

        if (v51 == ++v52)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_62:
      __break(1u);
      break;
    }

LABEL_48:
    if (*(v36 + *(v38 + 24)) != *(v35 + *(v38 + 24)))
    {
      goto LABEL_59;
    }

    ++v29;
    v80 = *(v38 + 28);
    v81 = *(v36 + v80);
    v82 = *(v35 + v80);
    sub_262987724(v35, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
    sub_262987724(v36, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
    result = v81 == v82;
    if (v81 != v82 || v29 == v102)
    {
      return result;
    }
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

uint64_t sub_26298364C(uint64_t a1, uint64_t a2)
{
  v4 = sub_262996B24();
  v78 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314D0, &qword_262997510);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v61 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31E70, &qword_262999F98);
  MEMORY[0x28223BE20](v10);
  v12 = &v61 - v11;
  v13 = sub_262996C14();
  v83 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v81 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v61 - v16;
  v75 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0);
  v18 = MEMORY[0x28223BE20](v75);
  v82 = (&v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v22 = (&v61 - v21);
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
LABEL_47:
    v60 = 0;
    return v60 & 1;
  }

  if (!v23 || a1 == a2)
  {
    v60 = 1;
    return v60 & 1;
  }

  v68 = v10;
  v69 = v12;
  v65 = v9;
  v63 = v6;
  v70 = v4;
  v24 = 0;
  v25 = v23;
  v26 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v73 = a1 + v26;
  v71 = a2 + v26;
  v79 = (v83 + 8);
  v80 = v83 + 16;
  v67 = (v78 + 48);
  v62 = (v78 + 32);
  v64 = (v78 + 8);
  v72 = *(v20 + 72);
  v76 = (&v61 - v21);
  v66 = v23;
  while (1)
  {
    v27 = v72 * v24;
    result = sub_2629876BC(v73 + v72 * v24, v22, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
    if (v24 == v25)
    {
      goto LABEL_51;
    }

    v74 = v24;
    v29 = v71 + v27;
    v30 = v82;
    sub_2629876BC(v29, v82, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
    result = *v22;
    if (*v22 != *v30 || v22[1] != v30[1])
    {
      result = sub_262996FD4();
      if ((result & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    v32 = v76[2];
    v33 = v82[2];
    v34 = *(v32 + 16);
    if (v34 != *(v33 + 16))
    {
      goto LABEL_46;
    }

    if (v34 && v32 != v33)
    {
      break;
    }

LABEL_19:
    v44 = v76[3];
    v45 = v82[3];
    v46 = *(v44 + 16);
    if (v46 != *(v45 + 16))
    {
      goto LABEL_46;
    }

    if (v46 && v44 != v45)
    {
      v47 = (v44 + 40);
      v48 = (v45 + 40);
      do
      {
        v49 = *(v47 - 1) == *(v48 - 1) && *v47 == *v48;
        if (!v49 && (sub_262996FD4() & 1) == 0)
        {
          goto LABEL_46;
        }

        v47 += 2;
        v48 += 2;
      }

      while (--v46);
    }

    if ((v76[4] != v82[4] || v76[5] != v82[5]) && (sub_262996FD4() & 1) == 0)
    {
      goto LABEL_46;
    }

    v50 = v75[8];
    v51 = v69;
    v52 = *(v68 + 48);
    sub_262967904(v76 + v50, v69);
    sub_262967904(v82 + v50, v51 + v52);
    v53 = *v67;
    v54 = v70;
    if ((*v67)(v51, 1, v70) == 1)
    {
      if (v53(v51 + v52, 1, v54) != 1)
      {
        goto LABEL_45;
      }

      sub_2629737D4(v51, &qword_27FF314D0, &qword_262997510);
    }

    else
    {
      v55 = v65;
      sub_262967904(v51, v65);
      if (v53(v51 + v52, 1, v54) == 1)
      {
        (*v64)(v55, v54);
LABEL_45:
        sub_2629737D4(v51, &qword_27FF31E70, &qword_262999F98);
LABEL_46:
        sub_262987724(v82, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
        sub_262987724(v76, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
        goto LABEL_47;
      }

      v56 = v63;
      (*v62)(v63, v51 + v52, v54);
      sub_262987674(&qword_27FF31E78, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v57 = sub_262996D24();
      v58 = *v64;
      (*v64)(v56, v54);
      v58(v55, v54);
      sub_2629737D4(v51, &qword_27FF314D0, &qword_262997510);
      if ((v57 & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    if (*(v76 + v75[9]) != *(v82 + v75[9]) || *(v76 + v75[10]) != *(v82 + v75[10]))
    {
      goto LABEL_46;
    }

    v22 = v76;
    v59 = *(v76 + v75[11]) ^ *(v82 + v75[11]);
    sub_262987724(v82, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
    sub_262987724(v22, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
    v25 = v66;
    if ((v59 & 1) == 0)
    {
      v24 = v74 + 1;
      if (v74 + 1 != v66)
      {
        continue;
      }
    }

    v60 = v59 ^ 1;
    return v60 & 1;
  }

  v35 = 0;
  v36 = (*(v83 + 80) + 32) & ~*(v83 + 80);
  v77 = v33 + v36;
  v78 = v32 + v36;
  while (v35 < *(v32 + 16))
  {
    v37 = *(v83 + 72) * v35;
    v38 = *(v83 + 16);
    result = v38(v17, v78 + v37, v13);
    if (v35 >= *(v33 + 16))
    {
      goto LABEL_50;
    }

    v39 = v17;
    v40 = v81;
    v38(v81, v77 + v37, v13);
    sub_262987674(&qword_27FF31B48, MEMORY[0x277D49298], MEMORY[0x277D492B0]);
    v41 = sub_262996D24();
    v42 = *v79;
    v43 = v40;
    v17 = v39;
    (*v79)(v43, v13);
    result = (v42)(v39, v13);
    if ((v41 & 1) == 0)
    {
      goto LABEL_46;
    }

    if (v34 == ++v35)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_262983E84(uint64_t a1, uint64_t a2)
{
  v4 = sub_262996C14();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_262987674(&qword_27FF31B48, MEMORY[0x277D49298], MEMORY[0x277D492B0]);
    v21 = sub_262996D24();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_262984098(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_262996FD4() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

void sub_262984128(uint64_t a1, uint64_t a2)
{
  v46 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup(0);
  v4 = MEMORY[0x28223BE20](v46);
  v47 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - v7;
  v9 = *(a1 + 16);
  if (v9 == *(a2 + 16) && v9 && a1 != a2)
  {
    v10 = 0;
    v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v40 = *(a1 + 16);
    v41 = a2 + v11;
    v42 = *(v6 + 72);
    v43 = a1 + v11;
    v45 = &v40 - v7;
    while (1)
    {
      v12 = v42 * v10;
      sub_2629876BC(v43 + v42 * v10, v8, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
      if (v10 == v9)
      {
        break;
      }

      v44 = v10;
      sub_2629876BC(v41 + v12, v47, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
      if ((sub_262996B44() & 1) == 0)
      {
        goto LABEL_32;
      }

      v13 = v46[5];
      v14 = *&v45[v13];
      v15 = *&v45[v13 + 8];
      v16 = (v47 + v13);
      v17 = v14 == *v16 && v15 == v16[1];
      if (!v17 && (sub_262996FD4() & 1) == 0)
      {
        goto LABEL_32;
      }

      v18 = v46[6];
      v19 = *&v45[v18];
      v20 = *(v47 + v18);
      v21 = *(v20 + 16);
      v48 = *(v19 + 16);
      v49 = v19;
      if (v48 != v21)
      {
        goto LABEL_32;
      }

      if (v48)
      {
        v22 = v49 == v20;
      }

      else
      {
        v22 = 1;
      }

      if (!v22)
      {
        sub_2629658C8();
        v23 = 0;
        v24 = (v20 + 48);
        v25 = (v49 + 48);
        while (v23 < *(v49 + 16))
        {
          if (v23 >= *(v20 + 16))
          {
            goto LABEL_35;
          }

          v26 = *v25;
          v27 = *(v25 - 1);
          v28 = *(v24 - 2);
          v29 = *(v24 - 1);
          v30 = *v24;
          v31 = *(v25 - 2);
          v32 = v28;
          v33 = sub_262996DD4();

          if (v33 & 1) == 0 || v27 != v29 || ((v26 ^ v30))
          {
            goto LABEL_32;
          }

          ++v23;
          v24 += 24;
          v25 += 3;
          if (v48 == v23)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_35:
        __break(1u);
        break;
      }

LABEL_24:
      v34 = v46[7];
      v35 = &v45[v34];
      v36 = (v47 + v34);
      if ((*v35 != *v36 || *(v35 + 1) != v36[1]) && (sub_262996FD4() & 1) == 0 || *&v45[v46[8]] != *(v47 + v46[8]))
      {
LABEL_32:
        sub_262987724(v47, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
        sub_262987724(v45, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
        return;
      }

      v8 = v45;
      v37 = v46[9];
      v38 = *&v45[v37];
      v39 = *(v47 + v37);
      sub_262987724(v47, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
      sub_262987724(v8, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
      if (v38 == v39)
      {
        v10 = v44 + 1;
        v9 = v40;
        if (v44 + 1 != v40)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

void sub_2629844D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    sub_2629658C8();
    v5 = 0;
    do
    {
      v6 = *(a1 + v5 + 48);
      v7 = *(a1 + v5 + 40);
      v8 = *(a2 + v5 + 32);
      v9 = *(a2 + v5 + 40);
      v10 = *(a2 + v5 + 48);
      v11 = *(a1 + v5 + 32);
      v12 = v8;
      v13 = sub_262996DD4();

      if ((v13 ^ 1 | v6 ^ v10) & 1 | (v7 != v9))
      {
        break;
      }

      v5 += 24;
      --v2;
    }

    while (v2);
  }
}

uint64_t SEStorageManagementViewModel.ViennaUsageCategory.groups.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t SEStorageManagementViewModel.ViennaUsageCategory.id.getter()
{
  BYTE8(v2) = 0;
  *&v2 = *v0;
  sub_262996E84();
  return *(&v2 + 1);
}

uint64_t SEStorageManagementViewModel.ViennaUsageCategory.lastUsedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314D0, &qword_262997510);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - v6;
  v8 = sub_262996B24();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v30 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup(0) - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 8);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = v15 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v18 = *(v12 + 72);
    v19 = (v9 + 48);
    v26 = v9;
    v28 = (v9 + 32);
    v29 = v18;
    v20 = MEMORY[0x277D84F90];
    v27 = v5;
    do
    {
      sub_2629876BC(v17, v14, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
      SEStorageManagementViewModel.ViennaUsageGroup.lastUsedDate.getter(v5);
      sub_262963C48(v5, v7);
      sub_262987724(v14, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
      if ((*v19)(v7, 1, v8) == 1)
      {
        sub_2629737D4(v7, &qword_27FF314D0, &qword_262997510);
      }

      else
      {
        v21 = *v28;
        (*v28)(v30, v7, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_2629658A0(0, *(v20 + 2) + 1, 1, v20);
        }

        v23 = *(v20 + 2);
        v22 = *(v20 + 3);
        if (v23 >= v22 >> 1)
        {
          v20 = sub_2629658A0((v22 > 1), v23 + 1, 1, v20);
        }

        *(v20 + 2) = v23 + 1;
        v21(&v20[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23], v30, v8);
        v5 = v27;
      }

      v17 += v29;
      --v16;
    }

    while (v16);
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  sub_262963D20(v20, v25);
}

double SEStorageManagementViewModel.ViennaUsageCategory.usage.getter()
{
  v1 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup(0);
  v2 = MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 8);
  v7 = *(v6 + 16);
  if (!v7)
  {
    return 0.0;
  }

  v8 = *(v2 + 36);
  v9 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v10 = *(v3 + 72);
  v11 = 0.0;
  do
  {
    sub_2629876BC(v9, v5, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
    v12 = *&v5[v8];
    sub_262987724(v5, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
    v11 = v11 + v12;
    v9 += v10;
    --v7;
  }

  while (v7);
  return v11;
}

uint64_t SEStorageManagementViewModel.ViennaUsageCategory.credentialCount.getter()
{
  v1 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup(0);
  v2 = MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 8);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = *(v2 + 24);
    v10 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      result = sub_2629876BC(v10, v5, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
      v13 = *(*&v5[v9] + 16);
      v14 = __OFADD__(v8, v13);
      v8 += v13;
      if (v14)
      {
        break;
      }

      sub_262987724(v5, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
      v10 += v11;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

_BYTE *SEStorageManagementViewModel.ViennaUsageCategory.init(identifier:groups:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

void static SEStorageManagementViewModel.ViennaUsageCategory.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    sub_262984128(*(a1 + 1), *(a2 + 1));
  }
}

uint64_t sub_262984C84()
{
  if (*v0)
  {
    return 0x7370756F7267;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_262984CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_262996FD4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7370756F7267 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_262996FD4();

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

uint64_t sub_262984DA0(uint64_t a1)
{
  v2 = sub_262986690();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262984DDC(uint64_t a1)
{
  v2 = sub_262986690();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementViewModel.ViennaUsageCategory.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31D30, &qword_2629998C8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v10[0] = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262986690();
  sub_262997074();
  v13 = v8;
  v12 = 0;
  sub_2629866E4();
  sub_262996FB4();
  if (!v2)
  {
    v10[1] = v10[0];
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31D48, &qword_2629998D0);
    sub_262986B4C(&qword_27FF31D50, &qword_27FF31D58, &protocol conformance descriptor for SEStorageManagementViewModel.ViennaUsageGroup, MEMORY[0x277D83948]);
    sub_262996FB4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t SEStorageManagementViewModel.ViennaUsageCategory.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 1);
  MEMORY[0x26672E300](*v1);

  return sub_262966630(a1, v3);
}

uint64_t SEStorageManagementViewModel.ViennaUsageCategory.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_262997004();
  MEMORY[0x26672E300](v1);
  sub_262966630(v4, v2);
  return sub_262997044();
}

uint64_t SEStorageManagementViewModel.ViennaUsageCategory.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31D60, &qword_2629998D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262986690();
  sub_262997064();
  if (!v2)
  {
    v14 = 0;
    sub_262986AF8();
    sub_262996F44();
    v9 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31D48, &qword_2629998D0);
    v13 = 1;
    sub_262986B4C(&qword_27FF31D70, &qword_27FF31D78, &protocol conformance descriptor for SEStorageManagementViewModel.ViennaUsageGroup, MEMORY[0x277D83978]);
    sub_262996F44();
    (*(v6 + 8))(v8, v5);
    v10 = v12[1];
    *a2 = v9;
    *(a2 + 8) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double sub_2629852D8()
{
  v1 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup(0);
  v2 = MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 8);
  v7 = *(v6 + 16);
  if (!v7)
  {
    return 0.0;
  }

  v8 = *(v2 + 36);
  v9 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v10 = *(v3 + 72);
  v11 = 0.0;
  do
  {
    sub_2629876BC(v9, v5, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
    v12 = *&v5[v8];
    sub_262987724(v5, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
    v11 = v11 + v12;
    v9 += v10;
    --v7;
  }

  while (v7);
  return v11;
}

uint64_t sub_262985400()
{
  BYTE8(v2) = 0;
  *&v2 = *v0;
  sub_262996E84();
  return *(&v2 + 1);
}

uint64_t sub_262985484@<X0>(void *a1@<X8>)
{
  BYTE8(v4) = 0;
  *&v4 = *v1;
  result = sub_262996E84();
  *a1 = *(&v4 + 1);
  a1[1] = 0xE000000000000000;
  return result;
}

void sub_2629854E8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    sub_262984128(*(a1 + 1), *(a2 + 1));
  }
}

uint64_t sub_26298550C()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_262997004();
  MEMORY[0x26672E300](v1);
  sub_262966630(v4, v2);
  return sub_262997044();
}

uint64_t sub_26298556C(uint64_t a1)
{
  v3 = *(v1 + 1);
  MEMORY[0x26672E300](*v1);

  return sub_262966630(a1, v3);
}

uint64_t sub_2629855BC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  sub_262997004();
  MEMORY[0x26672E300](v2);
  sub_262966630(v5, v3);
  return sub_262997044();
}

uint64_t SEStorageManagementViewModel.ViennaUsageCategory.Identifier.init(config:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_262996BF4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_262996CA4();
  v8 = sub_262996BE4();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v25[0] = 44;
  v25[1] = 0xE100000000000000;
  v24 = v25;
  v11 = sub_262986738(0x7FFFFFFFFFFFFFFFLL, 1, sub_262986BE8, v23, v8, v10, v25);
  if (v11[2])
  {
    v12 = v11[4];
    v13 = v11[5];
    v15 = v11[6];
    v14 = v11[7];

    if (sub_262986C40(0xD000000000000013, 0x800000026299C730, v12, v13, v15, v14))
    {
      v16 = sub_262996CB4();
      (*(*(v16 - 8) + 8))(a1, v16);

      v18 = 1;
    }

    else if (sub_262986C40(0x5359454B2D524143, 0xE800000000000000, v12, v13, v15, v14) & 1) != 0 || (sub_262986C40(0x454B2D4C45544F48, 0xEA00000000005359, v12, v13, v15, v14) & 1) != 0 || (sub_262986C40(0x59454B2D454D4F48, 0xE900000000000053, v12, v13, v15, v14))
    {
      v20 = sub_262996CB4();
      (*(*(v20 - 8) + 8))(a1, v20);

      v18 = 0;
    }

    else
    {
      v21 = sub_262986C40(0xD000000000000016, 0x800000026299C750, v12, v13, v15, v14);

      v22 = sub_262996CB4();
      result = (*(*(v22 - 8) + 8))(a1, v22);
      if (v21)
      {
        v18 = 0;
      }

      else
      {
        v18 = 2;
      }
    }
  }

  else
  {
    v19 = sub_262996CB4();
    (*(*(v19 - 8) + 8))(a1, v19);

    v18 = 2;
  }

  *a2 = v18;
  return result;
}

uint64_t sub_26298598C(uint64_t a1)
{
  v2 = sub_262986DA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2629859C8(uint64_t a1)
{
  v2 = sub_262986DA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262985A04()
{
  v1 = 0x7469736E617274;
  if (*v0 != 1)
  {
    v1 = 0x726568746FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737365636361;
  }
}

uint64_t sub_262985A58@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_262987564(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_262985A80(uint64_t a1)
{
  v2 = sub_262986CAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262985ABC(uint64_t a1)
{
  v2 = sub_262986CAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262985AF8(uint64_t a1)
{
  v2 = sub_262986D00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262985B34(uint64_t a1)
{
  v2 = sub_262986D00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262985B70(uint64_t a1)
{
  v2 = sub_262986D54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262985BAC(uint64_t a1)
{
  v2 = sub_262986D54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementViewModel.ViennaUsageCategory.Identifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31D80, &qword_2629998E0);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31D88, &qword_2629998E8);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31D90, &qword_2629998F0);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31D98, &qword_2629998F8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262986CAC();
  sub_262997074();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_262986D54();
      v9 = v21;
      sub_262996F64();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_262986D00();
      v9 = v24;
      sub_262996F64();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_262986DA8();
    sub_262996F64();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t SEStorageManagementViewModel.ViennaUsageCategory.Identifier.hashValue.getter()
{
  v1 = *v0;
  sub_262997004();
  MEMORY[0x26672E300](v1);
  return sub_262997044();
}

uint64_t SEStorageManagementViewModel.ViennaUsageCategory.Identifier.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31DC0, &qword_262999900);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31DC8, &qword_262999908);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31DD0, &qword_262999910);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31DD8, &unk_262999918);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_262986CAC();
  v15 = v36;
  sub_262997064();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_262996F54();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_262973850();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_262996E44();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31798, &qword_2629991C0);
      *v24 = &type metadata for SEStorageManagementViewModel.ViennaUsageCategory.Identifier;
      sub_262996EF4();
      sub_262996E34();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_262986D54();
          sub_262996EE4();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_262986D00();
          v26 = v17;
          sub_262996EE4();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_262986DA8();
        sub_262996EE4();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t SEStorageManagementViewModel.ViennaUsageCategory.localizedTitle.getter()
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

unint64_t sub_262986690()
{
  result = qword_27FF31D38;
  if (!qword_27FF31D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31D38);
  }

  return result;
}

unint64_t sub_2629866E4()
{
  result = qword_27FF31D40;
  if (!qword_27FF31D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31D40);
  }

  return result;
}

unint64_t sub_262986738@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_262996D94();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_262965AD4(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_262965AD4((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_262996D84();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_262996D74();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_262996D74();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_262996D94();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_262965AD4(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_262996D94();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_262965AD4(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_262965AD4((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_262996D74();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_262986AF8()
{
  result = qword_27FF31D68;
  if (!qword_27FF31D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31D68);
  }

  return result;
}

uint64_t sub_262986B4C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF31D48, &qword_2629998D0);
    sub_262987674(a2, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_262986BE8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_262996FD4() & 1;
  }
}

uint64_t sub_262986C40(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (a1 == a5 && a2 == a6 && !(a3 >> 16) && v7 == a4 >> 16)
  {
    return 1;
  }

  else
  {
    return sub_262996FC4() & 1;
  }
}

unint64_t sub_262986CAC()
{
  result = qword_27FF31DA0;
  if (!qword_27FF31DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31DA0);
  }

  return result;
}

unint64_t sub_262986D00()
{
  result = qword_27FF31DA8;
  if (!qword_27FF31DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31DA8);
  }

  return result;
}

unint64_t sub_262986D54()
{
  result = qword_27FF31DB0;
  if (!qword_27FF31DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31DB0);
  }

  return result;
}

unint64_t sub_262986DA8()
{
  result = qword_27FF31DB8;
  if (!qword_27FF31DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31DB8);
  }

  return result;
}

unint64_t sub_262986DFC(void *a1)
{
  a1[1] = sub_262986E3C();
  a1[2] = sub_262986E90();
  a1[3] = sub_262986EE4();
  result = sub_262986F38();
  a1[4] = result;
  return result;
}

unint64_t sub_262986E3C()
{
  result = qword_27FF31DE0;
  if (!qword_27FF31DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31DE0);
  }

  return result;
}

unint64_t sub_262986E90()
{
  result = qword_27FF31DE8;
  if (!qword_27FF31DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31DE8);
  }

  return result;
}

unint64_t sub_262986EE4()
{
  result = qword_27FF31DF0;
  if (!qword_27FF31DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31DF0);
  }

  return result;
}

unint64_t sub_262986F38()
{
  result = qword_27FF31DF8;
  if (!qword_27FF31DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31DF8);
  }

  return result;
}

unint64_t sub_262986F90()
{
  result = qword_27FF31E00;
  if (!qword_27FF31E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31E00);
  }

  return result;
}

unint64_t sub_262986FE8()
{
  result = qword_27FF31E08;
  if (!qword_27FF31E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31E08);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_262987048(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_262987090(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_262987148()
{
  result = qword_27FF31E10;
  if (!qword_27FF31E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31E10);
  }

  return result;
}

unint64_t sub_2629871A0()
{
  result = qword_27FF31E18;
  if (!qword_27FF31E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31E18);
  }

  return result;
}

unint64_t sub_2629871F8()
{
  result = qword_27FF31E20;
  if (!qword_27FF31E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31E20);
  }

  return result;
}

unint64_t sub_262987250()
{
  result = qword_27FF31E28;
  if (!qword_27FF31E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31E28);
  }

  return result;
}

unint64_t sub_2629872A8()
{
  result = qword_27FF31E30;
  if (!qword_27FF31E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31E30);
  }

  return result;
}

unint64_t sub_262987300()
{
  result = qword_27FF31E38;
  if (!qword_27FF31E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31E38);
  }

  return result;
}

unint64_t sub_262987358()
{
  result = qword_27FF31E40;
  if (!qword_27FF31E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31E40);
  }

  return result;
}

unint64_t sub_2629873B0()
{
  result = qword_27FF31E48;
  if (!qword_27FF31E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31E48);
  }

  return result;
}

unint64_t sub_262987408()
{
  result = qword_27FF31E50;
  if (!qword_27FF31E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31E50);
  }

  return result;
}

unint64_t sub_262987460()
{
  result = qword_27FF31E58;
  if (!qword_27FF31E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31E58);
  }

  return result;
}

unint64_t sub_2629874B8()
{
  result = qword_27FF31E60;
  if (!qword_27FF31E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31E60);
  }

  return result;
}

unint64_t sub_262987510()
{
  result = qword_27FF31E68;
  if (!qword_27FF31E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31E68);
  }

  return result;
}

uint64_t sub_262987564(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737365636361 && a2 == 0xE600000000000000;
  if (v4 || (sub_262996FD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7469736E617274 && a2 == 0xE700000000000000 || (sub_262996FD4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
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

uint64_t sub_262987674(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2629876BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_262987724(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SEStorageManagementViewModel.Summary.init(totalStorage:currentUsage:usageAfterDelete:spaceRequired:hasEnoughSpace:systemUsage:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = result;
  *(a2 + 40) = a7;
  return result;
}

uint64_t sub_2629878C0()
{
  v1 = *v0;
  v2 = 0x6F74536C61746F74;
  v3 = 0x7165526563617073;
  v4 = 0x67756F6E45736168;
  if (v1 != 4)
  {
    v4 = 0x73556D6574737973;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x55746E6572727563;
  if (v1 != 1)
  {
    v5 = 0xD000000000000010;
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

uint64_t sub_2629879A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26298811C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2629879CC(uint64_t a1)
{
  v2 = sub_262987C70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262987A08(uint64_t a1)
{
  v2 = sub_262987C70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementViewModel.Summary.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31E80, &qword_262999FA0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262987C70();
  sub_262997074();
  v8[15] = 0;
  sub_262996FA4();
  if (!v1)
  {
    v8[14] = 1;
    sub_262996FA4();
    v8[13] = 2;
    sub_262996FA4();
    v8[12] = 3;
    sub_262996FA4();
    v8[11] = 4;
    sub_262996F94();
    v8[10] = 5;
    sub_262996FA4();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_262987C70()
{
  result = qword_27FF31E88;
  if (!qword_27FF31E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31E88);
  }

  return result;
}

uint64_t SEStorageManagementViewModel.Summary.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31E90, &qword_262999FA8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262987C70();
  sub_262997064();
  if (!v2)
  {
    v21[15] = 0;
    sub_262996F34();
    v10 = v9;
    v21[14] = 1;
    sub_262996F34();
    v12 = v11;
    v21[13] = 2;
    sub_262996F34();
    v14 = v13;
    v21[12] = 3;
    sub_262996F34();
    v16 = v15;
    v21[11] = 4;
    v18 = sub_262996F24();
    v21[10] = 5;
    sub_262996F34();
    v20 = v19;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    *(a2 + 8) = v12;
    *(a2 + 16) = v14;
    *(a2 + 24) = v16;
    *(a2 + 32) = v18 & 1;
    *(a2 + 40) = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_262987F50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 48))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_262987FA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_262988018()
{
  result = qword_27FF31E98;
  if (!qword_27FF31E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31E98);
  }

  return result;
}

unint64_t sub_262988070()
{
  result = qword_27FF31EA0;
  if (!qword_27FF31EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31EA0);
  }

  return result;
}

unint64_t sub_2629880C8()
{
  result = qword_27FF31EA8;
  if (!qword_27FF31EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31EA8);
  }

  return result;
}

uint64_t sub_26298811C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F74536C61746F74 && a2 == 0xEC00000065676172;
  if (v4 || (sub_262996FD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x55746E6572727563 && a2 == 0xEC00000065676173 || (sub_262996FD4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026299C7D0 == a2 || (sub_262996FD4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7165526563617073 && a2 == 0xED00006465726975 || (sub_262996FD4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x67756F6E45736168 && a2 == 0xEE00656361705368 || (sub_262996FD4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73556D6574737973 && a2 == 0xEB00000000656761)
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

uint64_t dispatch thunk of SEStorageManagementPassProviding.passes.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2629886A4;

  return v7(a1, a2);
}

uint64_t dispatch thunk of SEStorageManagementPassProviding.delete(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_262988580;

  return v9(a1, a2, a3);
}

uint64_t sub_262988580(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t SEStorageManagementViewModel.ESimBarItem.localizedTitle.getter()
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

uint64_t sub_2629887F8(uint64_t a1)
{
  v2 = sub_2629889A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262988834(uint64_t a1)
{
  v2 = sub_2629889A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementViewModel.ESimBarItem.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31EB0, &qword_26299A188);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2629889A8();
  sub_262997074();
  sub_262996FA4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_2629889A8()
{
  result = qword_27FF31EB8;
  if (!qword_27FF31EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31EB8);
  }

  return result;
}

uint64_t SEStorageManagementViewModel.ESimBarItem.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x26672E320](*&v1);
}

uint64_t SEStorageManagementViewModel.ESimBarItem.hashValue.getter()
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

uint64_t SEStorageManagementViewModel.ESimBarItem.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31EC0, &qword_26299A190);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2629889A8();
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

uint64_t sub_262988C20(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31EB0, &qword_26299A188);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2629889A8();
  sub_262997074();
  sub_262996FA4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_262988D6C(void *a1)
{
  a1[1] = sub_262988DAC();
  a1[2] = sub_262988E00();
  a1[3] = sub_262988E54();
  result = sub_262988EA8();
  a1[4] = result;
  return result;
}

unint64_t sub_262988DAC()
{
  result = qword_27FF31EC8;
  if (!qword_27FF31EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31EC8);
  }

  return result;
}

unint64_t sub_262988E00()
{
  result = qword_27FF31ED0;
  if (!qword_27FF31ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31ED0);
  }

  return result;
}

unint64_t sub_262988E54()
{
  result = qword_27FF31ED8;
  if (!qword_27FF31ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31ED8);
  }

  return result;
}

unint64_t sub_262988EA8()
{
  result = qword_27FF31EE0;
  if (!qword_27FF31EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31EE0);
  }

  return result;
}

unint64_t sub_262988F00()
{
  result = qword_27FF31EE8;
  if (!qword_27FF31EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31EE8);
  }

  return result;
}

unint64_t sub_262988F78()
{
  result = qword_27FF31EF0;
  if (!qword_27FF31EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31EF0);
  }

  return result;
}

unint64_t sub_262988FD0()
{
  result = qword_27FF31EF8;
  if (!qword_27FF31EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31EF8);
  }

  return result;
}

unint64_t sub_262989028()
{
  result = qword_27FF31F00;
  if (!qword_27FF31F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31F00);
  }

  return result;
}

uint64_t static SEStorageManagementViewModel.ViennaUsageApp.== infix(_:_:)(uint64_t *a1, void *a2)
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

uint64_t SEStorageManagementViewModel.ViennaUsageApp.localizedTitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SEStorageManagementViewModel.ViennaUsageApp.categories.getter()
{
  type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp(0);
}

uint64_t type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp(uint64_t a1)
{
  result = qword_27FF31F50;
  if (!qword_27FF31F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SEStorageManagementViewModel.ViennaUsageApp.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SEStorageManagementViewModel.ViennaUsageApp.usage.getter()
{
  v16 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup(0);
  v1 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp(0);
  v5 = *(v0 + *(result + 20));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v17 = v5 + 32;
    v8 = 0.0;
    while (v7 < *(v5 + 16))
    {
      v10 = *(v17 + 16 * v7 + 8);
      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = *(v16 + 36);
        v13 = v10 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

        v14 = *(v1 + 72);
        v9 = 0.0;
        do
        {
          sub_26298A3C8(v13, v3, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
          v15 = *&v3[v12];
          sub_26298A430(v3, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
          v9 = v9 + v15;
          v13 += v14;
          --v11;
        }

        while (v11);
      }

      else
      {
        v9 = 0.0;
      }

      ++v7;
      v8 = v8 + v9;
      if (v7 == v6)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t SEStorageManagementViewModel.ViennaUsageApp.lastUsedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v2 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup(0);
  v60 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314D0, &qword_262997510);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v78 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v57 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v57 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v57 - v14;
  v16 = sub_262996B24();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v77 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v59 = &v57 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v57 - v23;
  MEMORY[0x28223BE20](v22);
  v68 = &v57 - v25;
  result = type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp(0);
  v27 = *(v1 + *(result + 20));
  v67 = *(v27 + 16);
  if (v67)
  {
    v28 = 0;
    v66 = v27 + 32;
    v79 = (v17 + 48);
    v81 = (v17 + 32);
    v75 = v17 + 16;
    v72 = v17 + 8;
    v62 = (v17 + 56);
    v69 = MEMORY[0x277D84F90];
    v64 = v15;
    v65 = v13;
    v80 = v17;
    v76 = v24;
    v63 = v27;
    v61 = v10;
    while (v28 < *(v27 + 16))
    {
      v29 = *(v66 + 16 * v28 + 8);
      v30 = *(v29 + 16);
      v70 = v29;
      v71 = v28;
      if (v30)
      {
        v31 = v60;
        v32 = v29 + ((*(v60 + 80) + 32) & ~*(v60 + 80));

        v33 = *(v31 + 72);
        v34 = MEMORY[0x277D84F90];
        do
        {
          sub_26298A3C8(v32, v4, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
          v35 = v78;
          SEStorageManagementViewModel.ViennaUsageGroup.lastUsedDate.getter(v78);
          sub_262963C48(v35, v10);
          sub_26298A430(v4, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
          if ((*v79)(v10, 1, v16) == 1)
          {
            sub_262963CB8(v10);
          }

          else
          {
            v36 = *v81;
            (*v81)(v77, v10, v16);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v34 = sub_2629658A0(0, *(v34 + 2) + 1, 1, v34);
            }

            v38 = *(v34 + 2);
            v37 = *(v34 + 3);
            if (v38 >= v37 >> 1)
            {
              v34 = sub_2629658A0((v37 > 1), v38 + 1, 1, v34);
            }

            *(v34 + 2) = v38 + 1;
            v36(&v34[((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v38], v77, v16);
          }

          v32 += v33;
          --v30;
        }

        while (v30);
      }

      else
      {

        v34 = MEMORY[0x277D84F90];
      }

      v39 = *(v34 + 2);
      if (v39)
      {
        v40 = &v34[(*(v80 + 80) + 32) & ~*(v80 + 80)];
        v41 = v76;
        v73 = *(v80 + 16);
        v74 = v40;
        result = v73(v76);
        v42 = v59;
        if (v39 != 1)
        {
          v52 = 1;
          while (1)
          {
            v53 = v52 + 1;
            if (__OFADD__(v52, 1))
            {
              break;
            }

            v54 = v80;
            (v73)(v42, &v74[*(v80 + 72) * v52], v16);
            sub_26298A5B0(&qword_27FF31600, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
            v55 = sub_262996D14();
            v56 = *(v54 + 8);
            if (v55)
            {
              v56(v41, v16);
              result = (*v81)(v41, v42, v16);
            }

            else
            {
              result = (v56)(v42, v16);
            }

            ++v52;
            v41 = v76;
            if (v53 == v39)
            {
              goto LABEL_19;
            }
          }

          __break(1u);
          break;
        }

LABEL_19:
        v43 = v65;
        (*v81)(v65, v41, v16);
        (*v62)(v43, 0, 1, v16);
      }

      else
      {
        v43 = v65;
        (*v62)(v65, 1, 1, v16);
      }

      v44 = v64;
      sub_262963C48(v43, v64);

      v45 = (*v79)(v44, 1, v16);
      v46 = v80;
      v10 = v61;
      if (v45 == 1)
      {
        result = sub_262963CB8(v44);
      }

      else
      {
        v47 = *v81;
        (*v81)(v68, v44, v16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v69 = sub_2629658A0(0, v69[2] + 1, 1, v69);
        }

        v49 = v69[2];
        v48 = v69[3];
        if (v49 >= v48 >> 1)
        {
          v69 = sub_2629658A0((v48 > 1), v49 + 1, 1, v69);
        }

        v50 = v68;
        v51 = v69;
        v69[2] = v49 + 1;
        result = (v47)(v51 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v49, v50, v16);
      }

      v27 = v63;
      v28 = v71 + 1;
      if (v71 + 1 == v67)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
  }

  else
  {
    v69 = MEMORY[0x277D84F90];
LABEL_34:
    sub_262963D20(v69, v58);
  }

  return result;
}

uint64_t SEStorageManagementViewModel.ViennaUsageApp.init(application:categories:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2629659F8(a1, a3);
  result = type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_262989B38()
{
  if (*v0)
  {
    return 0x69726F6765746163;
  }

  else
  {
    return 0x746163696C707061;
  }
}

uint64_t sub_262989B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746163696C707061 && a2 == 0xEB000000006E6F69;
  if (v6 || (sub_262996FD4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_262996FD4();

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

uint64_t sub_262989C68(uint64_t a1)
{
  v2 = sub_26298A2FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262989CA4(uint64_t a1)
{
  v2 = sub_26298A2FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementViewModel.ViennaUsageApp.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31F08, &qword_26299A3E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26298A2FC();
  sub_262997074();
  v12 = 0;
  type metadata accessor for SEStorageManagementViewModel.ApplicationInfo(0);
  sub_26298A5B0(&qword_27FF31538, type metadata accessor for SEStorageManagementViewModel.ApplicationInfo, &protocol conformance descriptor for SEStorageManagementViewModel.ApplicationInfo);
  sub_262996FB4();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31F18, &qword_26299A3F0);
    sub_26298A350(&qword_27FF31F20, sub_262986E90, MEMORY[0x277D83948]);
    sub_262996FB4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SEStorageManagementViewModel.ViennaUsageApp.hashValue.getter()
{
  sub_262997004();
  sub_262996D64();
  return sub_262997044();
}

uint64_t SEStorageManagementViewModel.ViennaUsageApp.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for SEStorageManagementViewModel.ApplicationInfo(0);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31F28, &qword_26299A3F8);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26298A2FC();
  sub_262997064();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v18;
  v13 = v11;
  v23 = 0;
  sub_26298A5B0(&qword_27FF31568, type metadata accessor for SEStorageManagementViewModel.ApplicationInfo, &protocol conformance descriptor for SEStorageManagementViewModel.ApplicationInfo);
  v14 = v19;
  sub_262996F44();
  sub_2629659F8(v20, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31F18, &qword_26299A3F0);
  v22 = 1;
  sub_26298A350(&qword_27FF31F30, sub_262986E3C, MEMORY[0x277D83978]);
  sub_262996F44();
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 20)) = v21;
  sub_26298A3C8(v13, v17, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_26298A430(v13, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
}

uint64_t sub_26298A294()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t sub_26298A2FC()
{
  result = qword_27FF31F10;
  if (!qword_27FF31F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31F10);
  }

  return result;
}

uint64_t sub_26298A350(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF31F18, &qword_26299A3F0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26298A3C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26298A430(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26298A494(void *a1)
{
  a1[1] = sub_26298A5B0(&qword_27FF317A0, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp, &protocol conformance descriptor for SEStorageManagementViewModel.ViennaUsageApp);
  a1[2] = sub_26298A5B0(&qword_27FF31718, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp, &protocol conformance descriptor for SEStorageManagementViewModel.ViennaUsageApp);
  a1[3] = sub_26298A5B0(&qword_27FF31F38, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp, &protocol conformance descriptor for SEStorageManagementViewModel.ViennaUsageApp);
  result = sub_26298A5B0(&qword_27FF31F40, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp, &protocol conformance descriptor for SEStorageManagementViewModel.ViennaUsageApp);
  a1[4] = result;
  return result;
}

uint64_t sub_26298A5B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26298A60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SEStorageManagementViewModel.ApplicationInfo(0);
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

uint64_t sub_26298A6DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SEStorageManagementViewModel.ApplicationInfo(0);
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

void sub_26298A794(uint64_t a1)
{
  type metadata accessor for SEStorageManagementViewModel.ApplicationInfo(319);
  if (v1 <= 0x3F)
  {
    sub_26298A818();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26298A818()
{
  if (!qword_27FF31F60)
  {
    v0 = sub_262996DC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF31F60);
    }
  }
}

unint64_t sub_26298A87C()
{
  result = qword_27FF31F68;
  if (!qword_27FF31F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31F68);
  }

  return result;
}

unint64_t sub_26298A8D4()
{
  result = qword_27FF31F70;
  if (!qword_27FF31F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31F70);
  }

  return result;
}

unint64_t sub_26298A92C()
{
  result = qword_27FF31F78;
  if (!qword_27FF31F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31F78);
  }

  return result;
}

uint64_t type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp(uint64_t a1)
{
  result = qword_27FF31FC0;
  if (!qword_27FF31FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SEStorageManagementViewModel.MuirfieldUsageApp.usage.setter(double a1)
{
  result = type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t SEStorageManagementViewModel.MuirfieldUsageApp.id.getter()
{
  type metadata accessor for SEStorageManagementViewModel.ApplicationInfo(0);
  sub_262996E84();
  return 0;
}

uint64_t SEStorageManagementViewModel.MuirfieldUsageApp.lastUsedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SEStorageManagementViewModel.ApplicationInfo(0) + 24);

  return sub_262967904(v3, a1);
}

uint64_t SEStorageManagementViewModel.MuirfieldUsageApp.localizedTitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SEStorageManagementViewModel.MuirfieldUsageApp.init(app:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + *(type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp(0) + 20)) = 0;

  return sub_2629659F8(a1, a2);
}

BOOL static SEStorageManagementViewModel.MuirfieldUsageApp.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = sub_262996FD4(), result = 0, (v5 & 1) != 0))
  {
    v7 = type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp(0);
    return *(a1 + *(v7 + 20)) == *(a2 + *(v7 + 20));
  }

  return result;
}

uint64_t sub_26298AC2C()
{
  if (*v0)
  {
    return 0x6567617375;
  }

  else
  {
    return 7368801;
  }
}

uint64_t sub_26298AC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7368801 && a2 == 0xE300000000000000;
  if (v5 || (sub_262996FD4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6567617375 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_262996FD4();

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

uint64_t sub_26298AD34(uint64_t a1)
{
  v2 = sub_26298AF64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26298AD70(uint64_t a1)
{
  v2 = sub_26298AF64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementViewModel.MuirfieldUsageApp.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31F80, &qword_26299A688);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26298AF64();
  sub_262997074();
  v8[15] = 0;
  type metadata accessor for SEStorageManagementViewModel.ApplicationInfo(0);
  sub_26298B7D4(&qword_27FF31538, type metadata accessor for SEStorageManagementViewModel.ApplicationInfo, &protocol conformance descriptor for SEStorageManagementViewModel.ApplicationInfo);
  sub_262996FB4();
  if (!v1)
  {
    type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp(0);
    v8[14] = 1;
    sub_262996FA4();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_26298AF64()
{
  result = qword_27FF31F88;
  if (!qword_27FF31F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31F88);
  }

  return result;
}

uint64_t SEStorageManagementViewModel.MuirfieldUsageApp.hash(into:)(uint64_t a1)
{
  sub_262996D64();
  v2 = *(v1 + *(type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp(0) + 20));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  return MEMORY[0x26672E320](*&v2);
}

uint64_t SEStorageManagementViewModel.MuirfieldUsageApp.hashValue.getter()
{
  sub_262997004();
  sub_262996D64();
  v1 = *(v0 + *(type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp(0) + 20));
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x26672E320](*&v1);
  return sub_262997044();
}

uint64_t SEStorageManagementViewModel.MuirfieldUsageApp.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for SEStorageManagementViewModel.ApplicationInfo(0);
  MEMORY[0x28223BE20](v4);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31F90, &qword_26299A690);
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v7 = &v19 - v6;
  v8 = type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26298AF64();
  sub_262997064();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v8;
  v11 = v10;
  v12 = v21;
  v25 = 0;
  sub_26298B7D4(&qword_27FF31568, type metadata accessor for SEStorageManagementViewModel.ApplicationInfo, &protocol conformance descriptor for SEStorageManagementViewModel.ApplicationInfo);
  v14 = v22;
  v13 = v23;
  sub_262996F44();
  sub_2629659F8(v14, v11);
  v24 = 1;
  sub_262996F34();
  v16 = v15;
  v17 = *(v19 + 20);
  (*(v12 + 8))(v7, v13);
  *(v11 + v17) = v16;
  sub_26298B5F0(v11, v20, type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_26298B658(v11, type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp);
}

uint64_t sub_26298B3A0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SEStorageManagementViewModel.ApplicationInfo(0) + 24);

  return sub_262967904(v3, a1);
}

uint64_t sub_26298B3E4()
{
  type metadata accessor for SEStorageManagementViewModel.ApplicationInfo(0);
  sub_262996E84();
  return 0;
}

uint64_t sub_26298B464@<X0>(void *a1@<X8>)
{
  type metadata accessor for SEStorageManagementViewModel.ApplicationInfo(0);
  result = sub_262996E84();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

BOOL sub_26298B4C4(uint64_t *a1, void *a2, uint64_t a3)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20));
  }

  v7 = sub_262996FD4();
  result = 0;
  if (v7)
  {
    return *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20));
  }

  return result;
}

uint64_t sub_26298B538(uint64_t a1, uint64_t a2)
{
  sub_262996D64();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x26672E320](*&v4);
}

uint64_t sub_26298B58C(uint64_t a1, uint64_t a2)
{
  sub_262997004();
  sub_262996D64();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x26672E320](*&v4);
  return sub_262997044();
}

uint64_t sub_26298B5F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26298B658(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26298B6B8(void *a1)
{
  a1[1] = sub_26298B7D4(&qword_27FF31F98, type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp, &protocol conformance descriptor for SEStorageManagementViewModel.MuirfieldUsageApp);
  a1[2] = sub_26298B7D4(&qword_27FF31FA0, type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp, &protocol conformance descriptor for SEStorageManagementViewModel.MuirfieldUsageApp);
  a1[3] = sub_26298B7D4(&qword_27FF31FA8, type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp, &protocol conformance descriptor for SEStorageManagementViewModel.MuirfieldUsageApp);
  result = sub_26298B7D4(&qword_27FF31FB0, type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp, &protocol conformance descriptor for SEStorageManagementViewModel.MuirfieldUsageApp);
  a1[4] = result;
  return result;
}

uint64_t sub_26298B7D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26298B830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageManagementViewModel.ApplicationInfo(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26298B8B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageManagementViewModel.ApplicationInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26298B920(uint64_t a1)
{
  result = type metadata accessor for SEStorageManagementViewModel.ApplicationInfo(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_26298B9A8()
{
  result = qword_27FF31FD0;
  if (!qword_27FF31FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31FD0);
  }

  return result;
}

unint64_t sub_26298BA00()
{
  result = qword_27FF31FD8;
  if (!qword_27FF31FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31FD8);
  }

  return result;
}

unint64_t sub_26298BA58()
{
  result = qword_27FF31FE0;
  if (!qword_27FF31FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31FE0);
  }

  return result;
}

uint64_t sub_26298BAAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    v3 = 0xD000000000000017;
    if (v2 == 2)
    {
      v4 = 0x800000026299BF30;
    }

    else
    {
      v4 = 0x800000026299BF50;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x437972616D697270;
    }

    else
    {
      v3 = 0x7972616D6D7573;
    }

    if (v2)
    {
      v4 = 0xEF79726F67657461;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0x800000026299BF30;
    }

    else
    {
      v6 = 0x800000026299BF50;
    }

    if (v3 != 0xD000000000000017)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x437972616D697270;
    }

    else
    {
      v5 = 0x7972616D6D7573;
    }

    if (a2)
    {
      v6 = 0xEF79726F67657461;
    }

    else
    {
      v6 = 0xE700000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v4 != v6)
  {
LABEL_26:
    v7 = sub_262996FD4();
    goto LABEL_27;
  }

  v7 = 1;
LABEL_27:

  return v7 & 1;
}

uint64_t sub_26298BC10(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000015;
  v3 = 0xD00000000000001FLL;
  v4 = "viennaSecondaryCategory";
  v5 = a1;
  v6 = 0xD000000000000019;
  if (a1 == 4)
  {
    v6 = 0xD000000000000016;
    v7 = "UsageFrequency_Localizable";
  }

  else
  {
    v7 = "Functional_Localizable";
  }

  if (a1 == 3)
  {
    v8 = 0xD00000000000001ALL;
  }

  else
  {
    v8 = v6;
  }

  if (a1 == 3)
  {
    v7 = "ESimTypes_Localizable";
  }

  v9 = 0xD000000000000017;
  if (v5 == 1)
  {
    v10 = "SEStorageManagement_Localizable";
  }

  else
  {
    v9 = 0xD000000000000015;
    v10 = "AppletTypes_Localizable";
  }

  if (v5)
  {
    v3 = v9;
  }

  else
  {
    v10 = "viennaSecondaryCategory";
  }

  if (v5 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (v5 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v7;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD00000000000001ALL;
      v4 = "ESimTypes_Localizable";
    }

    else if (a2 == 4)
    {
      v2 = 0xD000000000000016;
      v4 = "UsageFrequency_Localizable";
    }

    else
    {
      v2 = 0xD000000000000019;
      v4 = "Functional_Localizable";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000017;
      v4 = "SEStorageManagement_Localizable";
    }

    else
    {
      v4 = "AppletTypes_Localizable";
    }
  }

  else
  {
    v2 = 0xD00000000000001FLL;
  }

  if (v11 == v2 && (v12 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_262996FD4();
  }

  return v13 & 1;
}

double SEStorageManagementViewModel.summary.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *(v1 + 40);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  *(a1 + 40) = result;
  return result;
}

double SEStorageManagementViewModel.init(summary:entries:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 32) = v3;
  *(a3 + 40) = result;
  *(a3 + 48) = a2;
  return result;
}

uint64_t sub_26298BDD4()
{
  sub_262997004();
  sub_262996D64();

  return sub_262997044();
}

uint64_t sub_26298BEAC(uint64_t a1)
{
  sub_262996D64();
}

uint64_t sub_26298BF70(uint64_t a1)
{
  sub_262997004();
  sub_262996D64();

  return sub_262997044();
}

unint64_t sub_26298C044@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26298DBCC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26298C074(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x7972616D6D7573;
  v4 = 0x800000026299BF30;
  if (*v1 != 2)
  {
    v4 = 0x800000026299BF50;
  }

  if (*v1)
  {
    v3 = 0x437972616D697270;
    v2 = 0xEF79726F67657461;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xD000000000000017;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_26298C108()
{
  v1 = 0x7972616D6D7573;
  if (*v0)
  {
    v1 = 0x437972616D697270;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000017;
  }
}

unint64_t sub_26298C198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26298DBCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26298C1CC(uint64_t a1)
{
  v2 = sub_26298C558();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26298C208(uint64_t a1)
{
  v2 = sub_26298C558();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementViewModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31FE8, &qword_26299A8F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26298C558();
  sub_262997064();
  if (!v2)
  {
    v17 = 0;
    sub_26298C5AC();
    sub_262996F44();
    v15 = v19;
    v16 = v18;
    v9 = v20;
    v10 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF32000, &qword_26299A8F8);
    v17 = 1;
    sub_26298C600();
    sub_262996F44();
    if (*(v18 + 16))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF317C8, &unk_26299A900);
      v17 = 2;
      sub_26298C6B4();
      sub_262996F44();
      if (*(v18 + 16))
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF317D8, &unk_262997F80);
        v17 = 3;
        sub_26298C768();
        sub_262996F44();
        if (*(v18 + 16))
        {
          v12 = MEMORY[0x277D84F90];
LABEL_10:

          (*(v6 + 8))(v8, v5);
          v14 = v15;
          *a2 = v16;
          *(a2 + 16) = v14;
          *(a2 + 32) = v9;
          *(a2 + 40) = v10;
          *(a2 + 48) = v12;
          return __swift_destroy_boxed_opaque_existential_1(a1);
        }

        v13 = sub_262970724(v18);
      }

      else
      {
        v13 = sub_262970980(v18);
      }
    }

    else
    {
      v13 = sub_262970B84(v18);
    }

    v12 = v13;
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_26298C558()
{
  result = qword_27FF31FF0;
  if (!qword_27FF31FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31FF0);
  }

  return result;
}

unint64_t sub_26298C5AC()
{
  result = qword_27FF31FF8;
  if (!qword_27FF31FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31FF8);
  }

  return result;
}

unint64_t sub_26298C600()
{
  result = qword_27FF32008;
  if (!qword_27FF32008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF32000, &qword_26299A8F8);
    sub_26298D7A4(&qword_27FF31820, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory, &protocol conformance descriptor for SEStorageManagementViewModel.PrimaryCategory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32008);
  }

  return result;
}

unint64_t sub_26298C6B4()
{
  result = qword_27FF317D0;
  if (!qword_27FF317D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF317C8, &unk_26299A900);
    sub_26298D7A4(&qword_27FF317A8, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory, &protocol conformance descriptor for SEStorageManagementViewModel.WalletUsageCategory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF317D0);
  }

  return result;
}

unint64_t sub_26298C768()
{
  result = qword_27FF317E0;
  if (!qword_27FF317E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF317D8, &unk_262997F80);
    sub_26298D7A4(&qword_27FF317A0, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp, &protocol conformance descriptor for SEStorageManagementViewModel.ViennaUsageApp);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF317E0);
  }

  return result;
}

uint64_t SEStorageManagementViewModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF317E8, &unk_26299A910);
  MEMORY[0x28223BE20](v3 - 8);
  v79 = v77 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF317F0, &qword_262997F90);
  MEMORY[0x28223BE20](v5 - 8);
  v82 = v77 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF32010, &qword_26299A920);
  MEMORY[0x28223BE20](v7 - 8);
  v86 = v77 - v8;
  v9 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0);
  v91 = *(v9 - 8);
  v92 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v85 = v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v78 = v77 - v12;
  v90 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp(0);
  v80 = *(v90 - 8);
  v13 = MEMORY[0x28223BE20](v90);
  v81 = v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v89 = v77 - v15;
  v93 = type metadata accessor for SEStorageManagementViewModel.PrimaryCategory(0);
  v87 = *(v93 - 8);
  v16 = MEMORY[0x28223BE20](v93);
  v88 = v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = v77 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF32018, &unk_26299A928);
  v83 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = v77 - v21;
  v23 = *(v1 + 32);
  v24 = *(v1 + 40);
  v25 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26298C558();
  sub_262997074();
  v26 = *v1;
  v95[1] = *(v1 + 16);
  v95[0] = v26;
  v96 = v23;
  v97 = v24;
  v94[0] = 0;
  sub_26298D504();
  v27 = v84;
  result = sub_262996FB4();
  if (v27)
  {
    return (*(v83 + 8))(v22, v20);
  }

  v77[0] = v22;
  v77[1] = 0;
  v84 = v20;
  v29 = *(v25 + 16);
  if (v29)
  {
    v30 = 0;
    v31 = v25 + 32;
    v32 = v25 + 32;
    v33 = v78;
    do
    {
      if (v30 >= *(v25 + 16))
      {
        __break(1u);
        goto LABEL_53;
      }

      sub_26296F988(v32, v95);
      sub_262973858(v95, v94);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31948, &qword_262998A30);
      result = swift_dynamicCast();
      v34 = result;
      if (!result)
      {
        break;
      }

      ++v30;
      result = sub_26298D854(v19, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory);
      v32 += 40;
    }

    while (v29 != v30);
    v35 = 0;
    v36 = v25 + 32;
    while (v35 < *(v25 + 16))
    {
      sub_26296F988(v36, v95);
      sub_262973858(v95, v94);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31948, &qword_262998A30);
      v37 = v89;
      result = swift_dynamicCast();
      v38 = result;
      if (result)
      {
        ++v35;
        result = sub_26298D854(v37, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
        v36 += 40;
        if (v29 != v35)
        {
          continue;
        }
      }

      v39 = 0;
      v40 = v25 + 32;
      while (1)
      {
        if (v39 >= *(v25 + 16))
        {
          goto LABEL_54;
        }

        sub_26296F988(v40, v95);
        sub_262973858(v95, v94);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31948, &qword_262998A30);
        if (!swift_dynamicCast())
        {
          break;
        }

        ++v39;
        result = sub_26298D854(v33, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
        v40 += 40;
        if (v29 == v39)
        {
          if ((v34 & 1) == 0)
          {
            v41 = (v91 + 56);
            v42 = (v91 + 48);
            v43 = MEMORY[0x277D84F90];
            v44 = v82;
            v45 = v92;
            do
            {
              sub_26296F988(v31, v95);
              sub_262973858(v95, v94);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31948, &qword_262998A30);
              v46 = swift_dynamicCast();
              (*v41)(v44, v46 ^ 1u, 1, v45);
              if ((*v42)(v44, 1, v45) == 1)
              {
                sub_2629737D4(v44, &qword_27FF317F0, &qword_262997F90);
              }

              else
              {
                sub_26298D7EC(v44, v85, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v43 = sub_262965A84(0, v43[2] + 1, 1, v43);
                }

                v48 = v43[2];
                v47 = v43[3];
                v49 = v91;
                if (v48 >= v47 >> 1)
                {
                  v50 = sub_262965A84((v47 > 1), v48 + 1, 1, v43);
                  v49 = v91;
                  v43 = v50;
                }

                v43[2] = v48 + 1;
                sub_26298D7EC(v85, v43 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v48, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
                v44 = v82;
                v45 = v92;
              }

              v31 += 40;
              --v29;
            }

            while (v29);
            *&v95[0] = v43;
            v94[0] = 2;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF317C8, &unk_26299A900);
            sub_26298D6F0();
            v73 = v84;
            v74 = v77[0];
            sub_262996FB4();
            (*(v83 + 8))(v74, v73);
          }

          goto LABEL_30;
        }
      }

      if (v34)
      {
LABEL_30:
        v54 = v86;
        v55 = (v87 + 56);
        v56 = (v87 + 48);
        v51 = MEMORY[0x277D84F90];
        v57 = v93;
        do
        {
          sub_26296F988(v31, v95);
          sub_262973858(v95, v94);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31948, &qword_262998A30);
          v58 = swift_dynamicCast();
          (*v55)(v54, v58 ^ 1u, 1, v57);
          if ((*v56)(v54, 1, v57) == 1)
          {
            sub_2629737D4(v54, &qword_27FF32010, &qword_26299A920);
          }

          else
          {
            sub_26298D7EC(v54, v88, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v51 = sub_262965BE0(0, v51[2] + 1, 1, v51);
            }

            v60 = v51[2];
            v59 = v51[3];
            v61 = v87;
            if (v60 >= v59 >> 1)
            {
              v62 = sub_262965BE0((v59 > 1), v60 + 1, 1, v51);
              v61 = v87;
              v51 = v62;
            }

            v51[2] = v60 + 1;
            sub_26298D7EC(v88, v51 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v60, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory);
            v54 = v86;
            v57 = v93;
          }

          v31 += 40;
          --v29;
        }

        while (v29);
        goto LABEL_27;
      }

      if (!v38)
      {
        return (*(v83 + 8))(v77[0], v84);
      }

      v63 = (v80 + 56);
      v64 = (v80 + 48);
      v65 = MEMORY[0x277D84F90];
      v66 = v79;
      v67 = v90;
      do
      {
        sub_26296F988(v31, v95);
        sub_262973858(v95, v94);
        v68 = swift_dynamicCast();
        (*v63)(v66, v68 ^ 1u, 1, v67);
        if ((*v64)(v66, 1, v67) == 1)
        {
          sub_2629737D4(v66, &qword_27FF317E8, &unk_26299A910);
        }

        else
        {
          sub_26298D7EC(v66, v81, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v65 = sub_262965A5C(0, v65[2] + 1, 1, v65);
          }

          v70 = v65[2];
          v69 = v65[3];
          v71 = v80;
          if (v70 >= v69 >> 1)
          {
            v72 = sub_262965A5C((v69 > 1), v70 + 1, 1, v65);
            v71 = v80;
            v65 = v72;
          }

          v65[2] = v70 + 1;
          sub_26298D7EC(v81, v65 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v70, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
          v66 = v79;
          v67 = v90;
        }

        v31 += 40;
        --v29;
      }

      while (v29);
      *&v95[0] = v65;
      v94[0] = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF317D8, &unk_262997F80);
      sub_26298D63C();
      v75 = v84;
      v76 = v77[0];
      sub_262996FB4();
      (*(v83 + 8))(v76, v75);
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
  }

  else
  {
    v51 = MEMORY[0x277D84F90];
LABEL_27:
    *&v95[0] = v51;
    v94[0] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF32000, &qword_26299A8F8);
    sub_26298D558();
    v52 = v84;
    v53 = v77[0];
    sub_262996FB4();
    (*(v83 + 8))(v53, v52);
  }

  return result;
}

unint64_t sub_26298D504()
{
  result = qword_27FF32020;
  if (!qword_27FF32020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32020);
  }

  return result;
}

unint64_t sub_26298D558()
{
  result = qword_27FF32028;
  if (!qword_27FF32028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF32000, &qword_26299A8F8);
    sub_26298D7A4(&qword_27FF31828, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory, &protocol conformance descriptor for SEStorageManagementViewModel.PrimaryCategory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32028);
  }

  return result;
}

unint64_t sub_26298D63C()
{
  result = qword_27FF31810;
  if (!qword_27FF31810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF317D8, &unk_262997F80);
    sub_26298D7A4(&qword_27FF31718, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp, &protocol conformance descriptor for SEStorageManagementViewModel.ViennaUsageApp);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31810);
  }

  return result;
}

unint64_t sub_26298D6F0()
{
  result = qword_27FF31818;
  if (!qword_27FF31818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF317C8, &unk_26299A900);
    sub_26298D7A4(&qword_27FF31748, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory, &protocol conformance descriptor for SEStorageManagementViewModel.WalletUsageCategory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31818);
  }

  return result;
}

uint64_t sub_26298D7A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26298D7EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26298D854(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26298D8D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26298D918(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SEStorageManagementViewModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SEStorageManagementViewModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26298DAC8()
{
  result = qword_27FF32030;
  if (!qword_27FF32030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32030);
  }

  return result;
}

unint64_t sub_26298DB20()
{
  result = qword_27FF32038;
  if (!qword_27FF32038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32038);
  }

  return result;
}

unint64_t sub_26298DB78()
{
  result = qword_27FF32040;
  if (!qword_27FF32040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32040);
  }

  return result;
}

unint64_t sub_26298DBCC(uint64_t a1, uint64_t a2)
{
  v2 = sub_262996ED4();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t SEStorageManagementViewModel.MuirfieldRecommendableForDelete.lastUsedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314D0, &qword_262997510);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_262996B24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v27 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v1 + 16);
  if (v12)
  {
    v13 = *v1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v14 = *(type metadata accessor for SEStorageManagementViewModel.ApplicationInfo(0) + 24);
    v15 = *(v9 + 72);
    v24 = v6;
    v26 = (v6 + 32);
    v16 = MEMORY[0x277D84F90];
    v25 = v5;
    v23 = v15;
    do
    {
      sub_26298DF70(v13, v11);
      sub_262967904(&v11[v14], v4);
      sub_26298DFD4(v11);
      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {
        sub_262963CB8(v4);
      }

      else
      {
        v17 = *v26;
        (*v26)(v27, v4, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_2629658A0(0, v16[2] + 1, 1, v16);
        }

        v19 = v16[2];
        v18 = v16[3];
        if (v19 >= v18 >> 1)
        {
          v16 = sub_2629658A0((v18 > 1), v19 + 1, 1, v16);
        }

        v16[2] = v19 + 1;
        v20 = v16 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v19;
        v5 = v25;
        v17(v20, v27, v25);
        v15 = v23;
      }

      v13 += v15;
      --v12;
    }

    while (v12);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  sub_262963D20(v16, v22);
}

uint64_t sub_26298DF70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26298DFD4(uint64_t a1)
{
  v2 = type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SEStorageManagementViewModel.MuirfieldRecommendableForDelete.init(apps:usage:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  return result;
}

uint64_t static SEStorageManagementViewModel.MuirfieldRecommendableForDelete.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_26298293C(*a1, *a2) & (v2 == v3);
}

uint64_t sub_26298E09C()
{
  if (*v0)
  {
    return 0x6567617375;
  }

  else
  {
    return 1936748641;
  }
}

uint64_t sub_26298E0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1936748641 && a2 == 0xE400000000000000;
  if (v5 || (sub_262996FD4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6567617375 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_262996FD4();

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

uint64_t sub_26298E1A4(uint64_t a1)
{
  v2 = sub_26298E840();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26298E1E0(uint64_t a1)
{
  v2 = sub_26298E840();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementViewModel.MuirfieldRecommendableForDelete.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF32048, &qword_26299AB18);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-v6];
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26298E840();

  sub_262997074();
  v11 = v8;
  v10[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF32058, &qword_26299AB20);
  sub_26298E894(&qword_27FF32060, &qword_27FF31FA0, &protocol conformance descriptor for SEStorageManagementViewModel.MuirfieldUsageApp, MEMORY[0x277D83948]);
  sub_262996FB4();

  if (!v2)
  {
    v10[6] = 1;
    sub_262996FA4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t SEStorageManagementViewModel.MuirfieldRecommendableForDelete.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_262965DE4(a1, *v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  return MEMORY[0x26672E320](*&v3);
}

uint64_t SEStorageManagementViewModel.MuirfieldRecommendableForDelete.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_262997004();
  sub_262965DE4(v5, v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x26672E320](*&v3);
  return sub_262997044();
}

uint64_t SEStorageManagementViewModel.MuirfieldRecommendableForDelete.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF32068, &qword_26299AB28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26298E840();
  sub_262997064();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF32058, &qword_26299AB20);
  v13[7] = 0;
  sub_26298E894(&qword_27FF32070, &qword_27FF31F98, &protocol conformance descriptor for SEStorageManagementViewModel.MuirfieldUsageApp, MEMORY[0x277D83978]);
  sub_262996F44();
  v9 = v14;
  v13[6] = 1;
  sub_262996F34();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  *(a2 + 1) = v11;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26298E744(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_26298293C(*a1, *a2) & (v2 == v3);
}

uint64_t sub_26298E78C(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_262965DE4(a1, *v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  return MEMORY[0x26672E320](*&v3);
}

uint64_t sub_26298E7D8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_262997004();
  sub_262965DE4(v6, v2);
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  MEMORY[0x26672E320](*&v4);
  return sub_262997044();
}

unint64_t sub_26298E840()
{
  result = qword_27FF32050;
  if (!qword_27FF32050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32050);
  }

  return result;
}

uint64_t sub_26298E894(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF32058, &qword_26299AB20);
    sub_26298E91C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26298E91C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26298E960(void *a1)
{
  a1[1] = sub_26298E9A0();
  a1[2] = sub_26298E9F4();
  a1[3] = sub_26298EA48();
  result = sub_26298EA9C();
  a1[4] = result;
  return result;
}

unint64_t sub_26298E9A0()
{
  result = qword_27FF32078;
  if (!qword_27FF32078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32078);
  }

  return result;
}

unint64_t sub_26298E9F4()
{
  result = qword_27FF32080;
  if (!qword_27FF32080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32080);
  }

  return result;
}

unint64_t sub_26298EA48()
{
  result = qword_27FF32088;
  if (!qword_27FF32088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32088);
  }

  return result;
}

unint64_t sub_26298EA9C()
{
  result = qword_27FF32090;
  if (!qword_27FF32090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32090);
  }

  return result;
}

unint64_t sub_26298EAF4()
{
  result = qword_27FF32098;
  if (!qword_27FF32098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32098);
  }

  return result;
}

uint64_t sub_26298EB48(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_26298EB90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26298EBF0()
{
  result = qword_27FF320A0;
  if (!qword_27FF320A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF320A0);
  }

  return result;
}

unint64_t sub_26298EC48()
{
  result = qword_27FF320A8;
  if (!qword_27FF320A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF320A8);
  }

  return result;
}

unint64_t sub_26298ECA0()
{
  result = qword_27FF320B0;
  if (!qword_27FF320B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF320B0);
  }

  return result;
}

uint64_t sub_26298ECF4(uint64_t a1, id *a2)
{
  sub_262996AB4();
  swift_allocObject();
  sub_262996AA4();
  v3 = sub_262996B14();
  v5 = v4;
  sub_262992440();
  sub_262996A94();

  sub_262969EB4(v3, v5);

  *a2 = v7;
  return result;
}

uint64_t sub_26298EDDC(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  sub_262996AB4();
  swift_allocObject();
  sub_262996AA4();
  v6 = sub_262996B14();
  v8 = v7;
  a3();
  sub_262996A94();

  sub_262969EB4(v6, v8);

  *a2 = v10;
  return result;
}

BOOL sub_26298EECC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B08, &qword_262998CE8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v16[-v7];
  sub_262976524(a2);
  sub_262996AB4();
  swift_allocObject();
  sub_262996AA4();
  v9 = type metadata accessor for SEStorageManagementUIServerXPCParameters.Present(0);
  v10 = sub_262996B14();
  v12 = v11;
  sub_262992FE8(&qword_27FF31A98, type metadata accessor for SEStorageManagementUIServerXPCParameters.Present, &protocol conformance descriptor for SEStorageManagementUIServerXPCParameters.Present);
  sub_262996A94();

  sub_262969EB4(v10, v12);
  v13 = *(v9 - 8);
  (*(v13 + 56))(v8, 0, 1, v9);
  sub_26297658C(v8, a2);
  sub_262993030(a2, v6);
  v14 = (*(v13 + 48))(v6, 1, v9) != 1;
  sub_262976524(v6);
  return v14;
}

BOOL sub_26298F0D0(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{

  sub_262996AB4();
  swift_allocObject();
  sub_262996AA4();
  v6 = sub_262996B14();
  v8 = v7;
  a3();
  sub_262996A94();

  sub_262969EB4(v6, v8);
  *a2 = v10;
  return v10 != 0;
}

BOOL sub_26298F1C0(uint64_t a1, _BYTE *a2)
{
  sub_262996AB4();
  swift_allocObject();
  sub_262996AA4();
  v3 = sub_262996B14();
  v5 = v4;
  sub_262992280();
  sub_262996A94();

  sub_262969EB4(v3, v5);
  *a2 = v7;
  return v7 != 3;
}

BOOL sub_26298F2A0(uint64_t a1, id *a2)
{
  sub_262996AB4();
  swift_allocObject();
  sub_262996AA4();
  v3 = sub_262996B14();
  v5 = v4;
  sub_262992440();
  sub_262996A94();

  sub_262969EB4(v3, v5);
  *a2 = v7;
  return v7 != 0;
}

uint64_t sub_26298F388@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B08, &qword_262998CE8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v17 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  v13 = type metadata accessor for SEStorageManagementUIServerXPCParameters.Present(0);
  v14 = *(v13 - 8);
  v19 = *(v14 + 56);
  v19(v12, 1, 1, v13);
  if (a1)
  {
    sub_262996AB4();
    swift_allocObject();
    sub_262996AA4();
    v2 = sub_262996B14();
    a1 = v15;
    sub_262992FE8(&qword_27FF31A98, type metadata accessor for SEStorageManagementUIServerXPCParameters.Present, &protocol conformance descriptor for SEStorageManagementUIServerXPCParameters.Present);
    sub_262996A94();
    sub_262976524(v12);
    sub_262969EB4(v2, a1);

    v19(v10, 0, 1, v13);
    sub_26297658C(v10, v12);
    sub_262993030(v12, v7);
    if ((*(v14 + 48))(v7, 1, v13) != 1)
    {
      sub_262976524(v12);
      return sub_2629930A0(v7, v18);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_262969EB4(v2, a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_26298F610@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a4@<X8>)
{
  if (a1)
  {
    sub_262996AB4();
    swift_allocObject();
    sub_262996AA4();
    v6 = sub_262996B14();
    v8 = v7;
    a2();
    sub_262996A94();
    sub_262969EB4(v6, v8);

    if (v10)
    {
      *a4 = v10;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_26298F708@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1)
  {
    sub_262996AB4();
    swift_allocObject();
    sub_262996AA4();
    v3 = sub_262996B14();
    v5 = v4;
    sub_262992280();
    sub_262996A94();
    sub_262969EB4(v3, v5);

    if (v7 != 3)
    {
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_26298F7F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    sub_262996AB4();
    swift_allocObject();
    sub_262996AA4();
    v3 = sub_262996B14();
    v5 = v4;
    sub_262992440();
    sub_262996A94();
    sub_262969EB4(v3, v5);

    if (v7)
    {
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_26298F910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F54736573736170 && a2 == 0xEE006574656C6544)
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

uint64_t sub_26298F9A0(uint64_t a1)
{
  v2 = sub_26298FBC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26298F9DC(uint64_t a1)
{
  v2 = sub_26298FBC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementUIClientXPCParameters.DeletePass.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF320B8, &unk_26299ADB0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26298FBC4();

  sub_262997074();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF319C8, &qword_262998A70);
  sub_26298FDD0(&qword_27FF319D0, &qword_27FF319D8, &protocol conformance descriptor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry, MEMORY[0x277D83948]);
  sub_262996FB4();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_26298FBC4()
{
  result = qword_27FF320C0;
  if (!qword_27FF320C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF320C0);
  }

  return result;
}

uint64_t SEStorageManagementUIClientXPCParameters.DeletePass.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF320C8, &qword_26299ADC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26298FBC4();
  sub_262997064();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF319C8, &qword_262998A70);
    sub_26298FDD0(&qword_27FF31A58, &qword_27FF31A60, &protocol conformance descriptor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry, MEMORY[0x277D83978]);
    sub_262996F44();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26298FDD0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF319C8, &qword_262998A70);
    sub_262992FE8(a2, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26298FF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x800000026299C7F0 == a2)
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

uint64_t sub_262990004(uint64_t a1)
{
  v2 = sub_262990228();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262990040(uint64_t a1)
{
  v2 = sub_262990228();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementUIClientXPCParameters.DeleteSecureElementCredentials.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF320D0, &qword_26299ADC8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262990228();

  sub_262997074();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31A08, &qword_26299ADD0);
  sub_262990434(&qword_27FF31A10, &qword_27FF314F0, MEMORY[0x277D492D8], MEMORY[0x277D83948]);
  sub_262996FB4();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_262990228()
{
  result = qword_27FF320D8;
  if (!qword_27FF320D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF320D8);
  }

  return result;
}

uint64_t SEStorageManagementUIClientXPCParameters.DeleteSecureElementCredentials.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF320E0, &qword_26299ADD8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262990228();
  sub_262997064();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31A08, &qword_26299ADD0);
    sub_262990434(&qword_27FF31A80, &qword_27FF31500, MEMORY[0x277D492E0], MEMORY[0x277D83978]);
    sub_262996F44();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_262990434(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF31A08, &qword_26299ADD0);
    sub_262992FE8(a2, MEMORY[0x277D492D0], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_262990518(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_262996AE4();
  swift_allocObject();
  sub_262996AD4();
  a3();
  v4 = sub_262996AC4();
  v6 = v5;
  v7 = sub_262996B04();
  sub_262969EB4(v4, v6);

  return v7;
}

uint64_t sub_2629906D0(uint64_t a1)
{
  v2 = sub_262990DB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26299070C(uint64_t a1)
{
  v2 = sub_262990DB0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_262990748()
{
  v1 = 0x6569636966667573;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C6C65636E6163;
  }
}

uint64_t sub_2629907B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_262992EB8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2629907E0(uint64_t a1)
{
  v2 = sub_262990CB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26299081C(uint64_t a1)
{
  v2 = sub_262990CB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262990858(uint64_t a1)
{
  v2 = sub_262990D08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262990894(uint64_t a1)
{
  v2 = sub_262990D08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2629908D0(uint64_t a1)
{
  v2 = sub_262990D5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26299090C(uint64_t a1)
{
  v2 = sub_262990D5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementUIClientXPCParameters.Dismiss.DismissalContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF320E8, &qword_26299ADE0);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF320F0, &qword_26299ADE8);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF320F8, &qword_26299ADF0);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF32100, &qword_26299ADF8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262990CB4();
  sub_262997074();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_262990D5C();
      v9 = v21;
      sub_262996F64();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_262990D08();
      v9 = v24;
      sub_262996F64();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_262990DB0();
    sub_262996F64();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_262990CB4()
{
  result = qword_27FF32108;
  if (!qword_27FF32108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32108);
  }

  return result;
}

unint64_t sub_262990D08()
{
  result = qword_27FF32110;
  if (!qword_27FF32110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32110);
  }

  return result;
}

unint64_t sub_262990D5C()
{
  result = qword_27FF32118;
  if (!qword_27FF32118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32118);
  }

  return result;
}

unint64_t sub_262990DB0()
{
  result = qword_27FF32120;
  if (!qword_27FF32120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32120);
  }

  return result;
}

uint64_t SEStorageManagementUIClientXPCParameters.Dismiss.DismissalContext.hashValue.getter()
{
  v1 = *v0;
  sub_262997004();
  MEMORY[0x26672E300](v1);
  return sub_262997044();
}

uint64_t SEStorageManagementUIClientXPCParameters.Dismiss.DismissalContext.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF32128, &qword_26299AE00);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF32130, &qword_26299AE08);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF32138, &qword_26299AE10);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF32140, &unk_26299AE18);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_262990CB4();
  v15 = v36;
  sub_262997064();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_262996F54();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_262973850();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_262996E44();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31798, &qword_2629991C0);
      *v24 = &type metadata for SEStorageManagementUIClientXPCParameters.Dismiss.DismissalContext;
      sub_262996EF4();
      sub_262996E34();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_262990D5C();
          sub_262996EE4();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_262990D08();
          v26 = v17;
          sub_262996EE4();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_262990DB0();
        sub_262996EE4();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_26299143C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
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

uint64_t sub_2629914C4(uint64_t a1)
{
  v2 = sub_262991688();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262991500(uint64_t a1)
{
  v2 = sub_262991688();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementUIClientXPCParameters.Dismiss.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF32148, &qword_26299AE28);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262991688();
  sub_262997074();
  v10 = v7;
  sub_2629916DC();
  sub_262996FB4();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_262991688()
{
  result = qword_27FF32150;
  if (!qword_27FF32150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32150);
  }

  return result;
}

unint64_t sub_2629916DC()
{
  result = qword_27FF32158;
  if (!qword_27FF32158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32158);
  }

  return result;
}

uint64_t SEStorageManagementUIClientXPCParameters.Dismiss.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF32160, &qword_26299AE30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262991688();
  sub_262997064();
  if (!v2)
  {
    sub_26299189C();
    sub_262996F44();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_26299189C()
{
  result = qword_27FF32168;
  if (!qword_27FF32168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32168);
  }

  return result;
}

uint64_t sub_262991920(uint64_t a1)
{
  sub_262996AE4();
  swift_allocObject();
  sub_262996AD4();
  sub_2629922D4();
  v1 = sub_262996AC4();
  v3 = v2;
  v4 = sub_262996B04();
  sub_262969EB4(v1, v3);

  return v4;
}

uint64_t sub_2629919DC(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  sub_262996AB4();
  swift_allocObject();
  sub_262996AA4();
  v4 = sub_262996B14();
  v6 = v5;
  sub_262992280();
  sub_262996A94();
  sub_262969EB4(v4, v6);

  *a2 = v8;
  return result;
}

uint64_t sub_262991AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746F687370616E73 && a2 == 0xE800000000000000)
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

uint64_t sub_262991B6C(uint64_t a1)
{
  v2 = sub_262991D78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262991BA8(uint64_t a1)
{
  v2 = sub_262991D78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementUIClientReturnValues.DeleteResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF32170, &qword_26299AE38);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262991D78();
  v8 = v7;
  sub_262997074();
  v10[1] = v8;
  sub_262996BD4();
  sub_262992FE8(&qword_27FF32180, MEMORY[0x277D49178], MEMORY[0x277D49180]);
  sub_262996FB4();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_262991D78()
{
  result = qword_27FF32178;
  if (!qword_27FF32178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32178);
  }

  return result;
}

uint64_t SEStorageManagementUIClientReturnValues.DeleteResult.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF32188, &qword_26299AE40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262991D78();
  sub_262997064();
  if (!v2)
  {
    sub_262996BD4();
    sub_262992FE8(&qword_27FF32190, MEMORY[0x277D49178], MEMORY[0x277D49188]);
    sub_262996F44();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_262991FB0()
{
  result = qword_27FF32198;
  if (!qword_27FF32198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32198);
  }

  return result;
}

unint64_t sub_262992004()
{
  result = qword_27FF321A0;
  if (!qword_27FF321A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF321A0);
  }

  return result;
}

unint64_t sub_262992058()
{
  result = qword_27FF321A8;
  if (!qword_27FF321A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF321A8);
  }

  return result;
}

unint64_t sub_2629920EC()
{
  result = qword_27FF321B0;
  if (!qword_27FF321B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF321B0);
  }

  return result;
}

unint64_t sub_262992140()
{
  result = qword_27FF321B8;
  if (!qword_27FF321B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF321B8);
  }

  return result;
}

unint64_t sub_262992194()
{
  result = qword_27FF321C0;
  if (!qword_27FF321C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF321C0);
  }

  return result;
}

unint64_t sub_2629921EC()
{
  result = qword_27FF321C8;
  if (!qword_27FF321C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF321C8);
  }

  return result;
}

unint64_t sub_262992280()
{
  result = qword_27FF321D0;
  if (!qword_27FF321D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF321D0);
  }

  return result;
}

unint64_t sub_2629922D4()
{
  result = qword_27FF321D8;
  if (!qword_27FF321D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF321D8);
  }

  return result;
}

unint64_t sub_262992328()
{
  result = qword_27FF321E0;
  if (!qword_27FF321E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF321E0);
  }

  return result;
}

uint64_t sub_2629923EC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_262992440()
{
  result = qword_27FF321E8;
  if (!qword_27FF321E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF321E8);
  }

  return result;
}

unint64_t sub_262992494()
{
  result = qword_27FF321F0;
  if (!qword_27FF321F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF321F0);
  }

  return result;
}

unint64_t sub_2629924E8()
{
  result = qword_27FF321F8;
  if (!qword_27FF321F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF321F8);
  }

  return result;
}

uint64_t sub_26299253C(uint64_t a1)
{
  sub_262996AE4();
  swift_allocObject();
  sub_262996AD4();
  sub_262992494();
  v1 = sub_262996AC4();
  v3 = v2;
  v4 = sub_262996B04();
  sub_262969EB4(v1, v3);

  return v4;
}

uint64_t sub_26299266C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_2629926B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_262992784()
{
  result = qword_27FF32200;
  if (!qword_27FF32200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32200);
  }

  return result;
}

unint64_t sub_2629927DC()
{
  result = qword_27FF32208;
  if (!qword_27FF32208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32208);
  }

  return result;
}

unint64_t sub_262992834()
{
  result = qword_27FF32210;
  if (!qword_27FF32210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32210);
  }

  return result;
}

unint64_t sub_26299288C()
{
  result = qword_27FF32218;
  if (!qword_27FF32218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32218);
  }

  return result;
}

unint64_t sub_2629928E4()
{
  result = qword_27FF32220;
  if (!qword_27FF32220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32220);
  }

  return result;
}

unint64_t sub_26299293C()
{
  result = qword_27FF32228;
  if (!qword_27FF32228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32228);
  }

  return result;
}

unint64_t sub_262992994()
{
  result = qword_27FF32230;
  if (!qword_27FF32230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32230);
  }

  return result;
}

unint64_t sub_2629929EC()
{
  result = qword_27FF32238;
  if (!qword_27FF32238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32238);
  }

  return result;
}

unint64_t sub_262992A44()
{
  result = qword_27FF32240;
  if (!qword_27FF32240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32240);
  }

  return result;
}

unint64_t sub_262992A9C()
{
  result = qword_27FF32248;
  if (!qword_27FF32248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32248);
  }

  return result;
}

unint64_t sub_262992AF4()
{
  result = qword_27FF32250;
  if (!qword_27FF32250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32250);
  }

  return result;
}

unint64_t sub_262992B4C()
{
  result = qword_27FF32258;
  if (!qword_27FF32258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32258);
  }

  return result;
}

unint64_t sub_262992BA4()
{
  result = qword_27FF32260;
  if (!qword_27FF32260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32260);
  }

  return result;
}

unint64_t sub_262992BFC()
{
  result = qword_27FF32268;
  if (!qword_27FF32268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32268);
  }

  return result;
}

unint64_t sub_262992C54()
{
  result = qword_27FF32270;
  if (!qword_27FF32270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32270);
  }

  return result;
}

unint64_t sub_262992CAC()
{
  result = qword_27FF32278;
  if (!qword_27FF32278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32278);
  }

  return result;
}

unint64_t sub_262992D04()
{
  result = qword_27FF32280;
  if (!qword_27FF32280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32280);
  }

  return result;
}

unint64_t sub_262992D5C()
{
  result = qword_27FF32288;
  if (!qword_27FF32288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32288);
  }

  return result;
}

unint64_t sub_262992DB4()
{
  result = qword_27FF32290;
  if (!qword_27FF32290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32290);
  }

  return result;
}

unint64_t sub_262992E0C()
{
  result = qword_27FF32298;
  if (!qword_27FF32298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32298);
  }

  return result;
}

unint64_t sub_262992E64()
{
  result = qword_27FF322A0;
  if (!qword_27FF322A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF322A0);
  }

  return result;
}

uint64_t sub_262992EB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064;
  if (v4 || (sub_262996FD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6569636966667573 && a2 == 0xEF6563617053746ELL || (sub_262996FD4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026299C810 == a2)
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

uint64_t sub_262992FE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_262993030(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B08, &qword_262998CE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2629930A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageManagementUIServerXPCParameters.Present(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.allDeletable.getter()
{
  v1 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup(0);
  v6 = 0;
  v7 = *(v0 + *(result + 20));
  v8 = *(v7 + 16);
  while (1)
  {
    v9 = v6;
    if (v8 == v6)
    {
      return v8 == v9;
    }

    if (v6 >= *(v7 + 16))
    {
      break;
    }

    sub_262995C60(v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v6++, v4, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
    v10 = v4[*(v1 + 36)];
    result = sub_262995CC8(v4, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
    if ((v10 & 1) == 0)
    {
      return v8 == v9;
    }
  }

  __break(1u);
  return result;
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.lastUsedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314D0, &qword_262997510);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_262996B24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v29 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + *(type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup(0) + 20));
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = *(v8 + 32);
    v15 = v12 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v27 = *(v9 + 72);
    v28 = v14;
    v16 = (v6 + 48);
    v25 = v6;
    v17 = (v6 + 32);
    v18 = MEMORY[0x277D84F90];
    v26 = v5;
    do
    {
      sub_262995C60(v15, v11, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
      sub_262967904(&v11[v28], v4);
      sub_262995CC8(v11, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
      if ((*v16)(v4, 1, v5) == 1)
      {
        sub_2629737D4(v4, &qword_27FF314D0, &qword_262997510);
      }

      else
      {
        v19 = *v17;
        (*v17)(v29, v4, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_2629658A0(0, v18[2] + 1, 1, v18);
        }

        v21 = v18[2];
        v20 = v18[3];
        if (v21 >= v20 >> 1)
        {
          v18 = sub_2629658A0((v20 > 1), v21 + 1, 1, v18);
        }

        v18[2] = v21 + 1;
        v22 = v18 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21;
        v5 = v26;
        v19(v22, v29, v26);
      }

      v15 += v27;
      --v13;
    }

    while (v13);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  sub_262963D20(v18, v24);
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.appletType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_262996C14();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.passes.getter()
{
  type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup(0);
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.passes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.baseUsage.setter(double a1)
{
  result = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.usage.setter(double a1)
{
  result = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.init(appletType:passes:usage:baseUsage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup(0);
  v11 = v10[6];
  v12 = v10[7];
  v13 = sub_262996C14();
  result = (*(*(v13 - 8) + 32))(a3, a1, v13);
  *(a3 + v10[5]) = a2;
  *(a3 + v12) = a4;
  *(a3 + v11) = a5;
  return result;
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.PassEntry.passUniqueID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.PassEntry.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.PassEntry.lastUsedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0) + 32);

  return sub_262967904(v3, a1);
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.PassEntry.usage.setter(double a1)
{
  result = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.PassEntry.selected.setter(char a1)
{
  result = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.PassEntry.init(passUniqueID:instanceAIDs:appletTypes:title:usage:isDeletable:lastUsedDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, double a10@<D0>)
{
  v20 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0);
  v21 = v20[10];
  *(a9 + v20[11]) = 0;
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a4;
  a9[3] = a3;
  a9[4] = a5;
  a9[5] = a6;
  *(a9 + v21) = a10;
  *(a9 + v20[9]) = a7;
  v22 = a9 + v20[8];

  return sub_262963C48(a8, v22);
}

uint64_t sub_262993BC8()
{
  v1 = *v0;
  v2 = 0x71696E5573736170;
  v3 = 0x6567617375;
  if (v1 != 6)
  {
    v3 = 0x64657463656C6573;
  }

  v4 = 0x646573557473616CLL;
  if (v1 != 4)
  {
    v4 = 0x6174656C65447369;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x65636E6174736E69;
  if (v1 != 2)
  {
    v5 = 0x656C746974;
  }

  if (*v0)
  {
    v2 = 0x795474656C707061;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_262993CE4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_262996684(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_262993D0C(uint64_t a1)
{
  v2 = sub_2629959CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262993D48(uint64_t a1)
{
  v2 = sub_2629959CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.PassEntry.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF322A8, &qword_26299BA78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2629959CC();
  sub_262997074();
  LOBYTE(v11) = 0;
  sub_262996F84();
  if (!v2)
  {
    v11 = *(v3 + 16);
    HIBYTE(v10) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF322B8, &qword_26299BA80);
    sub_262995A68(&qword_27FF322C0, &qword_27FF31C40, MEMORY[0x277D492A0], MEMORY[0x277D83948]);
    sub_262996FB4();
    v11 = *(v3 + 24);
    HIBYTE(v10) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF322C8, &qword_26299BA88);
    sub_262995B04(&qword_27FF322D0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_262996FB4();
    LOBYTE(v11) = 3;
    sub_262996F84();
    type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0);
    LOBYTE(v11) = 4;
    sub_262996B24();
    sub_262995A20(&qword_27FF31620, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_262996F74();
    LOBYTE(v11) = 5;
    sub_262996F94();
    LOBYTE(v11) = 6;
    sub_262996FA4();
    LOBYTE(v11) = 7;
    sub_262996F94();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.PassEntry.hash(into:)(uint64_t a1)
{
  v2 = sub_262996B24();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x28223BE20](v2);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314D0, &qword_262997510);
  MEMORY[0x28223BE20](v4 - 8);
  v30 = &v28 - v5;
  v6 = sub_262996C14();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_262996D64();
  v33 = v1;
  v10 = *(v1 + 16);
  MEMORY[0x26672E300](*(v10 + 16));
  v11 = *(v10 + 16);
  if (v11)
  {
    v14 = *(v7 + 16);
    v12 = v7 + 16;
    v13 = v14;
    v15 = v10 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v9, v15, v6);
      sub_262995A20(&qword_27FF315C8, MEMORY[0x277D49298], MEMORY[0x277D492A8]);
      sub_262996D04();
      (*(v12 - 8))(v9, v6);
      v15 += v16;
      --v11;
    }

    while (v11);
  }

  v17 = v33;
  v18 = *(v33 + 24);
  MEMORY[0x26672E300](*(v18 + 16));
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = v18 + 40;
    do
    {

      sub_262996D64();

      v20 += 16;
      --v19;
    }

    while (v19);
  }

  sub_262996D64();
  v21 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0);
  v22 = v30;
  sub_262967904(v17 + *(v21 + 32), v30);
  v24 = v31;
  v23 = v32;
  if ((*(v31 + 48))(v22, 1, v32) == 1)
  {
    sub_262997024();
  }

  else
  {
    v25 = v29;
    (*(v24 + 32))(v29, v22, v23);
    sub_262997024();
    sub_262995A20(&qword_27FF315D0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_262996D04();
    (*(v24 + 8))(v25, v23);
  }

  sub_262997024();
  v26 = *(v17 + *(v21 + 40));
  if (v26 == 0.0)
  {
    v26 = 0.0;
  }

  MEMORY[0x26672E320](*&v26);
  return sub_262997024();
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.PassEntry.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314D0, &qword_262997510);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF322D8, &qword_26299BA90);
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v30 - v8;
  v10 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0);
  MEMORY[0x28223BE20](v10);
  v12 = (v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_2629959CC();
  v14 = v9;
  sub_262997064();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v15 = v6;
  v31 = v12;
  v16 = v33;
  v17 = v34;
  LOBYTE(v37) = 0;
  v18 = v14;
  v19 = sub_262996F14();
  v20 = v31;
  *v31 = v19;
  v20[1] = v21;
  v30[1] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF322B8, &qword_26299BA80);
  v36 = 1;
  sub_262995A68(&qword_27FF322E0, &qword_27FF31C70, MEMORY[0x277D492B8], MEMORY[0x277D83978]);
  sub_262996F44();
  v20[2] = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF322C8, &qword_26299BA88);
  v36 = 2;
  sub_262995B04(&qword_27FF322E8, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_262996F44();
  v20[3] = v37;
  LOBYTE(v37) = 3;
  v20[4] = sub_262996F14();
  v20[5] = v22;
  sub_262996B24();
  LOBYTE(v37) = 4;
  sub_262995A20(&qword_27FF31630, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_262996F04();
  sub_262963C48(v15, v20 + v10[8]);
  LOBYTE(v37) = 5;
  *(v20 + v10[9]) = sub_262996F24() & 1;
  LOBYTE(v37) = 6;
  sub_262996F34();
  v23 = v20;
  v24 = v16;
  *(v23 + v10[10]) = v25;
  LOBYTE(v37) = 7;
  LOBYTE(v23) = sub_262996F24();
  v26 = v10[11];
  (*(v24 + 8))(v18, v17);
  v28 = v31;
  v27 = v32;
  *(v31 + v26) = v23 & 1;
  sub_262995C60(v28, v27, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return sub_262995CC8(v28, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
}

uint64_t sub_262994B30()
{
  v1 = 0x795474656C707061;
  v2 = 0x6761735565736162;
  if (*v0 != 2)
  {
    v2 = 0x6567617375;
  }

  if (*v0)
  {
    v1 = 0x736573736170;
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

uint64_t sub_262994BAC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_262996924(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_262994BD4(uint64_t a1)
{
  v2 = sub_262995B70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262994C10(uint64_t a1)
{
  v2 = sub_262995B70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF322F0, &unk_26299BA98);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262995B70();
  sub_262997074();
  v12 = 0;
  sub_262996C14();
  sub_262995A20(&qword_27FF31C40, MEMORY[0x277D49298], MEMORY[0x277D492A0]);
  sub_262996FB4();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF319C8, &qword_262998A70);
    sub_262995BC4(&qword_27FF319D0, &qword_27FF319D8, &protocol conformance descriptor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry, MEMORY[0x277D83948]);
    sub_262996FB4();
    v10[14] = 2;
    sub_262996FA4();
    v10[13] = 3;
    sub_262996FA4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.hash(into:)(uint64_t a1)
{
  sub_262996C14();
  sub_262995A20(&qword_27FF315C8, MEMORY[0x277D49298], MEMORY[0x277D492A8]);
  sub_262996D04();
  v3 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup(0);
  sub_2629660FC(a1, *(v1 + v3[5]));
  v4 = *(v1 + v3[6]);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x26672E320](*&v4);
  v5 = *(v1 + v3[7]);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  return MEMORY[0x26672E320](*&v5);
}

uint64_t sub_262994FB4(uint64_t (*a1)(void *))
{
  sub_262997004();
  a1(v3);
  return sub_262997044();
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_262996C14();
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v24 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF32300, &qword_26299BAA8);
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262995B70();
  v27 = v8;
  sub_262997064();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v11;
  v13 = v23;
  v32 = 0;
  sub_262995A20(&qword_27FF31C70, MEMORY[0x277D49298], MEMORY[0x277D492B8]);
  v14 = v24;
  v15 = v26;
  sub_262996F44();
  (*(v13 + 32))(v12, v14, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF319C8, &qword_262998A70);
  v30 = 1;
  sub_262995BC4(&qword_27FF31A58, &qword_27FF31A60, &protocol conformance descriptor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry, MEMORY[0x277D83978]);
  sub_262996F44();
  v24 = v9;
  *(v12 + *(v9 + 20)) = v31;
  v29 = 2;
  sub_262996F34();
  *(v12 + *(v24 + 6)) = v16;
  v28 = 3;
  sub_262996F34();
  v18 = v17;
  v19 = *(v24 + 7);
  (*(v25 + 8))(v27, v15);
  *(v12 + v19) = v18;
  sub_262995C60(v12, v22, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_262995CC8(v12, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
}

uint64_t sub_262995470@<X0>(uint64_t *a1@<X8>)
{
  result = CredentialType.localizedDescription.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2629954E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_262997004();
  a3(v5);
  return sub_262997044();
}

uint64_t sub_262995548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_262997004();
  a4(v6);
  return sub_262997044();
}

BOOL _s16SESUIServiceCore28SEStorageManagementViewModelV16WalletUsageGroupV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x26672DEF0]() & 1) != 0 && (v4 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup(0), (sub_26298364C(*(a1 + v4[5]), *(a2 + v4[5]))) && *(a1 + v4[6]) == *(a2 + v4[6]))
  {
    return *(a1 + v4[7]) == *(a2 + v4[7]);
  }

  else
  {
    return 0;
  }
}

uint64_t _s16SESUIServiceCore28SEStorageManagementViewModelV16WalletUsageGroupV9PassEntryV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = sub_262996B24();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314D0, &qword_262997510);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31E70, &qword_262999F98);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_262996FD4() & 1) == 0 || (sub_262983E84(a1[2], a2[2]) & 1) == 0 || (sub_262984098(a1[3], a2[3]) & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_262996FD4() & 1) == 0)
  {
    goto LABEL_18;
  }

  v22 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0);
  v14 = v22[8];
  v15 = *(v11 + 48);
  sub_262967904(a1 + v14, v13);
  sub_262967904(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_262967904(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_262995A20(&qword_27FF31E78, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v17 = sub_262996D24();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_2629737D4(v13, &qword_27FF314D0, &qword_262997510);
      if (v17)
      {
        goto LABEL_15;
      }

LABEL_18:
      v19 = 0;
      return v19 & 1;
    }

    (*(v5 + 8))(v10, v4);
LABEL_13:
    sub_2629737D4(v13, &qword_27FF31E70, &qword_262999F98);
    goto LABEL_18;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  sub_2629737D4(v13, &qword_27FF314D0, &qword_262997510);
LABEL_15:
  if (*(a1 + v22[9]) != *(a2 + v22[9]) || *(a1 + v22[10]) != *(a2 + v22[10]))
  {
    goto LABEL_18;
  }

  v19 = *(a1 + v22[11]) ^ *(a2 + v22[11]) ^ 1;
  return v19 & 1;
}

unint64_t sub_2629959CC()
{
  result = qword_27FF322B0;
  if (!qword_27FF322B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF322B0);
  }

  return result;
}

uint64_t sub_262995A20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_262995A68(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF322B8, &qword_26299BA80);
    sub_262995A20(a2, MEMORY[0x277D49298], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_262995B04(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF322C8, &qword_26299BA88);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_262995B70()
{
  result = qword_27FF322F8;
  if (!qword_27FF322F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF322F8);
  }

  return result;
}

uint64_t sub_262995BC4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF319C8, &qword_262998A70);
    sub_262995A20(a2, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_262995C60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_262995CC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_262995D70(void *a1)
{
  a1[1] = sub_262995A20(&qword_27FF31C00, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup, &protocol conformance descriptor for SEStorageManagementViewModel.WalletUsageGroup);
  a1[2] = sub_262995A20(&qword_27FF31BE0, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup, &protocol conformance descriptor for SEStorageManagementViewModel.WalletUsageGroup);
  a1[3] = sub_262995A20(&qword_27FF32310, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup, &protocol conformance descriptor for SEStorageManagementViewModel.WalletUsageGroup);
  result = sub_262995A20(&qword_27FF32318, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup, &protocol conformance descriptor for SEStorageManagementViewModel.WalletUsageGroup);
  a1[4] = result;
  return result;
}

uint64_t sub_262995EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_262996C14();
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

uint64_t sub_262995F70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_262996C14();
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

void sub_262996028(uint64_t a1)
{
  sub_262996C14();
  if (v1 <= 0x3F)
  {
    sub_2629963A0(319, &qword_27FF31AC8, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_262996100(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2629961D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_262996280(uint64_t a1)
{
  sub_2629963A0(319, &qword_27FF32348, MEMORY[0x277D49298], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_262996404();
    if (v2 <= 0x3F)
    {
      sub_2629963A0(319, &qword_27FF31650, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2629963A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_262996404()
{
  if (!qword_27FF32350)
  {
    v0 = sub_262996DC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF32350);
    }
  }
}

unint64_t sub_262996478()
{
  result = qword_27FF32358;
  if (!qword_27FF32358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32358);
  }

  return result;
}

unint64_t sub_2629964D0()
{
  result = qword_27FF32360;
  if (!qword_27FF32360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32360);
  }

  return result;
}

unint64_t sub_262996528()
{
  result = qword_27FF32368;
  if (!qword_27FF32368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32368);
  }

  return result;
}

unint64_t sub_262996580()
{
  result = qword_27FF32370;
  if (!qword_27FF32370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32370);
  }

  return result;
}

unint64_t sub_2629965D8()
{
  result = qword_27FF32378;
  if (!qword_27FF32378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32378);
  }

  return result;
}

unint64_t sub_262996630()
{
  result = qword_27FF32380;
  if (!qword_27FF32380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32380);
  }

  return result;
}

uint64_t sub_262996684(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x71696E5573736170 && a2 == 0xEC00000044496575;
  if (v4 || (sub_262996FD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x795474656C707061 && a2 == 0xEB00000000736570 || (sub_262996FD4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65636E6174736E69 && a2 == 0xEC00000073444941 || (sub_262996FD4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_262996FD4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646573557473616CLL && a2 == 0xEC00000065746144 || (sub_262996FD4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174656C65447369 && a2 == 0xEB00000000656C62 || (sub_262996FD4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6567617375 && a2 == 0xE500000000000000 || (sub_262996FD4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xE800000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_262996FD4();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_262996924(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x795474656C707061 && a2 == 0xEA00000000006570;
  if (v4 || (sub_262996FD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736573736170 && a2 == 0xE600000000000000 || (sub_262996FD4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6761735565736162 && a2 == 0xE900000000000065 || (sub_262996FD4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6567617375 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_262996FD4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}