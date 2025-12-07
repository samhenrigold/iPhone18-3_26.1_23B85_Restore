void sub_2284F9810(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2284F9874(uint64_t a1)
{
  if (!qword_280DED060)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22855DCFC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DED060);
    }
  }
}

uint64_t RelevanceFeatureTagEncodable<>.makeEncodedValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v18 - v10;
  v12 = type metadata accessor for ValueJSONWrapper(0, AssociatedTypeWitness, a3, a4);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v18 - v14;
  (*(v7 + 24))(a1, v7);
  (*(v9 + 32))(v15, v11, AssociatedTypeWitness);
  sub_22855BDCC();
  swift_allocObject();
  sub_22855BDBC();
  swift_getWitnessTable();
  v16 = sub_22855BDAC();
  (*(v13 + 8))(v15, v12);

  return v16;
}

uint64_t sub_2284F9C88(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22855E15C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2284F9D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2284F9C88(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2284F9D48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2283F4918();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2284F9D80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2284F9DD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t ValueJSONWrapper.encode(to:)(void *a1, void *a2)
{
  v3 = a2[3];
  v9 = a2[2];
  type metadata accessor for ValueJSONWrapper.CodingKeys(255, v9, v3, a2[4]);
  swift_getWitnessTable();
  v4 = sub_22855E0EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22855E31C();
  sub_22855E0CC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t ValueJSONWrapper.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a5;
  v31 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v33 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ValueJSONWrapper.CodingKeys(255, v10, v11, v12);
  swift_getWitnessTable();
  v34 = sub_22855E05C();
  v29 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v14 = &v25 - v13;
  v30 = a2;
  v32 = a3;
  v15 = type metadata accessor for ValueJSONWrapper(0, a2, a3, a4);
  v27 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = v35;
  sub_22855E30C();
  if (!v18)
  {
    v26 = v17;
    v35 = v15;
    v20 = v29;
    v19 = v30;
    v21 = v31;
    v22 = v33;
    sub_22855E03C();
    (*(v20 + 8))(v14, v34);
    v23 = v26;
    (*(v21 + 32))(v26, v22, v19);
    (*(v27 + 32))(v28, v23, v35);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2284FA2E0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2284FA3C4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  sub_22842BC38(0);
  v17 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v20 = MEMORY[0x277D84F90];
  sub_228427460(0, v10, 0);
  v11 = v20;
  v12 = a3 + 32;
  v16 = v7 + 32;
  while (1)
  {
    v18(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v20 = v11;
    v14 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_228427460((v13 > 1), v14 + 1, 1);
      v11 = v20;
    }

    *(v11 + 16) = v14 + 1;
    (*(v7 + 32))(v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, v9, v17);
    v12 += 40;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2284FA570(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v14 = MEMORY[0x277D84F90];
    sub_22855DD4C();
    v9 = *(type metadata accessor for PluginSharableModel(0) - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v13, v10, &v12);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_22855DD1C();
      sub_22855DD5C();
      sub_22855DD6C();
      sub_22855DD2C();
      v10 += v11;
      if (!--v6)
      {
        return v14;
      }
    }
  }

  return result;
}

uint64_t sub_2284FA6BC(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22855DB4C())
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v15 = MEMORY[0x277D84F90];
    sub_22855DD4C();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x22AAB9D20](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a3 + 8 * j + 32);
      }

      v4 = v11;
      v13 = v11;
      a1(&v14, &v13);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      v4 = v14;
      sub_22855DD1C();
      sub_22855DD5C();
      sub_22855DD6C();
      sub_22855DD2C();
      if (v10 == i)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

uint64_t TransactionBuilderSharableModelStorageAdapter.bundleIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TransactionBuilderSharableModelStorageAdapter.init(bundleIdentifier:transactionBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  return sub_2283FAB3C(a3, (a4 + 2));
}

uint64_t TransactionBuilderSharableModelStorageAdapter.fetch(matching:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v7);
  v10 = *v3;
  v9 = v3[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = *(v8 + 8);

  v12(v10, v9, a1, sub_2284FABE0, v11, v7, v8);
}

void sub_2284FA958(unint64_t a1, char a2, void (*a3)(uint64_t, uint64_t), unint64_t a4)
{
  v8 = type metadata accessor for PluginSharableModel(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v28 = a1;
    v12 = a1;
    sub_228418D44();
    swift_willThrowTypedImpl();
    v22 = a1;
    a3(a1, 1);
  }

  else
  {
    v13 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22855DB4C())
    {
      v15 = MEMORY[0x277D84F90];
      if (!i)
      {
LABEL_18:
        a3(v15, 0);

        return;
      }

      v25 = v13;
      v28 = MEMORY[0x277D84F90];
      sub_228427710(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        break;
      }

      v23[1] = a4;
      v24 = a3;
      v16 = 0;
      a3 = 0;
      v15 = v28;
      v26 = a1;
      v27 = a1 & 0xC000000000000001;
      v17 = v25;
      while (1)
      {
        a1 = i;
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v27)
        {
          v19 = MEMORY[0x22AAB9D20](v16, v26);
        }

        else
        {
          if (v16 >= *(v17 + 16))
          {
            goto LABEL_20;
          }

          v19 = *(v26 + 8 * v16 + 32);
        }

        PluginSharableModel.init(sharedSummary:)(v19, v11);
        v28 = v15;
        a4 = *(v15 + 16);
        v20 = *(v15 + 24);
        v13 = a4 + 1;
        if (a4 >= v20 >> 1)
        {
          sub_228427710((v20 > 1), a4 + 1, 1);
          v17 = v25;
          v15 = v28;
        }

        *(v15 + 16) = v13;
        sub_2284B7280(v11, v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a4);
        ++v16;
        v21 = v18 == a1;
        i = a1;
        if (v21)
        {
          a3 = v24;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

    __break(1u);
  }
}

uint64_t TransactionBuilderSharableModelStorageAdapter.updateOrCreate(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2284FA570(sub_2284FADA8, &v11, a1);
  v7 = v3[5];
  v8 = v3[6];
  v9 = v6;
  __swift_project_boxed_opaque_existential_1(v3 + 2, v7);
  (*(v8 + 16))(v9, a2, a3, v7, v8);
}

unint64_t *sub_2284FACC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unint64_t **a4@<X8>)
{
  v6 = v4;
  v10 = type metadata accessor for PluginSharableModel(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2284FB1C0();
  sub_22848DB1C(a1, v12);
  v14 = *a2;
  v13 = *(a2 + 8);

  result = HKSharedSummary.init(model:pluginIdentifier:)(v12, v14, v13);
  if (v6)
  {
    *a3 = v6;
  }

  else
  {
    *a4 = result;
  }

  return result;
}

uint64_t TransactionBuilderSharableModelStorageAdapter.delete(sharableModelIdentifiers:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v7);
  return (*(v8 + 32))(*v3, v3[1], a1, a2, a3, v7, v8);
}

uint64_t TransactionBuilderSharableModelStorageAdapter.deleteAll(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  return (*(v6 + 24))(*v2, v2[1], a1, a2, v5, v6);
}

uint64_t sub_2284FAEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v7);
  v10 = *v3;
  v9 = v3[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = *(v8 + 8);

  v12(v10, v9, a1, sub_2284FB27C, v11, v7, v8);
}

uint64_t sub_2284FAF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2284FA570(sub_2284FB264, &v11, a1);
  v7 = v3[5];
  v8 = v3[6];
  v9 = v6;
  __swift_project_boxed_opaque_existential_1(v3 + 2, v7);
  (*(v8 + 16))(v9, a2, a3, v7, v8);
}

uint64_t sub_2284FB070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v7);
  return (*(v8 + 32))(*v3, v3[1], a1, a2, a3, v7, v8);
}

uint64_t sub_2284FB0EC(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  return (*(v6 + 24))(*v2, v2[1], a1, a2, v5, v6);
}

unint64_t sub_2284FB1C0()
{
  result = qword_280DE9490;
  if (!qword_280DE9490)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DE9490);
  }

  return result;
}

void sub_2284FB20C(uint64_t a1)
{
  if (!qword_280DEE728)
  {
    type metadata accessor for PluginFeedItem(255);
    v1 = sub_22855DA2C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DEE728);
    }
  }
}

uint64_t CancellableProgressList.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t CancellableProgressList.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = MEMORY[0x277D84F90];
  return result;
}

id sub_2284FB2CC(void *a1, uint64_t a2)
{
  v3 = v2;
  v56 = a1;
  v5 = sub_22855C1DC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v55 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v51 = &v47 - v10;
  v54 = v11;
  MEMORY[0x28223BE20](v9);
  v13 = &v47 - v12;
  os_unfair_lock_lock((v2 + 16));
  v15 = (v2 + 24);
  v14 = *(v2 + 24);
  if (qword_280DEEBC8 != -1)
  {
    swift_once();
  }

  v16 = sub_22855CABC();
  __swift_project_value_buffer(v16, qword_280DEEBD0);
  v52 = *(v6 + 16);
  v53 = v6 + 16;
  v52(v13, a2, v5);

  v17 = sub_22855CA8C();
  v18 = sub_22855D6AC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v49 = a2;
    v20 = v19;
    v48 = swift_slowAlloc();
    aBlock[0] = v48;
    *v20 = 136315394;
    v21 = sub_2284FCAC4(v14);
    v23 = sub_2283F8938(v21, v22, aBlock);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2080;
    sub_2284FD8F4(&qword_280DECD70, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v24 = sub_22855E11C();
    v26 = v25;
    v50 = *(v6 + 8);
    v50(v13, v5);
    v27 = sub_2283F8938(v24, v26, aBlock);

    *(v20 + 14) = v27;
    _os_log_impl(&dword_2283ED000, v17, v18, "%s: add(uuid:) %s", v20, 0x16u);
    v28 = v48;
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v28, -1, -1);
    v29 = v20;
    a2 = v49;
    MEMORY[0x22AABAD40](v29, -1, -1);
  }

  else
  {

    v50 = *(v6 + 8);
    v50(v13, v5);
  }

  v56 = v56;
  MEMORY[0x22AAB9400]();
  v30 = v52;
  if (*((*v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22855D3EC();
  }

  sub_22855D43C();
  os_unfair_lock_unlock(v3 + 4);
  v31 = v51;
  v30(v51, a2, v5);
  v32 = sub_22855C19C();
  v33 = sub_22855D17C();
  [v56 setUserInfoObject:v32 forKey:v33];

  v50(v31, v5);
  v34 = [v56 cancellationHandler];
  if (v34)
  {
    v35 = v34;
    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    v37 = sub_2284FBA80;
  }

  else
  {
    v37 = 0;
    v36 = 0;
  }

  sub_22840FE74(v37, v36);
  sub_228416CF8(v37, v36);
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = v55;
  v30(v55, a2, v5);
  v40 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v41 = (v54 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  *(v42 + 16) = v38;
  (*(v6 + 32))(v42 + v40, v39, v5);
  v43 = (v42 + v41);
  *v43 = v37;
  v43[1] = v36;
  aBlock[4] = sub_2284FB9EC;
  aBlock[5] = v42;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228401F54;
  aBlock[3] = &block_descriptor_22;
  v44 = _Block_copy(aBlock);
  sub_22840FE74(v37, v36);

  sub_22840FE74(sub_2284FB9EC, v42);

  [v56 setCancellationHandler_];
  sub_228416CF8(v37, v36);
  _Block_release(v44);

  v45 = v56;

  return v45;
}

os_unfair_lock_s *sub_2284FB8EC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    os_unfair_lock_lock(result + 4);
    v7 = *&v6[6]._os_unfair_lock_opaque;
    MEMORY[0x28223BE20](v8);
    v10[2] = a2;

    v9 = sub_228493428(sub_2284FD8D4, v10, v7);

    *&v6[6]._os_unfair_lock_opaque = v9;
    os_unfair_lock_unlock(v6 + 4);
    if (a3)
    {
      a3();
    }
  }

  return result;
}

os_unfair_lock_s *sub_2284FB9EC()
{
  v1 = *(sub_22855C1DC() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2284FB8EC(v3, v0 + v2, v4);
}

BOOL sub_2284FBA90(uint64_t a1, uint64_t a2)
{
  v2 = sub_22855C1DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284FBBC4(v5);
  sub_2284FD8F4(&qword_280DECD78, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v6 = sub_22855D16C();
  (*(v3 + 8))(v5, v2);
  return (v6 & 1) == 0;
}

uint64_t sub_2284FBBC4@<X0>(uint64_t a1@<X8>)
{
  sub_2284FD600(0, &qword_280DECD68, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17[-v4];
  v6 = [v1 userInfo];
  type metadata accessor for ProgressUserInfoKey(0);
  sub_2284FD8F4(&qword_280DE9310, type metadata accessor for ProgressUserInfoKey, &unk_228560274);
  v7 = sub_22855D0EC();

  v8 = sub_22855D17C();
  v9 = v8;
  if (*(v7 + 16) && (v10 = sub_22844C56C(v8), (v11 & 1) != 0))
  {
    sub_2283F6E48(*(v7 + 56) + 32 * v10, v17);

    v12 = sub_22855C1DC();
    v13 = swift_dynamicCast();
    v14 = *(v12 - 8);
    (*(v14 + 56))(v5, v13 ^ 1u, 1, v12);
    if ((*(v14 + 48))(v5, 1, v12) != 1)
    {
      return (*(v14 + 32))(a1, v5, v12);
    }
  }

  else
  {

    v16 = sub_22855C1DC();
    (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  }

  sub_2284FD848(v5);
  result = sub_22855DEDC();
  __break(1u);
  return result;
}

void sub_2284FBE88(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22855C1DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock((v1 + 16));
  v8 = (v1 + 24);
  v32 = sub_2284FCAC4(*(v1 + 24));
  v10 = v9;
  if (qword_280DEEBC8 != -1)
  {
    swift_once();
  }

  v11 = sub_22855CABC();
  __swift_project_value_buffer(v11, qword_280DEEBD0);
  (*(v5 + 16))(v7, a1, v4);

  v12 = sub_22855CA8C();
  v13 = sub_22855D6AC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v31 = v1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v30 = a1;
    v17 = v16;
    v33[0] = v16;
    *v15 = 136315394;
    v18 = sub_2283F8938(v32, v10, v33);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    sub_2284FD8F4(&qword_280DECD70, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v19 = sub_22855E11C();
    v21 = v20;
    (*(v5 + 8))(v7, v4);
    v22 = sub_2283F8938(v19, v21, v33);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_2283ED000, v12, v13, "%s: clearProgress(for uuid:) %s", v15, 0x16u);
    swift_arrayDestroy();
    v23 = v17;
    a1 = v30;
    MEMORY[0x22AABAD40](v23, -1, -1);
    v24 = v15;
    v2 = v31;
    MEMORY[0x22AABAD40](v24, -1, -1);
  }

  else
  {

    v25 = (*(v5 + 8))(v7, v4);
  }

  MEMORY[0x28223BE20](v25);
  *(&v29 - 2) = a1;
  v26 = sub_2284FCD6C(sub_2284FCCAC, (&v29 - 4));
  if (*v8 >> 62)
  {
    v28 = v26;
    v27 = sub_22855DB4C();
    v26 = v28;
    if (v27 >= v28)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v27 = *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27 >= v26)
    {
LABEL_8:
      sub_2284FD39C(v26, v27, &qword_280DE9500, 0x277CCAC48);
      os_unfair_lock_unlock(v2 + 4);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_2284FC228(uint64_t a1, uint64_t a2)
{
  v2 = sub_22855C1DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284FBBC4(v5);
  v6 = sub_22855C1AC();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

void sub_2284FC318()
{
  os_unfair_lock_lock((v0 + 16));
  sub_2284FC368((v0 + 24), v0);

  os_unfair_lock_unlock((v0 + 16));
}

uint64_t sub_2284FC368(uint64_t *a1, uint64_t *a2)
{
  v2 = a1;
  v38 = *a2;
  v3 = *a1;
  v33 = sub_2284FCAC4(*a1);
  v5 = v4;
  if (qword_280DEEBC8 != -1)
  {
    swift_once();
  }

  v6 = sub_22855CABC();
  __swift_project_value_buffer(v6, qword_280DEEBD0);

  v7 = sub_22855CA8C();
  v8 = sub_22855D6AC();

  v39 = v5;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_2283F8938(v33, v39, aBlock);
    _os_log_impl(&dword_2283ED000, v7, v8, "%s: cancelAll()", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AABAD40](v10, -1, -1);
    v11 = v9;
    v5 = v39;
    MEMORY[0x22AABAD40](v11, -1, -1);
  }

  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_7;
    }

LABEL_20:

LABEL_21:
    *v2 = MEMORY[0x277D84F90];
    return result;
  }

  result = sub_22855DB4C();
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (result >= 1)
  {
    v32 = v2;
    v13 = 0;
    v36 = v3 & 0xC000000000000001;
    v37 = result;
    do
    {
      if (v36)
      {
        v19 = MEMORY[0x22AAB9D20](v13, v3);
      }

      else
      {
        v19 = *(v3 + 8 * v13 + 32);
      }

      v20 = v19;

      v21 = v20;
      v22 = sub_22855CA8C();
      v23 = sub_22855D6AC();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        aBlock[0] = v35;
        *v24 = 136315394;
        *(v24 + 4) = sub_2283F8938(v33, v5, aBlock);
        *(v24 + 12) = 2080;
        v34 = v23;
        v25 = v3;
        v26 = v21;
        v27 = [v26 description];
        v28 = sub_22855D1AC();
        v30 = v29;

        v3 = v25;
        v31 = sub_2283F8938(v28, v30, aBlock);

        *(v24 + 14) = v31;
        _os_log_impl(&dword_2283ED000, v22, v34, "%s: cancelAll() progress: %s", v24, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v35, -1, -1);
        MEMORY[0x22AABAD40](v24, -1, -1);
      }

      v15 = [v21 cancellationHandler];
      if (v15)
      {
        v14 = swift_allocObject();
        *(v14 + 16) = v15;
        v15 = sub_2284FD940;
      }

      else
      {
        v14 = 0;
      }

      ++v13;
      sub_22840FE74(v15, v14);
      sub_228416CF8(v15, v14);
      v16 = swift_allocObject();
      v16[2] = v21;
      v16[3] = v15;
      v16[4] = v14;
      v16[5] = v38;
      aBlock[4] = sub_2284FD83C;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_228401F54;
      aBlock[3] = &block_descriptor_16;
      v17 = _Block_copy(aBlock);
      v18 = v21;
      sub_22840FE74(v15, v14);
      sub_22840FE74(sub_2284FD83C, v16);

      [v18 setCancellationHandler_];
      _Block_release(v17);

      [v18 cancel];
      sub_228416CF8(v15, v14);

      v5 = v39;
    }

    while (v37 != v13);

    v2 = v32;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

void sub_2284FC8A4(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (qword_280DEEBC8 != -1)
  {
    swift_once();
  }

  v7 = sub_22855CABC();
  __swift_project_value_buffer(v7, qword_280DEEBD0);
  v8 = a1;
  v9 = sub_22855CA8C();
  v10 = sub_22855D6AC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22[0] = v21;
    *v11 = 136315394;
    v22[1] = a4;
    swift_getMetatypeMetadata();
    v12 = sub_22855D1BC();
    v14 = sub_2283F8938(v12, v13, v22);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    v15 = v8;
    v16 = [v15 description];
    v17 = sub_22855D1AC();
    v19 = v18;

    v20 = sub_2283F8938(v17, v19, v22);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_2283ED000, v9, v10, "[%s]: cancelAll() cancelProgressButHoldOntoItUntilCancellationCompletes(): %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v21, -1, -1);
    MEMORY[0x22AABAD40](v11, -1, -1);
  }

  if (a2)
  {
    a2();
  }

  [v8 setCancellationHandler_];
  _Block_release(0);
}

uint64_t sub_2284FCAC4(uint64_t a1)
{
  sub_22855DC6C();
  MEMORY[0x22AAB92A0](0xD000000000000019, 0x80000002285726A0);
  sub_22855DDDC();
  MEMORY[0x22AAB92A0](32, 0xE100000000000000);
  v2 = sub_2283EF310(0, &qword_280DE9500, 0x277CCAC48);
  v3 = MEMORY[0x22AAB9430](a1, v2);
  MEMORY[0x22AAB92A0](v3);

  MEMORY[0x22AAB92A0](62, 0xE100000000000000);
  return 0;
}

uint64_t CancellableProgressList.__deallocating_deinit()
{
  sub_2284FD480(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t CancellableProgressList.description.getter()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = sub_2284FCAC4(*(v0 + 24));
  os_unfair_lock_unlock((v0 + 16));
  return v1;
}

uint64_t sub_2284FCC5C()
{
  v1 = *v0;
  os_unfair_lock_lock((v1 + 16));
  v2 = sub_2284FCAC4(*(v1 + 24));
  os_unfair_lock_unlock((v1 + 16));
  return v2;
}

uint64_t sub_2284FCCCC(uint64_t a1, char a2)
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

  sub_22855DB4C();
LABEL_9:
  result = sub_22855DCBC();
  *v2 = result;
  return result;
}

uint64_t sub_2284FCD6C(uint64_t (*a1)(id *), uint64_t a2)
{
  v6 = *v2;
  sub_2284FCFD4(a1, a2, *v2);
  if (v3)
  {
    return v4;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_22855DB4C();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v7;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == sub_22855DB4C())
      {
        return v4;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v4;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x22AAB9D20](v10, v6);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v13 = v12;
    v25 = v12;
    v14 = a1(&v25);

    if ((v14 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v4 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v4++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x22AAB9D20](v4, v6);
    v15 = MEMORY[0x22AAB9D20](v10, v6);
  }

  else
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 >= v16)
    {
      goto LABEL_46;
    }

    if (v10 >= v16)
    {
      goto LABEL_47;
    }

    v17 = *(v6 + 32 + 8 * v10);
    v24 = *(v6 + 32 + 8 * v4);
    v15 = v17;
  }

  v18 = v15;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_22847FD78();
    v19 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v19) = 0;
  }

  v20 = v6 & 0xFFFFFFFFFFFFFF8;
  v21 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v18;

  if ((v6 & 0x8000000000000000) == 0 && !v19)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_22847FD78();
  v20 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v20 + 16))
    {
      goto LABEL_44;
    }

    v22 = v20 + 8 * v10;
    v23 = *(v22 + 32);
    *(v22 + 32) = v24;

    *v2 = v6;
    goto LABEL_9;
  }

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
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return sub_22855DB4C();
}

void sub_2284FCFD4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = sub_22855DB4C();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x22AAB9D20](v7, a3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v9 = v8;
    v13 = v8;
    v10 = a1(&v13);

    if (v3 || (v10 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_2284FD0FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = a3;
  v8 = a2;
  v12 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v9 = v6 + 4;
  v7 = &v6[a1 + 4];
  sub_2283EF310(0, a4, a5);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v5, v11);
  v11 = v5 - v11;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    result = v6[2];
    v15 = result - v8;
    if (!__OFSUB__(result, v8))
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
  result = sub_22855DB4C();
  v15 = result - v8;
  if (__OFSUB__(result, v8))
  {
    goto LABEL_23;
  }

LABEL_6:
  v16 = (v7 + 8 * v5);
  v17 = &v9[v8];
  if (v16 != v17 || v16 >= &v17[8 * v15])
  {
    memmove(v16, v17, 8 * v15);
  }

  if (v10)
  {
    result = sub_22855DB4C();
  }

  else
  {
    result = v6[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_24;
  }

  v6[2] = result + v11;
LABEL_17:
  if (v5 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_2284FD218(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  sub_2283FBB5C();
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_2284FD2DC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_228426C4C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_2284FD218(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_2284FD39C(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a4;
    v7 = a3;
    v8 = a2;
    v9 = a1;
    v10 = *v6;
    v11 = *v6 >> 62;
    if (!v11)
    {
      result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_22855DB4C();
  if (result < v8)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v8, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v9 - v8;
  if (__OFSUB__(0, v8 - v9))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v11)
  {
    v14 = sub_22855DB4C();
  }

  else
  {
    v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = __OFADD__(v14, v13);
  result = v14 + v13;
  if (!v15)
  {
    sub_2284FCCCC(result, 1);
    return sub_2284FD0FC(v9, v8, 0, v7, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_2284FD480(uint64_t a1)
{
  sub_2284FD4DC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2284FD4DC(uint64_t a1)
{
  if (!qword_280DE95C0)
  {
    sub_2283EF310(255, &qword_280DE9500, 0x277CCAC48);
    v1 = sub_22855D47C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE95C0);
    }
  }
}

void sub_2284FD600(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2284FD664(uint64_t a1, uint64_t a2, uint64_t a3)
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
  type metadata accessor for HealthPlatformContextProvider.Context(0);
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
  result = sub_22855DB4C();
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
    result = sub_22855DB4C();
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

uint64_t sub_2284FD764(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_22855DB4C();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_22855DB4C();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_2284FCCCC(result, 1);

  return sub_2284FD664(v5, v3, 0);
}

uint64_t sub_2284FD848(uint64_t a1)
{
  sub_2284FD600(0, &qword_280DECD68, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2284FD8F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *HealthExperienceStoreOracle.init(healthExperienceStore:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = sub_2284FEF7C(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

void sub_2284FDA38(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_protectedState);
  os_unfair_lock_lock(v3 + 16);
  sub_2284FF204(&v3[6], a1);

  os_unfair_lock_unlock(v3 + 16);
}

id sub_2284FDA94()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v3 = sub_22855CABC();
  __swift_project_value_buffer(v3, qword_280DEEC98);
  v4 = sub_22855CA8C();
  v5 = sub_22855D66C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    v15 = ObjectType;
    *v6 = 136315138;
    swift_getMetatypeMetadata();
    v8 = sub_22855D1BC();
    v10 = sub_2283F8938(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2283ED000, v4, v5, "[%s] notifyClients()", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AABAD40](v7, -1, -1);
    MEMORY[0x22AABAD40](v6, -1, -1);
  }

  v11 = *(v1 + OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_notificationCenter);
  if (qword_280DE93D8 != -1)
  {
    v13 = *(v1 + OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_notificationCenter);
    swift_once();
    v11 = v13;
  }

  return [v11 postNotificationName:qword_280DE93E0 object:{v1, v14, v15}];
}

uint64_t sub_2284FDC58(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_2284FF204(a1 + 8, v49);
  v5 = v49[3];
  sub_2283F47F8(v49, sub_2284FF268);
  if (v5)
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v6 = sub_22855CABC();
    __swift_project_value_buffer(v6, qword_280DEEC98);
    v7 = sub_22855CA8C();
    v8 = sub_22855D66C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v48[0] = v10;
      *v9 = 136315138;
      v49[0] = ObjectType;
      swift_getMetatypeMetadata();
      v11 = sub_22855D1BC();
      v13 = sub_2283F8938(v11, v12, v48);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_2283ED000, v7, v8, "[%s] attemptToInitializeStore(state:) but we have a health store - dropping", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x22AABAD40](v10, -1, -1);
      MEMORY[0x22AABAD40](v9, -1, -1);
    }

    return 0;
  }

  else
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v14 = sub_22855CABC();
    __swift_project_value_buffer(v14, qword_280DEEC98);
    v15 = sub_22855CA8C();
    v16 = sub_22855D66C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v48[0] = v18;
      *v17 = 136315138;
      v49[0] = ObjectType;
      swift_getMetatypeMetadata();
      v19 = sub_22855D1BC();
      v21 = sub_2283F8938(v19, v20, v48);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_2283ED000, v15, v16, "[%s] attemptToInitializeStore(state:)", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x22AABAD40](v18, -1, -1);
      MEMORY[0x22AABAD40](v17, -1, -1);
    }

    v22 = &v2[OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_healthExperienceStore];
    v23 = *&v2[OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_healthExperienceStore + 24];
    v24 = *&v2[OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_healthExperienceStore + 32];
    __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_healthExperienceStore], v23);
    (*(v24 + 48))(v23, v24);
    v26 = v2;
    v27 = sub_22855CA8C();
    v28 = sub_22855D66C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48[0] = v47;
      *v29 = 136315394;
      v49[0] = ObjectType;
      swift_getMetatypeMetadata();
      v30 = sub_22855D1BC();
      v32 = sub_2283F8938(v30, v31, v48);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2080;
      sub_2283F9B10(v22, v49);
      sub_2283F9B94(0, qword_280DECAA8, &protocol descriptor for HealthExperienceStore);
      v33 = sub_22855D1BC();
      v35 = sub_2283F8938(v33, v34, v48);

      *(v29 + 14) = v35;
      _os_log_impl(&dword_2283ED000, v27, v28, "[%s] calling performCacheInvalidationIfNecessary with %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v47, -1, -1);
      MEMORY[0x22AABAD40](v29, -1, -1);
    }

    (*((*MEMORY[0x277D85000] & *v26) + 0xB8))(v22);
    v36 = v26;
    v37 = sub_22855CA8C();
    v38 = sub_22855D66C();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v48[0] = v40;
      *v39 = 136315394;
      v49[0] = ObjectType;
      swift_getMetatypeMetadata();
      v41 = sub_22855D1BC();
      v43 = sub_2283F8938(v41, v42, v48);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2080;
      sub_2283F9B10(v22, v49);
      sub_2283F9B94(0, qword_280DECAA8, &protocol descriptor for HealthExperienceStore);
      v44 = sub_22855D1BC();
      v46 = sub_2283F8938(v44, v45, v48);

      *(v39 + 14) = v46;
      _os_log_impl(&dword_2283ED000, v37, v38, "[%s] attemptToInitializeStore(shouldListen:): initPersistentContainer() success %s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v40, -1, -1);
      MEMORY[0x22AABAD40](v39, -1, -1);
    }

    sub_2283F47F8(a1 + 8, sub_2284FF268);
    sub_2283F9B10(v22, a1 + 8);
    return 1;
  }
}

void sub_2284FE3A8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v3 = sub_22855CABC();
  __swift_project_value_buffer(v3, qword_280DEEC98);
  v4 = sub_22855CA8C();
  v5 = sub_22855D66C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v14 = ObjectType;
    swift_getMetatypeMetadata();
    v8 = sub_22855D1BC();
    v10 = sub_2283F8938(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2283ED000, v4, v5, "[%s] dataNowAccessible() attempting to initialize store", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AABAD40](v7, -1, -1);
    MEMORY[0x22AABAD40](v6, -1, -1);
  }

  v11 = *(v1 + OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_protectedState);
  MEMORY[0x28223BE20](v12);
  os_unfair_lock_lock(v11 + 16);
  sub_2284FF514(&v11[4], &v14);
  os_unfair_lock_unlock(v11 + 16);
  if (v14 == 1)
  {
    sub_2284FDA94();
  }
}

uint64_t sub_2284FE57C(uint64_t *a1)
{
  v3 = sub_22855C3FC();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*a1)
  {
    (*((*MEMORY[0x277D85000] & *v1) + 0xA0))(result);
    sub_22855C41C();
    (*(v4 + 104))(v7, *MEMORY[0x277D112D0], v3);
    v11[1] = sub_22855C40C();
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    *(v9 + 16) = sub_2284FF804;
    *(v9 + 24) = v8;
    sub_2284FF80C(qword_280DED498, MEMORY[0x277D112E8], MEMORY[0x277D112E0]);
    v10 = sub_22855CF8C();

    *a1 = v10;
  }

  return result;
}

void sub_2284FE780()
{
  ObjectType = swift_getObjectType();
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v1 = sub_22855CABC();
  __swift_project_value_buffer(v1, qword_280DEEC98);
  v2 = sub_22855CA8C();
  v3 = sub_22855D69C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9[0] = v5;
    v9[1] = ObjectType;
    *v4 = 136315138;
    swift_getMetatypeMetadata();
    v6 = sub_22855D1BC();
    v8 = sub_2283F8938(v6, v7, v9);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_2283ED000, v2, v3, "[%s] handleUnrecoverableError() exiting", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x22AABAD40](v5, -1, -1);
    MEMORY[0x22AABAD40](v4, -1, -1);
  }

  exit(0);
}

uint64_t Notification.oracle.getter()
{
  sub_22855BE6C();
  if (v4[3])
  {
    type metadata accessor for HealthExperienceStoreOracle();
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_2283F47F8(v4, sub_228400E48);
  }

  v4[0] = 0;
  v4[1] = 0xE000000000000000;
  sub_22855DC6C();
  MEMORY[0x22AAB92A0](0xD000000000000062, 0x8000000228572700);
  sub_22855BE6C();
  sub_228400E48();
  v1 = sub_22855D1BC();
  MEMORY[0x22AAB92A0](v1);

  MEMORY[0x22AAB92A0](32, 0xE100000000000000);
  sub_22855BE9C();
  sub_2284FF80C(&qword_27D840440, MEMORY[0x277CC8900], MEMORY[0x277CC8910]);
  v2 = sub_22855E11C();
  MEMORY[0x22AAB92A0](v2);

  result = sub_22855DEDC();
  __break(1u);
  return result;
}

char *HealthExperienceStoreOracle.__allocating_init(healthExperienceStore:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_mutable_project_boxed_opaque_existential_1(a1, v4);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = sub_2284FEF7C(v8, v3, v4, v5);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v10;
}

uint64_t sub_2284FEB7C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2284FDC58(a1);
  *a2 = result & 1;
  return result;
}

void sub_2284FEBBC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_2284FE3A8();
  }
}

id HealthExperienceStoreOracle.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HealthExperienceStoreOracle.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HealthExperienceStoreOracle();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t HealthExperienceStoreOracle.description.getter()
{
  v5[1] = 0xE000000000000000;
  sub_22855DC6C();
  v6 = 0;
  v7 = 0xE000000000000000;
  MEMORY[0x22AAB92A0](60, 0xE100000000000000);
  swift_getObjectType();
  sub_2284FF578();
  v1 = sub_22855D1BC();
  MEMORY[0x22AAB92A0](v1);

  MEMORY[0x22AAB92A0](32, 0xE100000000000000);
  v5[0] = v0;
  sub_22855DDDC();
  MEMORY[0x22AAB92A0](0xD00000000000001ELL, 0x80000002285727A0);
  v2 = *(v0 + OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_protectedState);
  os_unfair_lock_lock(v2 + 16);
  sub_2284FF204(&v2[6], v5);
  os_unfair_lock_unlock(v2 + 16);
  sub_2284FF268(0);
  v3 = sub_22855D1BC();
  MEMORY[0x22AAB92A0](v3);

  MEMORY[0x22AAB92A0](62, 0xE100000000000000);
  return v6;
}

uint64_t sub_2284FEEE8()
{
  result = sub_22855D17C();
  qword_280DE93E0 = result;
  return result;
}

id static NSNotificationName.HealthExperienceStoreOracleHasStore.getter()
{
  if (qword_280DE93D8 != -1)
  {
    swift_once();
  }

  v1 = qword_280DE93E0;

  return v1;
}

char *sub_2284FEF7C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v27[3] = a3;
  v27[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v10 = OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_notificationCenter;
  *&a2[v10] = [objc_allocWithZone(MEMORY[0x277CCAB98]) init];
  v11 = OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_protectedState;
  sub_228491194(0);
  v12 = swift_allocObject();
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0;
  *&a2[v11] = v12;
  sub_2283F9B10(v27, &a2[OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_healthExperienceStore]);
  v26.receiver = a2;
  v26.super_class = type metadata accessor for HealthExperienceStoreOracle();
  v13 = objc_msgSendSuper2(&v26, sel_init);
  v14 = *&v13[OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_protectedState];
  v15 = v13;
  os_unfair_lock_lock(v14 + 16);
  sub_2284FF8B8(&v14[4], &v28);
  os_unfair_lock_unlock(v14 + 16);
  if (v28 == 1)
  {
    sub_2284FDA94();
  }

  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v16 = sub_22855CABC();
  __swift_project_value_buffer(v16, qword_280DEEC98);
  v17 = sub_22855CA8C();
  v18 = sub_22855D66C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25 = v20;
    *v19 = 136315138;
    v28 = ObjectType;
    swift_getMetatypeMetadata();
    v21 = sub_22855D1BC();
    v23 = sub_2283F8938(v21, v22, &v25);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_2283ED000, v17, v18, "[%s] init()", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x22AABAD40](v20, -1, -1);
    MEMORY[0x22AABAD40](v19, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0(v27);
  return v15;
}

uint64_t sub_2284FF204(uint64_t a1, uint64_t a2)
{
  sub_2284FF268(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2284FF268(uint64_t a1)
{
  if (!qword_280DECAA0)
  {
    sub_2283F9B94(255, qword_280DECAA8, &protocol descriptor for HealthExperienceStore);
    v1 = sub_22855DA2C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DECAA0);
    }
  }
}

id sub_2284FF2D0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v5 = sub_22855CABC();
  __swift_project_value_buffer(v5, qword_280DEEC98);
  swift_unknownObjectRetain();
  v6 = sub_22855CA8C();
  v7 = sub_22855D66C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    v20 = ObjectType;
    *v8 = 136315394;
    swift_getMetatypeMetadata();
    v10 = sub_22855D1BC();
    v12 = sub_2283F8938(v10, v11, &v19);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v20 = a1;
    sub_2284FF854();
    swift_unknownObjectRetain();
    v13 = sub_22855D1BC();
    v15 = sub_2283F8938(v13, v14, &v19);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_2283ED000, v6, v7, "[%s] register(observer:): %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v9, -1, -1);
    MEMORY[0x22AABAD40](v8, -1, -1);
  }

  v16 = *(a2 + OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_notificationCenter);
  if (qword_280DE93D8 != -1)
  {
    v18 = *(a2 + OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_notificationCenter);
    swift_once();
    v16 = v18;
  }

  return [v16 addObserver:a1 selector:v19 name:? object:?];
}

uint64_t sub_2284FF514@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2284FDC58(a1);
  *a2 = result & 1;
  return result;
}

unint64_t sub_2284FF578()
{
  result = qword_280DECA98;
  if (!qword_280DECA98)
  {
    type metadata accessor for HealthExperienceStoreOracle();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280DECA98);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14HealthPlatform0A15ExperienceStore_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2284FF738(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2284FF794(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2284FF80C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2284FF854()
{
  result = qword_280DEC398[0];
  if (!qword_280DEC398[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_280DEC398);
  }

  return result;
}

id OrchestrationAnchor.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id OrchestrationAnchor.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for OrchestrationAnchor();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id OrchestrationAnchor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OrchestrationAnchor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FeedItemContextEnvironment.description.getter(char a1)
{
  if (a1)
  {
    return 0x65746E4972657375;
  }

  else
  {
    return 0x756F72676B636162;
  }
}

uint64_t sub_2284FFA98(uint64_t a1)
{
  v2 = sub_228500054();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2284FFAD4(uint64_t a1)
{
  v2 = sub_228500054();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2284FFB10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL;
  if (v6 || (sub_22855E15C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746E4972657375 && a2 == 0xEF65766974636172)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22855E15C();

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

uint64_t sub_2284FFBFC(uint64_t a1)
{
  v2 = sub_2285000A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2284FFC38(uint64_t a1)
{
  v2 = sub_2285000A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2284FFC74(uint64_t a1)
{
  v2 = sub_228500000();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2284FFCB0(uint64_t a1)
{
  v2 = sub_228500000();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedItemContextEnvironment.encode(to:)(void *a1, int a2)
{
  v21 = a2;
  v3 = MEMORY[0x277D84538];
  sub_228501408(0, &qword_27D840458, sub_228500000, &type metadata for FeedItemContextEnvironment.UserInteractiveCodingKeys, MEMORY[0x277D84538]);
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  sub_228501408(0, &qword_27D840468, sub_228500054, &type metadata for FeedItemContextEnvironment.BackgroundCodingKeys, v3);
  v17 = *(v7 - 8);
  v18 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  sub_228501408(0, &qword_27D840478, sub_2285000A8, &type metadata for FeedItemContextEnvironment.CodingKeys, v3);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v16 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2285000A8();
  sub_22855E31C();
  if (v21)
  {
    v23 = 1;
    sub_228500000();
    sub_22855E06C();
    (*(v19 + 8))(v6, v20);
  }

  else
  {
    v22 = 0;
    sub_228500054();
    sub_22855E06C();
    (*(v17 + 8))(v9, v18);
  }

  return (*(v12 + 8))(v14, v11);
}

unint64_t sub_228500000()
{
  result = qword_27D840460;
  if (!qword_27D840460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840460);
  }

  return result;
}

unint64_t sub_228500054()
{
  result = qword_27D840470;
  if (!qword_27D840470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840470);
  }

  return result;
}

unint64_t sub_2285000A8()
{
  result = qword_27D840480;
  if (!qword_27D840480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840480);
  }

  return result;
}

uint64_t FeedItemContextEnvironment.hashValue.getter(char a1)
{
  sub_22855E22C();
  MEMORY[0x22AABA2B0](a1 & 1);
  return sub_22855E27C();
}

uint64_t sub_228500188@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_228500604(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t FeedItemContext.previousFeedItems(uniqueIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2285012F8(0, &qword_280DEE7A0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228560580;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v11 = sub_22845FFC8(inited);
  swift_setDeallocating();
  sub_2284F1618(inited + 32);
  v12 = (*(a4 + 96))(v11, 1, 0, 0, a3, a4);

  v13 = *(v12 + 16);
  if (v13 > 1)
  {
    sub_22855DC6C();
    MEMORY[0x22AAB92A0](0xD000000000000013, 0x80000002285728D0);
    v18 = type metadata accessor for PluginFeedItem(0);
    v19 = MEMORY[0x22AAB9430](v12, v18);
    MEMORY[0x22AAB92A0](v19);

    MEMORY[0x22AAB92A0](0xD000000000000038, 0x80000002285728F0);
    MEMORY[0x22AAB92A0](a1, a2);
    result = sub_22855DEDC();
    __break(1u);
  }

  else if (v13)
  {
    v14 = type metadata accessor for PluginFeedItem(0);
    v15 = *(v14 - 8);
    sub_22844BBC4(v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), a5);

    return (*(v15 + 56))(a5, 0, 1, v14);
  }

  else
  {

    v17 = type metadata accessor for PluginFeedItem(0);
    return (*(*(v17 - 8) + 56))(a5, 1, 1, v17);
  }

  return result;
}

id FeedItemContext.sourceProfile.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))(a1);
  v3 = [v2 profileIdentifier];

  return v3;
}

uint64_t sub_228500604(void *a1)
{
  v2 = MEMORY[0x277D844C8];
  sub_228501408(0, &qword_27D8404E0, sub_228500000, &type metadata for FeedItemContextEnvironment.UserInteractiveCodingKeys, MEMORY[0x277D844C8]);
  v28 = v3;
  v31 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v30 = &v26 - v4;
  sub_228501408(0, &qword_27D8404E8, sub_228500054, &type metadata for FeedItemContextEnvironment.BackgroundCodingKeys, v2);
  v6 = v5;
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  sub_228501408(0, &qword_27D8404F0, sub_2285000A8, &type metadata for FeedItemContextEnvironment.CodingKeys, v2);
  v10 = v9;
  v32 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2285000A8();
  v13 = v33;
  sub_22855E30C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v27 = v6;
  v15 = v29;
  v14 = v30;
  v16 = v31;
  v33 = a1;
  v17 = sub_22855E04C();
  v18 = (2 * *(v17 + 16)) | 1;
  v34 = v17;
  v35 = v17 + 32;
  v36 = 0;
  v37 = v18;
  v19 = sub_2284E2D64();
  if (v19 == 2 || v36 != v37 >> 1)
  {
    v22 = sub_22855DCEC();
    swift_allocError();
    v24 = v23;
    sub_2284E7D94(0);
    *v24 = &type metadata for FeedItemContextEnvironment;
    sub_22855DFDC();
    sub_22855DCCC();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
    swift_willThrow();
    (*(v32 + 8))(v12, v10);
    swift_unknownObjectRelease();
    a1 = v33;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v20 = v19;
  if (v19)
  {
    v38 = 1;
    sub_228500000();
    sub_22855DFCC();
    v21 = v32;
    (*(v16 + 8))(v14, v28);
  }

  else
  {
    v38 = 0;
    sub_228500054();
    sub_22855DFCC();
    v21 = v32;
    (*(v15 + 8))(v8, v27);
  }

  (*(v21 + 8))(v12, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v33);
  return v20 & 1;
}

uint64_t _s14HealthPlatform15FeedItemContextPAAE20displayNamePublisher7Combine03AnyH0VyAA014ProfileDisplayG0Vs5Error_pGvg_0()
{
  sub_2285012F8(0, &qword_27D8404C8, &type metadata for ProfileDisplayName, MEMORY[0x277CBCE78]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = v12 - v3;
  sub_228501348(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = 0;
  v12[2] = 0xE000000000000000;
  v12[3] = 0;
  v12[4] = 0xE000000000000000;
  v12[5] = MEMORY[0x277D84F90];
  sub_22855CDCC();
  sub_228418D44();
  sub_22855CD9C();
  (*(v2 + 8))(v4, v1);
  sub_2285013B0();
  v10 = sub_22855CE6C();
  (*(v7 + 8))(v9, v6);
  return v10;
}

unint64_t sub_228500CB0()
{
  result = qword_27D840488;
  if (!qword_27D840488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840488);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14HealthPlatform21FeedItemContextChangeO(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 <= 0x9F)
  {
    return v1 >> 5;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_228500D30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3B && *(a1 + 33))
  {
    return (*a1 + 59);
  }

  v3 = ((*(a1 + 32) >> 5) & 0xFFFFFFC7 | (8 * ((*(a1 + 32) >> 2) & 7))) ^ 0x3F;
  if (v3 >= 0x3A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_228500D84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3A)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 59;
    *(result + 8) = 0;
    if (a3 >= 0x3B)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3B)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 4 * (((-a2 >> 3) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_228500DF0(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    *(result + 32) = *(result + 32) & 3 | (32 * a2);
  }

  else
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = -96;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14HealthPlatform26FeedItemContextChangeErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_228500E4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_228500E94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_228500ED8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t dispatch thunk of FeedItemContext.commit(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 80))(a1, a2);
}

{
  return (*(a3 + 88))(a1, a2);
}

unint64_t sub_228501094()
{
  result = qword_27D840490;
  if (!qword_27D840490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840490);
  }

  return result;
}

unint64_t sub_2285010EC()
{
  result = qword_27D840498;
  if (!qword_27D840498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840498);
  }

  return result;
}

unint64_t sub_228501144()
{
  result = qword_27D8404A0;
  if (!qword_27D8404A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8404A0);
  }

  return result;
}

unint64_t sub_22850119C()
{
  result = qword_27D8404A8;
  if (!qword_27D8404A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8404A8);
  }

  return result;
}

unint64_t sub_2285011F4()
{
  result = qword_27D8404B0;
  if (!qword_27D8404B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8404B0);
  }

  return result;
}

unint64_t sub_22850124C()
{
  result = qword_27D8404B8;
  if (!qword_27D8404B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8404B8);
  }

  return result;
}

unint64_t sub_2285012A4()
{
  result = qword_27D8404C0;
  if (!qword_27D8404C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8404C0);
  }

  return result;
}

void sub_2285012F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_228501348(uint64_t a1)
{
  if (!qword_27D8404D0)
  {
    sub_228418D44();
    v1 = sub_22855E2EC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8404D0);
    }
  }
}

unint64_t sub_2285013B0()
{
  result = qword_27D8404D8;
  if (!qword_27D8404D8)
  {
    sub_228501348(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8404D8);
  }

  return result;
}

void sub_228501408(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t AnchoredChangeSet.changes.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void *AnchoredChangeSet.newAnchor.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

HealthPlatform::AnchoredChangeSet __swiftcall AnchoredChangeSet.init(changes:newAnchor:)(Swift::OpaquePointer changes, HKQueryAnchor_optional newAnchor)
{
  v2->_rawValue = changes._rawValue;
  v2[1]._rawValue = newAnchor.value.super.isa;
  result.newAnchor = newAnchor;
  result.changes = changes;
  return result;
}

double AnchoredDatabaseState.anchoredChangeSet.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  v3 = v2;

  return result;
}

void *AnchoredDatabaseState.init(anchoredChangeSet:dateRanges:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = result[1];
  *a3 = *result;
  a3[1] = v3;
  a3[2] = a2;
  return result;
}

void *AnchoredTypeChangeSet.change.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *AnchoredTypeChangeSet.newAnchor.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t AnchoredTypeChangeSet.init(hkType:change:newAnchor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

id AnchoredTypeState.anchoredTypeChangeSet.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v7 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v7;
  a1[2] = v3;
  v4 = v3;
  v5 = v2;

  return v7;
}

__n128 AnchoredTypeState.anchoredTypeChangeSet.setter(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);

  *v1 = v3;
  result = *(a1 + 1);
  *(v1 + 8) = result;
  return result;
}

uint64_t AnchoredTypeState.dataPresentDateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AnchoredTypeState(0) + 20);

  return sub_228501D28(v3, a1);
}

uint64_t AnchoredTypeState.dataPresentDateInterval.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AnchoredTypeState(0) + 20);

  return sub_228501DE4(a1, v3);
}

uint64_t AnchoredTypeState.init(anchoredTypeChangeSet:dataPresentDateInterval:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = *a1;
  v5 = *(a1 + 2);
  v6 = *(type metadata accessor for AnchoredTypeState(0) + 20);
  v7 = sub_22855BE1C();
  (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  *a3 = v9;
  *(a3 + 16) = v5;

  return sub_228501DE4(a2, a3 + v6);
}

uint64_t _s14HealthPlatform17AnchoredChangeSetV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (sub_22843FD30(*a1, *a2))
  {
    if (v2)
    {
      if (v3)
      {
        sub_2283EF310(0, &qword_280DE94D0, 0x277CCD840);
        v4 = v3;
        v5 = v2;
        v6 = sub_22855D9AC();

        if (v6)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _s14HealthPlatform21AnchoredTypeChangeSetV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
  if ((sub_22855D9AC() & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    if (!v4)
    {
      return 0;
    }

    sub_2283EF310(0, &qword_280DE93E8, 0x277CCD8E0);
    v6 = v4;
    v7 = v2;
    v8 = sub_22855D9AC();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (v3)
  {
    if (v5)
    {
      sub_2283EF310(0, &qword_280DE94D0, 0x277CCD840);
      v9 = v5;
      v10 = v3;
      v11 = sub_22855D9AC();

      if (v11)
      {
        return 1;
      }
    }
  }

  else if (!v5)
  {
    return 1;
  }

  return 0;
}

uint64_t _s14HealthPlatform21AnchoredDatabaseStateV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = v6;

  v9 = v3;

  if ((sub_22843FD30(v2, v5) & 1) == 0)
  {
    goto LABEL_6;
  }

  if (v3)
  {
    if (v6)
    {
      sub_2283EF310(0, &qword_280DE94D0, 0x277CCD840);
      v10 = v8;
      v11 = v9;
      v12 = sub_22855D9AC();

      if (v12)
      {
        goto LABEL_9;
      }

      return 0;
    }

LABEL_6:

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_9:

  return sub_22843F83C(v4, v7);
}

uint64_t type metadata accessor for AnchoredTypeState(uint64_t a1)
{
  result = qword_280DEE648;
  if (!qword_280DEE648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228501D28(uint64_t a1, uint64_t a2)
{
  sub_228501D8C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_228501D8C(uint64_t a1)
{
  if (!qword_280DEE798)
  {
    sub_22855BE1C();
    v1 = sub_22855DA2C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DEE798);
    }
  }
}

uint64_t sub_228501DE4(uint64_t a1, uint64_t a2)
{
  sub_228501D8C(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL _s14HealthPlatform17AnchoredTypeStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22855BE1C();
  v40 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v38 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228501D8C(0);
  MEMORY[0x28223BE20](v6 - 8);
  v39 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22850227C(0);
  v9 = v8;
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v44 = *a1;
  v12 = v44;
  v45 = v13;
  v46 = v14;
  v16 = *(a2 + 8);
  v17 = *(a2 + 16);
  v41 = *a2;
  v15 = v41;
  v42 = v16;
  v43 = v17;
  v18 = v17;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v23 = v16;
  LOBYTE(v12) = _s14HealthPlatform21AnchoredTypeChangeSetV2eeoiySbAC_ACtFZ_0(&v44, &v41);
  v24 = v42;
  v25 = v43;

  v26 = v45;
  v27 = v46;

  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v28 = *(type metadata accessor for AnchoredTypeState(0) + 20);
  v29 = *(v9 + 48);
  sub_228501D28(a1 + v28, v11);
  sub_228501D28(a2 + v28, &v11[v29]);
  v30 = v40;
  v31 = *(v40 + 48);
  if (v31(v11, 1, v4) == 1)
  {
    if (v31(&v11[v29], 1, v4) == 1)
    {
      sub_2285022E0(v11, sub_228501D8C);
      return 1;
    }

    goto LABEL_7;
  }

  v32 = v39;
  sub_228501D28(v11, v39);
  if (v31(&v11[v29], 1, v4) == 1)
  {
    (*(v30 + 8))(v32, v4);
LABEL_7:
    sub_2285022E0(v11, sub_22850227C);
    return 0;
  }

  v34 = v38;
  (*(v30 + 32))(v38, &v11[v29], v4);
  sub_228502340();
  v35 = sub_22855D16C();
  v36 = *(v30 + 8);
  v36(v34, v4);
  v36(v32, v4);
  sub_2285022E0(v11, sub_228501D8C);
  return (v35 & 1) != 0;
}

void sub_228502200(uint64_t a1)
{
  sub_228501D8C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_22850227C(uint64_t a1)
{
  if (!qword_27D8404F8)
  {
    sub_228501D8C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D8404F8);
    }
  }
}

uint64_t sub_2285022E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_228502340()
{
  result = qword_27D83F598;
  if (!qword_27D83F598)
  {
    sub_22855BE1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F598);
  }

  return result;
}

void SharableModelReference.asPluginFeedItemSharableModelReference()(uint64_t *a1@<X8>)
{
  v3 = [v1 identifier];
  v4 = sub_22855D1AC();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

id SharableModelReference.__allocating_init(context:pluginSharableModelReference:)(void *a1, uint64_t *a2)
{
  v4 = objc_opt_self();
  v5 = sub_22855D17C();
  v6 = [v4 entityForName:v5 inManagedObjectContext:a1];

  if (v6)
  {
    v7 = [objc_allocWithZone(v2) initWithEntity:v6 insertIntoManagedObjectContext:a1];
    v8 = sub_22855D17C();

    [v7 setIdentifier_];

    return v7;
  }

  else
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

void *static SharableModelReference.findOrCreate(pluginSharableModelReference:in:for:)(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = *a1;
  v8 = a1[1];
  sub_228439BBC();
  sub_22840A70C(0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_228561250;
  v10 = MEMORY[0x277D837D0];
  *(v9 + 56) = MEMORY[0x277D837D0];
  v11 = sub_22840A7C8();
  *(v9 + 32) = 0x696669746E656469;
  *(v9 + 40) = 0xEA00000000007265;
  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 64) = v11;
  *(v9 + 72) = v7;
  *(v9 + 80) = v8;
  *(v9 + 136) = v10;
  *(v9 + 144) = v11;
  *(v9 + 112) = 0x6D65744964656566;
  *(v9 + 120) = 0xE800000000000000;
  *(v9 + 176) = type metadata accessor for FeedItem();
  *(v9 + 184) = sub_2285026F4();
  *(v9 + 152) = a3;

  v12 = a3;
  v13 = sub_22855D62C();
  v14 = static NSManagedObjectUnique<>.findOrCreate(context:uniquenessPredicate:)(a2, v13, v4, &protocol witness table for SharableModelReference);
  v15 = sub_22855D17C();
  [v14 setIdentifier_];

  [v14 setFeedItem_];
  return v14;
}

unint64_t sub_2285026F4()
{
  result = qword_280DE9FC8;
  if (!qword_280DE9FC8)
  {
    type metadata accessor for FeedItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE9FC8);
  }

  return result;
}

id static SharableModelReference.fetchRequest(predicate:)(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v3 = sub_22855D17C();
  v4 = [v2 initWithEntityName_];

  [v4 setPredicate_];
  return v4;
}

double FeedItemGenerator.domain.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = v2;

  return result;
}

void *FeedItemGenerator.feedItemPredicate.getter(__n128 a1)
{
  v2 = *(v1 + 40);
  sub_22845063C(v2, *(v1 + 48), *(v1 + 56), *(v1 + 64), a1);
  return v2;
}

uint64_t FeedItemGenerator.init<A>(context:domain:feedItemPredicate:feedItemsPublisher:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v55 = a7;
  v56 = a1;
  v50 = a6;
  v49 = a5;
  v15 = type metadata accessor for GeneratorContext(0);
  v52 = *(v15 - 8);
  v16 = *(v52 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v48 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a8;
  v17 = sub_22855CBAC();
  v54 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  sub_2284AE260(255, &qword_280DEE3D8, &type metadata for FeedItemContextChange, MEMORY[0x277D83940]);
  v47 = v20;
  WitnessTable = swift_getWitnessTable();
  v51 = sub_22855CB6C();
  v53 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v22 = &v41 - v21;
  v23 = *(a2 + 24);
  *a9 = *a2;
  v24 = *(a2 + 8);
  *(a9 + 8) = v24;
  *(a9 + 24) = v23;
  v25 = a3;
  v42 = a3;
  v43 = a4;
  *(a9 + 40) = a3;
  *(a9 + 48) = a4;
  v26 = a4;
  v27 = v49;
  *(a9 + 56) = v49;
  LOBYTE(a3) = v50;
  *(a9 + 64) = v50;
  sub_22845063C(v25, v26, v27, a3, v24);
  sub_22855CEDC();
  v45 = type metadata accessor for GeneratorContext;
  v28 = v48;
  sub_22850554C(v56, v48, type metadata accessor for GeneratorContext);
  v29 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v30 = (v16 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  sub_228505614(v28, v31 + v29, type metadata accessor for GeneratorContext);
  v32 = v31 + v30;
  v34 = v42;
  v33 = v43;
  *v32 = v42;
  *(v32 + 8) = v33;
  v35 = v27;
  *(v32 + 16) = v27;
  LOBYTE(v27) = a3;
  *(v32 + 24) = a3;
  v36 = v33;
  sub_22845063C(v34, v33, v35, v27, v37);
  sub_22855CE8C();

  (*(v54 + 8))(v19, v17);
  v38 = v51;
  swift_getWitnessTable();
  v39 = sub_22855CE6C();
  sub_228451F14(v34, v36, v35, v27);
  (*(*(v44 - 8) + 8))(v55);
  sub_2285055B4(v56, v45);
  result = (*(v53 + 8))(v22, v38);
  *(a9 + 32) = v39;
  return result;
}

id sub_228502CD4@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, void *a3@<X3>, void *a4@<X4>, char a5@<W5>, uint64_t *a6@<X8>)
{
  v11 = *a1;
  sub_2284AE260(0, &qword_280DEE3B0, &type metadata for FeedItemContextChange, MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_228560580;
  *(v12 + 32) = v11;
  *(v12 + 40) = a2;
  *(v12 + 48) = a3;
  *(v12 + 56) = a4;
  *(v12 + 64) = a5 | 0x80;
  *a6 = v12;

  return sub_22845063C(a2, a3, a4, a5, v13);
}

__n128 FeedItemGenerator.init<A>(context:domain:feedItemIdentifier:feedItemPublisher:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X8>)
{
  v36 = a5;
  v34 = a4;
  v33 = a3;
  v37 = a1;
  v35 = a8;
  v10 = type metadata accessor for GeneratorContext(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v12;
  sub_2285030FC(255);
  v32 = a6;
  v13 = sub_22855CB6C();
  v31 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  v19 = *a2;
  v20 = *(a2 + 24);
  v29 = *(a2 + 1);
  sub_22855CE8C();
  sub_22850554C(v37, v12, type metadata accessor for GeneratorContext);
  v38 = v19;
  v39 = v29;
  v40 = v20;
  sub_2284AE260(0, &qword_280DEE7A0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228560580;
  *(inited + 32) = v33;
  v22 = inited + 32;
  *(inited + 40) = v34;
  v23 = sub_22845FFC8(inited);
  swift_setDeallocating();
  sub_2284F1618(v22);
  v24 = v31;
  (*(v31 + 16))(v16, v18, v13);
  WitnessTable = swift_getWitnessTable();
  FeedItemGenerator.init<A>(context:domain:feedItemPredicate:feedItemsPublisher:)(v30, &v38, v23, 1, 0, 0, v16, v13, v41, WitnessTable);
  (*(*(v32 - 8) + 8))(v36);
  sub_2285055B4(v37, type metadata accessor for GeneratorContext);
  (*(v24 + 8))(v18, v13);
  v26 = v41[3];
  v27 = v35;
  *(v35 + 32) = v41[2];
  *(v27 + 48) = v26;
  *(v27 + 64) = v42;
  result = v41[1];
  *v27 = v41[0];
  *(v27 + 16) = result;
  return result;
}

void sub_228503130(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PluginFeedItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284FB20C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22850554C(a1, v10, sub_2284FB20C);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_228505614(v10, v7, type metadata accessor for PluginFeedItem);
    sub_228504C90(0, &qword_280DEE3B8, type metadata accessor for PluginFeedItem, MEMORY[0x277D84560]);
    v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_228560580;
    sub_228505614(v7, v11 + v12, type metadata accessor for PluginFeedItem);
  }

  *a2 = v11;
}

double FeedItemGenerator.init(context:domain:feedItemPredicate:feedItemsProvider:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v63 = a6;
  v62 = a5;
  v55 = a4;
  v76 = a1;
  v66 = a9;
  sub_228504B34(0);
  v15 = *(v14 - 8);
  v69 = v14;
  v70 = v15;
  MEMORY[0x28223BE20](v14);
  v58 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228504D3C(0);
  v18 = *(v17 - 8);
  v71 = v17;
  v72 = v18;
  MEMORY[0x28223BE20](v17);
  v65 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for GeneratorContext(0);
  v57 = *(v20 - 8);
  v21 = *(v57 + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v56 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v74 = &v54 - v23;
  sub_228504BC8(0);
  v75 = v24;
  v59 = *(v24 - 8);
  v25 = v59;
  v26 = MEMORY[0x28223BE20](v24);
  v73 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v54 - v28;
  v67 = *a2;
  v68 = *(a2 + 24);
  v30 = swift_allocObject();
  *(v30 + 16) = a7;
  *(v30 + 24) = a8;
  v60 = a8;
  sub_228504C5C(0);
  sub_228504CF4(&qword_280DE9840, sub_228504C5C, MEMORY[0x277CBCE80]);

  v64 = *(a2 + 1);
  v61 = v29;
  sub_22855CE2C();
  v31 = v74;
  sub_22850554C(v76, v74, type metadata accessor for GeneratorContext);
  v32.n128_f64[0] = (*(v25 + 16))(v73, v29, v75);
  v33 = a4;
  v34 = v62;
  LOBYTE(a8) = v63;
  sub_22845063C(a3, v33, v62, v63, v32);
  sub_228504CF4(&qword_280DE9738, sub_228504BC8, MEMORY[0x277CBCEB8]);
  v35 = v58;
  sub_22855CEDC();
  v36 = v56;
  sub_22850554C(v31, v56, type metadata accessor for GeneratorContext);
  v37 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v38 = (v21 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  sub_228505614(v36, v39 + v37, type metadata accessor for GeneratorContext);
  v40 = v39 + v38;
  v41 = v55;
  *v40 = a3;
  *(v40 + 8) = v41;
  *(v40 + 16) = v34;
  LOBYTE(v38) = a8;
  *(v40 + 24) = a8;
  v42 = a3;
  v43 = a3;
  v44 = v34;
  sub_22845063C(v42, v41, v34, v38, v45);
  sub_2284AE260(0, &qword_280DEE3D8, &type metadata for FeedItemContextChange, MEMORY[0x277D83940]);
  sub_228504CF4(&qword_280DE9AE8, sub_228504B34, MEMORY[0x277CBCC58]);
  v46 = v65;
  v47 = v69;
  sub_22855CE8C();

  (*(v70 + 8))(v35, v47);
  sub_228504CF4(&qword_280DE9B58, sub_228504D3C, MEMORY[0x277CBCC08]);
  v48 = v71;
  v49 = sub_22855CE6C();
  sub_228451F14(v43, v41, v44, v38);

  sub_2285055B4(v76, type metadata accessor for GeneratorContext);
  (*(v72 + 8))(v46, v48);
  v50 = *(v59 + 8);
  v51 = v75;
  v50(v73, v75);
  sub_2285055B4(v74, type metadata accessor for GeneratorContext);
  v50(v61, v51);
  v52 = v66;
  *v66 = v67;
  result = *&v64;
  *(v52 + 1) = v64;
  *(v52 + 24) = v68;
  v52[4] = v49;
  v52[5] = v43;
  v52[6] = v41;
  v52[7] = v44;
  *(v52 + 64) = v38;
  return result;
}

double FeedItemGenerator.init(context:domain:feedItemIdentifier:feedItemProvider:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *&v67 = a4;
  v66 = a3;
  v83 = a1;
  v73 = a7;
  sub_228504DC8(0);
  v74 = v10;
  v76 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v68 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228504FD0(0);
  v75 = v12;
  v77 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v72 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228504E5C(0);
  v15 = *(v14 - 8);
  v81 = v14;
  v82 = v15;
  v16 = MEMORY[0x28223BE20](v14);
  v79 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v78 = &v57 - v18;
  v19 = type metadata accessor for GeneratorContext(0);
  v62 = *(v19 - 8);
  v20 = *(v62 + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v60 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v58 = &v57 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v57 - v24;
  sub_228504F08(0);
  v80 = v26;
  v64 = *(v26 - 8);
  v27 = v64;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v57 - v31;
  v70 = *a2;
  v71 = *(a2 + 24);
  v33 = swift_allocObject();
  *(v33 + 16) = a5;
  *(v33 + 24) = a6;
  v63 = a6;
  sub_228504F9C(0);
  sub_228504CF4(&qword_280DE9860, sub_228504F9C, MEMORY[0x277CBCE80]);

  v69 = *(a2 + 1);
  v65 = v32;
  sub_22855CE2C();
  v61 = v25;
  sub_22850554C(v83, v25, type metadata accessor for GeneratorContext);
  v34 = *(v27 + 16);
  v59 = v30;
  v34(v30, v32, v80);
  sub_2285030FC(0);
  sub_228504CF4(&qword_280DE9748, sub_228504F08, MEMORY[0x277CBCEB8]);
  v35 = v78;
  sub_22855CE8C();
  v36 = v58;
  sub_22850554C(v25, v58, type metadata accessor for GeneratorContext);
  sub_2284AE260(0, &qword_280DEE7A0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228560580;
  *(inited + 32) = v66;
  v38 = inited + 32;
  *(inited + 40) = v67;
  v39 = sub_22845FFC8(inited);
  swift_setDeallocating();
  sub_2284F1618(v38);
  (*(v82 + 16))(v79, v35, v81);
  v40 = MEMORY[0x277CBCC08];
  sub_228504CF4(&qword_280DE9B78, sub_228504E5C, MEMORY[0x277CBCC08]);

  v41 = v68;
  sub_22855CEDC();
  v42 = v60;
  sub_22850554C(v36, v60, type metadata accessor for GeneratorContext);
  v43 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v44 = (v20 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  sub_228505614(v42, v45 + v43, type metadata accessor for GeneratorContext);
  v46 = v45 + v44;
  *v46 = v39;
  v67 = xmmword_228561CA0;
  *(v46 + 8) = xmmword_228561CA0;
  *(v46 + 24) = 0;
  sub_2284AE260(0, &qword_280DEE3D8, &type metadata for FeedItemContextChange, MEMORY[0x277D83940]);
  sub_228504CF4(&qword_280DE9AC8, sub_228504DC8, MEMORY[0x277CBCC58]);

  v47 = v72;
  v48 = v74;
  sub_22855CE8C();

  (*(v76 + 8))(v41, v48);
  sub_228504CF4(&qword_280DE9B38, sub_228504FD0, v40);
  v49 = v75;
  v50 = sub_22855CE6C();

  sub_2285055B4(v83, type metadata accessor for GeneratorContext);
  (*(v77 + 8))(v47, v49);
  v51 = v81;
  v52 = *(v82 + 8);
  v52(v79, v81);
  sub_2285055B4(v36, type metadata accessor for GeneratorContext);
  v52(v78, v51);
  v53 = *(v64 + 8);
  v54 = v80;
  v53(v59, v80);
  sub_2285055B4(v61, type metadata accessor for GeneratorContext);
  v53(v65, v54);
  v55 = v73;
  *v73 = v70;
  *(v55 + 1) = v69;
  *(v55 + 24) = v71;
  v55[4] = v50;
  v55[5] = v39;
  result = *&v67;
  *(v55 + 3) = v67;
  *(v55 + 64) = 0;
  return result;
}

uint64_t sub_228504208(void (*a1)(uint64_t))
{
  sub_2284FB20C(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v10 - v7;
  a1(v6);
  sub_22850554C(v8, v5, sub_2284FB20C);
  sub_22855CDCC();
  return sub_2285055B4(v8, sub_2284FB20C);
}

double static FeedItemGenerator.delete(context:domain:feedItemIdentifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *&v58 = a4;
  v57 = a3;
  v64 = a5;
  sub_228505014(0);
  v67 = v7;
  v69 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v62 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228505154(0);
  v68 = v9;
  v70 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v65 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2285050A8(0);
  v73 = v11;
  v75 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v72 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v71 = &v52 - v14;
  sub_2284FB20C(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228504F9C(0);
  v74 = v18;
  v66 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for GeneratorContext(0);
  v54 = *(v21 - 8);
  v22 = *(v54 + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v53 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v52 = &v52 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v52 - v26;
  v29 = *(a2 + 8);
  v61 = *a2;
  v28 = v61;
  v60 = v29;
  v59 = *(a2 + 16);
  v63 = *(a2 + 24);
  v56 = &v52 - v26;
  sub_22850554C(a1, &v52 - v26, type metadata accessor for GeneratorContext);
  v30 = type metadata accessor for PluginFeedItem(0);
  (*(*(v30 - 8) + 56))(v17, 1, 1, v30);
  v31 = v28;

  v55 = v20;
  sub_22855CDCC();
  sub_2285030FC(0);
  sub_228504CF4(&qword_280DE9860, sub_228504F9C, MEMORY[0x277CBCE80]);
  v32 = v71;
  sub_22855CE8C();
  v33 = v52;
  sub_22850554C(v27, v52, type metadata accessor for GeneratorContext);
  sub_2284AE260(0, &qword_280DEE7A0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228560580;
  *(inited + 32) = v57;
  *(inited + 40) = v58;

  v35 = sub_22845FFC8(inited);
  swift_setDeallocating();
  sub_2284F1618(inited + 32);
  (*(v75 + 16))(v72, v32, v73);
  v36 = MEMORY[0x277CBCC08];
  sub_228504CF4(&qword_280DE9BA0, sub_2285050A8, MEMORY[0x277CBCC08]);

  v37 = v62;
  sub_22855CEDC();
  v38 = v53;
  sub_22850554C(v33, v53, type metadata accessor for GeneratorContext);
  v39 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v40 = (v22 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  sub_228505614(v38, v41 + v39, type metadata accessor for GeneratorContext);
  v42 = v41 + v40;
  *v42 = v35;
  v58 = xmmword_228561CA0;
  *(v42 + 8) = xmmword_228561CA0;
  *(v42 + 24) = 0;
  sub_2284AE260(0, &qword_280DEE3D8, &type metadata for FeedItemContextChange, MEMORY[0x277D83940]);
  sub_228504CF4(&qword_280DE9AD8, sub_228505014, MEMORY[0x277CBCC58]);

  v43 = v65;
  v44 = v67;
  sub_22855CE8C();

  (*(v69 + 8))(v37, v44);
  sub_228504CF4(&qword_280DE9B48, sub_228505154, v36);
  v45 = v68;
  v46 = sub_22855CE6C();

  (*(v70 + 8))(v43, v45);
  v47 = *(v75 + 8);
  v48 = v73;
  v47(v72, v73);
  sub_2285055B4(v33, type metadata accessor for GeneratorContext);
  v47(v71, v48);
  (*(v66 + 8))(v55, v74);
  sub_2285055B4(v56, type metadata accessor for GeneratorContext);
  v49 = v64;
  v50 = v60;
  *v64 = v61;
  v49[1] = v50;
  v49[2] = v59;
  *(v49 + 24) = v63;
  v49[4] = v46;
  v49[5] = v35;
  result = *&v58;
  *(v49 + 3) = v58;
  *(v49 + 64) = 0;
  return result;
}

void sub_228504B34(uint64_t a1)
{
  if (!qword_280DE9AE0)
  {
    sub_228504BC8(255);
    sub_228504CF4(&qword_280DE9738, sub_228504BC8, MEMORY[0x277CBCEB8]);
    v1 = sub_22855CBAC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9AE0);
    }
  }
}

void sub_228504BC8(uint64_t a1)
{
  if (!qword_280DE9730)
  {
    sub_228504C5C(255);
    sub_228504CF4(&qword_280DE9840, sub_228504C5C, MEMORY[0x277CBCE80]);
    v1 = sub_22855CE3C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9730);
    }
  }
}

void sub_228504C90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228504CF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_228504D78()
{
  (*(v0 + 16))();
  sub_2285030FC(0);
  return sub_22855CDCC();
}

void sub_228504DC8(uint64_t a1)
{
  if (!qword_280DE9AC0)
  {
    sub_228504E5C(255);
    sub_228504CF4(&qword_280DE9B78, sub_228504E5C, MEMORY[0x277CBCC08]);
    v1 = sub_22855CBAC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9AC0);
    }
  }
}

void sub_228504E5C(uint64_t a1)
{
  if (!qword_280DE9B70)
  {
    sub_228504F08(255);
    sub_2285030FC(255);
    sub_228504CF4(&qword_280DE9748, sub_228504F08, MEMORY[0x277CBCEB8]);
    v1 = sub_22855CB6C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9B70);
    }
  }
}

void sub_228504F08(uint64_t a1)
{
  if (!qword_280DE9740)
  {
    sub_228504F9C(255);
    sub_228504CF4(&qword_280DE9860, sub_228504F9C, MEMORY[0x277CBCE80]);
    v1 = sub_22855CE3C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9740);
    }
  }
}

void sub_228505014(uint64_t a1)
{
  if (!qword_280DE9AD0)
  {
    sub_2285050A8(255);
    sub_228504CF4(&qword_280DE9BA0, sub_2285050A8, MEMORY[0x277CBCC08]);
    v1 = sub_22855CBAC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9AD0);
    }
  }
}

void sub_2285050A8(uint64_t a1)
{
  if (!qword_280DE9B98)
  {
    sub_228504F9C(255);
    sub_2285030FC(255);
    sub_228504CF4(&qword_280DE9860, sub_228504F9C, MEMORY[0x277CBCE80]);
    v1 = sub_22855CB6C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9B98);
    }
  }
}

void sub_228505190(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_2284AE260(255, &qword_280DEE3D8, &type metadata for FeedItemContextChange, MEMORY[0x277D83940]);
    sub_228504CF4(a4, a5, MEMORY[0x277CBCC58]);
    v8 = sub_22855CB6C();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for GeneratorContext(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = (v0 + v3 + v1[5]);
  sub_228450F00(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {

    v7 = *(type metadata accessor for CountryRetrievalRecord(0) + 24);
    v8 = sub_22855C16C();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_0((v5 + v1[7]));
  __swift_destroy_boxed_opaque_existential_0((v5 + v1[8]));
  sub_228451F14(*(v0 + v9), *(v0 + v9 + 8), *(v0 + v9 + 16), *(v0 + v9 + 24));

  return MEMORY[0x2821FE8E8](v0, v9 + 25, v2 | 7);
}

id sub_2285053C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for GeneratorContext(0) - 8);
  v6 = v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);

  return sub_228502CD4(a1, v7, v8, v9, v10, a2);
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2285054A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_2285054E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22850554C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2285055B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_228505614(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_22850568C(id *a1)
{
  v1 = [*a1 dateUpdated];
  sub_22855C13C();
}

void sub_228505704(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 kindRawValue];
  v4 = sub_22855D1AC();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

Swift::Void __swiftcall DebuggingResponder.registerForDebuggingRequests()()
{
  v2 = v1;
  v3 = v0;
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v4 = sub_22855CABC();
  __swift_project_value_buffer(v4, qword_280DEEC98);
  v5 = sub_22855CA8C();
  v6 = sub_22855D66C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v3;
    v14 = v8;
    *v7 = 136315138;
    swift_getMetatypeMetadata();
    v9 = sub_22855D1BC();
    v11 = sub_2283F8938(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2283ED000, v5, v6, "[%s] registerForDebuggingRequests()", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AABAD40](v8, -1, -1);
    MEMORY[0x22AABAD40](v7, -1, -1);
  }

  v12 = [objc_opt_self() defaultCenter];
  if (qword_280DE93C0 != -1)
  {
    swift_once();
  }

  [v12 addObserver:v2 selector:v13 name:v14 object:?];
}

Swift::Void __swiftcall DebuggingResponder.deregisterForDebuggingRequests()()
{
  v2 = v1;
  v3 = v0;
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v4 = sub_22855CABC();
  __swift_project_value_buffer(v4, qword_280DEEC98);
  v5 = sub_22855CA8C();
  v6 = sub_22855D66C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v3;
    v14 = v8;
    *v7 = 136315138;
    swift_getMetatypeMetadata();
    v9 = sub_22855D1BC();
    v11 = sub_2283F8938(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2283ED000, v5, v6, "[%s] deregisterForDebuggingRequests()", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AABAD40](v8, -1, -1);
    MEMORY[0x22AABAD40](v7, -1, -1);
  }

  v12 = [objc_opt_self() defaultCenter];
  if (qword_280DE93C0 != -1)
  {
    swift_once();
  }

  [v12 removeObserver:v2 name:qword_280DE93C8 object:{0, v13, v14}];
}

uint64_t *USR1SignalDebuggingResponderListener.init()()
{
  v1 = sub_22855CFCC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 24) = [objc_allocWithZone(MEMORY[0x277CCAB98]) init];
  sub_2283FA06C();
  (*(v2 + 104))(v4, *MEMORY[0x277D851B8], v1);
  v5 = sub_22855D85C();
  (*(v2 + 8))(v4, v1);
  v6 = sub_2284A6F94(30, v5);

  v7 = qword_280DEEBC8;
  swift_retain_n();
  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_22855CABC();
  __swift_project_value_buffer(v8, qword_280DEEBD0);
  v9 = sub_22855CA8C();
  v10 = sub_22855D6AC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v6;
    v18 = v12;
    *v11 = 136315138;
    type metadata accessor for USR1SignalDebuggingResponderListener();

    v13 = sub_22855D1CC();
    v15 = sub_2283F8938(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_2283ED000, v9, v10, "%s: init()", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AABAD40](v12, -1, -1);
    MEMORY[0x22AABAD40](v11, -1, -1);
  }

  return v6;
}

void sub_228505DD8()
{
  if (qword_280DEEBC8 != -1)
  {
    swift_once();
  }

  v1 = sub_22855CABC();
  __swift_project_value_buffer(v1, qword_280DEEBD0);

  v2 = sub_22855CA8C();
  v3 = sub_22855D6AC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v17 = v0;
    v18 = v5;
    *v4 = 136315138;
    type metadata accessor for USR1SignalDebuggingResponderListener();

    v6 = sub_22855D1CC();
    v8 = sub_2283F8938(v6, v7, &v18);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_2283ED000, v2, v3, "%s: sourceNotification() sending message", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x22AABAD40](v5, -1, -1);
    MEMORY[0x22AABAD40](v4, -1, -1);
  }

  v9 = [objc_opt_self() defaultCenter];
  if (qword_280DE93C0 != -1)
  {
    swift_once();
  }

  [v9 postNotificationName:qword_280DE93C8 object:{v0, v17, v18}];

  v10 = sub_22855CA8C();
  v11 = sub_22855D6AC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    type metadata accessor for USR1SignalDebuggingResponderListener();

    v14 = sub_22855D1CC();
    v16 = sub_2283F8938(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_2283ED000, v10, v11, "%s: sourceNotification() complete", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AABAD40](v13, -1, -1);
    MEMORY[0x22AABAD40](v12, -1, -1);
  }
}

uint64_t USR1SignalDebuggingResponderListener.deinit()
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_22855D8FC();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t USR1SignalDebuggingResponderListener.__deallocating_deinit()
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_22855D8FC();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_228506190()
{
  result = sub_22855D17C();
  qword_280DE93C8 = result;
  return result;
}

id static NSNotificationName.DebuggingResponderRequest.getter()
{
  if (qword_280DE93C0 != -1)
  {
    swift_once();
  }

  v1 = qword_280DE93C8;

  return v1;
}

id SharableModelReference.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id SharableModelReference.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for SharableModelReference();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id SharableModelReference.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharableModelReference();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2285063E0()
{
  type metadata accessor for FileProtectionStateMonitor();
  v0 = swift_allocObject();
  result = FileProtectionStateMonitor.init()();
  qword_27D840500 = v0;
  return result;
}

uint64_t FileProtectionStateMonitor.__allocating_init()()
{
  v0 = swift_allocObject();
  FileProtectionStateMonitor.init()();
  return v0;
}

uint64_t static FileProtectionStateMonitor.shared.getter()
{
  if (qword_27D83F018 != -1)
  {
    swift_once();
  }
}

uint64_t FileProtectionStateMonitor.init()()
{
  v1 = v0;
  v15 = sub_22855D81C();
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22855D7BC();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22855CFEC();
  MEMORY[0x28223BE20](v6 - 8);
  v14 = sub_2283FA06C();
  sub_22855CFDC();
  v16 = MEMORY[0x277D84F90];
  v7 = MEMORY[0x277D85230];
  sub_2283FA1D8(&unk_280DED140, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_2283FA2E8(0, &qword_280DED250, v7);
  sub_2283F461C(&qword_280DED240, &qword_280DED250, v7);
  sub_22855DA9C();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v15);
  *(v0 + 24) = sub_22855D84C();
  v8 = MKBGetDeviceLockState();
  if (v8 == 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2 * (v8 != 1);
  }

  sub_228506790(0);
  v10 = swift_allocObject();
  *(v10 + 36) = 0;
  v11 = (v10 + 36);
  *(v10 + 16) = -1;
  v12 = (v10 + 16);
  *(v10 + 24) = MEMORY[0x277D84F90];
  *(v10 + 32) = v9;
  *(v1 + 16) = v10;

  os_unfair_lock_lock(v11);
  sub_2285068E0(v12);
  os_unfair_lock_unlock(v11);

  return v1;
}

void sub_228506790(uint64_t a1)
{
  if (!qword_27D840508)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22855DCFC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D840508);
    }
  }
}

void sub_2285067F0(int *a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = swift_allocObject();
  swift_weakInit();
  v6[4] = sub_228507294;
  v6[5] = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_228506954;
  v6[3] = &block_descriptor_11_1;
  v5 = _Block_copy(v6);

  notify_register_dispatch("com.apple.mobile.keybagd.lock_status", a1, v3, v5);
  _Block_release(v5);
}

uint64_t sub_2285068FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2285071D4();
  }

  return result;
}

uint64_t sub_228506954(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t FileProtectionStateMonitor.deinit()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock(v1 + 9);
  os_unfair_lock_opaque = v1[4]._os_unfair_lock_opaque;
  if (notify_is_valid_token(os_unfair_lock_opaque))
  {
    notify_cancel(os_unfair_lock_opaque);
  }

  os_unfair_lock_unlock(v1 + 9);

  return v0;
}

uint64_t FileProtectionStateMonitor.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock(v1 + 9);
  os_unfair_lock_opaque = v1[4]._os_unfair_lock_opaque;
  if (notify_is_valid_token(os_unfair_lock_opaque))
  {
    notify_cancel(os_unfair_lock_opaque);
  }

  os_unfair_lock_unlock(v1 + 9);

  return swift_deallocClassInstance();
}

void sub_228506AA8(void (*a1)(void))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 9);
  sub_228506C64(&v3[4], &v4);
  os_unfair_lock_unlock(v3 + 9);
  if (v4 == 1)
  {
    a1();
  }
}

uint64_t sub_228506B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  result = MKBGetDeviceLockState();
  if ((result - 1) > 1)
  {
    v13 = 1;
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    *(v9 + 24) = a3;
    v10 = *(a1 + 8);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_228426C6C(0, v10[2] + 1, 1, v10);
      v10 = result;
    }

    v12 = v10[2];
    v11 = v10[3];
    if (v12 >= v11 >> 1)
    {
      result = sub_228426C6C((v11 > 1), v12 + 1, 1, v10);
      v10 = result;
    }

    v13 = 0;
    v10[2] = v12 + 1;
    v14 = &v10[2 * v12];
    v14[4] = sub_2284186F8;
    v14[5] = v9;
    *(a1 + 8) = v10;
  }

  *a4 = v13;
  return result;
}

uint64_t sub_228506C84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v32 = sub_22855CFBC();
  v34 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v30 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_22855CFEC();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22855D00C();
  v27 = v8;
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v25 - v13;
  v29 = sub_22855CFAC();
  v15 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v17 = (v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v17 = 250;
  (*(v15 + 104))(v17, *MEMORY[0x277D85178]);
  v25[1] = *(v3 + 24);
  sub_22855CFFC();
  MEMORY[0x22AAB90D0](v12, v17);
  v26 = *(v9 + 8);
  v26(v12, v8);
  v18 = swift_allocObject();
  v19 = v28;
  v18[2] = v3;
  v18[3] = v19;
  v18[4] = a2;
  aBlock[4] = sub_228507110;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228401F54;
  aBlock[3] = &block_descriptor_23;
  v20 = _Block_copy(aBlock);

  sub_22855CFDC();
  v35 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D85198];
  sub_2283FA1D8(&qword_280DED2D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_2283FA2E8(0, &qword_280DED270, v21);
  sub_2283F461C(&qword_280DED260, &qword_280DED270, v21);
  v22 = v30;
  v23 = v32;
  sub_22855DA9C();
  MEMORY[0x22AAB9840](v14, v7, v22, v20);
  _Block_release(v20);
  (*(v34 + 8))(v22, v23);
  (*(v31 + 8))(v7, v33);
  v26(v14, v27);
  (*(v15 + 8))(v17, v29);
}

uint64_t sub_2285071D4()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 36));
  v2 = MKBGetDeviceLockState();
  v3 = MEMORY[0x277D84F90];
  if ((v2 - 1) >= 2)
  {
    v4 = *(v1 + 24);
    *(v1 + 24) = MEMORY[0x277D84F90];
    v3 = v4;
  }

  os_unfair_lock_unlock((v1 + 36));
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = v3 + 40;
    do
    {
      v7 = *(v6 - 8);

      v7(v8);

      v6 += 16;
      --v5;
    }

    while (v5);
  }
}

unint64_t sub_2285072B0()
{
  result = qword_27D840510;
  if (!qword_27D840510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840510);
  }

  return result;
}

uint64_t MockPinnedContentUpdateNotifier.publisher.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t MockPinnedContentUpdateNotifier.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_2283F2234();
  swift_allocObject();
  *(v0 + 16) = sub_22855CD0C();
  return v0;
}

uint64_t MockPinnedContentUpdateNotifier.init()()
{
  sub_2283F2234();
  swift_allocObject();
  *(v0 + 16) = sub_22855CD0C();
  return v0;
}

uint64_t MockPinnedContentUpdateNotifier.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_228507510()
{
  [*(v0 + 16) stopObservation_];

  return swift_deallocClassInstance();
}

uint64_t static PinnedContentManager.pinToSummary(objectType:healthStore:)(uint64_t a1, void *a2)
{
  v3 = _sSo12HKObjectTypeC14HealthPlatformE23pinnedContentIdentifierSSvg_0();
  v5 = v4;
  type metadata accessor for KeyValueDomainPinnedContentUpdateNotifier();
  v6 = swift_allocObject();
  sub_2283F2234();
  swift_allocObject();
  v7 = a2;
  *(v6 + 24) = sub_22855CD0C();
  sub_22855BCDC();
  v8 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v9 = v7;
  v10 = sub_22855D17C();

  v11 = [v8 initWithCategory:1 domainName:v10 healthStore:v9];

  *(v6 + 16) = v11;
  [v11 startObservation_];

  v12 = objc_allocWithZone(sub_22855BCCC());
  v13 = v9;
  v14 = sub_22855BCBC();
  v15 = swift_allocObject();
  sub_228401798(v14, v6, v15);
  v16._countAndFlagsBits = v3;
  v16._object = v5;
  PinnedContentManager.pin(identifier:)(v16);
}

uint64_t static PinnedContentManager.pin(identifier:domain:healthStore:)(uint64_t a1, void *a2, char a3, void *a4)
{
  type metadata accessor for KeyValueDomainPinnedContentUpdateNotifier();
  v7 = swift_allocObject();
  sub_2283F2234();
  swift_allocObject();
  v8 = a4;
  *(v7 + 24) = sub_22855CD0C();
  sub_22855BCDC();
  v9 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v10 = v8;
  v11 = sub_22855D17C();

  v12 = [v9 initWithCategory:1 domainName:v11 healthStore:v10];

  *(v7 + 16) = v12;
  [v12 startObservation_];

  v13 = objc_allocWithZone(sub_22855BCCC());
  v14 = v10;
  v15 = sub_22855BCBC();
  v16 = swift_allocObject();
  sub_228401798(v15, v7, v16);
  v17._countAndFlagsBits = a1;
  v17._object = a2;
  PinnedContentManager.pin(identifier:)(v17);
}

Swift::Void __swiftcall PinnedContentManager.pin(identifier:)(Swift::String identifier)
{
  v2 = v1;
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  v4 = *v1;
  v5 = sub_22855CABC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v20[3] = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v20 - v9;
  sub_22855CA6C();

  v11 = sub_22855CA8C();
  v12 = sub_22855D6AC();

  v13 = os_log_type_enabled(v11, v12);
  v21 = v5;
  v20[1] = v4;
  v20[2] = v6;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 136315394;
    v23 = 91;
    v24 = 0xE100000000000000;
    v25[0] = v15;
    v16 = sub_22855E34C();
    MEMORY[0x22AAB92A0](v16);

    MEMORY[0x22AAB92A0](24413, 0xE200000000000000);
    v17 = sub_22855BCDC();
    MEMORY[0x22AAB92A0](v17);

    v18 = sub_2283F8938(v23, v24, v25);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_2283F8938(countAndFlagsBits, object, v25);
    _os_log_impl(&dword_2283ED000, v11, v12, "%s: pinning identifier %s at end", v14, 0x16u);
    swift_arrayDestroy();
    v19 = v15;
    v5 = v21;
    MEMORY[0x22AABAD40](v19, -1, -1);
    MEMORY[0x22AABAD40](v14, -1, -1);
  }

  (*(v6 + 8))(v10, v5);
  __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
}

uint64_t PinnedContentManager.state.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_22850A4BC((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  sub_22855CD2C();

  return v3;
}

uint64_t PinnedContentManager.publisher.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_22850AB10((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  sub_2284019B8(0);
  sub_22850AAC8(&qword_280DE9870, sub_2284019B8, MEMORY[0x277CBCE48]);
  v2 = sub_22855CE6C();

  return v2;
}

uint64_t PinnedContentManager.__allocating_init(pinnedContentStore:notifier:)(void *a1, void *a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = a2[3];
  v9 = a2[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a2, v8);
  v11 = sub_22850A730(v7, v10, v2, v5, v8, v6, v9);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v11;
}

uint64_t PinnedContentManager.init(pinnedContentStore:notifier:)(void *a1, void *a2)
{
  v3 = v2;
  v7 = a1[3];
  v6 = a1[4];
  v8 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = a2[3];
  v13 = a2[4];
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a2, v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v18 = sub_22850A4D8(v10, v16, v3, v7, v12, v6, v13);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v18;
}

uint64_t sub_228508148(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2285081A0();
  }

  return result;
}

void sub_2285081A0()
{
  v1 = *v0;
  v2 = sub_22855CABC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  sub_22855CA6C();

  v7 = sub_22855CA8C();
  v8 = sub_22855D6AC();

  v9 = os_log_type_enabled(v7, v8);
  v19 = v1;
  if (v9)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v3;
    v12 = v11;
    *v10 = 136315138;
    v21 = 91;
    v22 = 0xE100000000000000;
    v23 = v11;
    v13 = sub_22855E34C();
    v14 = v2;
    MEMORY[0x22AAB92A0](v13);

    MEMORY[0x22AAB92A0](24413, 0xE200000000000000);
    v15 = sub_22855BCDC();
    MEMORY[0x22AAB92A0](v15);

    v16 = sub_2283F8938(v21, v22, &v23);

    *(v10 + 4) = v16;
    v2 = v14;
    _os_log_impl(&dword_2283ED000, v7, v8, "%s: Pinned content did change notification received, fetching latest value", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    v17 = v12;
    v3 = v20;
    MEMORY[0x22AABAD40](v17, -1, -1);
    MEMORY[0x22AABAD40](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  sub_228508938();
}

uint64_t sub_2285085F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_22855CABC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    *a3 = *a1;
  }

  else
  {
    v29 = v9;
    v30 = a3;
    __swift_project_boxed_opaque_existential_1(a2 + 3, a2[6]);
    v12 = sub_22855BD2C();
    if (v3)
    {
      sub_22855CA6C();

      v13 = v3;
      v14 = sub_22855CA8C();
      v15 = sub_22855D68C();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v33 = v28;
        *v16 = 136315394;
        v31 = 91;
        v32 = 0xE100000000000000;
        v17 = sub_22855E34C();
        HIDWORD(v27) = v15;
        MEMORY[0x22AAB92A0](v17);

        MEMORY[0x22AAB92A0](24413, 0xE200000000000000);
        v18 = sub_22855BCDC();
        MEMORY[0x22AAB92A0](v18);

        v19 = sub_2283F8938(v31, v32, &v33);

        *(v16 + 4) = v19;
        *(v16 + 12) = 2080;
        v31 = v3;
        v20 = v3;
        sub_228418D44();
        v21 = sub_22855D1BC();
        v23 = sub_2283F8938(v21, v22, &v33);

        *(v16 + 14) = v23;
        _os_log_impl(&dword_2283ED000, v14, BYTE4(v27), "%s: Failed to fetch initial pinned content: %s", v16, 0x16u);
        v24 = v28;
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v24, -1, -1);
        MEMORY[0x22AABAD40](v16, -1, -1);
      }

      else
      {
      }

      (*(v8 + 8))(v11, v29);
      v12 = 0;
    }

    v31 = v12;
    sub_2284019B8(0);
    swift_allocObject();
    v25 = sub_22855CD5C();
    *a1 = v25;
    *v30 = v25;
  }
}

void sub_228508938()
{
  v2 = v0;
  v3 = sub_22855CABC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  v7 = sub_22855BD2C();
  if (!v1)
  {
    v30 = 0;
    v8 = v7;
    sub_22855CA6C();

    v29 = v8;
    v9 = v8;
    v10 = sub_22855CA8C();
    v11 = sub_22855D6AC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v28 = v4;
      v13 = v12;
      v27 = swift_slowAlloc();
      v33 = v27;
      *v13 = 136315394;
      v31 = 91;
      v32 = 0xE100000000000000;
      v14 = sub_22855E34C();
      v26 = v11;
      MEMORY[0x22AAB92A0](v14);

      MEMORY[0x22AAB92A0](24413, 0xE200000000000000);
      v15 = sub_22855BCDC();
      MEMORY[0x22AAB92A0](v15);

      v16 = sub_2283F8938(v31, v32, &v33);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      sub_22855BC9C();
      v17 = MEMORY[0x22AAB9430]();
      v19 = v18;

      v20 = sub_2283F8938(v17, v19, &v33);

      *(v13 + 14) = v20;
      _os_log_impl(&dword_2283ED000, v10, v26, "%s: Pinned content refetch result %s", v13, 0x16u);
      v21 = v27;
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v21, -1, -1);
      MEMORY[0x22AABAD40](v13, -1, -1);

      (*(v28 + 8))(v6, v3);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }

    v22 = *(v2 + 16);
    os_unfair_lock_lock((v22 + 24));
    v23 = v30;
    sub_22850AB10((v22 + 16), &v31);
    if (v23)
    {
      os_unfair_lock_unlock((v22 + 24));
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock((v22 + 24));
      v31 = v9;
      v24 = v9;
      sub_22855CD3C();
    }
  }
}

void PinnedContentManager.latestState()()
{
  v2 = sub_22855CABC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  os_unfair_lock_lock((v6 + 24));
  sub_22850AB10((v6 + 16), &v16);
  if (v1)
  {
    os_unfair_lock_unlock((v6 + 24));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v6 + 24));
    sub_22855CD2C();

    if (!v16)
    {
      sub_22855CA6C();

      v7 = sub_22855CA8C();
      v8 = sub_22855D68C();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v18 = v15;
        *v9 = 136315138;
        v16 = 91;
        v17 = 0xE100000000000000;
        v10 = sub_22855E34C();
        HIDWORD(v14) = v8;
        MEMORY[0x22AAB92A0](v10);

        MEMORY[0x22AAB92A0](24413, 0xE200000000000000);
        v11 = sub_22855BCDC();
        MEMORY[0x22AAB92A0](v11);

        v12 = sub_2283F8938(v16, v17, &v18);

        *(v9 + 4) = v12;
        _os_log_impl(&dword_2283ED000, v7, BYTE4(v14), "%s: Fetch latest pinned content because no cached state found", v9, 0xCu);
        v13 = v15;
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x22AABAD40](v13, -1, -1);
        MEMORY[0x22AABAD40](v9, -1, -1);
      }

      (*(v3 + 8))(v5, v2);
      sub_228508938();
    }
  }
}

Swift::Void __swiftcall PinnedContentManager.apply(differences:)(Swift::OpaquePointer differences)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_22855CABC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v28 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v26 - v9;
  sub_22855CA6C();

  v11 = sub_22855CA8C();
  v12 = sub_22855D6AC();

  v13 = os_log_type_enabled(v11, v12);
  v26[1] = v4;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v27 = v5;
    v15 = v14;
    v16 = v6;
    v17 = swift_slowAlloc();
    *v15 = 136315394;
    v29 = 91;
    v30 = 0xE100000000000000;
    v31[0] = v17;
    v18 = sub_22855E34C();
    MEMORY[0x22AAB92A0](v18);

    MEMORY[0x22AAB92A0](24413, 0xE200000000000000);
    v19 = sub_22855BCDC();
    MEMORY[0x22AAB92A0](v19);

    v20 = sub_2283F8938(v29, v30, v31);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v21 = MEMORY[0x22AAB9430](differences._rawValue, MEMORY[0x277D0FD08]);
    v23 = sub_2283F8938(v21, v22, v31);

    *(v15 + 14) = v23;
    _os_log_impl(&dword_2283ED000, v11, v12, "%s: Applying differences: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v17, -1, -1);
    v24 = v15;
    v5 = v27;
    MEMORY[0x22AABAD40](v24, -1, -1);

    v25 = v16;
  }

  else
  {

    v25 = v6;
  }

  (*(v25 + 8))(v10, v5);
  __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
}

Swift::Void __swiftcall PinnedContentManager.pin(identifier:at:)(Swift::String identifier, Swift::Int at)
{
  v3 = v2;
  countAndFlagsBits = identifier._countAndFlagsBits;
  v26 = at;
  object = identifier._object;
  v5 = *v2;
  v6 = sub_22855CABC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v24 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v22 - v10;
  sub_22855CA6C();

  v12 = sub_22855CA8C();
  v13 = sub_22855D6AC();

  v14 = os_log_type_enabled(v12, v13);
  v22[2] = v5;
  v22[3] = v7;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v23 = v6;
    v16 = v15;
    v17 = swift_slowAlloc();
    *v16 = 136315650;
    v27 = 91;
    v28 = 0xE100000000000000;
    v29[0] = v17;
    v18 = sub_22855E34C();
    MEMORY[0x22AAB92A0](v18);

    MEMORY[0x22AAB92A0](24413, 0xE200000000000000);
    v19 = sub_22855BCDC();
    MEMORY[0x22AAB92A0](v19);

    v20 = sub_2283F8938(v27, v28, v29);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_2283F8938(countAndFlagsBits, object, v29);
    *(v16 + 22) = 2048;
    *(v16 + 24) = v26;
    _os_log_impl(&dword_2283ED000, v12, v13, "%s: pinning identifier %s at index %ld", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v17, -1, -1);
    v21 = v16;
    v6 = v23;
    MEMORY[0x22AABAD40](v21, -1, -1);
  }

  (*(v7 + 8))(v11, v6);
  __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
}

Swift::Void __swiftcall PinnedContentManager.unpin(identifier:)(Swift::String identifier)
{
  v2 = v1;
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  v4 = *v1;
  v5 = sub_22855CABC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v20[3] = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v20 - v9;
  sub_22855CA6C();

  v11 = sub_22855CA8C();
  v12 = sub_22855D6AC();

  v13 = os_log_type_enabled(v11, v12);
  v21 = v5;
  v20[1] = v4;
  v20[2] = v6;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 136315394;
    v23 = 91;
    v24 = 0xE100000000000000;
    v25[0] = v15;
    v16 = sub_22855E34C();
    MEMORY[0x22AAB92A0](v16);

    MEMORY[0x22AAB92A0](24413, 0xE200000000000000);
    v17 = sub_22855BCDC();
    MEMORY[0x22AAB92A0](v17);

    v18 = sub_2283F8938(v23, v24, v25);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_2283F8938(countAndFlagsBits, object, v25);
    _os_log_impl(&dword_2283ED000, v11, v12, "%s: unpinning identifier %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v15, -1, -1);
    v19 = v14;
    v5 = v21;
    MEMORY[0x22AABAD40](v19, -1, -1);
  }

  (*(v6 + 8))(v10, v5);
  __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
}

char *sub_228509E70@<X0>(const char **a1@<X0>, int *a2@<X1>, char **a3@<X8>)
{
  result = index(*a1, *a2);
  *a3 = result;
  return result;
}

Swift::Void __swiftcall PinnedContentManager.unpinAll()()
{
  v1 = *v0;
  v2 = sub_22855CABC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v4);
  v6 = v18 - v5;
  sub_22855CA6C();

  v7 = sub_22855CA8C();
  v8 = sub_22855D6AC();

  v9 = os_log_type_enabled(v7, v8);
  v18[2] = v1;
  v19 = v3;
  if (v9)
  {
    v10 = swift_slowAlloc();
    v11 = v2;
    v12 = swift_slowAlloc();
    *v10 = 136315138;
    v20 = 91;
    v21 = 0xE100000000000000;
    v22 = v12;
    v13 = sub_22855E34C();
    MEMORY[0x22AAB92A0](v13);

    MEMORY[0x22AAB92A0](24413, 0xE200000000000000);
    v14 = sub_22855BCDC();
    MEMORY[0x22AAB92A0](v14);

    v15 = sub_2283F8938(v20, v21, &v22);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_2283ED000, v7, v8, "%s: unpinning all", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    v16 = v12;
    v2 = v11;
    MEMORY[0x22AABAD40](v16, -1, -1);
    v17 = v10;
    v3 = v19;
    MEMORY[0x22AABAD40](v17, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  __swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);
}

uint64_t PinnedContentManager.deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  __swift_destroy_boxed_opaque_existential_0((v0 + 72));

  return v0;
}

uint64_t PinnedContentManager.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  __swift_destroy_boxed_opaque_existential_0((v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_22850A4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21[3] = a4;
  v21[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v20[3] = a5;
  v20[4] = a7;
  v14 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(a5 - 8) + 32))(v14, a2, a5);
  sub_228401AD4(0);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 16) = 0;
  *(a3 + 16) = v15;
  *(a3 + 112) = 0;
  *(a3 + 64) = sub_22855BD6C() & 1;
  sub_2283F9B10(v21, a3 + 24);
  sub_2283F9B10(v20, a3 + 72);
  (*(a7 + 8))(a5, a7);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_2284D3388;
  *(v17 + 24) = v16;
  sub_2283F2234();
  sub_22850AAC8(&qword_280DED2F0, sub_2283F2234, MEMORY[0x277CBCE20]);
  v18 = sub_22855CEAC();

  *(a3 + 112) = v18;

  __swift_destroy_boxed_opaque_existential_0(v20);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return a3;
}

uint64_t sub_22850A730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = a7;
  v12 = *(a5 - 8);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v13);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  (*(v17 + 16))(v19, a1, a4);
  (*(v12 + 16))(v15, a2, a5);
  return sub_22850A4D8(v19, v15, v20, a4, a5, a6, v23);
}

unint64_t sub_22850A8D0()
{
  result = qword_27D840518;
  if (!qword_27D840518)
  {
    sub_22850A98C(255, &qword_27D840520, &qword_27D840528, MEMORY[0x277D83D58]);
    sub_22850A98C(255, &qword_27D840530, &qword_27D840538, MEMORY[0x277D836A8]);
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &qword_27D840518);
  }

  return result;
}

void sub_22850A98C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    sub_22850A9E4(255, a3, a4);
    v5 = sub_22855DA2C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_22850A9E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D84900]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22850AAC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22850AB28(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_22855BF2C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

id HealthAppOrchestrationServer.init(connection:coordinator:)(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  sub_22850AEBC(0);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = a1;
  *&v3[OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_protectedState] = v8;
  v9 = &v3[OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator];
  *v9 = a2;
  *(v9 + 1) = a3;
  v27.receiver = v3;
  v27.super_class = ObjectType;
  v10 = a1;
  swift_unknownObjectRetain();
  v11 = objc_msgSendSuper2(&v27, sel_init);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 interfaceWithProtocol_];
  [v10 setExportedInterface_];

  v15 = [v12 interfaceWithProtocol_];
  [v10 setRemoteObjectInterface_];

  [v10 setExportedObject_];
  [v10 resume];
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v25 = sub_22850AF94;
  v26 = v16;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_228401F54;
  v24 = &block_descriptor_24;
  v17 = _Block_copy(&v21);

  [v10 setInterruptionHandler_];
  _Block_release(v17);
  v18 = [v10 interruptionHandler];
  if (v18)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    v25 = sub_2284FBA80;
    v26 = v19;
    v21 = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_228401F54;
    v24 = &block_descriptor_6;
    v18 = _Block_copy(&v21);
  }

  [v10 setInvalidationHandler_];
  _Block_release(v18);

  swift_unknownObjectRelease();
  return v13;
}

void sub_22850AEBC(uint64_t a1)
{
  if (!qword_280DE91C0)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22855DCFC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE91C0);
    }
  }
}

void sub_22850AF1C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_protectedState);
    v3 = Strong;
    os_unfair_lock_lock((v2 + 24));
    v4 = *(v2 + 16);
    *(v2 + 16) = 0;

    os_unfair_lock_unlock((v2 + 24));
  }
}

uint64_t HealthAppOrchestrationServer.remote_fireOnce(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *(v2 + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator + 8);
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 8);

  v8(sub_2284186F8, v5, ObjectType, v6);
}

uint64_t HealthAppOrchestrationServer.remote_resetAndFire(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *(v2 + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator + 8);
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 16);

  v8(sub_2284354D8, v5, ObjectType, v6);
}

uint64_t HealthAppOrchestrationServer.remote_fetchOrchestrationStatus(completion:)(void (*a1)(uint64_t))
{
  v3 = *(v1 + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 24))(ObjectType, v3);
  a1(v5);
}

uint64_t HealthAppOrchestrationServer.remote_fetchOrchestrationGraph(completion:)(void (*a1)(void))
{
  v3 = *(v1 + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator + 8);
  ObjectType = swift_getObjectType();
  (*(v3 + 32))(ObjectType, v3);
  a1();
}

uint64_t HealthAppOrchestrationServer.remote_deleteCacheAndTerminate(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *(v2 + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator + 8);
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 40);

  v8(sub_22850B698, v5, ObjectType, v6);
}

uint64_t HealthAppOrchestrationServer.remote_cancelAllGeneration(completion:)(uint64_t (*a1)(uint64_t))
{
  v3 = *(v1 + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 48))(ObjectType, v3);
  return a1(v5);
}

uint64_t HealthAppOrchestrationServer.remote_runForegroundGeneration(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator + 8);
  ObjectType = swift_getObjectType();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = *(v5 + 56);

  v9 = v8(sub_22850C480, v7, ObjectType, v5);

  return v9;
}

uint64_t HealthAppOrchestrationServer.remote_runBackgroundGeneration(plugins:commitAsUrgent:generationType:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v11 = *(v5 + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator + 8);
  ObjectType = swift_getObjectType();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_22843466C;
  *(v13 + 24) = v10;
  v14 = *(v11 + 64);

  v14(a1, a2, a3, sub_22850BC74, v13, ObjectType, v11);
}

void sub_22850BBE0(char a1, void (*a2)(void))
{
  if (a1)
  {
    (a2)(0);
  }

  else
  {
    v3 = [objc_opt_self() hk:0 error:0 userInfo:?];
    a2();
  }
}

uint64_t HealthAppOrchestrationServer.remote_requestBackgroundGenerationForFeedItemsAfterUnlock(completion:)(uint64_t (*a1)(uint64_t))
{
  v3 = *(v1 + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 72))(ObjectType, v3);
  return a1(v5);
}

uint64_t HealthAppOrchestrationServer.remote_requestBackgroundGenerationForAllModelsAfterUnlock(completion:)(uint64_t (*a1)(uint64_t))
{
  v3 = *(v1 + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 80))(ObjectType, v3);
  return a1(v5);
}

uint64_t HealthAppOrchestrationServer.remote_runOrRequestBackgroundGeneration(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *(v2 + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator + 8);
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 88);

  v8(sub_2284354D8, v5, ObjectType, v6);
}

id HealthAppOrchestrationServer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HealthAppOrchestrationServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static SummaryTransactionInputSignal.identityConfiguration.getter()
{
  v0 = sub_22855C85C();
  MEMORY[0x28223BE20](v0 - 8);
  sub_22855C84C();
  return sub_22855C82C();
}

uint64_t static InputSignalSet.LookupKey.summaryTransaction.getter()
{
  v0 = sub_22855C85C();
  MEMORY[0x28223BE20](v0 - 8);
  sub_22855C84C();
  type metadata accessor for SummaryTransactionInputSignal(0);
  return sub_22855C61C();
}

uint64_t type metadata accessor for SummaryTransactionInputSignal(uint64_t a1)
{
  result = qword_280DEAC50;
  if (!qword_280DEAC50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SummaryTransactionInputSignal.__allocating_init(context:observer:source:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = a5[3];
  v12 = a5[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a5, v11);
  v14 = sub_22850D984(a1, a2, a3, a4, v13, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_0(a5);
  return v14;
}

uint64_t SummaryTransactionInputSignal.init(context:observer:source:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = a5[3];
  v12 = a5[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a5, v11);
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  v17 = sub_22850D7BC(a1, a2, a3, a4, v15, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_0(a5);
  return v17;
}

uint64_t SummaryTransactionInputSignal.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14HealthPlatform29SummaryTransactionInputSignal_identifier;
  v4 = sub_22855C85C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SummaryTransactionInputSignal.beginObservation(from:configurations:)()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 16))(v1, v2);
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = *(v4 + 8);

  v6(sub_22850DAA0, v5, v3, v4);
}

unint64_t *sub_22850C960(void *a1, char a2, uint64_t a3)
{
  v5 = sub_22855C85C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284E1E10(0);
  v10 = v9;
  v31 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22855CABC();
  v30 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    if (a2)
    {
      v18 = sub_22855BF2C();
      v19 = [v18 hk_isDatabaseAccessibilityError];

      if ((v19 & 1) == 0)
      {
        swift_getObjectType();
        sub_22855C59C();
        v20 = a1;
        v21 = sub_22855CA8C();
        v22 = sub_22855D68C();
        sub_2284A6534(a1, 1);
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          *v23 = 138412290;
          v25 = a1;
          v26 = _swift_stdlib_bridgeErrorToNSError();
          *(v23 + 4) = v26;
          *v24 = v26;
          _os_log_impl(&dword_2283ED000, v21, v22, "Transaction observation query failed, restarting: %@", v23, 0xCu);
          sub_22841DC98(v24);
          MEMORY[0x22AABAD40](v24, -1, -1);
          MEMORY[0x22AABAD40](v23, -1, -1);
        }

        (*(v30 + 8))(v15, v13);
      }

      v27 = v17[5];
      v28 = v17[6];
      __swift_project_boxed_opaque_existential_1(v17 + 2, v27);
      (*(v28 + 16))(v27, v28);
      if (qword_27D83F018 != -1)
      {
        swift_once();
      }

      sub_228506C84(sub_22850DDD0, v17);
    }

    else
    {
      (*(v6 + 16))(v8, result + OBJC_IVAR____TtC14HealthPlatform29SummaryTransactionInputSignal_identifier, v5);
      sub_2284A6588(a1, 0);
      v29 = sub_228429F28(a1);
      sub_2284A6534(a1, 0);
      v32 = v29;
      sub_2284E1D3C(0);
      sub_22850DB3C(&qword_280DE9520, sub_2284E1D3C, MEMORY[0x277D11CE0]);
      sub_22850DB3C(&qword_280DE9518, sub_2284E1D3C, MEMORY[0x277D83B60]);
      sub_22850DB84(&unk_280DE9288, &protocol conformance descriptor for HKSharedSummaryTransaction);
      sub_22855C8DC();
      swift_getObjectType();
      v32 = v17;
      type metadata accessor for SummaryTransactionInputSignal(0);
      sub_22850DB3C(qword_280DEAC68, type metadata accessor for SummaryTransactionInputSignal, &protocol conformance descriptor for SummaryTransactionInputSignal);
      sub_22855C78C();
      (*(v31 + 8))(v12, v10);
    }
  }

  return result;
}

uint64_t sub_22850CE9C(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v1);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = *(v2 + 8);

  v4(sub_22850DDE0, v3, v1, v2);
}

Swift::Void __swiftcall SummaryTransactionInputSignal.stopObservation()()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 16))(v1, v2);
}

uint64_t sub_22850CFA0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  if (*a1)
  {
    [*(a2 + 16) stopQuery_];
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = objc_allocWithZone(MEMORY[0x277CCD958]);
  v19 = sub_22850DD68;
  v20 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_22850D278;
  v18 = &block_descriptor_25;
  v11 = _Block_copy(&aBlock);

  v12 = [v10 initWithHandler_];
  _Block_release(v11);

  v19 = sub_22850DD68;
  v20 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_22850D278;
  v18 = &block_descriptor_12;
  v13 = _Block_copy(&aBlock);

  [v12 setUpdateHandler_];
  _Block_release(v13);
  [*(a2 + 16) executeQuery_];

  *a1 = v12;
  return result;
}

void sub_22850D184(int a1, uint64_t a2, id a3, void (*a4)(id, uint64_t))
{
  if (a2)
  {
    (a4)(a2, 0, a3);
  }

  else
  {
    if (a3)
    {
      v5 = a3;
    }

    else
    {
      v6 = objc_opt_self();
      v7 = sub_22855D17C();
      v5 = [v6 hk:0 error:v7 description:?];

      a3 = 0;
    }

    v8 = a3;
    a4(v5, 1);
  }
}

uint64_t sub_22850D278(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_2283EF310(0, &qword_280DE9280, 0x277CCD940);
    v5 = sub_22855D3AC();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t sub_22850D330()
{

  return swift_deallocClassInstance();
}

void sub_22850D370()
{
  v1 = *(*v0 + 24);
  os_unfair_lock_lock((v1 + 24));
  sub_22850DD48((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void sub_22850D3CC()
{
  v1 = *(*v0 + 24);
  os_unfair_lock_lock((v1 + 24));
  sub_22850DD0C((v1 + 16));

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t SummaryTransactionInputSignal.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC14HealthPlatform29SummaryTransactionInputSignal_identifier;
  v2 = sub_22855C85C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t SummaryTransactionInputSignal.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC14HealthPlatform29SummaryTransactionInputSignal_identifier;
  v2 = sub_22855C85C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_22850D564@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC14HealthPlatform29SummaryTransactionInputSignal_identifier;
  v5 = sub_22855C85C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_22850D618()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v2);
  (*(v3 + 16))(v2, v3);
  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = *(v5 + 8);

  v7(sub_22850DDE0, v6, v4, v5);
}

uint64_t sub_22850D6F8()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_22850D750(uint64_t a1)
{
  v2 = sub_22850DB3C(qword_280DEAC68, type metadata accessor for SummaryTransactionInputSignal, &protocol conformance descriptor for SummaryTransactionInputSignal);

  return MEMORY[0x28216B080](a1, v2);
}

uint64_t sub_22850D7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = a7;
  v20 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a5, a7);
  sub_22855C84C();
  sub_2283FAB3C(&v18, a6 + 16);
  *(a6 + 56) = a1;
  *(a6 + 64) = a2;
  v16 = (a6 + OBJC_IVAR____TtC14HealthPlatform29SummaryTransactionInputSignal_observer);
  *v16 = a3;
  v16[1] = a4;
  return a6;
}

void *sub_22850D89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  Source = type metadata accessor for SummaryTransactionInputSignal.QuerySource();
  v13 = swift_allocObject();
  sub_22850DD70(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 16) = 0;
  *(v13 + 16) = a4;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v15[5] = Source;
  v15[6] = &off_283B89DC8;
  v15[2] = v13;
  sub_22855C84C();
  v15[7] = a1;
  v15[8] = a7;
  v16 = (v15 + OBJC_IVAR____TtC14HealthPlatform29SummaryTransactionInputSignal_observer);
  *v16 = a2;
  v16[1] = a3;
  return v15;
}

uint64_t sub_22850D984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  (*(v15 + 16))(v17, a5, a7);
  return sub_22850D7BC(a1, a2, a3, a4, v17, v18, a7, a8);
}

uint64_t sub_22850DB3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22850DB84(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2283EF310(255, &qword_280DE9280, 0x277CCD940);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22850DC08(uint64_t a1)
{
  result = sub_22855C85C();
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

void *sub_22850DD0C(void *result)
{
  if (*result)
  {
    return [*(v1 + 16) stopQuery_];
  }

  return result;
}

void sub_22850DD70(uint64_t a1)
{
  if (!qword_280DE9128)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22855DCFC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9128);
    }
  }
}

char *sub_22850DDE4(void (*a1)(uint64_t *__return_ptr, uint64_t *, double), uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = (a3 + 40);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = *v5;
    v17 = *(v5 - 1);
    v18 = v7;
    v8 = sub_2284D0B58(v17, v7);
    v19(&v15, &v17, v8);
    if (v3)
    {
      break;
    }

    sub_2284D0B6C(v17, v18);
    v9 = v16;
    v10 = v15;
    if (v16 == 255)
    {
      sub_22850F96C(v15, 0xFFu);
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_228426CC0(0, *(v6 + 2) + 1, 1, v6);
      }

      v12 = *(v6 + 2);
      v11 = *(v6 + 3);
      if (v12 >= v11 >> 1)
      {
        v6 = sub_228426CC0((v11 > 1), v12 + 1, 1, v6);
      }

      *(v6 + 2) = v12 + 1;
      v13 = &v6[16 * v12];
      *(v13 + 4) = v10;
      v13[40] = v9;
    }

    v5 += 16;
    if (!--v4)
    {
      return v6;
    }
  }

  sub_2284D0B6C(v17, v18);

  return v6;
}

void sub_22850DF48(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = sub_22855DB4C();
    v6 = a1 & 0xC000000000000001;
    if ((a1 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (*(a1 + 16) < v5)
    {
      return;
    }

    goto LABEL_7;
  }

  v5 = *(a2 + 16);
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (sub_22855DB4C() < v5)
  {
    return;
  }

LABEL_7:
  if (v4)
  {

    sub_22855DAFC();
    sub_2284B71B4();
    sub_228510094(&qword_280DED1D8, sub_2284B71B4, MEMORY[0x277D85378]);
    sub_22855D56C();
    v2 = v32;
    v7 = v33;
    v8 = v34;
    v9 = v35;
    v10 = v36;
  }

  else
  {
    v11 = -1 << *(v2 + 32);
    v7 = v2 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v2 + 56);

    v9 = 0;
  }

  sub_2284B71B4();
  v27 = v6;
  v14 = (v8 + 64) >> 6;
  v29 = v2;
  v15 = a1 + 56;
  v28 = v7;
  while (1)
  {
    while (v2 < 0)
    {
      if (!sub_22855DB8C())
      {
LABEL_35:
        sub_228407958(v2);
        return;
      }

      swift_dynamicCast();
      v20 = v10;
      v18 = v31;
      v30 = v20;
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_21:
      v19 = sub_22855DB9C();

      v10 = v30;
      if ((v19 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    v16 = v10;
    if (!v10)
    {
      break;
    }

LABEL_20:
    v30 = (v16 - 1) & v16;
    v31 = *(*(v2 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v16)))));
    v18 = v31;
    if (v6)
    {
      goto LABEL_21;
    }

LABEL_25:
    if (!*(a1 + 16) || (v21 = sub_22855D99C(), v22 = -1 << *(a1 + 32), v23 = v21 & ~v22, ((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0))
    {
LABEL_32:

      v2 = v29;
LABEL_33:
      sub_228407958(v2);
      return;
    }

    v24 = ~v22;
    while (1)
    {
      v25 = *(*(a1 + 48) + 8 * v23);
      v26 = sub_22855D9AC();

      if (v26)
      {
        break;
      }

      v23 = (v23 + 1) & v24;
      if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    v7 = v28;
    v2 = v29;
    v6 = v27;
    v10 = v30;
  }

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
      goto LABEL_35;
    }

    v16 = *(v7 + 8 * v9);
    ++v17;
    if (v16)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
}

uint64_t Publisher<>.mapSharedSummaryToPluginSharableModel()(uint64_t a1, uint64_t a2)
{
  sub_228510164(255, &qword_280DE9628, MEMORY[0x277D83940]);
  v2 = sub_22855CB6C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  sub_22855CE8C();
  swift_getWitnessTable();
  v6 = sub_22855CE6C();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t Publisher<>.createPluginSharableModelChangeInitialPublisher()(uint64_t a1, uint64_t a2)
{
  sub_228510164(255, &qword_280DE9628, MEMORY[0x277D83940]);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_22855CCCC();
  sub_228510110(255, &qword_280DE9620, MEMORY[0x277D83940]);
  swift_getWitnessTable();
  v4 = sub_22855CB6C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v10[1] = Publisher<>.mapSharedSummaryToPluginSharableModel()(a1, a2);
  sub_22855CE8C();

  swift_getWitnessTable();
  v8 = sub_22855CE6C();
  (*(v5 + 8))(v7, v4);
  return v8;
}

double sub_22850E61C@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_228510110(0, &qword_280DE8FB0, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_228560580;
  *(v4 + 32) = v3;
  *(v4 + 40) = 0;
  *a2 = v4;

  return result;
}

uint64_t sub_22850E69C@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v24 = a2;
  sub_228510164(0, qword_280DEBC68, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  v6 = type metadata accessor for PluginSharableModel(0);
  v29 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v34 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v28 = &v23 - v11;
  v12 = *a1;
  if (*a1 >> 62)
  {
    goto LABEL_19;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13)
  {
    do
    {
      v14 = 0;
      v32 = v12 & 0xFFFFFFFFFFFFFF8;
      v33 = v12 & 0xC000000000000001;
      v31 = (v29 + 56);
      v15 = MEMORY[0x277D84F90];
      v30 = (v29 + 48);
      *&v10 = 136446210;
      v25 = v10;
      v26 = v13;
      v27 = v12;
      while (v33)
      {
        v16 = MEMORY[0x22AAB9D20](v14, v12);
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_17;
        }

LABEL_9:
        v18 = v16;
        PluginSharableModel.init(sharedSummary:)(v18, v5);
        (*v31)(v5, 0, 1, v6);

        if ((*v30)(v5, 1, v6) == 1)
        {
          result = sub_2285101C4(v5);
        }

        else
        {
          v19 = v28;
          sub_2284B7280(v5, v28);
          sub_2284B7280(v19, v34);
          v20 = v17;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_228426C8C(0, v15[2] + 1, 1, v15);
          }

          v22 = v15[2];
          v21 = v15[3];
          if (v22 >= v21 >> 1)
          {
            v15 = sub_228426C8C((v21 > 1), v22 + 1, 1, v15);
          }

          v15[2] = v22 + 1;
          result = sub_2284B7280(v34, v15 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v22);
          v17 = v20;
        }

        ++v14;
        if (v17 == v13)
        {
          goto LABEL_21;
        }
      }

      if (v14 >= *(v32 + 16))
      {
        goto LABEL_18;
      }

      v16 = *(v12 + 8 * v14 + 32);
      v17 = v14 + 1;
      if (!__OFADD__(v14, 1))
      {
        goto LABEL_9;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      result = sub_22855DB4C();
      v13 = result;
    }

    while (result);
  }

  v15 = MEMORY[0x277D84F90];
LABEL_21:
  *v24 = v15;
  return result;
}

uint64_t Publisher.catchAndReplaceErrorWithEmpty(debugDescription:completesImmediately:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  *(v10 + 48) = a3;
  swift_getAssociatedTypeWitness();
  sub_22855CDEC();

  swift_getWitnessTable();
  sub_22855CEBC();
}

uint64_t sub_22850EC78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v41 = a4;
  v39 = a7;
  v40 = a6;
  v42 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v38 = &v34[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v15 = &v34[-v14];
  if (a3)
  {
    v43 = 0x20726F6620;
    v44 = 0xE500000000000000;
    MEMORY[0x22AAB92A0](a2, a3);
    v16 = v44;
    v37 = v43;
  }

  else
  {
    v37 = 0;
    v16 = 0xE000000000000000;
  }

  if (qword_280DEEBE8 != -1)
  {
    swift_once();
  }

  v17 = sub_22855CABC();
  __swift_project_value_buffer(v17, qword_280DEEBF0);
  v18 = *(v11 + 16);
  v18(v15, a1, AssociatedTypeWitness);

  v19 = sub_22855CA8C();
  v20 = sub_22855D68C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = AssociatedTypeWitness;
    v35 = v20;
    v23 = v21;
    v36 = swift_slowAlloc();
    v43 = v36;
    *v23 = 136446722;
    v24 = sub_22855E34C();
    v26 = sub_2283F8938(v24, v25, &v43);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2082;
    v27 = sub_2283F8938(v37, v16, &v43);

    *(v23 + 14) = v27;
    *(v23 + 22) = 2082;
    v18(v38, v15, v22);
    v28 = sub_22855D1BC();
    v30 = v29;
    (*(v11 + 8))(v15, v22);
    v31 = sub_2283F8938(v28, v30, &v43);

    *(v23 + 24) = v31;
    _os_log_impl(&dword_2283ED000, v19, v35, "[%{public}s] Error processing sharable models%{public}s: %{public}s", v23, 0x20u);
    v32 = v36;
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v32, -1, -1);
    MEMORY[0x22AABAD40](v23, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v15, AssociatedTypeWitness);
  }

  swift_getAssociatedTypeWitness();
  return sub_22855CDDC();
}

uint64_t Publisher<>.catchModelGenerationError()(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_22850F408(0);
  sub_228510094(&qword_280DE9810, sub_22850F408, MEMORY[0x277CBCE90]);
  sub_22855CEBC();
}

uint64_t sub_22850F124@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  if (qword_280DEEBE8 != -1)
  {
    swift_once();
  }

  v13 = sub_22855CABC();
  __swift_project_value_buffer(v13, qword_280DEEBF0);
  v14 = *(v7 + 16);
  v14(v12, a1, AssociatedTypeWitness);
  v15 = sub_22855CA8C();
  v16 = sub_22855D68C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25 = a4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136446210;
    v14(v10, v12, AssociatedTypeWitness);
    v20 = sub_22855D1CC();
    v22 = v21;
    (*(v7 + 8))(v12, AssociatedTypeWitness);
    v23 = sub_2283F8938(v20, v22, &v26);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_2283ED000, v15, v16, "PluginSharableModelChange Publisher Error: %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x22AABAD40](v19, -1, -1);
    MEMORY[0x22AABAD40](v18, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v12, AssociatedTypeWitness);
  }

  sub_228510110(0, &qword_280DE9620, MEMORY[0x277D83940]);
  return sub_22855CDDC();
}

void sub_22850F408(uint64_t a1)
{
  if (!qword_280DE9808)
  {
    sub_228510110(255, &qword_280DE9620, MEMORY[0x277D83940]);
    v1 = sub_22855CDEC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9808);
    }
  }
}

uint64_t Publisher<>.filter(identifiers:objectTypes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v23 = a1;
  v24 = a2;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228510110(255, &qword_280DE9620, MEMORY[0x277D83940]);
  v21[2] = v11;
  v12 = sub_22855CB6C();
  v22 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v21 - v13;
  (*(v8 + 16))(v10, v5, a3);
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  (*(v8 + 32))(v17 + v15, v10, a3);
  v18 = v24;
  *(v17 + v16) = v23;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;

  sub_22855CE8C();

  swift_getWitnessTable();
  v19 = sub_22855CE6C();
  (*(v22 + 8))(v14, v12);
  return v19;
}

char *sub_22850F70C@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v4 = (*(*(*(v2 + 16) - 8) + 80) + 32) & ~*(*(*(v2 + 16) - 8) + 80);
  v5 = (*(*(*(v2 + 16) - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v2 + v5);
  v8 = *(v2 + v6);
  v9 = *a1;
  v11[1] = *(v2 + 16);
  v12 = v2 + v4;
  v13 = v7;
  v14 = v8;
  result = sub_22850DDE4(sub_22850F948, v11, v9);
  *a2 = result;
  return result;
}

void sub_22850F7E4(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6 == 2)
  {
    v9 = *a1;
    if (a2)
    {
      sub_2284D0B58(v9, 2u);

      v11 = sub_22850F980(v5, a2);
    }

    else
    {
      sub_2284D0B58(v9, 2u);
      v11 = sub_228406280(v5);
    }

    v12 = v11;
    sub_2284D0B6C(v5, 2u);
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = sub_22840770C(*(v12 + 16), 0);
      v15 = sub_2284077A8(&v16, v14 + 4, v13, v12);
      sub_228407958(v16);
      if (v15 != v13)
      {
        __break(1u);
        return;
      }

      *a4 = v14;
      v8 = 2;
LABEL_15:
      *(a4 + 8) = v8;
      return;
    }

LABEL_14:

    *a4 = 0;
    v8 = -1;
    goto LABEL_15;
  }

  if (v6 == 1)
  {
    v7 = sub_22850FD00(*a1, a2, a3);
    if (*(v7 + 16))
    {
      *a4 = v7;
      v8 = 1;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (*(a1 + 8))
  {
    *a4 = v5;
    *(a4 + 8) = v6;
    sub_2284D0B58(v5, v6);
  }

  else
  {
    *a4 = sub_22850FD00(*a1, a2, a3);
    *(a4 + 8) = 0;
  }
}

uint64_t sub_22850F96C(uint64_t result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_2284D0B6C(result, a2);
  }

  return result;
}

unint64_t *sub_22850F980(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_22850FB20(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_2285100DC(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x22AABAD40](v14, -1, -1);
  }

  return v10;
}

unint64_t *sub_22850FB20(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v27 = a3 + 32;
  v8 = a4 + 56;
  v25 = result;
  v26 = v7;
  while (2)
  {
    v24 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v27 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          sub_22855E22C();

          sub_22855D20C();
          v13 = sub_22855E27C();
          v14 = -1 << *(a4 + 32);
          v15 = v13 & ~v14;
          v16 = v15 >> 6;
          v17 = 1 << v15;
          if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v18 = (*(a4 + 48) + 16 * v15);
        if (*v18 != v12 || v18[1] != v11)
        {
          v20 = ~v14;
          while ((sub_22855E15C() & 1) == 0)
          {
            v15 = (v15 + 1) & v20;
            v16 = v15 >> 6;
            v17 = 1 << v15;
            if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) == 0)
            {
              v7 = v26;
              goto LABEL_5;
            }

            v21 = (*(a4 + 48) + 16 * v15);
            if (*v21 == v12 && v21[1] == v11)
            {
              break;
            }
          }
        }

        v22 = v25[v16];
        v25[v16] = v22 | v17;
        if ((v22 & v17) == 0)
        {
          break;
        }

        v7 = v26;
        v6 = v9;
        if (v9 == v26)
        {
          goto LABEL_24;
        }
      }

      v5 = v24 + 1;
      v7 = v26;
      v6 = v9;
      if (!__OFADD__(v24, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  return sub_228525FAC(v25, a2, v24, a4);
}

uint64_t sub_22850FD00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PluginSharableModel(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v43 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = (&v37 - v10);
  if (a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = MEMORY[0x277D84FA0];
  }

  if (a3)
  {

    v44 = a3;
  }

  else if (MEMORY[0x277D84F90] >> 62 && sub_22855DB4C())
  {

    sub_22845FC94(MEMORY[0x277D84F90]);
    v44 = v36;
  }

  else
  {

    v44 = MEMORY[0x277D84FA0];
  }

  v13 = *(a1 + 16);

  v42 = v13;
  if (v13)
  {
    v14 = 0;
    v15 = *(v7 + 72);
    v38 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v41 = a1 + v38;
    v16 = v12 + 56;
    v17 = v44 & 0xFFFFFFFFFFFFFF8;
    if (v44 < 0)
    {
      v17 = v44;
    }

    v39 = v17;
    v40 = v44 & 0xC000000000000001;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_22848DB1C(v41 + v15 * v14, v11);
      if (*(v12 + 16))
      {
        v19 = *v11;
        v20 = v11[1];
        sub_22855E22C();
        sub_22855D20C();
        v21 = sub_22855E27C();
        v22 = -1 << *(v12 + 32);
        v23 = v21 & ~v22;
        if (((*(v16 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
LABEL_23:
          v27 = 0;
          if (!v40)
          {
            goto LABEL_24;
          }

          goto LABEL_28;
        }

        v24 = ~v22;
        while (1)
        {
          v25 = (*(v12 + 48) + 16 * v23);
          v26 = *v25 == v19 && v25[1] == v20;
          if (v26 || (sub_22855E15C() & 1) != 0)
          {
            break;
          }

          v23 = (v23 + 1) & v24;
          if (((*(v16 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
          {
            goto LABEL_23;
          }
        }
      }

      v27 = 1;
      if (!v40)
      {
LABEL_24:
        if (!*(v44 + 16))
        {
          goto LABEL_25;
        }

        goto LABEL_29;
      }

LABEL_28:
      if (!sub_22855DB4C())
      {
LABEL_25:
        if (v27)
        {
          goto LABEL_30;
        }

        goto LABEL_12;
      }

LABEL_29:

      v29 = sub_228428BF8(v28);

      sub_22850DF48(v44, v29);
      v31 = v30;

      if ((v27 & v31) == 1)
      {
LABEL_30:
        sub_2284B7280(v11, v43);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_228427710(0, *(v18 + 16) + 1, 1);
          v18 = v45;
        }

        v34 = *(v18 + 16);
        v33 = *(v18 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_228427710((v33 > 1), v34 + 1, 1);
          v18 = v45;
        }

        *(v18 + 16) = v34 + 1;
        sub_2284B7280(v43, v18 + v38 + v34 * v15);
        goto LABEL_13;
      }

LABEL_12:
      sub_22848D7D8(v11);
LABEL_13:
      if (++v14 == v42)
      {
        goto LABEL_36;
      }
    }
  }

  v18 = MEMORY[0x277D84F90];
LABEL_36:

  return v18;
}

uint64_t sub_228510094(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t *sub_2285100DC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t **a3@<X8>)
{
  result = sub_22850FB20(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

void sub_228510110(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for PluginSharableModelChange);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_228510164(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for PluginSharableModel(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2285101C4(uint64_t a1)
{
  sub_228510164(0, qword_280DEBC68, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double ProfileDisplayName.init(shortName:termsOfAddress:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a1;
  a4[3] = a2;
  a4[4] = a3;

  return result;
}

uint64_t ProfileDisplayName.shortName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ProfileDisplayName.shortNameWithSuggestion.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ProfileDisplayName.init(shortName:shortNameWithSuggestion:termsOfAddress:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t static ProfileDisplayName.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_22855E15C() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (sub_22855E15C() & 1) == 0)
  {
    return 0;
  }

  return sub_2284BCE44(v3, v7);
}

unint64_t sub_228510384()
{
  v1 = 0xD000000000000017;
  if (*v0 != 1)
  {
    v1 = 0x41664F736D726574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D614E74726F6873;
  }
}

uint64_t sub_2285103F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_228510FC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22851041C(uint64_t a1)
{
  v2 = sub_2285106D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_228510458(uint64_t a1)
{
  v2 = sub_2285106D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ProfileDisplayName.encode(to:)(void *a1)
{
  sub_228510A34(0, &qword_27D8405B0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = v1[2];
  v14 = v1[3];
  v15 = v8;
  v13 = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2285106D8();
  sub_22855E31C();
  v20 = 0;
  v9 = v16;
  sub_22855E08C();
  if (!v9)
  {
    v10 = v13;
    v19 = 1;
    sub_22855E08C();
    v17 = v10;
    v18 = 2;
    sub_228510DA4(0, &qword_27D8405C0, MEMORY[0x277CC8930], MEMORY[0x277D83940]);
    sub_228510A98(&qword_27D8405C8, &qword_27D8405D0, MEMORY[0x277CC8938], MEMORY[0x277D83948]);
    sub_22855E0CC();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2285106D8()
{
  result = qword_27D8405B8;
  if (!qword_27D8405B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8405B8);
  }

  return result;
}

uint64_t ProfileDisplayName.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_228510A34(0, &qword_27D8405D8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2285106D8();
  sub_22855E30C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v23 = 0;
  v10 = sub_22855DFFC();
  v12 = v11;
  v19 = v10;
  v22 = 1;
  v17 = sub_22855DFFC();
  v18 = v13;
  sub_228510DA4(0, &qword_27D8405C0, MEMORY[0x277CC8930], MEMORY[0x277D83940]);
  v21 = 2;
  sub_228510A98(&qword_27D8405E0, &qword_27D8405E8, MEMORY[0x277CC8948], MEMORY[0x277D83978]);
  sub_22855E03C();
  (*(v7 + 8))(v9, v6);
  v14 = v20;
  *a2 = v19;
  a2[1] = v12;
  v15 = v18;
  a2[2] = v17;
  a2[3] = v15;
  a2[4] = v14;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

void sub_228510A34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2285106D8();
    v7 = a3(a1, &type metadata for ProfileDisplayName.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_228510A98(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_228510DA4(255, &qword_27D8405C0, MEMORY[0x277CC8930], MEMORY[0x277D83940]);
    sub_228510B44(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_228510B44(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22855BEAC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_228510BB8(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_22855E15C() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (sub_22855E15C() & 1) == 0)
  {
    return 0;
  }

  return sub_2284BCE44(v3, v7);
}

uint64_t ProfileDisplayName.termsOfAddressOptions.getter()
{
  v1 = *(v0 + 32);

  sub_22855BF0C();
  sub_228510DA4(0, &qword_27D8405F0, MEMORY[0x277CC8C88], MEMORY[0x277D84560]);
  v2 = sub_22855BF1C();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_228560580;
  *(v5 + v4) = v1;
  (*(v3 + 104))(v5 + v4, *MEMORY[0x277CC8C80], v2);
  return sub_22855BEFC();
}

void sub_228510DA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228510E08(uint64_t a1, int a2)
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

uint64_t sub_228510E50(uint64_t result, int a2, int a3)
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

unint64_t sub_228510EBC()
{
  result = qword_27D8405F8;
  if (!qword_27D8405F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8405F8);
  }

  return result;
}

unint64_t sub_228510F14()
{
  result = qword_27D840600;
  if (!qword_27D840600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840600);
  }

  return result;
}

unint64_t sub_228510F6C()
{
  result = qword_27D840608;
  if (!qword_27D840608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840608);
  }

  return result;
}

uint64_t sub_228510FC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E74726F6873 && a2 == 0xE900000000000065;
  if (v4 || (sub_22855E15C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000228572F20 == a2 || (sub_22855E15C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x41664F736D726574 && a2 == 0xEE00737365726464)
  {

    return 2;
  }

  else
  {
    v6 = sub_22855E15C();

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

uint64_t KeywordFeatureTag.value.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

double sub_22851115C@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

uint64_t sub_228511D24()
{
  result = swift_getKeyPath();
  qword_280DEBD48 = result;
  return result;
}

uint64_t static KeywordFeatureTag.keyPath.getter()
{
  if (qword_280DEBD50 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static KeywordFeatureTag.keyPath.setter(uint64_t a1)
{
  if (qword_280DEBD50 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280DEBD48 = a1;
}

uint64_t (*static KeywordFeatureTag.keyPath.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_280DEBD50 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_228511ED4()
{
  if (qword_280DEBD50 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_2285120B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x277D84F90];
  sub_2284272C0(0, v1, 0);
  v2 = v29;
  v3 = a1 + 56;
  result = sub_22855DAAC();
  v5 = result;
  v6 = a1;
  v7 = 0;
  v27 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v6 + 32))
  {
    v10 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v28 = *(v6 + 36);
    v11 = v6;
    result = ContentKind.rawValue.getter();
    v13 = v2;
    v30 = v2;
    v14 = *(v2 + 16);
    v15 = *(v13 + 24);
    if (v14 >= v15 >> 1)
    {
      v24 = v12;
      v25 = result;
      sub_2284272C0((v15 > 1), v14 + 1, 1);
      v12 = v24;
      result = v25;
      v13 = v30;
    }

    *(v13 + 16) = v14 + 1;
    v16 = v13 + 16 * v14;
    *(v16 + 32) = result;
    *(v16 + 40) = v12;
    v8 = 1 << *(v11 + 32);
    if (v5 >= v8)
    {
      goto LABEL_22;
    }

    v17 = *(v3 + 8 * v10);
    if ((v17 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    v6 = v11;
    v2 = v13;
    if (v28 != *(v11 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v5 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v9 = v27;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 64 + 8 * v10);
      v9 = v27;
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_228416CB8(v5, v28, 0);
          v6 = a1;
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_228416CB8(v5, v28, 0);
      v6 = a1;
    }

LABEL_4:
    ++v7;
    v5 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t FeedItemChangeDomain.init(contentKinds:sourceProfiles:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_228429B98(a1);

  *a3 = v5;
  v6 = sub_228429EA4(a2);

  a3[1] = v6;
  return result;
}

uint64_t FeedItemChangeDomain.contentKinds.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t FeedItemChangeDomain.sourceProfiles.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

void FeedItemChangeDomain.merge(with:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  sub_2284430C8(v1);
  sub_2284431A4(v2);
}

uint64_t FeedItemChangeDomain.overlaps(with:)(uint64_t *a1)
{
  v2 = a1[1];
  v3 = *v1;
  v4 = v1[1];
  sub_2285124E8(*a1, v3);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    sub_228512F1C(v2, v4);
    v6 = v7 ^ 1;
  }

  return v6 & 1;
}

void sub_2285124E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if (v2 >= v3)
      {
        v4 = a1;
      }

      else
      {
        v4 = a2;
      }

      if (v2 >= v3)
      {
        v5 = a2;
      }

      else
      {
        v5 = a1;
      }

      v6 = v4 + 56;
      v7 = 1 << *(v4 + 32);
      v8 = -1;
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      v9 = v8 & *(v4 + 56);
      v10 = (v7 + 63) >> 6;
      v31 = v5 + 56;

      v11 = 0;
      while (v9)
      {
        v12 = v9;
LABEL_18:
        v9 = (v12 - 1) & v12;
        if (*(v5 + 16))
        {
          v14 = *(*(v4 + 48) + (__clz(__rbit64(v12)) | (v11 << 6)));
          sub_22855E22C();
          sub_22855D20C();

          v15 = sub_22855E27C();
          v16 = -1 << *(v5 + 32);
          v17 = v15 & ~v16;
          if ((*(v31 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
          {
            v28 = v9;
            v29 = v4;
            v30 = ~v16;
            while (2)
            {
              v18 = 0xE500000000000000;
              v19 = 0x7472656C61;
              switch(*(*(v5 + 48) + v17))
              {
                case 1:
                  break;
                case 2:
                  v18 = 0xE300000000000000;
                  v19 = 7368801;
                  break;
                case 3:
                  v18 = 0xE700000000000000;
                  v19 = 0x656C6369747261;
                  break;
                case 4:
                  v18 = 0xE800000000000000;
                  v19 = 0x79726F6765746163;
                  break;
                case 5:
                  v18 = 0xE400000000000000;
                  v19 = 1635017060;
                  break;
                case 6:
                  v19 = 0x67676F4C61746164;
                  v18 = 0xEB00000000676E69;
                  break;
                case 7:
                  v19 = 0x6D6D755361746164;
                  v18 = 0xEB00000000797261;
                  break;
                case 8:
                  v19 = 0xD000000000000010;
                  v18 = 0x800000022856CF30;
                  break;
                case 9:
                  v19 = 0xD000000000000010;
                  v18 = 0x800000022856CF50;
                  break;
                case 0xA:
                  v19 = 0xD000000000000010;
                  v18 = 0x800000022856CF70;
                  break;
                case 0xB:
                  v19 = 0x5365727574616566;
                  v18 = 0xED00007375746174;
                  break;
                case 0xC:
                  v18 = 0xE900000000000074;
                  goto LABEL_39;
                case 0xD:
                  v18 = 0xEF68637261655374;
LABEL_39:
                  v19 = 0x6867696C68676968;
                  break;
                case 0xE:
                  v19 = 0x697461676976616ELL;
                  v18 = 0xEA00000000006E6FLL;
                  break;
                case 0xF:
                  v18 = 0xE600000000000000;
                  v19 = 0x617461446F6ELL;
                  break;
                case 0x10:
                  v19 = 0x726568746FLL;
                  break;
                case 0x11:
                  v19 = 0x6D726F6674616C70;
                  v18 = 0xED00007472656C41;
                  break;
                case 0x12:
                  v19 = 0x6F69746F6D6F7270;
                  v18 = 0xE90000000000006ELL;
                  break;
                case 0x13:
                  v18 = 0xE600000000000000;
                  v19 = 0x74706D6F7270;
                  break;
                case 0x14:
                  v18 = 0xE700000000000000;
                  v19 = 0x656C69666F7270;
                  break;
                case 0x15:
                  v19 = 0x6E6F6974616C6572;
                  v18 = 0xEC00000070696873;
                  break;
                case 0x16:
                  v18 = 0xE800000000000000;
                  v19 = 0x73676E6974746573;
                  break;
                case 0x17:
                  v18 = 0xE600000000000000;
                  v19 = 0x657461647075;
                  break;
                case 0x18:
                  v18 = 0xE700000000000000;
                  v19 = 0x72616265646973;
                  break;
                default:
                  v19 = 0xD000000000000011;
                  v18 = 0x800000022856CEE0;
                  break;
              }

              v20 = 0xE500000000000000;
              v21 = 0x7472656C61;
              switch(v14)
              {
                case 1:
                  goto LABEL_93;
                case 2:
                  v20 = 0xE300000000000000;
                  if (v19 != 7368801)
                  {
                    goto LABEL_95;
                  }

                  goto LABEL_94;
                case 3:
                  v20 = 0xE700000000000000;
                  v24 = 0x6C6369747261;
                  goto LABEL_72;
                case 4:
                  v20 = 0xE800000000000000;
                  if (v19 != 0x79726F6765746163)
                  {
                    goto LABEL_95;
                  }

                  goto LABEL_94;
                case 5:
                  v20 = 0xE400000000000000;
                  if (v19 != 1635017060)
                  {
                    goto LABEL_95;
                  }

                  goto LABEL_94;
                case 6:
                  v25 = 0x67676F4C61746164;
                  v26 = 6778473;
                  goto LABEL_82;
                case 7:
                  v25 = 0x6D6D755361746164;
                  v26 = 7959137;
LABEL_82:
                  v20 = v26 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
                  if (v19 != v25)
                  {
                    goto LABEL_95;
                  }

                  goto LABEL_94;
                case 8:
                  v20 = 0x800000022856CF30;
                  if (v19 != 0xD000000000000010)
                  {
                    goto LABEL_95;
                  }

                  goto LABEL_94;
                case 9:
                  v20 = 0x800000022856CF50;
                  if (v19 != 0xD000000000000010)
                  {
                    goto LABEL_95;
                  }

                  goto LABEL_94;
                case 10:
                  v20 = 0x800000022856CF70;
                  if (v19 != 0xD000000000000010)
                  {
                    goto LABEL_95;
                  }

                  goto LABEL_94;
                case 11:
                  v22 = 0x5365727574616566;
                  v23 = 0x7375746174;
                  goto LABEL_69;
                case 12:
                  v20 = 0xE900000000000074;
                  goto LABEL_79;
                case 13:
                  v20 = 0xEF68637261655374;
LABEL_79:
                  if (v19 != 0x6867696C68676968)
                  {
                    goto LABEL_95;
                  }

                  goto LABEL_94;
                case 14:
                  v20 = 0xEA00000000006E6FLL;
                  if (v19 != 0x697461676976616ELL)
                  {
                    goto LABEL_95;
                  }

                  goto LABEL_94;
                case 15:
                  v20 = 0xE600000000000000;
                  if (v19 != 0x617461446F6ELL)
                  {
                    goto LABEL_95;
                  }

                  goto LABEL_94;
                case 16:
                  if (v19 != 0x726568746FLL)
                  {
                    goto LABEL_95;
                  }

                  goto LABEL_94;
                case 17:
                  v22 = 0x6D726F6674616C70;
                  v23 = 0x7472656C41;
LABEL_69:
                  v20 = v23 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                  if (v19 != v22)
                  {
                    goto LABEL_95;
                  }

                  goto LABEL_94;
                case 18:
                  v20 = 0xE90000000000006ELL;
                  if (v19 != 0x6F69746F6D6F7270)
                  {
                    goto LABEL_95;
                  }

                  goto LABEL_94;
                case 19:
                  v20 = 0xE600000000000000;
                  v21 = 0x74706D6F7270;
LABEL_93:
                  if (v19 == v21)
                  {
                    goto LABEL_94;
                  }

                  goto LABEL_95;
                case 20:
                  v20 = 0xE700000000000000;
                  v24 = 0x6C69666F7270;
LABEL_72:
                  if (v19 != (v24 & 0xFFFFFFFFFFFFLL | 0x65000000000000))
                  {
                    goto LABEL_95;
                  }

                  goto LABEL_94;
                case 21:
                  v20 = 0xEC00000070696873;
                  if (v19 != 0x6E6F6974616C6572)
                  {
                    goto LABEL_95;
                  }

                  goto LABEL_94;
                case 22:
                  v20 = 0xE800000000000000;
                  if (v19 != 0x73676E6974746573)
                  {
                    goto LABEL_95;
                  }

                  goto LABEL_94;
                case 23:
                  v20 = 0xE600000000000000;
                  if (v19 != 0x657461647075)
                  {
                    goto LABEL_95;
                  }

                  goto LABEL_94;
                case 24:
                  v20 = 0xE700000000000000;
                  if (v19 != 0x72616265646973)
                  {
                    goto LABEL_95;
                  }

                  goto LABEL_94;
                default:
                  v20 = 0x800000022856CEE0;
                  if (v19 != 0xD000000000000011)
                  {
                    goto LABEL_95;
                  }

LABEL_94:
                  if (v18 == v20)
                  {

                    return;
                  }

LABEL_95:
                  v27 = sub_22855E15C();

                  if (v27)
                  {

                    return;
                  }

                  v17 = (v17 + 1) & v30;
                  if ((*(v31 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
                  {
                    continue;
                  }

                  v9 = v28;
                  v4 = v29;
                  break;
              }

              break;
            }
          }
        }
      }

      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v10)
        {

          return;
        }

        v12 = *(v6 + 8 * v13);
        ++v11;
        if (v12)
        {
          v11 = v13;
          goto LABEL_18;
        }
      }

      __break(1u);
    }
  }
}

void sub_228512F1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v12 = 0;
  v24 = v4;
  while (1)
  {
    do
    {
      if (v9)
      {
        v13 = v9;
      }

      else
      {
        do
        {
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
            return;
          }

          if (v14 >= v10)
          {
            goto LABEL_33;
          }

          v13 = *(v5 + 8 * v14);
          ++v12;
        }

        while (!v13);
        v12 = v14;
      }

      v9 = (v13 - 1) & v13;
    }

    while (!*(v6 + 16));
    v25 = (v13 - 1) & v13;
    v15 = *(*(v4 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v13)))));
    sub_22855E22C();
    if (v15)
    {
      MEMORY[0x22AABA2B0](1);
      v16 = v15;
      sub_22855D9BC();
    }

    else
    {
      MEMORY[0x22AABA2B0](0);
    }

    v17 = sub_22855E27C();
    v18 = -1 << *(v6 + 32);
    v19 = v17 & ~v18;
    if ((*(v11 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
    {
      break;
    }

LABEL_14:

    v4 = v24;
    v9 = v25;
  }

  v20 = ~v18;
  while (1)
  {
    v21 = *(*(v6 + 48) + 8 * v19);
    if (!v21)
    {
      if (!v15)
      {
        goto LABEL_33;
      }

      goto LABEL_28;
    }

    if (v15)
    {
      sub_2284185F4();
      v22 = v21;
      v23 = sub_22855D9AC();

      if (v23)
      {
        break;
      }
    }

LABEL_28:
    v19 = (v19 + 1) & v20;
    if (((*(v11 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

LABEL_33:
}

unint64_t FeedItemChangeDomain.description.getter()
{
  v1 = *v0;
  sub_22855DC6C();

  sub_2285120B4(v1);
  sub_2283F78D8();
  sub_2283F7928();
  v2 = sub_22855D15C();
  v4 = v3;

  MEMORY[0x22AAB92A0](v2, v4);

  MEMORY[0x22AAB92A0](0xD000000000000012, 0x8000000228573AB0);
  sub_22842B914();
  v5 = sub_22855D52C();
  MEMORY[0x22AAB92A0](v5);

  return 0xD000000000000024;
}

uint64_t static FeedItemChangeDomain.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_228441950(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_22844211C(v2, v3);
}

uint64_t sub_2285132B0()
{
  if (*v0)
  {
    return 0x7250656372756F73;
  }

  else
  {
    return 0x4B746E65746E6F63;
  }
}

uint64_t sub_228513300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4B746E65746E6F63 && a2 == 0xEC00000073646E69;
  if (v6 || (sub_22855E15C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7250656372756F73 && a2 == 0xEE0073656C69666FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22855E15C();

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

uint64_t sub_2285133E8(uint64_t a1)
{
  v2 = sub_228513AEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_228513424(uint64_t a1)
{
  v2 = sub_228513AEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedItemChangeDomain.encode(to:)(void *a1)
{
  sub_228513B94(0, &qword_27D840610, sub_228513AEC, &type metadata for FeedItemChangeDomain.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v12 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_228513AEC();

  sub_22855E31C();
  v15 = v8;
  v14 = 0;
  sub_228513B94(0, &qword_27D840620, sub_22842BA18, &type metadata for ContentKind, MEMORY[0x277D83B48]);
  sub_228513BFC(&qword_27D840628, sub_22845DBD0, MEMORY[0x277D83B50]);
  v9 = v13;
  sub_22855E0CC();

  if (!v9)
  {
    v15 = v12;
    v14 = 1;
    sub_228513B94(0, &qword_27D840630, sub_22842B914, &type metadata for SourceProfile, MEMORY[0x277D83B48]);
    sub_228513CA0(&qword_27D840638, sub_228513B40, MEMORY[0x277D83B50]);
    sub_22855E0CC();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t FeedItemChangeDomain.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_228513B94(0, &qword_27D840648, sub_228513AEC, &type metadata for FeedItemChangeDomain.CodingKeys, MEMORY[0x277D844C8]);
  v14 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_228513AEC();
  sub_22855E30C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = v6;
  sub_228513B94(0, &qword_27D840620, sub_22842BA18, &type metadata for ContentKind, MEMORY[0x277D83B48]);
  v15 = 0;
  sub_228513BFC(&qword_27D840650, sub_22845DB7C, MEMORY[0x277D83B70]);
  v10 = v14;
  sub_22855E03C();
  v11 = v16;
  sub_228513B94(0, &qword_27D840630, sub_22842B914, &type metadata for SourceProfile, MEMORY[0x277D83B48]);
  v15 = 1;
  sub_228513CA0(&qword_27D840658, sub_228513D44, MEMORY[0x277D83B70]);
  sub_22855E03C();
  (*(v9 + 8))(v8, v10);
  v12 = v16;
  *a2 = v11;
  a2[1] = v12;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_228513A8C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_228441950(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_22844211C(v2, v3);
}

unint64_t sub_228513AEC()
{
  result = qword_27D840618;
  if (!qword_27D840618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840618);
  }

  return result;
}

unint64_t sub_228513B40()
{
  result = qword_27D840640;
  if (!qword_27D840640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840640);
  }

  return result;
}

void sub_228513B94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_228513BFC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_228513B94(255, &qword_27D840620, sub_22842BA18, &type metadata for ContentKind, MEMORY[0x277D83B48]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_228513CA0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_228513B94(255, &qword_27D840630, sub_22842B914, &type metadata for SourceProfile, MEMORY[0x277D83B48]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_228513D44()
{
  result = qword_27D840660;
  if (!qword_27D840660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840660);
  }

  return result;
}

unint64_t sub_228513DAC()
{
  result = qword_27D840668;
  if (!qword_27D840668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840668);
  }

  return result;
}

unint64_t sub_228513E04()
{
  result = qword_27D840670;
  if (!qword_27D840670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840670);
  }

  return result;
}

unint64_t sub_228513E5C()
{
  result = qword_27D840678;
  if (!qword_27D840678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840678);
  }

  return result;
}

uint64_t OrchestrationWorkQueueStatusObserver.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_228513F44(0);
  v1 = swift_allocObject();
  v1[1] = 0u;
  v1[2] = 0u;
  *(v1 + 44) = 0u;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t OrchestrationWorkQueueStatusObserver.init()()
{
  sub_228513F44(0);
  v1 = swift_allocObject();
  v1[1] = 0u;
  v1[2] = 0u;
  *(v1 + 44) = 0u;
  *(v0 + 16) = v1;
  return v0;
}

void sub_228513F44(uint64_t a1)
{
  if (!qword_280DE90F0)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22855DCFC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE90F0);
    }
  }
}

Swift::Void __swiftcall OrchestrationWorkQueueStatusObserver.didFinishStartup(latency:)(Swift::Double latency)
{
  v2 = sub_22855D17C();
  sub_22840012C(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228560580;
  *(inited + 32) = 0x79636E6574616CLL;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  sub_228400184(inited);
  swift_setDeallocating();
  sub_228514B5C(inited + 32);
  sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
  v4 = sub_22855D0DC();

  AnalyticsSendEvent();
}

Swift::Void __swiftcall OrchestrationWorkQueueStatusObserver.didEndForegroundSession(planCount:duration:)(Swift::Int planCount, Swift::Double duration)
{
  if (qword_280DE9DF0 != -1)
  {
    swift_once();
  }

  v4 = sub_22855CABC();
  __swift_project_value_buffer(v4, qword_280DE9DF8);
  v5 = sub_22855CA8C();
  v6 = sub_22855D66C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134218240;
    *(v7 + 4) = planCount;
    *(v7 + 12) = 2048;
    *(v7 + 14) = duration;
    _os_log_impl(&dword_2283ED000, v5, v6, "Finished foreground session with %ld plans over %fs.", v7, 0x16u);
    MEMORY[0x22AABAD40](v7, -1, -1);
  }

  v8 = sub_22855D17C();
  sub_22840012C(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228560570;
  *(inited + 32) = 0x736E616C70;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0x6E6F697461727564;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  sub_228400184(inited);
  swift_setDeallocating();
  sub_228400378(0);
  swift_arrayDestroy();
  sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
  v10 = sub_22855D0DC();

  AnalyticsSendEvent();
}

uint64_t sub_22851430C(void *a1)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_2283FF03C(0, &qword_27D840688, MEMORY[0x277D839B0], MEMORY[0x277CBCEA8]);
  swift_allocObject();
  v5 = a1;
  sub_22855CE0C();
  sub_228514CF4();
  v6 = sub_22855CE6C();

  return v6;
}

void sub_22851440C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = qword_280DE9DF0;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = sub_22855CABC();
  __swift_project_value_buffer(v10, qword_280DE9DF8);
  v11 = a3;
  v12 = sub_22855CA8C();
  v13 = sub_22855D6AC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136315395;
    v16 = sub_22855E34C();
    v29 = a4;
    v18 = sub_2283F8938(v16, v17, aBlock);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2081;
    v19 = [v11 profileIdentifier];
    v20 = [v19 description];
    v21 = sub_22855D1AC();
    v23 = v22;

    v24 = sub_2283F8938(v21, v23, aBlock);

    *(v14 + 14) = v24;
    a4 = v29;
    _os_log_impl(&dword_2283ED000, v12, v13, "[%s] Pushing shared summaries for %{private}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v15, -1, -1);
    MEMORY[0x22AABAD40](v14, -1, -1);
  }

  v25 = [objc_allocWithZone(MEMORY[0x277CCD930]) initWithHealthStore_];
  v26 = swift_allocObject();
  v26[2] = sub_228476D24;
  v26[3] = v8;
  v26[4] = v11;
  v26[5] = a4;
  aBlock[4] = sub_228514D70;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2284A72DC;
  aBlock[3] = &block_descriptor_26;
  v27 = _Block_copy(aBlock);
  v28 = v11;

  [v25 pushWithCompletion_];
  _Block_release(v27);
}

void sub_22851470C(char a1, id a2, void (*a3)(id, uint64_t), uint64_t a4, void *a5, uint64_t a6)
{
  if (a2)
  {
    v8 = a2;
    if (qword_280DE9DF0 != -1)
    {
      swift_once();
    }

    v9 = sub_22855CABC();
    __swift_project_value_buffer(v9, qword_280DE9DF8);
    v10 = a2;
    v11 = sub_22855CA8C();
    v12 = sub_22855D68C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v41 = v14;
      *v13 = 136315394;
      v15 = sub_22855E34C();
      v17 = sub_2283F8938(v15, v16, &v41);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2082;
      v18 = a2;
      sub_22842BFBC(0, &qword_280DECFE0, MEMORY[0x277D84948], 1);
      v19 = sub_22855D1CC();
      v21 = sub_2283F8938(v19, v20, &v41);

      *(v13 + 14) = v21;
      _os_log_impl(&dword_2283ED000, v11, v12, "[%s] Shared Summaries Push Error: %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v14, -1, -1);
      MEMORY[0x22AABAD40](v13, -1, -1);
    }

    v22 = a2;
    a3(a2, 1);
  }

  else
  {
    if (qword_280DE9DF0 != -1)
    {
      swift_once();
    }

    v25 = sub_22855CABC();
    __swift_project_value_buffer(v25, qword_280DE9DF8);
    v26 = a5;
    v27 = sub_22855CA8C();
    v28 = sub_22855D6AC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = v40;
      *v29 = 136315651;
      v30 = sub_22855E34C();
      v32 = sub_2283F8938(v30, v31, &v41);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2081;
      v33 = [v26 profileIdentifier];
      v34 = [v33 description];
      v35 = sub_22855D1AC();
      v36 = a3;
      v38 = v37;

      v39 = sub_2283F8938(v35, v38, &v41);
      a3 = v36;

      *(v29 + 14) = v39;
      *(v29 + 22) = 1024;
      *(v29 + 24) = a1 & 1;
      _os_log_impl(&dword_2283ED000, v27, v28, "[%s] Successfully pushed shared summaries for %{private}s. Success: %{BOOL}d", v29, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v40, -1, -1);
      MEMORY[0x22AABAD40](v29, -1, -1);
    }

    a3((a1 & 1), 0);
  }
}

uint64_t OrchestrationWorkQueueStatusObserver.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_228514B5C(uint64_t a1)
{
  sub_228400378(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_228514C08(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_228514C28(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

unint64_t sub_228514C6C()
{
  result = qword_280DE8EB8;
  if (!qword_280DE8EB8)
  {
    sub_2283FF03C(255, &qword_280DE8EB0, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE8EB8);
  }

  return result;
}

unint64_t sub_228514CF4()
{
  result = qword_27D840690;
  if (!qword_27D840690)
  {
    sub_2283FF03C(255, &qword_27D840688, MEMORY[0x277D839B0], MEMORY[0x277CBCEA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840690);
  }

  return result;
}

uint64_t DefaultHKSharedSummaryTransactionProvider.init(healthStore:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for HealthStoreHKSharedSummaryTransactionSource();
  result = swift_allocObject();
  *(result + 16) = a1;
  a2[3] = v4;
  a2[4] = &protocol witness table for HealthStoreHKSharedSummaryTransactionSource;
  *a2 = result;
  return result;
}

uint64_t _s14HealthPlatform41DefaultHKSharedSummaryTransactionProviderV09fetchOpenF0So0deF0CSgyYaAA0iF10FetchErrorOYKF(uint64_t a1)
{
  *(v2 + 48) = v1;
  *(v2 + 56) = a1;
  return MEMORY[0x2822009F8](sub_228514DF0, 0, 0);
}

uint64_t sub_228514DF0()
{
  v1 = *(v0 + 48);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_228514F18;

  return v6(0, v2, v3);
}

uint64_t sub_228514F18(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;

  return MEMORY[0x2822009F8](sub_228515018, 0, 0);
}

uint64_t sub_228515018()
{
  v32 = v0;
  v2 = *(v0 + 80);
  if (v2)
  {

    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v3 = sub_22855CABC();
    __swift_project_value_buffer(v3, qword_280DEEC98);
    v4 = v2;
    v5 = sub_22855CA8C();
    v6 = sub_22855D6AC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v31 = v9;
      *v7 = 136315650;
      *(v7 + 4) = sub_2283F8938(0xD000000000000029, 0x8000000228569CC0, &v31);
      *(v7 + 12) = 2080;
      *(v7 + 14) = sub_2283F8938(0xD000000000000016, 0x8000000228573C30, &v31);
      *(v7 + 22) = 2112;
      v10 = v2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 24) = v11;
      *v8 = v11;
      _os_log_impl(&dword_2283ED000, v5, v6, "[%s][%s]: Failed to fetch open transaction: %@", v7, 0x20u);
      sub_22841DC98(v8);
      MEMORY[0x22AABAD40](v8, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v9, -1, -1);
      MEMORY[0x22AABAD40](v7, -1, -1);
    }

    v12 = *(v0 + 80);
    v13 = *(v0 + 56);
    *v13 = v12;
    *(v13 + 8) = 1;
    *(v0 + 32) = v12;
    *(v0 + 40) = 1;
    sub_228516B64();
    swift_willThrowTypedImpl();
LABEL_7:
    v14 = *(v0 + 8);

    return v14();
  }

  if (!*(v0 + 72))
  {
    goto LABEL_26;
  }

  v16 = sub_228515698(0, *(v0 + 72));

  if (!(v16 >> 62))
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

  if (!sub_22855DB4C())
  {
LABEL_25:

LABEL_26:
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v25 = sub_22855CABC();
    __swift_project_value_buffer(v25, qword_280DEEC98);
    v26 = sub_22855CA8C();
    v27 = sub_22855D66C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31 = v29;
      *v28 = 136315394;
      *(v28 + 4) = sub_2283F8938(0xD000000000000029, 0x8000000228569CC0, &v31);
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_2283F8938(0xD000000000000016, 0x8000000228573C30, &v31);
      _os_log_impl(&dword_2283ED000, v26, v27, "[%s][%s]: Could not find any valid open transactions", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v29, -1, -1);
      MEMORY[0x22AABAD40](v28, -1, -1);
    }

    v18 = 0;
    goto LABEL_31;
  }

LABEL_13:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x22AAB9D20](0, v16);
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_36;
    }

    v17 = *(v16 + 32);
  }

  v1 = v17;
  if (v16 >> 62)
  {
    if (sub_22855DB4C() < 2)
    {
      goto LABEL_18;
    }

LABEL_20:
    if (qword_280DEEC90 == -1)
    {
LABEL_21:
      v19 = sub_22855CABC();
      __swift_project_value_buffer(v19, qword_280DEEC98);
      v20 = sub_22855CA8C();
      v21 = sub_22855D68C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v31 = v23;
        *v22 = 136315394;
        *(v22 + 4) = sub_2283F8938(0xD000000000000029, 0x8000000228569CC0, &v31);
        *(v22 + 12) = 2080;
        *(v22 + 14) = sub_2283F8938(0xD000000000000016, 0x8000000228573C30, &v31);
        _os_log_impl(&dword_2283ED000, v20, v21, "[%s][%s]: Found multiple open transactions", v22, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v23, -1, -1);
        MEMORY[0x22AABAD40](v22, -1, -1);
      }

      v24 = *(v0 + 56);
      *v24 = v16;
      *(v24 + 8) = 0;
      *(v0 + 16) = v16;
      *(v0 + 24) = 0;
      sub_228516B64();
      swift_willThrowTypedImpl();

      goto LABEL_7;
    }

LABEL_36:
    swift_once();
    goto LABEL_21;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
  {
    goto LABEL_20;
  }

LABEL_18:

  v18 = v1;
LABEL_31:
  v30 = *(v0 + 8);

  return v30(v18);
}