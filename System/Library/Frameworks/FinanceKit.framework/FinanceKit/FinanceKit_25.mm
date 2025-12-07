void sub_1B73EF608(uint64_t a1, void *a2, void (*a3)(void), uint64_t *a4, uint64_t *a5, id a6)
{
  v49 = a2;
  v46 = sub_1B77FF4F8();
  v13 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a1;
  v16 = *(a1 + 16);
  if (!v16)
  {
    return;
  }

  v38 = a3;
  v41 = a6;
  v42 = a4;
  v40 = a5;
  v43 = v7;
  v17 = 0;
  v39 = v6;
  v44 = MEMORY[0x1E69E7CC0];
  v45 = &v6[qword_1EDB08730];
  v47 = (v13 + 8);
  v48 = v13 + 16;
  v52 = MEMORY[0x1E69E7CC0];
  v18 = v46;
  do
  {
    v19 = v17;
    while (1)
    {
      if (v19 >= v16)
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      a6 = v16;
      (*(v13 + 2))(v15, v50 + ((v13[80] + 32) & ~v13[80]) + *(v13 + 9) * v19, v18);
      v17 = (v19 + 1);
      if (__OFADD__(v19, 1))
      {
        goto LABEL_29;
      }

      v20 = sub_1B77FF3F8();
      v21 = [v49 managedObjectIDForURIRepresentation_];

      if (v21)
      {
        break;
      }

LABEL_6:
      (*v47)(v15, v18);
      ++v19;
      v16 = a6;
      if (v17 == a6)
      {
        goto LABEL_22;
      }
    }

    if ([v21 isTemporaryID])
    {
      goto LABEL_5;
    }

    v22 = [v21 persistentStore];
    if (!v22)
    {
      goto LABEL_5;
    }

    v23 = v22;
    v24 = [v22 identifier];

    if (!v24)
    {
      goto LABEL_5;
    }

    v25 = sub_1B7800868();
    v27 = v26;

    v28 = *(v45 + 1);
    if (!v28)
    {

LABEL_5:

      v18 = v46;
      goto LABEL_6;
    }

    if (v25 != *v45 || v28 != v27)
    {
      v29 = sub_1B78020F8();

      if (v29)
      {
        goto LABEL_19;
      }

      goto LABEL_5;
    }

LABEL_19:
    v18 = v46;
    v30 = (*v47)(v15, v46);
    MEMORY[0x1B8CA4F20](v30);
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B7800C58();
    }

    sub_1B7800C88();
    v44 = v52;
    v16 = a6;
  }

  while (v17 != a6);
LABEL_22:
  v38(0);
  a6 = [swift_getObjCClassFromMetadata() fetchRequest];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0, &unk_1B780B330);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1B780B190;
  sub_1B7205540(0, &qword_1EDAFAF30, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1B7807CD0;
  *(v32 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A40, &unk_1B78388A0);
  *(v32 + 64) = sub_1B73F1774();
  *(v32 + 32) = v44;
  *(v31 + 32) = sub_1B78010E8();
  v51 = v31;
  v15 = v39;
  v33 = *&v39[qword_1EDB08728];
  if (v33)
  {
    v13 = v33;
    MEMORY[0x1B8CA4F20]();
    v18 = v42;
    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_24:
      sub_1B7800C88();

      goto LABEL_26;
    }

LABEL_30:
    sub_1B7800C58();
    goto LABEL_24;
  }

  v18 = v42;
LABEL_26:
  v34 = sub_1B7800C18();

  v35 = [objc_opt_self() andPredicateWithSubpredicates_];

  [a6 setPredicate_];
  [a6 setReturnsObjectsAsFaults_];
  v36 = [*(*&v15[qword_1EDB08748] + 16) newBackgroundContext];
  *(&v37 - 4) = MEMORY[0x1EEE9AC00](v36);
  *(&v37 - 3) = a6;
  *(&v37 - 2) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(v18, v40);
  sub_1B7801468();
}

void *sub_1B73EFBB4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34[1] = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A90, &qword_1B7824CB8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - v8;
  v33 = type metadata accessor for FinHealthTransactionInsight.EntityGroup(0);
  v28 = *(v33 - 8);
  v10 = MEMORY[0x1EEE9AC00](v33);
  v32 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v27 = &v26 - v12;
  v13 = [objc_opt_self() currentQueryGenerationToken];
  v34[0] = 0;
  v14 = [a1 setQueryGenerationFromToken:v13 error:v34];

  if (v14)
  {
    v15 = v34[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A60, &qword_1B78388B0);
    v16 = sub_1B7801498();
    if (!v3)
    {
      v17 = v16;
      if (v16 >> 62)
      {
        goto LABEL_24;
      }

      for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7801958())
      {
        v19 = 0;
        v30 = v17 & 0xFFFFFFFFFFFFFF8;
        v31 = v17 & 0xC000000000000001;
        v20 = (v28 + 48);
        v4 = MEMORY[0x1E69E7CC0];
        v26 = a3;
        v29 = i;
        while (v31)
        {
          MEMORY[0x1B8CA5DC0](v19, v17);
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_22;
          }

LABEL_11:
          sub_1B73F10F4(a3, type metadata accessor for ManagedFinHealthTransactionEntityGroup, type metadata accessor for FinHealthTransactionInsight.EntityGroup, v9);
          swift_unknownObjectRelease();
          if ((*v20)(v9, 1, v33) == 1)
          {
            sub_1B7205418(v9, &qword_1EB993A90, &qword_1B7824CB8);
          }

          else
          {
            v22 = v27;
            sub_1B73F1A98(v9, v27, type metadata accessor for FinHealthTransactionInsight.EntityGroup);
            sub_1B73F1A98(v22, v32, type metadata accessor for FinHealthTransactionInsight.EntityGroup);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v4 = sub_1B723E97C(0, v4[2] + 1, 1, v4);
            }

            v24 = v4[2];
            v23 = v4[3];
            if (v24 >= v23 >> 1)
            {
              v4 = sub_1B723E97C((v23 > 1), v24 + 1, 1, v4);
            }

            v4[2] = v24 + 1;
            sub_1B73F1A98(v32, v4 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24, type metadata accessor for FinHealthTransactionInsight.EntityGroup);
            a3 = v26;
          }

          ++v19;
          if (v21 == v29)
          {
            goto LABEL_26;
          }
        }

        if (v19 >= *(v30 + 16))
        {
          goto LABEL_23;
        }

        swift_unknownObjectRetain();
        v21 = v19 + 1;
        if (!__OFADD__(v19, 1))
        {
          goto LABEL_11;
        }

LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        ;
      }

      v4 = MEMORY[0x1E69E7CC0];
LABEL_26:
    }
  }

  else
  {
    v4 = v34[0];
    sub_1B77FF318();

    swift_willThrow();
  }

  return v4;
}

void *sub_1B73EFFF4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34[1] = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991920, &qword_1B7814D00);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - v8;
  v33 = type metadata accessor for InternalAccount(0);
  v28 = *(v33 - 8);
  v10 = MEMORY[0x1EEE9AC00](v33);
  v32 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v27 = &v26 - v12;
  v13 = [objc_opt_self() currentQueryGenerationToken];
  v34[0] = 0;
  v14 = [a1 setQueryGenerationFromToken:v13 error:v34];

  if (v14)
  {
    v15 = v34[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A60, &qword_1B78388B0);
    v16 = sub_1B7801498();
    if (!v3)
    {
      v17 = v16;
      if (v16 >> 62)
      {
        goto LABEL_24;
      }

      for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7801958())
      {
        v19 = 0;
        v30 = v17 & 0xFFFFFFFFFFFFFF8;
        v31 = v17 & 0xC000000000000001;
        v20 = (v28 + 48);
        v4 = MEMORY[0x1E69E7CC0];
        v26 = a3;
        v29 = i;
        while (v31)
        {
          MEMORY[0x1B8CA5DC0](v19, v17);
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_22;
          }

LABEL_11:
          sub_1B73F10F4(a3, type metadata accessor for ManagedInternalAccount, type metadata accessor for InternalAccount, v9);
          swift_unknownObjectRelease();
          if ((*v20)(v9, 1, v33) == 1)
          {
            sub_1B7205418(v9, &qword_1EB991920, &qword_1B7814D00);
          }

          else
          {
            v22 = v27;
            sub_1B73F1A98(v9, v27, type metadata accessor for InternalAccount);
            sub_1B73F1A98(v22, v32, type metadata accessor for InternalAccount);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v4 = sub_1B723E3F8(0, v4[2] + 1, 1, v4);
            }

            v24 = v4[2];
            v23 = v4[3];
            if (v24 >= v23 >> 1)
            {
              v4 = sub_1B723E3F8((v23 > 1), v24 + 1, 1, v4);
            }

            v4[2] = v24 + 1;
            sub_1B73F1A98(v32, v4 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24, type metadata accessor for InternalAccount);
            a3 = v26;
          }

          ++v19;
          if (v21 == v29)
          {
            goto LABEL_26;
          }
        }

        if (v19 >= *(v30 + 16))
        {
          goto LABEL_23;
        }

        swift_unknownObjectRetain();
        v21 = v19 + 1;
        if (!__OFADD__(v19, 1))
        {
          goto LABEL_11;
        }

LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        ;
      }

      v4 = MEMORY[0x1E69E7CC0];
LABEL_26:
    }
  }

  else
  {
    v4 = v34[0];
    sub_1B77FF318();

    swift_willThrow();
  }

  return v4;
}

void *sub_1B73F0434(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34[1] = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A80, &qword_1B7824C98);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - v8;
  v33 = type metadata accessor for BankConnectConsent(0);
  v28 = *(v33 - 8);
  v10 = MEMORY[0x1EEE9AC00](v33);
  v32 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v27 = &v26 - v12;
  v13 = [objc_opt_self() currentQueryGenerationToken];
  v34[0] = 0;
  v14 = [a1 setQueryGenerationFromToken:v13 error:v34];

  if (v14)
  {
    v15 = v34[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A60, &qword_1B78388B0);
    v16 = sub_1B7801498();
    if (!v3)
    {
      v17 = v16;
      if (v16 >> 62)
      {
        goto LABEL_24;
      }

      for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7801958())
      {
        v19 = 0;
        v30 = v17 & 0xFFFFFFFFFFFFFF8;
        v31 = v17 & 0xC000000000000001;
        v20 = (v28 + 48);
        v4 = MEMORY[0x1E69E7CC0];
        v26 = a3;
        v29 = i;
        while (v31)
        {
          MEMORY[0x1B8CA5DC0](v19, v17);
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_22;
          }

LABEL_11:
          sub_1B73F10F4(a3, type metadata accessor for ManagedConsent, type metadata accessor for BankConnectConsent, v9);
          swift_unknownObjectRelease();
          if ((*v20)(v9, 1, v33) == 1)
          {
            sub_1B7205418(v9, &qword_1EB993A80, &qword_1B7824C98);
          }

          else
          {
            v22 = v27;
            sub_1B73F1A98(v9, v27, type metadata accessor for BankConnectConsent);
            sub_1B73F1A98(v22, v32, type metadata accessor for BankConnectConsent);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v4 = sub_1B723E9EC(0, v4[2] + 1, 1, v4);
            }

            v24 = v4[2];
            v23 = v4[3];
            if (v24 >= v23 >> 1)
            {
              v4 = sub_1B723E9EC((v23 > 1), v24 + 1, 1, v4);
            }

            v4[2] = v24 + 1;
            sub_1B73F1A98(v32, v4 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24, type metadata accessor for BankConnectConsent);
            a3 = v26;
          }

          ++v19;
          if (v21 == v29)
          {
            goto LABEL_26;
          }
        }

        if (v19 >= *(v30 + 16))
        {
          goto LABEL_23;
        }

        swift_unknownObjectRetain();
        v21 = v19 + 1;
        if (!__OFADD__(v19, 1))
        {
          goto LABEL_11;
        }

LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        ;
      }

      v4 = MEMORY[0x1E69E7CC0];
LABEL_26:
    }
  }

  else
  {
    v4 = v34[0];
    sub_1B77FF318();

    swift_willThrow();
  }

  return v4;
}

void *sub_1B73F0874(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34[1] = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F7B0, &unk_1B7824CD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - v8;
  v33 = type metadata accessor for InternalTransaction(0);
  v28 = *(v33 - 8);
  v10 = MEMORY[0x1EEE9AC00](v33);
  v32 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v27 = &v26 - v12;
  v13 = [objc_opt_self() currentQueryGenerationToken];
  v34[0] = 0;
  v14 = [a1 setQueryGenerationFromToken:v13 error:v34];

  if (v14)
  {
    v15 = v34[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A60, &qword_1B78388B0);
    v16 = sub_1B7801498();
    if (!v3)
    {
      v17 = v16;
      if (v16 >> 62)
      {
        goto LABEL_24;
      }

      for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7801958())
      {
        v19 = 0;
        v30 = v17 & 0xFFFFFFFFFFFFFF8;
        v31 = v17 & 0xC000000000000001;
        v20 = (v28 + 48);
        v4 = MEMORY[0x1E69E7CC0];
        v26 = a3;
        v29 = i;
        while (v31)
        {
          MEMORY[0x1B8CA5DC0](v19, v17);
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_22;
          }

LABEL_11:
          sub_1B73F10F4(a3, type metadata accessor for ManagedInternalTransaction, type metadata accessor for InternalTransaction, v9);
          swift_unknownObjectRelease();
          if ((*v20)(v9, 1, v33) == 1)
          {
            sub_1B7205418(v9, &qword_1EB98F7B0, &unk_1B7824CD0);
          }

          else
          {
            v22 = v27;
            sub_1B73F1A98(v9, v27, type metadata accessor for InternalTransaction);
            sub_1B73F1A98(v22, v32, type metadata accessor for InternalTransaction);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v4 = sub_1B723EA38(0, v4[2] + 1, 1, v4);
            }

            v24 = v4[2];
            v23 = v4[3];
            if (v24 >= v23 >> 1)
            {
              v4 = sub_1B723EA38((v23 > 1), v24 + 1, 1, v4);
            }

            v4[2] = v24 + 1;
            sub_1B73F1A98(v32, v4 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24, type metadata accessor for InternalTransaction);
            a3 = v26;
          }

          ++v19;
          if (v21 == v29)
          {
            goto LABEL_26;
          }
        }

        if (v19 >= *(v30 + 16))
        {
          goto LABEL_23;
        }

        swift_unknownObjectRetain();
        v21 = v19 + 1;
        if (!__OFADD__(v19, 1))
        {
          goto LABEL_11;
        }

LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        ;
      }

      v4 = MEMORY[0x1E69E7CC0];
LABEL_26:
    }
  }

  else
  {
    v4 = v34[0];
    sub_1B77FF318();

    swift_willThrow();
  }

  return v4;
}

void *sub_1B73F0CB4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34[1] = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A70, &qword_1B78097D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - v8;
  v33 = type metadata accessor for InternalAccountBalance(0);
  v28 = *(v33 - 8);
  v10 = MEMORY[0x1EEE9AC00](v33);
  v32 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v27 = &v26 - v12;
  v13 = [objc_opt_self() currentQueryGenerationToken];
  v34[0] = 0;
  v14 = [a1 setQueryGenerationFromToken:v13 error:v34];

  if (v14)
  {
    v15 = v34[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A60, &qword_1B78388B0);
    v16 = sub_1B7801498();
    if (!v3)
    {
      v17 = v16;
      if (v16 >> 62)
      {
        goto LABEL_24;
      }

      for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7801958())
      {
        v19 = 0;
        v30 = v17 & 0xFFFFFFFFFFFFFF8;
        v31 = v17 & 0xC000000000000001;
        v20 = (v28 + 48);
        v4 = MEMORY[0x1E69E7CC0];
        v26 = a3;
        v29 = i;
        while (v31)
        {
          MEMORY[0x1B8CA5DC0](v19, v17);
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_22;
          }

LABEL_11:
          sub_1B73F10F4(a3, type metadata accessor for ManagedInternalAccountBalance, type metadata accessor for InternalAccountBalance, v9);
          swift_unknownObjectRelease();
          if ((*v20)(v9, 1, v33) == 1)
          {
            sub_1B7205418(v9, &qword_1EB993A70, &qword_1B78097D0);
          }

          else
          {
            v22 = v27;
            sub_1B73F1A98(v9, v27, type metadata accessor for InternalAccountBalance);
            sub_1B73F1A98(v22, v32, type metadata accessor for InternalAccountBalance);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v4 = sub_1B723EA84(0, v4[2] + 1, 1, v4);
            }

            v24 = v4[2];
            v23 = v4[3];
            if (v24 >= v23 >> 1)
            {
              v4 = sub_1B723EA84((v23 > 1), v24 + 1, 1, v4);
            }

            v4[2] = v24 + 1;
            sub_1B73F1A98(v32, v4 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24, type metadata accessor for InternalAccountBalance);
            a3 = v26;
          }

          ++v19;
          if (v21 == v29)
          {
            goto LABEL_26;
          }
        }

        if (v19 >= *(v30 + 16))
        {
          goto LABEL_23;
        }

        swift_unknownObjectRetain();
        v21 = v19 + 1;
        if (!__OFADD__(v19, 1))
        {
          goto LABEL_11;
        }

LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        ;
      }

      v4 = MEMORY[0x1E69E7CC0];
LABEL_26:
    }
  }

  else
  {
    v4 = v34[0];
    sub_1B77FF318();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_1B73F10F4@<X0>(uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  a3(0);
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v11 = *(a2 + qword_1EDB08740);
    swift_unknownObjectRetain();
    v11(v10);
    if (!v5)
    {
      v20 = a4(0);
      (*(*(v20 - 8) + 56))(a5, 0, 1, v20);
      return swift_unknownObjectRelease();
    }

    if (qword_1EDAF6588 != -1)
    {
      swift_once();
    }

    v12 = sub_1B78000B8();
    __swift_project_value_buffer(v12, qword_1EDAF6590);
    swift_unknownObjectRetain();
    v13 = sub_1B7800098();
    v14 = sub_1B78011D8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v10;
      *v16 = v10;
      swift_unknownObjectRetain();
      _os_log_impl(&dword_1B7198000, v13, v14, "Unable to convert %@ into a model", v15, 0xCu);
      sub_1B7205418(v16, &qword_1EB9910D0, &unk_1B780D910);
      MEMORY[0x1B8CA7A40](v16, -1, -1);
      MEMORY[0x1B8CA7A40](v15, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_1EDAF6588 != -1)
    {
      swift_once();
    }

    v17 = sub_1B78000B8();
    __swift_project_value_buffer(v17, qword_1EDAF6590);
    v13 = sub_1B7800098();
    v18 = sub_1B78011F8();
    if (os_log_type_enabled(v13, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1B7198000, v13, v18, "Fetch returned non managed objects", v19, 2u);
      MEMORY[0x1B8CA7A40](v19, -1, -1);
    }
  }

  v22 = a4(0);
  return (*(*(v22 - 8) + 56))(a5, 1, 1, v22);
}

uint64_t sub_1B73F14A4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_1B7201BB0;

  return sub_1B7510024(a1, a2, a3, a4, a5, a6, v6 + 16);
}

unint64_t sub_1B73F1590()
{
  result = qword_1EB993A30;
  if (!qword_1EB993A30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InternalTransactionAsyncSequence.Iterator, &type metadata for InternalTransactionAsyncSequence.Iterator, v0, v1);
    atomic_store(result, &qword_1EB993A30);
  }

  return result;
}

uint64_t type metadata accessor for InternalTransactionAsyncSequence(uint64_t a1)
{
  result = qword_1EDAF6FC0;
  if (!qword_1EDAF6FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B73F1638(uint64_t a1)
{
  sub_1B73F170C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B73F170C(uint64_t a1)
{
  if (!qword_1EDAFD2F0)
  {
    sub_1B77FFA18();
    v1 = sub_1B7801768();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDAFD2F0);
    }
  }
}

unint64_t sub_1B73F1774()
{
  result = qword_1EB993A48;
  if (!qword_1EB993A48)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB993A40, &unk_1B78388A0);
    result = swift_getWitnessTable(MEMORY[0x1E6969E28], v3, v0, v1);
    atomic_store(result, &qword_1EB993A48);
  }

  return result;
}

uint64_t sub_1B73F1804(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

void sub_1B73F1960(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  if (a1)
  {

    sub_1B7201D10(a4, a5 & 1);
  }
}

id sub_1B73F19C8(id result, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  if (result)
  {

    return sub_1B7227500(a4, a5 & 1);
  }

  return result;
}

uint64_t sub_1B73F1A5C@<X0>(uint64_t (*a1)(void, void, void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1(v2[2], v2[3], v2[4]);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1B73F1A98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B73F1B04()
{

  return sub_1B73E2DAC();
}

uint64_t sub_1B73F1B7C()
{

  return sub_1B73E26CC();
}

uint64_t sub_1B73F1BFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A98, &qword_1B7824CE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B73F1C74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A98, &qword_1B7824CE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double SpendingSummary.breakdowns.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SpendingSummary(0) + 28));
  v4 = v3[1];
  v5 = v3[2];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;

  return result;
}

__n128 SpendingSummary.breakdowns.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = (v1 + *(type metadata accessor for SpendingSummary(0) + 28));

  result = *a1;
  *v4 = *a1;
  v4[1].n128_u64[0] = v3;
  return result;
}

uint64_t SpendingSummary.nonSpendingBreakdowns.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SpendingSummary(0) + 32);
  v4 = *(v3 + 112);
  v5 = *(v3 + 80);
  v22 = *(v3 + 96);
  v23 = v4;
  v6 = *(v3 + 112);
  v24 = *(v3 + 128);
  v7 = *(v3 + 48);
  v9 = *(v3 + 16);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v10 = *(v3 + 48);
  v11 = *(v3 + 80);
  v20 = *(v3 + 64);
  v12 = v20;
  v21 = v11;
  v13 = *(v3 + 16);
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  *(a1 + 96) = v22;
  *(a1 + 112) = v6;
  *(a1 + 128) = *(v3 + 128);
  *(a1 + 32) = v8;
  *(a1 + 48) = v10;
  *(a1 + 64) = v12;
  *(a1 + 80) = v5;
  v25 = *(v3 + 144);
  *(a1 + 144) = *(v3 + 144);
  *a1 = v14;
  *(a1 + 16) = v9;
  return sub_1B73F1FE0(v17, v16);
}

__n128 SpendingSummary.nonSpendingBreakdowns.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SpendingSummary(0) + 32);
  v4 = *(v3 + 112);
  v13[6] = *(v3 + 96);
  v13[7] = v4;
  v13[8] = *(v3 + 128);
  v14 = *(v3 + 144);
  v5 = *(v3 + 48);
  v13[2] = *(v3 + 32);
  v13[3] = v5;
  v6 = *(v3 + 80);
  v13[4] = *(v3 + 64);
  v13[5] = v6;
  v7 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v7;
  sub_1B73F20B8(v13);
  v8 = *(a1 + 112);
  *(v3 + 96) = *(a1 + 96);
  *(v3 + 112) = v8;
  *(v3 + 128) = *(a1 + 128);
  *(v3 + 144) = *(a1 + 144);
  v9 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v9;
  v10 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v10;
  result = *a1;
  v12 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v12;
  return result;
}

__n128 SpendingSummary.init(range:includedTransactionIDs:totalSpending:breakdowns:nonSpendingBreakdowns:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *(a4 + 16);
  sub_1B73F21F0(a1, a6);
  v12 = type metadata accessor for SpendingSummary(0);
  *(a6 + v12[5]) = a2;
  v13 = a6 + v12[6];
  v14 = *(a3 + 16);
  *v13 = *a3;
  *(v13 + 16) = v14;
  *(v13 + 32) = *(a3 + 32);
  v15 = a6 + v12[7];
  *v15 = *a4;
  *(v15 + 16) = v11;
  v16 = a6 + v12[8];
  v17 = *(a5 + 16);
  *v16 = *a5;
  *(v16 + 16) = v17;
  v18 = *(a5 + 80);
  *(v16 + 64) = *(a5 + 64);
  *(v16 + 80) = v18;
  v19 = *(a5 + 48);
  *(v16 + 32) = *(a5 + 32);
  *(v16 + 48) = v19;
  *(v16 + 144) = *(a5 + 144);
  result = *(a5 + 112);
  v21 = *(a5 + 128);
  *(v16 + 112) = result;
  *(v16 + 128) = v21;
  *(v16 + 96) = *(a5 + 96);
  return result;
}

uint64_t sub_1B73F21F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A98, &qword_1B7824CE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B73F2264()
{
  v1 = *v0;
  v2 = 0x65676E6172;
  v3 = 0x6570536C61746F74;
  v4 = 0x776F646B61657262;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B73F230C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B73FB098(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B73F2334(uint64_t a1)
{
  v2 = sub_1B73F7C44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73F2370(uint64_t a1)
{
  v2 = sub_1B73F7C44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SpendingSummary.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993AA0, &unk_1B7824CE8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B73F7C44();
  sub_1B78023F8();
  LOBYTE(v41[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A98, &qword_1B7824CE0);
  sub_1B73F7C98();
  sub_1B7801FC8();
  if (!v2)
  {
    v9 = type metadata accessor for SpendingSummary(0);
    v63 = *(v3 + v9[5]);
    v62[0] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B80, &unk_1B780F380);
    sub_1B73F7D4C();
    sub_1B7801FC8();
    v10 = (v3 + v9[6]);
    v11 = v10[1];
    v60[0] = *v10;
    v60[1] = v11;
    v61 = *(v10 + 4);
    v12 = v10[1];
    v57 = *v10;
    v58 = v12;
    v59 = *(v10 + 4);
    v56 = 2;
    sub_1B7215720(v60, v41);
    sub_1B7215044();
    sub_1B7801FC8();
    v54[0] = v57;
    v54[1] = v58;
    v55 = v59;
    sub_1B721722C(v54);
    v13 = (v3 + v9[7]);
    v14 = *v13;
    v15 = v13[1];
    v27 = v13[2];
    v51 = v14;
    v52 = v15;
    v53 = v27;
    v50 = 3;
    sub_1B73F7E00();

    sub_1B7801FC8();

    v16 = v3 + v9[8];
    v17 = *(v16 + 112);
    v18 = *(v16 + 80);
    v46 = *(v16 + 96);
    v47 = v17;
    v19 = *(v16 + 112);
    v48 = *(v16 + 128);
    v20 = *(v16 + 48);
    v21 = *(v16 + 16);
    v42 = *(v16 + 32);
    v43 = v20;
    v22 = *(v16 + 48);
    v23 = *(v16 + 80);
    v44 = *(v16 + 64);
    v45 = v23;
    v24 = *(v16 + 16);
    v41[0] = *v16;
    v41[1] = v24;
    v37 = v46;
    v38 = v19;
    v39 = *(v16 + 128);
    v33 = v42;
    v34 = v22;
    v35 = v44;
    v36 = v18;
    v49 = *(v16 + 144);
    v40 = *(v16 + 144);
    v31 = v41[0];
    v32 = v21;
    v30 = 4;
    sub_1B73F1FE0(v41, v28);
    sub_1B73F7E54();
    sub_1B7801FC8();
    v28[6] = v37;
    v28[7] = v38;
    v28[8] = v39;
    v29 = v40;
    v28[2] = v33;
    v28[3] = v34;
    v28[4] = v35;
    v28[5] = v36;
    v28[0] = v31;
    v28[1] = v32;
    sub_1B73F20B8(v28);
  }

  return (*(v6 + 8))(v8, v5);
}

void SpendingSummary.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A98, &qword_1B7824CE0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993AC8, &qword_1B7824CF8);
  v25 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v7 = &v24 - v6;
  v8 = type metadata accessor for SpendingSummary(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B73F7C44();
  v27 = v7;
  v11 = v43;
  sub_1B78023C8();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = v25;
    v13 = v10;
    LOBYTE(v28) = 0;
    sub_1B73F7EA8();
    v14 = v26;
    sub_1B7801E48();
    sub_1B73F21F0(v5, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B80, &unk_1B780F380);
    LOBYTE(v40) = 1;
    sub_1B73F7F5C();
    sub_1B7801E48();
    *(v13 + v8[5]) = v28;
    v39 = 2;
    sub_1B72153F8();
    sub_1B7801E48();
    v15 = v13 + v8[6];
    v16 = v41;
    *v15 = v40;
    *(v15 + 16) = v16;
    *(v15 + 32) = v42;
    v38 = 3;
    sub_1B73F8078();
    sub_1B7801E48();
    v17 = v29;
    v18 = v13 + v8[7];
    *v18 = v28;
    *(v18 + 16) = v17;
    v38 = 4;
    sub_1B73F80CC();
    sub_1B7801E48();
    (*(v12 + 8))(v27, v14);
    v19 = v13 + v8[8];
    v20 = v35;
    *(v19 + 96) = v34;
    *(v19 + 112) = v20;
    *(v19 + 128) = v36;
    *(v19 + 144) = v37;
    v21 = v31;
    *(v19 + 32) = v30;
    *(v19 + 48) = v21;
    v22 = v33;
    *(v19 + 64) = v32;
    *(v19 + 80) = v22;
    v23 = v29;
    *v19 = v28;
    *(v19 + 16) = v23;
    sub_1B73F9870(v13, v24, type metadata accessor for SpendingSummary);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1B73F98D8(v13, type metadata accessor for SpendingSummary);
  }
}

uint64_t SpendingSummary.SpendingBreakdowns.init(category:group:dailySpending:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t static SpendingSummary.SpendingBreakdowns.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_1B72210A8(*a1, *a2) & 1) == 0 || (sub_1B722138C(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_1B7320480(v3, v5);
}

uint64_t sub_1B73F2EF0()
{
  v1 = 0x70756F7267;
  if (*v0 != 1)
  {
    v1 = 0x657053796C696164;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x79726F6765746163;
  }
}

uint64_t sub_1B73F2F54@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B73FB260(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B73F2F7C(uint64_t a1)
{
  v2 = sub_1B73F8120();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73F2FB8(uint64_t a1)
{
  v2 = sub_1B73F8120();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SpendingSummary.SpendingBreakdowns.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993AE8, &qword_1B7824D00);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v9 = *v1;
  v8 = v1[1];
  v13 = v1[2];
  v14 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B73F8120();

  sub_1B78023F8();
  v16 = v9;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993AF8, &qword_1B7824D08);
  sub_1B73F83A8(&qword_1EB993B00, sub_1B72C5958, sub_1B73F8174, MEMORY[0x1E69E5E38]);
  sub_1B7801FC8();

  if (!v2)
  {
    v10 = v13;
    v16 = v14;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993B10, &qword_1B7824D10);
    sub_1B73F81C8();
    sub_1B7801FC8();
    v16 = v10;
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993B28, &qword_1B7824D18);
    sub_1B73F82D4();
    sub_1B7801FC8();
  }

  return (*(v5 + 8))(v7, v4);
}

void SpendingSummary.SpendingBreakdowns.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993B40, &qword_1B7824D20);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B73F8120();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993AF8, &qword_1B7824D08);
    v13 = 0;
    sub_1B73F83A8(&qword_1EB993B48, sub_1B72C5A00, sub_1B73F8438, MEMORY[0x1E69E5E58]);
    sub_1B7801E48();
    v9 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993B10, &qword_1B7824D10);
    v13 = 1;
    sub_1B73F848C();
    sub_1B7801E48();
    v12 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993B28, &qword_1B7824D18);
    v13 = 2;
    sub_1B73F8578();
    sub_1B7801E48();
    (*(v6 + 8))(v8, v5);
    v10 = v14;
    v11 = v12;
    *a2 = v9;
    a2[1] = v11;
    a2[2] = v10;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_1B73F35B0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_1B72210A8(*a1, *a2) & 1) == 0 || (sub_1B722138C(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_1B7320480(v3, v5);
}

double SpendingSummary.NonSpendingBreakdowns.income.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1B73F862C(v2, v3, v4, v5, v6, v7);
}

__n128 SpendingSummary.NonSpendingBreakdowns.income.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_1B73F8670(*v1, v1[1], v1[2], v1[3], v1[4], v1[5]);
  result = *a1;
  v6 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 1) = v6;
  v1[4] = v3;
  v1[5] = v4;
  return result;
}

double SpendingSummary.NonSpendingBreakdowns.reimbursements.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1B73F862C(v2, v3, v4, v5, v6, v7);
}

__n128 SpendingSummary.NonSpendingBreakdowns.reimbursements.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_1B73F8670(v1[6], v1[7], v1[8], v1[9], v1[10], v1[11]);
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 3) = *a1;
  *(v1 + 4) = v6;
  v1[10] = v3;
  v1[11] = v4;
  return result;
}

double SpendingSummary.NonSpendingBreakdowns.manuallyExcluded.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[12];
  v3 = v1[13];
  v4 = v1[14];
  v5 = v1[15];
  v6 = v1[16];
  v7 = v1[17];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1B73F862C(v2, v3, v4, v5, v6, v7);
}

__n128 SpendingSummary.NonSpendingBreakdowns.manuallyExcluded.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_1B73F8670(v1[12], v1[13], v1[14], v1[15], v1[16], v1[17]);
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 6) = *a1;
  *(v1 + 7) = v6;
  v1[16] = v3;
  v1[17] = v4;
  return result;
}

double SpendingSummary.NonSpendingBreakdowns.transfers.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 144);

  return result;
}

void SpendingSummary.NonSpendingBreakdowns.transfers.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 144) = v2;
}

void SpendingSummary.NonSpendingBreakdowns.init(income:reimbursements:manuallyExcluded:transfers:)(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v15 = *a2;
  v16 = a1[2];
  v9 = *(a3 + 32);
  v10 = *(a3 + 40);
  v11 = *a4;
  sub_1B73F8670(0, 0, 0, 0, 0, 0);
  v12 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v12;
  sub_1B73F8670(0, 0, 0, 0, 0, 0);
  *(a5 + 32) = v16;
  *(a5 + 48) = v15;
  v13 = a2[2];
  *(a5 + 64) = a2[1];
  *(a5 + 80) = v13;
  sub_1B73F8670(0, 0, 0, 0, 0, 0);
  v14 = *(a3 + 16);
  *(a5 + 96) = *a3;
  *(a5 + 112) = v14;
  *(a5 + 128) = v9;
  *(a5 + 136) = v10;

  *(a5 + 144) = v11;
}

unint64_t sub_1B73F3938()
{
  v1 = 0x656D6F636E69;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x726566736E617274;
  }

  if (*v0)
  {
    v1 = 0x737275626D696572;
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

uint64_t sub_1B73F39C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B73FB37C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B73F39EC(uint64_t a1)
{
  v2 = sub_1B73F94D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73F3A28(uint64_t a1)
{
  v2 = sub_1B73F94D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SpendingSummary.NonSpendingBreakdowns.encode(to:)(void *a1)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993B78, &qword_1B7824D28);
  v46 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v41 = v1[7];
  v42 = v9;
  v10 = v1[8];
  v39 = v1[9];
  v40 = v10;
  v11 = v1[10];
  v37 = v1[11];
  v38 = v11;
  v12 = v1[12];
  v35 = v1[13];
  v36 = v12;
  v13 = v1[14];
  v33 = v1[15];
  v34 = v13;
  v14 = v1[17];
  v32 = v1[16];
  v31 = v14;
  v30 = v1[18];
  v15 = a1[3];
  v43 = a1[4];
  v16 = a1;
  v18 = &v30 - v17;
  __swift_project_boxed_opaque_existential_1(v16, v15);
  sub_1B73F862C(v3, v4, v5, v6, v7, v8);
  sub_1B73F94D4();
  sub_1B78023F8();
  v47 = v3;
  v48 = v4;
  v49 = v5;
  v50 = v6;
  v51 = v7;
  v52 = v8;
  v19 = v44;
  v53 = 0;
  sub_1B73F9528();
  v20 = v45;
  sub_1B7801F38();
  if (v20)
  {
    v21 = sub_1B73F8670(v47, v48, v49, v50, v51, v52);
    return (*(v46 + 8))(v18, v19, v21);
  }

  else
  {
    v23 = v32;
    v24 = v33;
    v26 = v34;
    v25 = v35;
    v27 = v36;
    sub_1B73F8670(v47, v48, v49, v50, v51, v52);
    v47 = v42;
    v48 = v41;
    v49 = v40;
    v50 = v39;
    v51 = v38;
    v52 = v37;
    v53 = 1;
    sub_1B73F862C(v42, v41, v40, v39, v38, v37);
    sub_1B73F957C();
    sub_1B7801F38();
    sub_1B73F8670(v47, v48, v49, v50, v51, v52);
    v47 = v27;
    v48 = v25;
    v49 = v26;
    v50 = v24;
    v51 = v23;
    v52 = v31;
    v53 = 2;
    sub_1B73F862C(v27, v25, v26, v24, v23, v31);
    sub_1B73F95D0();
    sub_1B7801F38();
    sub_1B73F8670(v47, v48, v49, v50, v51, v52);
    v28 = v46;
    v47 = v30;
    v53 = 3;
    sub_1B73F9624();

    sub_1B7801F38();

    return (*(v28 + 8))(v18, v19, v29);
  }
}

uint64_t SpendingSummary.NonSpendingBreakdowns.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993BA8, &qword_1B7824D30);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - v7;
  v9 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1B73F94D4();
  sub_1B78023C8();
  if (v2)
  {
    v44 = v2;
    v46 = 0uLL;
    v45 = 0uLL;
    v41 = 0;
    v73 = 0;
    v47 = 0;
    v42 = 0u;
    v40 = 0u;
    __swift_destroy_boxed_opaque_existential_1(v43);
    v60 = 0;
    v61 = 0;
    v62 = 0uLL;
    v63 = 0uLL;
    v64 = 0;
    v65 = v47;
    v66 = v73;
    v67 = v41;
    v68 = v42;
    v69 = v40;
    v70 = v45;
    v71 = v46;
    v72 = 0;
  }

  else
  {
    LOBYTE(v48) = 0;
    sub_1B73F9678();
    sub_1B7801DB8();
    v11 = v61;
    v12 = v62;
    v37 = v60;
    v38 = *(&v62 + 1);
    v39 = v63;
    sub_1B73F8670(0, 0, 0, 0, 0, 0);
    LOBYTE(v48) = 1;
    sub_1B73F96CC();
    sub_1B7801DB8();
    *&v42 = a2;
    v34 = v11;
    v35 = v12;
    v36 = v60;
    v47 = v61;
    v13 = *(&v62 + 1);
    v73 = v62;
    v14 = v63;
    sub_1B73F8670(0, 0, 0, 0, 0, 0);
    LOBYTE(v48) = 2;
    sub_1B73F9720();
    sub_1B7801DB8();
    v41 = v14 >> 64;
    v33 = v14;
    v16 = v60;
    v15 = v61;
    v45 = v62;
    v46 = v63;
    sub_1B73F8670(0, 0, 0, 0, 0, 0);
    v58 = 3;
    sub_1B73F9774();
    sub_1B7801DB8();
    v44 = 0;
    (*(v6 + 8))(v8, v5);
    v17 = v59;

    v18 = v37;
    v19 = v38;
    v20 = v16;
    v32 = v16;
    v21 = v34;
    *&v48 = v37;
    *(&v48 + 1) = v34;
    v22 = v15;
    *&v40 = v15;
    v23 = v35;
    *&v49 = v35;
    *(&v49 + 1) = v38;
    v24 = v39;
    v50 = v39;
    *&v51 = v36;
    *(&v51 + 1) = v47;
    *&v52 = v73;
    *(&v52 + 1) = v13;
    *&v53 = v33;
    *(&v53 + 1) = v41;
    *&v54 = v20;
    *(&v54 + 1) = v22;
    v55 = v45;
    v56 = v46;
    v57 = v17;
    v25 = v42;
    *(v42 + 144) = v17;
    v26 = v53;
    v25[4] = v52;
    v25[5] = v26;
    v27 = v51;
    v25[2] = v50;
    v25[3] = v27;
    v28 = v56;
    v29 = v54;
    v25[7] = v55;
    v25[8] = v28;
    v25[6] = v29;
    v30 = v49;
    *v25 = v48;
    v25[1] = v30;
    sub_1B73F1FE0(&v48, &v60);
    __swift_destroy_boxed_opaque_existential_1(v43);
    v60 = v18;
    v61 = v21;
    *&v62 = v23;
    *(&v62 + 1) = v19;
    v63 = v24;
    v64 = v36;
    v65 = v47;
    v66 = v73;
    v67 = v13;
    *&v68 = v33;
    *(&v68 + 1) = v41;
    *&v69 = v32;
    *(&v69 + 1) = v40;
    v70 = v45;
    v71 = v46;
    v72 = v17;
  }

  return sub_1B73F20B8(&v60);
}

uint64_t SpendingSummary.SpendingBreakdowns.CategoryBreakdown.totalSpending.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v6[0] = *(v1 + 16);
  v6[1] = v2;
  v7 = *(v1 + 48);
  v3 = v7;
  *a1 = v6[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  return sub_1B7215720(v6, v5);
}

__n128 SpendingSummary.SpendingBreakdowns.CategoryBreakdown.totalSpending.setter(uint64_t a1)
{
  v3 = *(v1 + 32);
  v6[0] = *(v1 + 16);
  v6[1] = v3;
  v7 = *(v1 + 48);
  sub_1B721722C(v6);
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v5;
  *(v1 + 48) = *(a1 + 32);
  return result;
}

__n128 SpendingSummary.SpendingBreakdowns.CategoryBreakdown.init(category:includedTransactionIDs:totalSpending:)@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *a1;
  *(a4 + 8) = a2;
  result = *a3;
  v5 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v5;
  *(a4 + 48) = *(a3 + 32);
  return result;
}

unint64_t sub_1B73F44D4()
{
  v1 = 0xD000000000000016;
  if (*v0 != 1)
  {
    v1 = 0x6570536C61746F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x79726F6765746163;
  }
}

uint64_t sub_1B73F4540@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B73FB4F4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B73F4568(uint64_t a1)
{
  v2 = sub_1B73F97C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73F45A4(uint64_t a1)
{
  v2 = sub_1B73F97C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SpendingSummary.SpendingBreakdowns.CategoryBreakdown.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993BD0, &qword_1B7824D38);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v12 = *(v1 + 1);
  v9 = *(v1 + 2);
  v18 = *(v1 + 1);
  v19 = v9;
  v20 = *(v1 + 6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B73F97C8();
  sub_1B78023F8();
  LOBYTE(v15) = v8;
  LOBYTE(v13[0]) = 0;
  sub_1B72C5958();
  sub_1B7801FC8();
  if (!v2)
  {
    *&v15 = v12;
    LOBYTE(v13[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B80, &unk_1B780F380);
    sub_1B73F7D4C();
    sub_1B7801FC8();
    v15 = v18;
    v16 = v19;
    v17 = v20;
    v21 = 2;
    sub_1B7215720(&v18, v13);
    sub_1B7215044();
    sub_1B7801FC8();
    v13[0] = v15;
    v13[1] = v16;
    v14 = v17;
    sub_1B721722C(v13);
  }

  return (*(v5 + 8))(v7, v4);
}

void SpendingSummary.SpendingBreakdowns.CategoryBreakdown.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993BE0, &qword_1B7824D40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B73F97C8();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v14[0]) = 0;
    sub_1B72C5A00();
    sub_1B7801E48();
    v9 = v16[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B80, &unk_1B780F380);
    LOBYTE(v14[0]) = 1;
    sub_1B73F7F5C();
    sub_1B7801E48();
    v10 = v16[0];
    v26 = 2;
    sub_1B72153F8();
    sub_1B7801E48();
    (*(v6 + 8))(v8, v5);
    v11 = v20;
    v12 = v21;
    v23 = v20;
    v24 = v21;
    v25 = v22;
    LOBYTE(v14[0]) = v9;
    *(&v14[0] + 1) = v10;
    v14[1] = v20;
    v14[2] = v21;
    v15 = v22;
    *(a2 + 48) = v22;
    *(a2 + 16) = v11;
    *(a2 + 32) = v12;
    *a2 = v14[0];
    sub_1B7223834(v14, v16);
    __swift_destroy_boxed_opaque_existential_1(a1);
    LOBYTE(v16[0]) = v9;
    v16[1] = v10;
    v17 = v23;
    v18 = v24;
    v19 = v25;
    sub_1B7223890(v16);
  }
}

double sub_1B73F4B9C(uint64_t (*a1)(void))
{
  a1(0);

  return result;
}

void sub_1B73F4BF0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);

  *(v2 + v4) = a1;
}

uint64_t sub_1B73F4C94@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 24);
  v10 = *(v4 + 32);
  v5 = v10;
  v6 = *(v4 + 16);
  v9[0] = *v4;
  v9[1] = v6;
  *a2 = v9[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v5;
  return sub_1B7215720(v9, v8);
}

__n128 sub_1B73F4D10(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2 + *(a2(0) + 24);
  v9 = *(v4 + 32);
  v5 = *(v4 + 16);
  v8[0] = *v4;
  v8[1] = v5;
  sub_1B721722C(v8);
  result = *a1;
  v7 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v7;
  *(v4 + 32) = *(a1 + 32);
  return result;
}

__n128 SpendingSummary.SpendingBreakdowns.GroupBreakdown.init(id:includedTransactionIDs:totalSpending:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B77FFA18();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for SpendingSummary.SpendingBreakdowns.GroupBreakdown(0);
  *(a4 + *(v9 + 20)) = a2;
  v10 = a4 + *(v9 + 24);
  result = *a3;
  v12 = *(a3 + 16);
  *v10 = *a3;
  *(v10 + 16) = v12;
  *(v10 + 32) = *(a3 + 32);
  return result;
}

unint64_t sub_1B73F4E58()
{
  v1 = 0xD000000000000016;
  if (*v0 != 1)
  {
    v1 = 0x6570536C61746F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1B73F4EB8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B73FB61C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B73F4EE0(uint64_t a1)
{
  v2 = sub_1B73F981C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73F4F1C(uint64_t a1)
{
  v2 = sub_1B73F981C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SpendingSummary.SpendingBreakdowns.GroupBreakdown.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993BE8, &qword_1B7824D48);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B73F981C();
  sub_1B78023F8();
  LOBYTE(v20[0]) = 0;
  sub_1B77FFA18();
  sub_1B71A7028(&qword_1EB98F718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1B7801FC8();
  if (!v2)
  {
    v9 = type metadata accessor for SpendingSummary.SpendingBreakdowns.GroupBreakdown(0);
    v23 = *(v3 + *(v9 + 20));
    v22 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B80, &unk_1B780F380);
    sub_1B73F7D4C();
    sub_1B7801FC8();
    v10 = (v3 + *(v9 + 24));
    v11 = v10[1];
    v20[0] = *v10;
    v20[1] = v11;
    v21 = *(v10 + 4);
    v12 = v10[1];
    v17 = *v10;
    v18 = v12;
    v19 = *(v10 + 4);
    v16 = 2;
    sub_1B7215720(v20, v14);
    sub_1B7215044();
    sub_1B7801FC8();
    v14[0] = v17;
    v14[1] = v18;
    v15 = v19;
    sub_1B721722C(v14);
  }

  return (*(v6 + 8))(v8, v5);
}

void SpendingSummary.SpendingBreakdowns.GroupBreakdown.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v25 = sub_1B77FFA18();
  v23 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993BF8, &qword_1B7824D50);
  v22 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v7 = &v19 - v6;
  v8 = type metadata accessor for SpendingSummary.SpendingBreakdowns.GroupBreakdown(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B73F981C();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v19 = v8;
    v20 = v10;
    v11 = v22;
    v12 = v23;
    LOBYTE(v26) = 0;
    sub_1B71A7028(&qword_1EB98F740, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v13 = v24;
    sub_1B7801E48();
    (*(v12 + 32))(v20, v5, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B80, &unk_1B780F380);
    v29 = 1;
    sub_1B73F7F5C();
    sub_1B7801E48();
    v14 = v19;
    *&v20[*(v19 + 20)] = v26;
    v29 = 2;
    sub_1B72153F8();
    sub_1B7801E48();
    (*(v11 + 8))(v7, v13);
    v16 = v20;
    v15 = v21;
    v17 = &v20[*(v14 + 24)];
    v18 = v27;
    *v17 = v26;
    *(v17 + 1) = v18;
    *(v17 + 4) = v28;
    sub_1B73F9870(v16, v15, type metadata accessor for SpendingSummary.SpendingBreakdowns.GroupBreakdown);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1B73F98D8(v16, type metadata accessor for SpendingSummary.SpendingBreakdowns.GroupBreakdown);
  }
}

uint64_t sub_1B73F5648@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t sub_1B73F56D0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = a2(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t SpendingSummary.SpendingBreakdowns.DailyBreakdown.totalSpending.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SpendingSummary.SpendingBreakdowns.DailyBreakdown(0) + 20);
  v9 = *(v3 + 32);
  v4 = v9;
  v5 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v5;
  *a1 = v8[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  return sub_1B7215720(v8, v7);
}

__n128 SpendingSummary.SpendingBreakdowns.DailyBreakdown.totalSpending.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SpendingSummary.SpendingBreakdowns.DailyBreakdown(0) + 20);
  v8 = *(v3 + 32);
  v4 = *(v3 + 16);
  v7[0] = *v3;
  v7[1] = v4;
  sub_1B721722C(v7);
  result = *a1;
  v6 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v6;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

double SpendingSummary.SpendingBreakdowns.DailyBreakdown.includedTransactionIDs.getter()
{
  type metadata accessor for SpendingSummary.SpendingBreakdowns.DailyBreakdown(0);

  return result;
}

void SpendingSummary.SpendingBreakdowns.DailyBreakdown.includedTransactionIDs.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SpendingSummary.SpendingBreakdowns.DailyBreakdown(0) + 24);

  *(v1 + v3) = a1;
}

double SpendingSummary.SpendingBreakdowns.DailyBreakdown.categoryBreakdowns.getter()
{
  type metadata accessor for SpendingSummary.SpendingBreakdowns.DailyBreakdown(0);

  return result;
}

void SpendingSummary.SpendingBreakdowns.DailyBreakdown.categoryBreakdowns.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SpendingSummary.SpendingBreakdowns.DailyBreakdown(0) + 28);

  *(v1 + v3) = a1;
}

double SpendingSummary.SpendingBreakdowns.DailyBreakdown.groupBreakdowns.getter()
{
  type metadata accessor for SpendingSummary.SpendingBreakdowns.DailyBreakdown(0);

  return result;
}

void SpendingSummary.SpendingBreakdowns.DailyBreakdown.groupBreakdowns.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SpendingSummary.SpendingBreakdowns.DailyBreakdown(0) + 32);

  *(v1 + v3) = a1;
}

__n128 SpendingSummary.SpendingBreakdowns.DailyBreakdown.init(day:totalSpending:includedTransactionIDs:categoryBreakdowns:groupBreakdowns:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1B77FF988();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v13 = type metadata accessor for SpendingSummary.SpendingBreakdowns.DailyBreakdown(0);
  v14 = a6 + v13[5];
  result = *a2;
  v16 = *(a2 + 16);
  *v14 = *a2;
  *(v14 + 16) = v16;
  *(v14 + 32) = *(a2 + 32);
  *(a6 + v13[6]) = a3;
  *(a6 + v13[7]) = a4;
  *(a6 + v13[8]) = a5;
  return result;
}

unint64_t sub_1B73F5B50()
{
  v1 = *v0;
  v2 = 7954788;
  v3 = 0xD000000000000016;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x65724270756F7267;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6570536C61746F74;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B73F5C08@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B73FB73C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B73F5C30(uint64_t a1)
{
  v2 = sub_1B73F9938();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73F5C6C(uint64_t a1)
{
  v2 = sub_1B73F9938();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SpendingSummary.SpendingBreakdowns.DailyBreakdown.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993C00, &qword_1B7824D58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B73F9938();
  sub_1B78023F8();
  v24 = 0;
  sub_1B77FF988();
  sub_1B71A7028(&qword_1EDAF65F0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1B7801FC8();
  if (!v2)
  {
    v9 = type metadata accessor for SpendingSummary.SpendingBreakdowns.DailyBreakdown(0);
    v10 = (v3 + v9[5]);
    v23 = *(v10 + 4);
    v11 = v10[1];
    v22[0] = *v10;
    v22[1] = v11;
    v12 = v10[1];
    v19 = *v10;
    v20 = v12;
    v21 = *(v10 + 4);
    v18 = 1;
    sub_1B7215720(v22, v16);
    sub_1B7215044();
    sub_1B7801FC8();
    v16[0] = v19;
    v16[1] = v20;
    v17 = v21;
    sub_1B721722C(v16);
    v15 = *(v3 + v9[6]);
    HIBYTE(v14) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B80, &unk_1B780F380);
    sub_1B73F7D4C();
    sub_1B7801FC8();
    v15 = *(v3 + v9[7]);
    HIBYTE(v14) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993AF8, &qword_1B7824D08);
    sub_1B73F83A8(&qword_1EB993B00, sub_1B72C5958, sub_1B73F8174, MEMORY[0x1E69E5E38]);
    sub_1B7801FC8();
    v15 = *(v3 + v9[8]);
    HIBYTE(v14) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993B10, &qword_1B7824D10);
    sub_1B73F81C8();
    sub_1B7801FC8();
  }

  return (*(v6 + 8))(v8, v5);
}

void SpendingSummary.SpendingBreakdowns.DailyBreakdown.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_1B77FF988();
  v18 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993C10, &qword_1B7824D60);
  v20 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v7 = &v16 - v6;
  v8 = type metadata accessor for SpendingSummary.SpendingBreakdowns.DailyBreakdown(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B73F9938();
  v21 = v7;
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v11 = v18;
    LOBYTE(v24) = 0;
    sub_1B71A7028(&unk_1EDAF65E0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v12 = v19;
    sub_1B7801E48();
    (*(v11 + 32))(v10, v12, v4);
    v28 = 1;
    sub_1B72153F8();
    sub_1B7801E48();
    v13 = &v10[v8[5]];
    v14 = v25;
    *v13 = v24;
    *(v13 + 1) = v14;
    *(v13 + 4) = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B80, &unk_1B780F380);
    v27 = 2;
    sub_1B73F7F5C();
    v19 = 0;
    sub_1B7801E48();
    v15 = v20;
    *&v10[v8[6]] = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993AF8, &qword_1B7824D08);
    v27 = 3;
    sub_1B73F83A8(&qword_1EB993B48, sub_1B72C5A00, sub_1B73F8438, MEMORY[0x1E69E5E58]);
    sub_1B7801E48();
    *&v10[v8[7]] = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993B10, &qword_1B7824D10);
    v27 = 4;
    sub_1B73F848C();
    sub_1B7801E48();
    (*(v15 + 8))(v21, v22);
    *&v10[v8[8]] = v23;
    sub_1B73F9870(v10, v17, type metadata accessor for SpendingSummary.SpendingBreakdowns.DailyBreakdown);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1B73F98D8(v10, type metadata accessor for SpendingSummary.SpendingBreakdowns.DailyBreakdown);
  }
}

uint64_t SpendingSummary.NonSpendingBreakdowns.IncomeBreakdown.totalIncome.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v2;
  v7 = *(v1 + 32);
  v3 = v7;
  *a1 = v6[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  return sub_1B7215720(v6, v5);
}

__n128 SpendingSummary.NonSpendingBreakdowns.IncomeBreakdown.totalIncome.setter(uint64_t a1)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v7 = *(v1 + 32);
  sub_1B721722C(v6);
  result = *a1;
  v5 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v5;
  *(v1 + 32) = *(a1 + 32);
  return result;
}

__n128 SpendingSummary.NonSpendingBreakdowns.IncomeBreakdown.init(totalIncome:includedTransactionIDs:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *a1;
  v4 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 40) = a2;
  return result;
}

uint64_t sub_1B73F6714()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x636E496C61746F74;
  }
}

void sub_1B73F675C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x636E496C61746F74 && a2 == 0xEB00000000656D6FLL;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B7879360 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1B73F6844(uint64_t a1)
{
  v2 = sub_1B73F9AA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73F6880(uint64_t a1)
{
  v2 = sub_1B73F9AA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B73F69B4()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000013;
  }
}

void sub_1B73F69F0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001B787E160 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B7879360 == a2)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_1B78020F8();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_1B73F6AD4(uint64_t a1)
{
  v2 = sub_1B73F9AFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73F6B10(uint64_t a1)
{
  v2 = sub_1B73F9AFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B73F6C44()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x6570536C61746F74;
  }
}

void sub_1B73F6C90(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6570536C61746F74 && a2 == 0xED0000676E69646ELL;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B7879360 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1B73F6D7C(uint64_t a1)
{
  v2 = sub_1B73F9B50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73F6DB8(uint64_t a1)
{
  v2 = sub_1B73F9B50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B73F6E38(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  v12 = v5[1];
  v27 = *v5;
  v28 = v12;
  v13 = *(v5 + 4);
  v18 = *(v5 + 5);
  v29 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_1B7215720(&v27, &v24);
  a4(v14);
  sub_1B78023F8();
  v24 = v27;
  v25 = v28;
  v26 = v29;
  v23 = 0;
  sub_1B7215044();
  v15 = v30;
  sub_1B7801FC8();
  v21[0] = v24;
  v21[1] = v25;
  v22 = v26;
  sub_1B721722C(v21);
  if (!v15)
  {
    v20 = v18;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B80, &unk_1B780F380);
    sub_1B73F7D4C();
    sub_1B7801FC8();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1B73F7094@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, __int128 *a6@<X8>)
{
  v18 = a6;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v11 = &v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1B78023C8();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v9;
  v13 = v18;
  v33 = 0;
  sub_1B72153F8();
  v14 = v19;
  sub_1B7801E48();
  v29 = v26;
  v30 = v27;
  v31 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B80, &unk_1B780F380);
  v32 = 1;
  sub_1B73F7F5C();
  sub_1B7801E48();
  (*(v12 + 8))(v11, v14);
  v15 = v25;
  v16 = v30;
  v20[0] = v29;
  v20[1] = v30;
  *&v21 = v31;
  *(&v21 + 1) = v25;
  *v13 = v29;
  v13[1] = v16;
  v13[2] = v21;
  sub_1B73F9BA4(v20, v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v22[0] = v29;
  v22[1] = v30;
  v23 = v31;
  v24 = v15;
  return sub_1B73F9BF8(v22);
}

void sub_1B73F73E4(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x80000001B7879360 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_1B78020F8();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_1B73F7478(uint64_t a1)
{
  v2 = sub_1B73F9C2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73F74B4(uint64_t a1)
{
  v2 = sub_1B73F9C2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SpendingSummary.NonSpendingBreakdowns.TransfersBreakdown.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993C60, &qword_1B7824D98);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B73F9C2C();

  sub_1B78023F8();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B80, &unk_1B780F380);
  sub_1B73F7D4C();
  sub_1B7801FC8();

  return (*(v4 + 8))(v6, v3);
}

uint64_t SpendingSummary.NonSpendingBreakdowns.TransfersBreakdown.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993C70, &qword_1B7824DA0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B73F9C2C();
  sub_1B78023C8();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B80, &unk_1B780F380);
    sub_1B73F7F5C();
    sub_1B7801E48();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

BOOL _s10FinanceKit15SpendingSummaryV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1B77FF988();
  sub_1B71A7028(&qword_1EB98FAC0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  if ((sub_1B7800828() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A98, &qword_1B7824CE0);
  if ((sub_1B7800828() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SpendingSummary(0);
  if ((sub_1B72F48EC(*(a1 + v4[5]), *(a2 + v4[5])) & 1) == 0)
  {
    return 0;
  }

  v5 = (a1 + v4[6]);
  *&v87[1] = *(v5 + 4);
  v6 = v5[1];
  v86 = *v5;
  v87[0] = v6;
  v7 = (a2 + v4[6]);
  v8 = v7[1];
  v88 = *v7;
  v89[0] = v8;
  *&v89[1] = *(v7 + 4);
  v9 = v6;
  v10 = v8;
  v11 = v86;
  v12 = v88;
  sub_1B7215720(&v86, v84);
  sub_1B7215720(&v88, v84);
  if ((MEMORY[0x1B8CA5970](v11, *(&v11 + 1), v9, v12, *(&v12 + 1), v10) & 1) == 0)
  {
    sub_1B721722C(&v88);
    sub_1B721722C(&v86);
    return 0;
  }

  if (*(v87 + 8) == *(v89 + 8))
  {
    sub_1B721722C(&v88);
    sub_1B721722C(&v86);
  }

  else
  {
    v13 = sub_1B78020F8();
    sub_1B721722C(&v88);
    sub_1B721722C(&v86);
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v14 = v4[7];
  v15 = *(a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = *(a1 + v14 + 16);
  v18 = (a2 + v14);
  v19 = *v18;
  v20 = v18[1];
  v21 = v18[2];

  if ((sub_1B72210A8(v15, v19) & 1) == 0 || (sub_1B722138C(v16, v20) & 1) == 0)
  {

    return 0;
  }

  v22 = sub_1B7320480(v17, v21);

  if ((v22 & 1) == 0)
  {
    return 0;
  }

  v23 = a1 + v4[8];
  v24 = *(v23 + 80);
  v25 = *(v23 + 112);
  v69 = *(v23 + 96);
  v70 = v25;
  v26 = *(v23 + 112);
  v71 = *(v23 + 128);
  v72 = *(v23 + 144);
  v27 = *(v23 + 48);
  v28 = *(v23 + 16);
  v65 = *(v23 + 32);
  v66 = v27;
  v29 = *(v23 + 80);
  v30 = *(v23 + 48);
  v67 = *(v23 + 64);
  v68 = v29;
  v31 = *(v23 + 16);
  v64[0] = *v23;
  v64[1] = v31;
  v58 = v67;
  v59 = v24;
  v56 = v65;
  v57 = v30;
  v63 = *(v23 + 144);
  v32 = *(v23 + 128);
  v61 = v26;
  v62 = v32;
  v60 = v69;
  v54 = v64[0];
  v55 = v28;
  v33 = a2 + v4[8];
  v34 = *(v33 + 112);
  v35 = *(v33 + 80);
  v78 = *(v33 + 96);
  v79 = v34;
  v36 = *(v33 + 112);
  v80 = *(v33 + 128);
  v37 = *(v33 + 48);
  v38 = *(v33 + 16);
  v74 = *(v33 + 32);
  v75 = v37;
  v39 = *(v33 + 48);
  v40 = *(v33 + 80);
  v76 = *(v33 + 64);
  v77 = v40;
  v41 = *(v33 + 16);
  v73[0] = *v33;
  v73[1] = v41;
  v50 = v78;
  v51 = v36;
  v52 = *(v33 + 128);
  v46 = v74;
  v47 = v39;
  v48 = v76;
  v49 = v35;
  v81 = *(v33 + 144);
  v53 = *(v33 + 144);
  v44 = v73[0];
  v45 = v38;
  sub_1B73F1FE0(v64, v84);
  sub_1B73F1FE0(v73, v84);
  v42 = _s10FinanceKit15SpendingSummaryV03NonC10BreakdownsV2eeoiySbAE_AEtFZ_0(&v54, &v44);
  v82[6] = v50;
  v82[7] = v51;
  v82[8] = v52;
  v83 = v53;
  v82[2] = v46;
  v82[3] = v47;
  v82[4] = v48;
  v82[5] = v49;
  v82[0] = v44;
  v82[1] = v45;
  sub_1B73F20B8(v82);
  v84[6] = v60;
  v84[7] = v61;
  v84[8] = v62;
  v85 = v63;
  v84[2] = v56;
  v84[3] = v57;
  v84[4] = v58;
  v84[5] = v59;
  v84[0] = v54;
  v84[1] = v55;
  sub_1B73F20B8(v84);
  return v42;
}

unint64_t sub_1B73F7C44()
{
  result = qword_1EB993AA8;
  if (!qword_1EB993AA8)
  {
    result = swift_getWitnessTable(byte_1B7825EA0, &type metadata for SpendingSummary.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993AA8);
  }

  return result;
}

unint64_t sub_1B73F7C98()
{
  result = qword_1EB993AB0;
  if (!qword_1EB993AB0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB993A98, &qword_1B7824CE0);
    v4[0] = sub_1B71A7028(&qword_1EDAF65F0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    result = swift_getWitnessTable(MEMORY[0x1E69E66B0], v3, v4);
    atomic_store(result, &qword_1EB993AB0);
  }

  return result;
}

unint64_t sub_1B73F7D4C()
{
  result = qword_1EB997160;
  if (!qword_1EB997160)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB990B80, &unk_1B780F380);
    v4[0] = sub_1B71A7028(&qword_1EB98F718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    result = swift_getWitnessTable(MEMORY[0x1E69E64F0], v3, v4);
    atomic_store(result, &qword_1EB997160);
  }

  return result;
}

unint64_t sub_1B73F7E00()
{
  result = qword_1EB993AB8;
  if (!qword_1EB993AB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpendingSummary.SpendingBreakdowns, &type metadata for SpendingSummary.SpendingBreakdowns, v0, v1);
    atomic_store(result, &qword_1EB993AB8);
  }

  return result;
}

unint64_t sub_1B73F7E54()
{
  result = qword_1EB993AC0;
  if (!qword_1EB993AC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpendingSummary.NonSpendingBreakdowns, &type metadata for SpendingSummary.NonSpendingBreakdowns, v0, v1);
    atomic_store(result, &qword_1EB993AC0);
  }

  return result;
}

unint64_t sub_1B73F7EA8()
{
  result = qword_1EB993AD0;
  if (!qword_1EB993AD0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB993A98, &qword_1B7824CE0);
    v4[0] = sub_1B71A7028(&unk_1EDAF65E0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    result = swift_getWitnessTable(MEMORY[0x1E69E66E0], v3, v4);
    atomic_store(result, &qword_1EB993AD0);
  }

  return result;
}

unint64_t sub_1B73F7F5C()
{
  result = qword_1EB991B30;
  if (!qword_1EB991B30)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB990B80, &unk_1B780F380);
    v4[0] = sub_1B71A7028(&qword_1EB98F740, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6510], v3, v4);
    atomic_store(result, &qword_1EB991B30);
  }

  return result;
}

uint64_t sub_1B73F8010(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993A98, &qword_1B7824CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B73F8078()
{
  result = qword_1EB993AD8;
  if (!qword_1EB993AD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpendingSummary.SpendingBreakdowns, &type metadata for SpendingSummary.SpendingBreakdowns, v0, v1);
    atomic_store(result, &qword_1EB993AD8);
  }

  return result;
}

unint64_t sub_1B73F80CC()
{
  result = qword_1EB993AE0;
  if (!qword_1EB993AE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpendingSummary.NonSpendingBreakdowns, &type metadata for SpendingSummary.NonSpendingBreakdowns, v0, v1);
    atomic_store(result, &qword_1EB993AE0);
  }

  return result;
}

unint64_t sub_1B73F8120()
{
  result = qword_1EB993AF0;
  if (!qword_1EB993AF0)
  {
    result = swift_getWitnessTable(aIcg7, &type metadata for SpendingSummary.SpendingBreakdowns.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993AF0);
  }

  return result;
}

unint64_t sub_1B73F8174()
{
  result = qword_1EB993B08;
  if (!qword_1EB993B08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpendingSummary.SpendingBreakdowns.CategoryBreakdown, &type metadata for SpendingSummary.SpendingBreakdowns.CategoryBreakdown, v0, v1);
    atomic_store(result, &qword_1EB993B08);
  }

  return result;
}

unint64_t sub_1B73F81C8()
{
  result = qword_1EB993B18;
  if (!qword_1EB993B18)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB993B10, &qword_1B7824D10);
    v4[0] = sub_1B71A7028(&qword_1EB98F718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    v4[1] = sub_1B71A7028(&qword_1EB993B20, type metadata accessor for SpendingSummary.SpendingBreakdowns.GroupBreakdown, protocol conformance descriptor for SpendingSummary.SpendingBreakdowns.GroupBreakdown);
    result = swift_getWitnessTable(MEMORY[0x1E69E5E38], v3, v4);
    atomic_store(result, &qword_1EB993B18);
  }

  return result;
}

unint64_t sub_1B73F82D4()
{
  result = qword_1EB993B30;
  if (!qword_1EB993B30)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB993B28, &qword_1B7824D18);
    v4[0] = sub_1B71A7028(&qword_1EB993B38, type metadata accessor for SpendingSummary.SpendingBreakdowns.DailyBreakdown, protocol conformance descriptor for SpendingSummary.SpendingBreakdowns.DailyBreakdown);
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EB993B30);
  }

  return result;
}

uint64_t sub_1B73F83A8(unint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(void), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB993AF8, &qword_1B7824D08);
    v10[0] = a2();
    v10[1] = a3();
    result = swift_getWitnessTable(a4, v9, v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B73F8438()
{
  result = qword_1EB993B50;
  if (!qword_1EB993B50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpendingSummary.SpendingBreakdowns.CategoryBreakdown, &type metadata for SpendingSummary.SpendingBreakdowns.CategoryBreakdown, v0, v1);
    atomic_store(result, &qword_1EB993B50);
  }

  return result;
}

unint64_t sub_1B73F848C()
{
  result = qword_1EB993B58;
  if (!qword_1EB993B58)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB993B10, &qword_1B7824D10);
    v4[0] = sub_1B71A7028(&qword_1EB98F740, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v4[1] = sub_1B71A7028(&qword_1EB993B60, type metadata accessor for SpendingSummary.SpendingBreakdowns.GroupBreakdown, protocol conformance descriptor for SpendingSummary.SpendingBreakdowns.GroupBreakdown);
    result = swift_getWitnessTable(MEMORY[0x1E69E5E58], v3, v4);
    atomic_store(result, &qword_1EB993B58);
  }

  return result;
}

unint64_t sub_1B73F8578()
{
  result = qword_1EB993B68;
  if (!qword_1EB993B68)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB993B28, &qword_1B7824D18);
    v4[0] = sub_1B71A7028(&qword_1EB993B70, type metadata accessor for SpendingSummary.SpendingBreakdowns.DailyBreakdown, protocol conformance descriptor for SpendingSummary.SpendingBreakdowns.DailyBreakdown);
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v3, v4);
    atomic_store(result, &qword_1EB993B68);
  }

  return result;
}

double sub_1B73F862C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5)
  {
  }

  return result;
}

double sub_1B73F8670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5)
  {
  }

  return result;
}

uint64_t _s10FinanceKit15SpendingSummaryV0C10BreakdownsV17CategoryBreakdownV2eeoiySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = a1;
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(v3 + 2);
  v16 = *(v3 + 1);
  v17[0] = v6;
  *&v17[1] = *(v3 + 6);
  LODWORD(v3) = *a2;
  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  v18 = *(a2 + 1);
  v19[0] = v8;
  *&v19[1] = *(a2 + 6);
  if (v4 == v3 && (sub_1B72F48EC(v5, v7) & 1) != 0)
  {
    v9 = LODWORD(v17[0]);
    v10 = LODWORD(v19[0]);
    v11 = v16;
    v12 = v18;
    sub_1B7215720(&v16, v15);
    sub_1B7215720(&v18, v15);
    if (MEMORY[0x1B8CA5970](v11, *(&v11 + 1), v9, v12, *(&v12 + 1), v10))
    {
      if (*(&v17[0] + 1) == *(&v19[0] + 1) && *&v17[1] == *&v19[1])
      {
        sub_1B721722C(&v18);
        sub_1B721722C(&v16);
        return 1;
      }

      v14 = sub_1B78020F8();
      sub_1B721722C(&v18);
      sub_1B721722C(&v16);
      if (v14)
      {
        return 1;
      }
    }

    else
    {
      sub_1B721722C(&v18);
      sub_1B721722C(&v16);
    }
  }

  return 0;
}

uint64_t _s10FinanceKit15SpendingSummaryV0C10BreakdownsV14GroupBreakdownV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  if (_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0())
  {
    v4 = type metadata accessor for SpendingSummary.SpendingBreakdowns.GroupBreakdown(0);
    if (sub_1B72F48EC(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20))))
    {
      v5 = (a1 + *(v4 + 24));
      *&v17[1] = *(v5 + 4);
      v6 = v5[1];
      v16 = *v5;
      v17[0] = v6;
      v7 = (a2 + *(v4 + 24));
      v8 = v7[1];
      v18 = *v7;
      v19[0] = v8;
      *&v19[1] = *(v7 + 4);
      v9 = v6;
      v10 = v8;
      v11 = v16;
      v12 = v18;
      sub_1B7215720(&v16, v15);
      sub_1B7215720(&v18, v15);
      if (MEMORY[0x1B8CA5970](v11, *(&v11 + 1), v9, v12, *(&v12 + 1), v10))
      {
        if (*(&v17[0] + 1) == *(&v19[0] + 1) && *&v17[1] == *&v19[1])
        {
          sub_1B721722C(&v18);
          sub_1B721722C(&v16);
          return 1;
        }

        v14 = sub_1B78020F8();
        sub_1B721722C(&v18);
        sub_1B721722C(&v16);
        if (v14)
        {
          return 1;
        }
      }

      else
      {
        sub_1B721722C(&v18);
        sub_1B721722C(&v16);
      }
    }
  }

  return 0;
}

uint64_t _s10FinanceKit15SpendingSummaryV0C10BreakdownsV14DailyBreakdownV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1B77FF918() & 1) == 0)
  {
    goto LABEL_11;
  }

  v4 = type metadata accessor for SpendingSummary.SpendingBreakdowns.DailyBreakdown(0);
  v5 = (a1 + v4[5]);
  *&v18[1] = *(v5 + 4);
  v6 = v5[1];
  v17 = *v5;
  v18[0] = v6;
  v7 = (a2 + v4[5]);
  v8 = v7[1];
  v19 = *v7;
  v20[0] = v8;
  *&v20[1] = *(v7 + 4);
  v9 = v6;
  v10 = v8;
  v11 = v17;
  v12 = v19;
  sub_1B7215720(&v17, v16);
  sub_1B7215720(&v19, v16);
  if ((MEMORY[0x1B8CA5970](v11, *(&v11 + 1), v9, v12, *(&v12 + 1), v10) & 1) == 0)
  {
    sub_1B721722C(&v19);
    sub_1B721722C(&v17);
    goto LABEL_11;
  }

  if (*(&v18[0] + 1) != *(&v20[0] + 1) || *&v18[1] != *&v20[1])
  {
    v13 = sub_1B78020F8();
    sub_1B721722C(&v19);
    sub_1B721722C(&v17);
    if (v13)
    {
      goto LABEL_8;
    }

LABEL_11:
    v14 = 0;
    return v14 & 1;
  }

  sub_1B721722C(&v19);
  sub_1B721722C(&v17);
LABEL_8:
  if ((sub_1B72F48EC(*(a1 + v4[6]), *(a2 + v4[6])) & 1) == 0 || (sub_1B72210A8(*(a1 + v4[7]), *(a2 + v4[7])) & 1) == 0)
  {
    goto LABEL_11;
  }

  v14 = sub_1B722138C(*(a1 + v4[8]), *(a2 + v4[8]));
  return v14 & 1;
}

BOOL _s10FinanceKit15SpendingSummaryV03NonC10BreakdownsV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v77 = a1[6];
  v78 = a1[7];
  v79 = a1[8];
  v80 = a1[9];
  v76 = a1[10];
  v83 = a1[11];
  v8 = a2[1];
  v89 = *a2;
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  v12 = a2[5];
  v75 = a2[6];
  v85 = a2[7];
  v87 = a2[8];
  v88 = v7;
  v81 = a2[9];
  v82 = a2[11];
  v84 = a2[10];
  if (!v6)
  {
    v22 = 0;
    v67 = a2[12];
    v68 = a2[13];
    v72 = a1[16];
    v73 = a2[16];
    v69 = a2[14];
    v70 = a2[15];
    v71 = a2[17];
    v60 = a2[18];
    v61 = a1[18];
    v62 = a1[12];
    v63 = a1[13];
    v64 = a1[14];
    v65 = a1[15];
    v66 = a1[17];
    v23 = a1[2];
    v24 = a1[3];
    sub_1B73F862C(v2, v3, v4, v5, 0, v7);
    v25 = v11;
    if (!v11)
    {
      sub_1B73F862C(v89, v8, v10, v9, 0, v12);
      sub_1B73F8670(v2, v3, v23, v24, 0, v88);
      goto LABEL_16;
    }

    v26 = v89;
    v86 = v25;
    sub_1B73F862C(v89, v8, v10, v9, v25, v12);
LABEL_10:
    sub_1B73F8670(v2, v3, v23, v24, v22, v88);
    v27 = v26;
    v28 = v8;
    v29 = v10;
    v30 = v9;
    v31 = v86;
LABEL_26:
    v42 = v12;
LABEL_27:
    sub_1B73F8670(v27, v28, v29, v30, v31, v42);
    return 0;
  }

  v86 = a2[4];
  if (!v11)
  {
    v101 = *a1;
    v102 = v3;
    v103 = v4;
    v104 = v5;
    v105 = v6;
    v106 = v7;
    v22 = v6;
    v23 = v4;
    v24 = v5;
    sub_1B73F862C(v2, v3, v4, v5, v6, v7);
    v26 = v89;
    sub_1B73F862C(v89, v8, v10, v9, 0, v12);
    sub_1B73F862C(v2, v3, v23, v24, v22, v88);
    sub_1B73F9BF8(&v101);
    goto LABEL_10;
  }

  v67 = a2[12];
  v68 = a2[13];
  v72 = a1[16];
  v73 = a2[16];
  v69 = a2[14];
  v70 = a2[15];
  v71 = a2[17];
  v60 = a2[18];
  v61 = a1[18];
  v62 = a1[12];
  v63 = a1[13];
  v64 = a1[14];
  v65 = a1[15];
  v66 = a1[17];
  v101 = *a2;
  v102 = v8;
  v103 = v10;
  v104 = v9;
  v105 = v11;
  v106 = v12;
  v96 = v2;
  v97 = v3;
  v98 = v4;
  v99 = v5;
  v100 = v6;
  v13 = v2;
  v14 = v3;
  v15 = v6;
  v74 = v2;
  v16 = v3;
  v17 = v4;
  v18 = v7;
  v19 = v5;
  sub_1B73F862C(v13, v14, v4, v5, v6, v7);
  v58 = v9;
  v59 = v12;
  sub_1B73F862C(v89, v8, v10, v9, v11, v12);
  sub_1B73F862C(v74, v16, v17, v19, v15, v18);
  sub_1B7215720(&v96, &v90);
  sub_1B7215720(&v101, &v90);
  v20 = v8;
  v21 = v10;
  if ((MEMORY[0x1B8CA5970](v74, v16, v17, v89, v8, v10) & 1) == 0)
  {
    sub_1B721722C(&v101);
    sub_1B721722C(&v96);
    v32 = 0;
    goto LABEL_15;
  }

  if (v99 == v104 && v100 == v105)
  {
    sub_1B721722C(&v101);
    sub_1B721722C(&v96);
  }

  else
  {
    v33 = sub_1B78020F8();
    sub_1B721722C(&v101);
    sub_1B721722C(&v96);
    v32 = 0;
    if ((v33 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v32 = sub_1B72F48EC(v88, v106);
LABEL_15:
  sub_1B73F8670(v89, v20, v21, v58, v11, v59);
  v90 = v74;
  v91 = v16;
  v92 = v17;
  v93 = v19;
  v94 = v15;
  v95 = v88;
  sub_1B73F9BF8(&v90);
  sub_1B73F8670(v74, v16, v17, v19, v15, v88);
  if ((v32 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  if (!v76)
  {
    v38 = v77;
    v37 = v78;
    v36 = v79;
    v35 = v80;
    v34 = v83;
    sub_1B73F862C(v77, v78, v79, v80, 0, v83);
    v39 = v81;
    v12 = v82;
    v40 = v87;
    if (!v84)
    {
      sub_1B73F862C(v75, v85, v87, v81, 0, v82);
      sub_1B73F8670(v77, v78, v79, v80, 0, v83);
      goto LABEL_34;
    }

    v41 = v75;
    sub_1B73F862C(v75, v85, v87, v81, v84, v82);
    goto LABEL_25;
  }

  v34 = v83;
  v36 = v79;
  v35 = v80;
  v38 = v77;
  v37 = v78;
  v39 = v81;
  v40 = v87;
  if (!v84)
  {
    v101 = v77;
    v102 = v78;
    v103 = v79;
    v104 = v80;
    v105 = v76;
    v106 = v83;
    v12 = v82;
    sub_1B73F862C(v77, v78, v79, v80, v76, v83);
    v41 = v75;
    sub_1B73F862C(v75, v85, v87, v81, 0, v82);
    sub_1B73F862C(v77, v78, v79, v80, v76, v83);
    sub_1B73F9BF8(&v101);
LABEL_25:
    sub_1B73F8670(v38, v37, v36, v35, v76, v34);
    v27 = v41;
    v31 = v84;
    v28 = v85;
    v29 = v40;
    v30 = v39;
    goto LABEL_26;
  }

  v101 = v75;
  v102 = v85;
  v103 = v87;
  v104 = v81;
  v105 = v84;
  v106 = v82;
  v96 = v77;
  v97 = v78;
  v98 = v79;
  v99 = v80;
  v100 = v76;
  sub_1B73F862C(v77, v78, v79, v80, v76, v83);
  sub_1B73F862C(v75, v85, v87, v81, v84, v82);
  sub_1B73F862C(v77, v78, v79, v80, v76, v83);
  sub_1B7215720(&v96, &v90);
  sub_1B7215720(&v101, &v90);
  if ((MEMORY[0x1B8CA5970](v77, v78, v79, v75, v85, v87) & 1) == 0)
  {
    sub_1B721722C(&v101);
    sub_1B721722C(&v96);
    v44 = 0;
    goto LABEL_33;
  }

  if (v99 == v104 && v100 == v105)
  {
    sub_1B721722C(&v101);
    sub_1B721722C(&v96);
  }

  else
  {
    v45 = sub_1B78020F8();
    sub_1B721722C(&v101);
    sub_1B721722C(&v96);
    v44 = 0;
    if ((v45 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  v44 = sub_1B72F48EC(v83, v106);
LABEL_33:
  sub_1B73F8670(v75, v85, v87, v81, v84, v82);
  v90 = v77;
  v91 = v78;
  v92 = v79;
  v93 = v80;
  v94 = v76;
  v95 = v83;
  sub_1B73F9BF8(&v90);
  sub_1B73F8670(v77, v78, v79, v80, v76, v83);
  if ((v44 & 1) == 0)
  {
    return 0;
  }

LABEL_34:
  if (!v72)
  {
    v48 = v62;
    v47 = v63;
    v49 = v64;
    v46 = v65;
    v50 = v66;
    sub_1B73F862C(v62, v63, v64, v65, 0, v66);
    if (!v73)
    {
      sub_1B73F862C(v67, v68, v69, v70, 0, v71);
      sub_1B73F8670(v62, v63, v64, v65, 0, v66);
      goto LABEL_49;
    }

    v51 = v68;
    v53 = v69;
    v52 = v70;
    v54 = v71;
    sub_1B73F862C(v67, v68, v69, v70, v73, v71);
    goto LABEL_43;
  }

  v46 = v65;
  if (!v73)
  {
    v101 = v62;
    v102 = v63;
    v103 = v64;
    v104 = v65;
    v50 = v66;
    v105 = v72;
    v106 = v66;
    v49 = v64;
    v73 = 0;
    v47 = v63;
    v48 = v62;
    sub_1B73F862C(v62, v63, v64, v65, v72, v66);
    v51 = v68;
    v53 = v69;
    v52 = v70;
    v54 = v71;
    sub_1B73F862C(v67, v68, v69, v70, 0, v71);
    sub_1B73F862C(v62, v63, v64, v65, v72, v66);
    sub_1B73F9BF8(&v101);
LABEL_43:
    sub_1B73F8670(v48, v47, v49, v46, v72, v50);
    v27 = v67;
    v28 = v51;
    v29 = v53;
    v30 = v52;
    v31 = v73;
    v42 = v54;
    goto LABEL_27;
  }

  v101 = v67;
  v102 = v68;
  v103 = v69;
  v104 = v70;
  v105 = v73;
  v106 = v71;
  v96 = v62;
  v97 = v63;
  v98 = v64;
  v99 = v65;
  v100 = v72;
  sub_1B73F862C(v62, v63, v64, v65, v72, v66);
  sub_1B73F862C(v67, v68, v69, v70, v73, v71);
  sub_1B73F862C(v62, v63, v64, v65, v72, v66);
  sub_1B7215720(&v96, &v90);
  sub_1B7215720(&v101, &v90);
  if ((MEMORY[0x1B8CA5970](v62, v63, v64, v67) & 1) == 0)
  {
    sub_1B721722C(&v101);
    sub_1B721722C(&v96);
    v55 = 0;
    goto LABEL_48;
  }

  if (v99 == v104 && v100 == v105)
  {
    sub_1B721722C(&v101);
    sub_1B721722C(&v96);
  }

  else
  {
    v56 = sub_1B78020F8();
    sub_1B721722C(&v101);
    sub_1B721722C(&v96);
    v55 = 0;
    if ((v56 & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  v55 = sub_1B72F48EC(v66, v106);
LABEL_48:
  sub_1B73F8670(v67, v68, v69, v70, v73, v71);
  v90 = v62;
  v91 = v63;
  v92 = v64;
  v93 = v65;
  v94 = v72;
  v95 = v66;
  sub_1B73F9BF8(&v90);
  sub_1B73F8670(v62, v63, v64, v65, v72, v66);
  if ((v55 & 1) == 0)
  {
    return 0;
  }

LABEL_49:
  if (v61)
  {
    if (v60)
    {
      swift_bridgeObjectRetain_n();

      v57 = sub_1B72F48EC(v61, v60);
      swift_bridgeObjectRelease_n();

      return (v57 & 1) != 0;
    }

LABEL_54:

    return 0;
  }

  if (v60)
  {
    goto LABEL_54;
  }

  return 1;
}

unint64_t sub_1B73F94D4()
{
  result = qword_1EB993B80;
  if (!qword_1EB993B80)
  {
    result = swift_getWitnessTable(byte_1B7825E00, &type metadata for SpendingSummary.NonSpendingBreakdowns.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993B80);
  }

  return result;
}

unint64_t sub_1B73F9528()
{
  result = qword_1EB993B88;
  if (!qword_1EB993B88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpendingSummary.NonSpendingBreakdowns.IncomeBreakdown, &type metadata for SpendingSummary.NonSpendingBreakdowns.IncomeBreakdown, v0, v1);
    atomic_store(result, &qword_1EB993B88);
  }

  return result;
}

unint64_t sub_1B73F957C()
{
  result = qword_1EB993B90;
  if (!qword_1EB993B90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpendingSummary.NonSpendingBreakdowns.ReimbursementsBreakdown, &type metadata for SpendingSummary.NonSpendingBreakdowns.ReimbursementsBreakdown, v0, v1);
    atomic_store(result, &qword_1EB993B90);
  }

  return result;
}

unint64_t sub_1B73F95D0()
{
  result = qword_1EB993B98;
  if (!qword_1EB993B98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpendingSummary.NonSpendingBreakdowns.ManuallyExcludedBreakdown, &type metadata for SpendingSummary.NonSpendingBreakdowns.ManuallyExcludedBreakdown, v0, v1);
    atomic_store(result, &qword_1EB993B98);
  }

  return result;
}

unint64_t sub_1B73F9624()
{
  result = qword_1EB993BA0;
  if (!qword_1EB993BA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpendingSummary.NonSpendingBreakdowns.TransfersBreakdown, &type metadata for SpendingSummary.NonSpendingBreakdowns.TransfersBreakdown, v0, v1);
    atomic_store(result, &qword_1EB993BA0);
  }

  return result;
}

unint64_t sub_1B73F9678()
{
  result = qword_1EB993BB0;
  if (!qword_1EB993BB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpendingSummary.NonSpendingBreakdowns.IncomeBreakdown, &type metadata for SpendingSummary.NonSpendingBreakdowns.IncomeBreakdown, v0, v1);
    atomic_store(result, &qword_1EB993BB0);
  }

  return result;
}

unint64_t sub_1B73F96CC()
{
  result = qword_1EB993BB8;
  if (!qword_1EB993BB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpendingSummary.NonSpendingBreakdowns.ReimbursementsBreakdown, &type metadata for SpendingSummary.NonSpendingBreakdowns.ReimbursementsBreakdown, v0, v1);
    atomic_store(result, &qword_1EB993BB8);
  }

  return result;
}

unint64_t sub_1B73F9720()
{
  result = qword_1EB993BC0;
  if (!qword_1EB993BC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpendingSummary.NonSpendingBreakdowns.ManuallyExcludedBreakdown, &type metadata for SpendingSummary.NonSpendingBreakdowns.ManuallyExcludedBreakdown, v0, v1);
    atomic_store(result, &qword_1EB993BC0);
  }

  return result;
}

unint64_t sub_1B73F9774()
{
  result = qword_1EB993BC8;
  if (!qword_1EB993BC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpendingSummary.NonSpendingBreakdowns.TransfersBreakdown, &type metadata for SpendingSummary.NonSpendingBreakdowns.TransfersBreakdown, v0, v1);
    atomic_store(result, &qword_1EB993BC8);
  }

  return result;
}

unint64_t sub_1B73F97C8()
{
  result = qword_1EB993BD8;
  if (!qword_1EB993BD8)
  {
    result = swift_getWitnessTable(aDg7_0, &type metadata for SpendingSummary.SpendingBreakdowns.CategoryBreakdown.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993BD8);
  }

  return result;
}

unint64_t sub_1B73F981C()
{
  result = qword_1EB993BF0;
  if (!qword_1EB993BF0)
  {
    result = swift_getWitnessTable(aYdg7, &type metadata for SpendingSummary.SpendingBreakdowns.GroupBreakdown.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993BF0);
  }

  return result;
}

uint64_t sub_1B73F9870(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B73F98D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B73F9938()
{
  result = qword_1EB993C08;
  if (!qword_1EB993C08)
  {
    result = swift_getWitnessTable(byte_1B7825D10, &type metadata for SpendingSummary.SpendingBreakdowns.DailyBreakdown.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993C08);
  }

  return result;
}

uint64_t sub_1B73F998C(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v14 = *a1;
  v15[0] = v2;
  v3 = *(a1 + 5);
  *&v15[1] = *(a1 + 4);
  v4 = a2[1];
  v16 = *a2;
  v17[0] = v4;
  v5 = *(a2 + 5);
  *&v17[1] = *(a2 + 4);
  v6 = LODWORD(v15[0]);
  v7 = v4;
  v8 = v14;
  v9 = v16;
  sub_1B7215720(&v14, v13);
  sub_1B7215720(&v16, v13);
  if (MEMORY[0x1B8CA5970](v8, *(&v8 + 1), v6, v9, *(&v9 + 1), v7))
  {
    if (*(&v15[0] + 1) == *(&v17[0] + 1) && *&v15[1] == *&v17[1])
    {
      sub_1B721722C(&v16);
      sub_1B721722C(&v14);
LABEL_7:
      v10 = sub_1B72F48EC(v3, v5);
      return v10 & 1;
    }

    v11 = sub_1B78020F8();
    sub_1B721722C(&v16);
    sub_1B721722C(&v14);
    v10 = 0;
    if (v11)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_1B721722C(&v16);
    sub_1B721722C(&v14);
    v10 = 0;
  }

  return v10 & 1;
}

unint64_t sub_1B73F9AA8()
{
  result = qword_1EB993C20;
  if (!qword_1EB993C20)
  {
    result = swift_getWitnessTable(byte_1B7825CC0, &type metadata for SpendingSummary.NonSpendingBreakdowns.IncomeBreakdown.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993C20);
  }

  return result;
}

unint64_t sub_1B73F9AFC()
{
  result = qword_1EB993C38;
  if (!qword_1EB993C38)
  {
    result = swift_getWitnessTable(aIeg7, &type metadata for SpendingSummary.NonSpendingBreakdowns.ReimbursementsBreakdown.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993C38);
  }

  return result;
}

unint64_t sub_1B73F9B50()
{
  result = qword_1EB993C50;
  if (!qword_1EB993C50)
  {
    result = swift_getWitnessTable(byte_1B7825C20, &type metadata for SpendingSummary.NonSpendingBreakdowns.ManuallyExcludedBreakdown.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993C50);
  }

  return result;
}

uint64_t sub_1B73F9BA4(__int128 *a1, uint64_t a2)
{
  v3 = *a1;
  *(a2 + 16) = *(a1 + 4);
  *a2 = v3;
  v4 = *(a1 + 4);
  *(a2 + 24) = *(a1 + 3);
  *(a2 + 32) = v4;
  *(a2 + 40) = *(a1 + 5);

  return a2;
}

uint64_t sub_1B73F9BF8(uint64_t a1)
{

  return a1;
}

unint64_t sub_1B73F9C2C()
{
  result = qword_1EB993C68;
  if (!qword_1EB993C68)
  {
    result = swift_getWitnessTable(byte_1B7825BD0, &type metadata for SpendingSummary.NonSpendingBreakdowns.TransfersBreakdown.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993C68);
  }

  return result;
}

void sub_1B73F9CA8(uint64_t a1)
{
  sub_1B73F9D48(319);
  if (v1 <= 0x3F)
  {
    sub_1B72F72C0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B73F9D48(uint64_t a1)
{
  if (!qword_1EB993C88)
  {
    sub_1B77FF988();
    sub_1B71A7028(&qword_1EB98EBD8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v1 = sub_1B78010C8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB993C88);
    }
  }
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
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
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1B73F9E34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 152))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1B73F9E90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t initializeWithCopy for SpendingSummary.SpendingBreakdowns.CategoryBreakdown(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;

  return a1;
}

uint64_t assignWithCopy for SpendingSummary.SpendingBreakdowns.CategoryBreakdown(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 22) = *(a2 + 22);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 26) = *(a2 + 26);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 30) = *(a2 + 30);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 34) = *(a2 + 34);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithTake for SpendingSummary.SpendingBreakdowns.CategoryBreakdown(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;

  return a1;
}

void sub_1B73FA0C0(uint64_t a1)
{
  sub_1B77FFA18();
  if (v1 <= 0x3F)
  {
    sub_1B72F72C0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B73FA174(uint64_t a1)
{
  sub_1B77FF988();
  if (v1 <= 0x3F)
  {
    sub_1B72F72C0(319);
    if (v2 <= 0x3F)
    {
      sub_1B73FA230(319);
      if (v3 <= 0x3F)
      {
        sub_1B73FA294(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B73FA230(uint64_t a1)
{
  if (!qword_1EB993CB8)
  {
    sub_1B723C570();
    v1 = sub_1B7800748();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB993CB8);
    }
  }
}

void sub_1B73FA294(uint64_t a1)
{
  if (!qword_1EB993CC0)
  {
    sub_1B77FFA18();
    type metadata accessor for SpendingSummary.SpendingBreakdowns.GroupBreakdown(255);
    sub_1B71A7028(&qword_1EB99DAF0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v1 = sub_1B7800748();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB993CC0);
    }
  }
}

double sub_1B73FA360(uint64_t a1)
{

  return result;
}

uint64_t sub_1B73FA39C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v3;
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t sub_1B73FA3EC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 6) = *(a2 + 6);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 10) = *(a2 + 10);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t sub_1B73FA49C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t sub_1B73FA4F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B73FA53C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B73FA64C()
{
  result = qword_1EB993CC8;
  if (!qword_1EB993CC8)
  {
    result = swift_getWitnessTable(byte_1B7825530, &type metadata for SpendingSummary.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993CC8);
  }

  return result;
}

unint64_t sub_1B73FA6A4()
{
  result = qword_1EB993CD0;
  if (!qword_1EB993CD0)
  {
    result = swift_getWitnessTable(aA8g7, &type metadata for SpendingSummary.SpendingBreakdowns.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993CD0);
  }

  return result;
}

unint64_t sub_1B73FA6FC()
{
  result = qword_1EB993CD8;
  if (!qword_1EB993CD8)
  {
    result = swift_getWitnessTable(byte_1B78256A0, &type metadata for SpendingSummary.NonSpendingBreakdowns.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993CD8);
  }

  return result;
}

unint64_t sub_1B73FA754()
{
  result = qword_1EB993CE0;
  if (!qword_1EB993CE0)
  {
    result = swift_getWitnessTable(byte_1B7825758, &type metadata for SpendingSummary.SpendingBreakdowns.CategoryBreakdown.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993CE0);
  }

  return result;
}

unint64_t sub_1B73FA7AC()
{
  result = qword_1EB993CE8;
  if (!qword_1EB993CE8)
  {
    result = swift_getWitnessTable(a96g7p, &type metadata for SpendingSummary.SpendingBreakdowns.GroupBreakdown.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993CE8);
  }

  return result;
}

unint64_t sub_1B73FA804()
{
  result = qword_1EB993CF0;
  if (!qword_1EB993CF0)
  {
    result = swift_getWitnessTable(byte_1B78258C8, &type metadata for SpendingSummary.SpendingBreakdowns.DailyBreakdown.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993CF0);
  }

  return result;
}

unint64_t sub_1B73FA85C()
{
  result = qword_1EB993CF8;
  if (!qword_1EB993CF8)
  {
    result = swift_getWitnessTable(byte_1B7825980, &type metadata for SpendingSummary.NonSpendingBreakdowns.IncomeBreakdown.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993CF8);
  }

  return result;
}

unint64_t sub_1B73FA8B4()
{
  result = qword_1EB993D00;
  if (!qword_1EB993D00)
  {
    result = swift_getWitnessTable(byte_1B7825A38, &type metadata for SpendingSummary.NonSpendingBreakdowns.ReimbursementsBreakdown.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993D00);
  }

  return result;
}

unint64_t sub_1B73FA90C()
{
  result = qword_1EB993D08;
  if (!qword_1EB993D08)
  {
    result = swift_getWitnessTable("Y3g7", &type metadata for SpendingSummary.NonSpendingBreakdowns.ManuallyExcludedBreakdown.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993D08);
  }

  return result;
}

unint64_t sub_1B73FA964()
{
  result = qword_1EB993D10;
  if (!qword_1EB993D10)
  {
    result = swift_getWitnessTable(byte_1B7825BA8, &type metadata for SpendingSummary.NonSpendingBreakdowns.TransfersBreakdown.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993D10);
  }

  return result;
}

unint64_t sub_1B73FA9BC()
{
  result = qword_1EB993D18;
  if (!qword_1EB993D18)
  {
    result = swift_getWitnessTable(byte_1B7825B18, &type metadata for SpendingSummary.NonSpendingBreakdowns.TransfersBreakdown.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993D18);
  }

  return result;
}

unint64_t sub_1B73FAA14()
{
  result = qword_1EB993D20;
  if (!qword_1EB993D20)
  {
    result = swift_getWitnessTable(byte_1B7825B40, &type metadata for SpendingSummary.NonSpendingBreakdowns.TransfersBreakdown.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993D20);
  }

  return result;
}

unint64_t sub_1B73FAA6C()
{
  result = qword_1EB993D28;
  if (!qword_1EB993D28)
  {
    result = swift_getWitnessTable(byte_1B7825A60, &type metadata for SpendingSummary.NonSpendingBreakdowns.ManuallyExcludedBreakdown.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993D28);
  }

  return result;
}

unint64_t sub_1B73FAAC4()
{
  result = qword_1EB993D30;
  if (!qword_1EB993D30)
  {
    result = swift_getWitnessTable(byte_1B7825A88, &type metadata for SpendingSummary.NonSpendingBreakdowns.ManuallyExcludedBreakdown.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993D30);
  }

  return result;
}

unint64_t sub_1B73FAB1C()
{
  result = qword_1EB993D38;
  if (!qword_1EB993D38)
  {
    result = swift_getWitnessTable(aIag7l, &type metadata for SpendingSummary.NonSpendingBreakdowns.ReimbursementsBreakdown.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993D38);
  }

  return result;
}

unint64_t sub_1B73FAB74()
{
  result = qword_1EB993D40;
  if (!qword_1EB993D40)
  {
    result = swift_getWitnessTable(aAG7d, &type metadata for SpendingSummary.NonSpendingBreakdowns.ReimbursementsBreakdown.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993D40);
  }

  return result;
}

unint64_t sub_1B73FABCC()
{
  result = qword_1EB993D48;
  if (!qword_1EB993D48)
  {
    result = swift_getWitnessTable(byte_1B78258F0, &type metadata for SpendingSummary.NonSpendingBreakdowns.IncomeBreakdown.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993D48);
  }

  return result;
}

unint64_t sub_1B73FAC24()
{
  result = qword_1EB993D50;
  if (!qword_1EB993D50)
  {
    result = swift_getWitnessTable(byte_1B7825918, &type metadata for SpendingSummary.NonSpendingBreakdowns.IncomeBreakdown.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993D50);
  }

  return result;
}

unint64_t sub_1B73FAC7C()
{
  result = qword_1EB993D58;
  if (!qword_1EB993D58)
  {
    result = swift_getWitnessTable(byte_1B7825838, &type metadata for SpendingSummary.SpendingBreakdowns.DailyBreakdown.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993D58);
  }

  return result;
}

unint64_t sub_1B73FACD4()
{
  result = qword_1EB993D60;
  if (!qword_1EB993D60)
  {
    result = swift_getWitnessTable(byte_1B7825860, &type metadata for SpendingSummary.SpendingBreakdowns.DailyBreakdown.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993D60);
  }

  return result;
}

unint64_t sub_1B73FAD2C()
{
  result = qword_1EB993D68;
  if (!qword_1EB993D68)
  {
    result = swift_getWitnessTable("qCg7", &type metadata for SpendingSummary.SpendingBreakdowns.GroupBreakdown.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993D68);
  }

  return result;
}

unint64_t sub_1B73FAD84()
{
  result = qword_1EB993D70;
  if (!qword_1EB993D70)
  {
    result = swift_getWitnessTable(byte_1B78257A8, &type metadata for SpendingSummary.SpendingBreakdowns.GroupBreakdown.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993D70);
  }

  return result;
}

unint64_t sub_1B73FADDC()
{
  result = qword_1EB993D78;
  if (!qword_1EB993D78)
  {
    result = swift_getWitnessTable(aDg7_1, &type metadata for SpendingSummary.SpendingBreakdowns.CategoryBreakdown.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993D78);
  }

  return result;
}

unint64_t sub_1B73FAE34()
{
  result = qword_1EB993D80;
  if (!qword_1EB993D80)
  {
    result = swift_getWitnessTable(aAG7, &type metadata for SpendingSummary.SpendingBreakdowns.CategoryBreakdown.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993D80);
  }

  return result;
}

unint64_t sub_1B73FAE8C()
{
  result = qword_1EB993D88;
  if (!qword_1EB993D88)
  {
    result = swift_getWitnessTable(byte_1B7825610, &type metadata for SpendingSummary.NonSpendingBreakdowns.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993D88);
  }

  return result;
}

unint64_t sub_1B73FAEE4()
{
  result = qword_1EB993D90;
  if (!qword_1EB993D90)
  {
    result = swift_getWitnessTable(byte_1B7825638, &type metadata for SpendingSummary.NonSpendingBreakdowns.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993D90);
  }

  return result;
}

unint64_t sub_1B73FAF3C()
{
  result = qword_1EB993D98;
  if (!qword_1EB993D98)
  {
    result = swift_getWitnessTable(byte_1B7825558, &type metadata for SpendingSummary.SpendingBreakdowns.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993D98);
  }

  return result;
}

unint64_t sub_1B73FAF94()
{
  result = qword_1EB993DA0;
  if (!qword_1EB993DA0)
  {
    result = swift_getWitnessTable(byte_1B7825580, &type metadata for SpendingSummary.SpendingBreakdowns.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993DA0);
  }

  return result;
}

unint64_t sub_1B73FAFEC()
{
  result = qword_1EB993DA8;
  if (!qword_1EB993DA8)
  {
    result = swift_getWitnessTable(aQfg7p, &type metadata for SpendingSummary.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993DA8);
  }

  return result;
}

unint64_t sub_1B73FB044()
{
  result = qword_1EB993DB0;
  if (!qword_1EB993DB0)
  {
    result = swift_getWitnessTable(aIbg7h, &type metadata for SpendingSummary.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993DB0);
  }

  return result;
}

uint64_t sub_1B73FB098(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B7879360 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6570536C61746F74 && a2 == 0xED0000676E69646ELL || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x776F646B61657262 && a2 == 0xEA0000000000736ELL || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B787E100 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1B73FB260(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657053796C696164 && a2 == 0xED0000676E69646ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

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

uint64_t sub_1B73FB37C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D6F636E69 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737275626D696572 && a2 == 0xEE0073746E656D65 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B787E120 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726566736E617274 && a2 == 0xE900000000000073)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B78020F8();

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

uint64_t sub_1B73FB4F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B7879360 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6570536C61746F74 && a2 == 0xED0000676E69646ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

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

uint64_t sub_1B73FB61C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B7879360 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6570536C61746F74 && a2 == 0xED0000676E69646ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

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

uint64_t sub_1B73FB73C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7954788 && a2 == 0xE300000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6570536C61746F74 && a2 == 0xED0000676E69646ELL || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B7879360 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B787E140 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65724270756F7267 && a2 == 0xEF736E776F646B61)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10FinanceKit30BankConnectAccountMatcherErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1B73FB980(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B73FB9C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B73FBA0C(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t ApplePayTransactionTopicIdentifier.data.getter()
{
  v1 = *v0;
  sub_1B720ABEC(*v0, *(v0 + 8));
  return v1;
}

uint64_t ApplePayTransactionTopicIdentifier.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B720A388(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t ApplePayTransactionTopicIdentifier.init(data:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t ApplePayTransactionTopicIdentifier.init(transactionIdentifier:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v24 = a2;
  v3 = sub_1B78008E8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1B78004C8();
  v7 = *(v23 - 8);
  v8 = MEMORY[0x1EEE9AC00](v23);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - v11;
  v14 = a1[1];
  *&v25 = *a1;
  v13 = v25;
  *(&v25 + 1) = v14;
  sub_1B720ABEC(v25, v14);
  sub_1B78004A8();
  sub_1B78008C8();
  v15 = sub_1B7800878();
  v17 = v16;
  result = (*(v4 + 8))(v6, v3);
  if (v17 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B720A388(v13, v14);
    *&v25 = v15;
    *(&v25 + 1) = v17;
    sub_1B78006D8();
    sub_1B73FBD74();
    sub_1B736E424();
    sub_1B7800568();
    sub_1B7800488();
    sub_1B72380B8(v15, v17);
    v19 = *(v7 + 8);
    v20 = v10;
    v21 = v23;
    v19(v20, v23);
    result = (v19)(v12, v21);
    *v24 = v25;
  }

  return result;
}

unint64_t sub_1B73FBD74()
{
  result = qword_1EB99ED20;
  if (!qword_1EB99ED20)
  {
    v3 = sub_1B78006D8();
    result = swift_getWitnessTable(MEMORY[0x1E6966618], v3, v0, v1);
    atomic_store(result, &qword_1EB99ED20);
  }

  return result;
}

uint64_t sub_1B73FBDCC@<X0>(_BYTE *__src@<X0>, _BYTE *a2@<X1>, unint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2 != __src)
  {
    v7 = a2 - __src;
    if (a2 - __src <= 14)
    {
      result = sub_1B77F31E0(__src, a2);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1B77FEBC8();
      swift_allocObject();
      v8 = sub_1B77FEB68();
      if (v7 >= 0x7FFFFFFF)
      {
        sub_1B77FF558();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v7;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = v7 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t ApplePayTransactionTopicIdentifier.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B77FF5C8();
  return sub_1B7802368();
}

uint64_t sub_1B73FBEFC()
{
  sub_1B78022F8();
  sub_1B77FF5C8();
  return sub_1B7802368();
}

uint64_t sub_1B73FBF50(uint64_t a1)
{
  sub_1B78022F8();
  sub_1B77FF5C8();
  return sub_1B7802368();
}

uint64_t sub_1B73FBFBC@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1B77FEB78();
    if (v10)
    {
      v11 = sub_1B77FEBA8();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1B77FEB98();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1B77FEB78();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1B77FEBA8();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1B77FEB98();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1B73FC1EC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1B73FC37C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1B720A388(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1B73FBFBC(v13, a3, a4, &v12);
  v10 = v4;
  sub_1B720A388(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1B73FC37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1B77FEB78();
  v11 = result;
  if (result)
  {
    result = sub_1B77FEBA8();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1B77FEB98();
  sub_1B73FBFBC(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_1B73FC434(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1B720ABEC(a3, a4);
          return sub_1B73FC1EC(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_1B73FC5A0()
{
  result = qword_1EB993DB8;
  if (!qword_1EB993DB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ApplePayTransactionTopicIdentifier, &type metadata for ApplePayTransactionTopicIdentifier, v0, v1);
    atomic_store(result, &qword_1EB993DB8);
  }

  return result;
}

FinanceKit::ReconsentType_optional __swiftcall ReconsentType.init(rawValue:)(Swift::Int16 rawValue)
{
  if (rawValue == 1)
  {
    v1.value = FinanceKit_ReconsentType_hard;
  }

  else
  {
    v1.value = FinanceKit_ReconsentType_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1B73FC63C()
{
  result = qword_1EB993DC0;
  if (!qword_1EB993DC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReconsentType, &type metadata for ReconsentType, v0, v1);
    atomic_store(result, &qword_1EB993DC0);
  }

  return result;
}

unint64_t sub_1B73FC744()
{
  result = qword_1EB993DC8;
  if (!qword_1EB993DC8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB993DD0, &qword_1B7826238);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EB993DC8);
  }

  return result;
}

unint64_t sub_1B73FC7C8()
{
  result = qword_1EB993DD8;
  if (!qword_1EB993DD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReconsentType, &type metadata for ReconsentType, v0, v1);
    atomic_store(result, &qword_1EB993DD8);
  }

  return result;
}

uint64_t Order.ReturnInfo.returnPolicyURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B77FF4F8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Order.ReturnInfo.returnPolicyURL.setter(uint64_t a1)
{
  v3 = sub_1B77FF4F8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Order.ReturnInfo.returnPolicyDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for Order.ReturnInfo(0) + 20));

  return v1;
}

uint64_t type metadata accessor for Order.ReturnInfo(uint64_t a1)
{
  result = qword_1EB993DF8;
  if (!qword_1EB993DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void Order.ReturnInfo.returnPolicyDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Order.ReturnInfo(0) + 20));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t Order.ReturnInfo.displayCountdown.setter(char a1)
{
  result = type metadata accessor for Order.ReturnInfo(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t sub_1B73FCC78(uint64_t a1)
{
  v2 = sub_1B73FE16C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73FCCB4(uint64_t a1)
{
  v2 = sub_1B73FE16C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Order.ReturnInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993DE0, &qword_1B7826290);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B73FE16C();
  sub_1B78023F8();
  v13 = 0;
  sub_1B77FF4F8();
  sub_1B72FA358(&qword_1EB98F700, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  sub_1B7801FC8();
  if (!v1)
  {
    type metadata accessor for Order.ReturnInfo(0);
    v12 = 1;
    sub_1B7801EF8();
    v11 = 2;
    sub_1B7801F38();
    v10 = 3;
    sub_1B77FF988();
    sub_1B72FA358(&qword_1EDAF65F0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1B7801F38();
    v9 = 4;
    sub_1B7801F08();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t Order.ReturnInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v35 = v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = v33 - v6;
  v7 = sub_1B77FF4F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v38 = (v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993DF0, &qword_1B7826298);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v11 = v33 - v10;
  v12 = type metadata accessor for Order.ReturnInfo(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v8 + 56);
  v44 = *(v13 + 24);
  v16(&v15[v44], 1, 1, v7);
  v17 = *(v12 + 28);
  v18 = sub_1B77FF988();
  v19 = *(*(v18 - 8) + 56);
  v42 = v15;
  v43 = v17;
  v19(&v15[v17], 1, 1, v18);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B73FE16C();
  v39 = v11;
  v20 = v41;
  sub_1B78023C8();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v23 = v43;
    v24 = v42;
    sub_1B7205418(&v42[v44], &unk_1EB994C70, &qword_1B7809800);
    return sub_1B7205418(&v24[v23], &qword_1EB98EBD0, &unk_1B7809780);
  }

  else
  {
    v33[2] = v18;
    v41 = v12;
    v21 = v36;
    v22 = v37;
    v49 = 0;
    sub_1B72FA358(&qword_1EB98F730, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    sub_1B7801E48();
    v25 = v42;
    (*(v8 + 32))(v42, v38, v7);
    v48 = 1;
    v26 = sub_1B7801D78();
    v27 = (v25 + *(v41 + 20));
    *v27 = v26;
    v27[1] = v28;
    v33[1] = v28;
    v47 = 2;
    sub_1B7801DB8();
    v38 = a1;
    sub_1B7213740(v22, v25 + v44, &unk_1EB994C70, &qword_1B7809800);
    v46 = 3;
    sub_1B72FA358(&unk_1EDAF65E0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v29 = v35;
    sub_1B7801DB8();
    sub_1B7213740(v29, v25 + v43, &qword_1EB98EBD0, &unk_1B7809780);
    v45 = 4;
    v30 = sub_1B7801D88();
    v31 = *(v41 + 32);
    (*(v21 + 8))(v39, v40);
    *(v25 + v31) = v30;
    sub_1B73FE1C0(v25, v34);
    __swift_destroy_boxed_opaque_existential_1(v38);
    return sub_1B73FE28C(v25, type metadata accessor for Order.ReturnInfo);
  }
}

uint64_t Order.ReturnInfo.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Order.ReturnInfo(0);
  v5 = v4[6];
  v6 = (a2 + v4[5]);
  v7 = sub_1B77FF4F8();
  v8 = *(v7 - 8);
  (*(v8 + 56))(a2 + v5, 1, 1, v7);
  v9 = v4[7];
  v10 = sub_1B77FF988();
  (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
  v11 = v4[8];
  (*(v8 + 16))(a2, a1, v7);
  v12 = type metadata accessor for RawOrderReturnInfo(0);
  v13 = (a1 + v12[5]);
  v14 = v13[1];
  *v6 = *v13;
  v6[1] = v14;
  v15 = v12[6];

  sub_1B73FE224(a1 + v15, a2 + v5, &unk_1EB994C70, &qword_1B7809800);
  sub_1B73FE224(a1 + v12[7], a2 + v9, &qword_1EB98EBD0, &unk_1B7809780);
  LOBYTE(v12) = *(a1 + v12[8]);
  result = sub_1B73FE28C(a1, type metadata accessor for RawOrderReturnInfo);
  *(a2 + v11) = v12;
  return result;
}

void Order.ReturnInfo.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v36 = &v31 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v31 - v7;
  v9 = type metadata accessor for Order.ReturnInfo(0);
  v10 = v9[6];
  v11 = sub_1B77FF4F8();
  v31 = *(*(v11 - 8) + 56);
  v32 = v10;
  v31(a2 + v10, 1, 1, v11);
  v12 = v9[7];
  v13 = sub_1B77FF988();
  v14 = *(v13 - 8);
  v34 = *(v14 + 56);
  v35 = v12;
  v33 = v14 + 56;
  v34(a2 + v12, 1, 1, v13);
  v15 = [a1 returnPolicyURL];
  sub_1B77FF478();

  v16 = [a1 returnPolicyDescription];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1B7800868();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = (a2 + v9[5]);
  *v21 = v18;
  v21[1] = v20;
  v22 = [a1 returnManagementURL];
  if (v22)
  {
    v23 = v22;
    sub_1B77FF478();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = 1;
  v31(v8, v24, 1, v11);
  sub_1B7213740(v8, a2 + v32, &unk_1EB994C70, &qword_1B7809800);
  v26 = [a1 returnDeadline];
  v27 = v36;
  if (v26)
  {
    v28 = v26;
    sub_1B77FF928();

    v25 = 0;
  }

  v34(v27, v25, 1, v13);
  v29 = v9[8];
  sub_1B7213740(v27, a2 + v35, &qword_1EB98EBD0, &unk_1B7809780);
  v30 = ManagedOrderReturnInfo.displayCountdown.getter();

  *(a2 + v29) = v30;
}

BOOL _s10FinanceKit5OrderV10ReturnInfoV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF988();
  v59 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v57 = &v52 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0, &qword_1B7813550);
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v52 - v9;
  v10 = sub_1B77FF4F8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v52 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C30, &unk_1B7816E10);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v52 - v18;
  if ((sub_1B77FF458() & 1) == 0)
  {
    return 0;
  }

  v20 = type metadata accessor for Order.ReturnInfo(0);
  v21 = *(v20 + 20);
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }

    v55 = v11;
    if (*v22 != *v24 || v23 != v25)
    {
      v26 = v20;
      v27 = sub_1B78020F8();
      v20 = v26;
      if ((v27 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v55 = v11;
    if (v25)
    {
      return 0;
    }
  }

  v52 = v4;
  v28 = *(v20 + 24);
  v29 = *(v17 + 48);
  v53 = a1;
  v54 = v20;
  sub_1B7205588(a1 + v28, v19, &unk_1EB994C70, &qword_1B7809800);
  v30 = a2 + v28;
  v31 = a2;
  sub_1B7205588(v30, &v19[v29], &unk_1EB994C70, &qword_1B7809800);
  v32 = *(v55 + 48);
  if (v32(v19, 1, v10) == 1)
  {
    if (v32(&v19[v29], 1, v10) == 1)
    {
      sub_1B7205418(v19, &unk_1EB994C70, &qword_1B7809800);
      goto LABEL_16;
    }

LABEL_14:
    v33 = &qword_1EB991C30;
    v34 = &unk_1B7816E10;
LABEL_22:
    sub_1B7205418(v19, v33, v34);
    return 0;
  }

  sub_1B7205588(v19, v16, &unk_1EB994C70, &qword_1B7809800);
  if (v32(&v19[v29], 1, v10) == 1)
  {
    (*(v55 + 8))(v16, v10);
    goto LABEL_14;
  }

  v35 = v55;
  (*(v55 + 32))(v13, &v19[v29], v10);
  sub_1B72FA358(&qword_1EB990310, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v36 = sub_1B7800828();
  v37 = *(v35 + 8);
  v37(v13, v10);
  v37(v16, v10);
  sub_1B7205418(v19, &unk_1EB994C70, &qword_1B7809800);
  if ((v36 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v38 = v53;
  v39 = *(v54 + 28);
  v40 = *(v8 + 48);
  v19 = v58;
  sub_1B7205588(v53 + v39, v58, &qword_1EB98EBD0, &unk_1B7809780);
  sub_1B7205588(v31 + v39, &v19[v40], &qword_1EB98EBD0, &unk_1B7809780);
  v41 = *(v59 + 48);
  v42 = v52;
  if (v41(v19, 1, v52) == 1)
  {
    if (v41(&v19[v40], 1, v42) == 1)
    {
      sub_1B7205418(v19, &qword_1EB98EBD0, &unk_1B7809780);
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v43 = v57;
  sub_1B7205588(v19, v57, &qword_1EB98EBD0, &unk_1B7809780);
  if (v41(&v19[v40], 1, v42) == 1)
  {
    (*(v59 + 8))(v43, v42);
LABEL_21:
    v33 = &qword_1EB98FCE0;
    v34 = &qword_1B7813550;
    goto LABEL_22;
  }

  v45 = v59;
  v46 = v56;
  (*(v59 + 32))(v56, &v19[v40], v42);
  sub_1B72FA358(&qword_1EB98FAC0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v47 = sub_1B7800828();
  v48 = *(v45 + 8);
  v48(v46, v42);
  v48(v43, v42);
  sub_1B7205418(v19, &qword_1EB98EBD0, &unk_1B7809780);
  if ((v47 & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  v49 = *(v54 + 32);
  v50 = *(v38 + v49);
  v51 = *(v31 + v49);
  if (v50 != 2)
  {
    return v51 != 2 && ((v51 ^ v50) & 1) == 0;
  }

  return v51 == 2;
}

unint64_t sub_1B73FE16C()
{
  result = qword_1EB993DE8;
  if (!qword_1EB993DE8)
  {
    result = swift_getWitnessTable(byte_1B7826410, &_s10ReturnInfoV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB993DE8);
  }

  return result;
}

uint64_t sub_1B73FE1C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Order.ReturnInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B73FE224(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B73FE28C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B73FE328()
{
  result = qword_1EB993E08;
  if (!qword_1EB993E08)
  {
    result = swift_getWitnessTable("a*g7ȷ\b", &_s10ReturnInfoV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB993E08);
  }

  return result;
}

unint64_t sub_1B73FE380()
{
  result = qword_1EB993E10;
  if (!qword_1EB993E10)
  {
    result = swift_getWitnessTable(byte_1B7826358, &_s10ReturnInfoV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB993E10);
  }

  return result;
}

unint64_t sub_1B73FE3D8()
{
  result = qword_1EB993E18;
  if (!qword_1EB993E18)
  {
    result = swift_getWitnessTable(byte_1B7826380, &_s10ReturnInfoV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB993E18);
  }

  return result;
}

void sub_1B73FE478(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x54646E4165746164 && a2 == 0xEB00000000656D69)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1B78020F8();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1B73FE504(uint64_t a1)
{
  v2 = sub_1B73FEC88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73FE540(uint64_t a1)
{
  v2 = sub_1B73FEC88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1B73FE59C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365726975716572 && a2 == 0xEC000000656D6954)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1B78020F8();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1B73FE628(uint64_t a1)
{
  v2 = sub_1B73FECDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73FE664(uint64_t a1)
{
  v2 = sub_1B73FECDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DateComponentsParseStrategy.Fields.encode(to:)(void *a1)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993E20, &qword_1B7826460);
  v3 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v5 = v12 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993E28, &qword_1B7826468);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v12 - v8;
  v12[1] = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B73FEC88();
  sub_1B78023F8();
  sub_1B73FECDC();
  sub_1B7801ED8();
  v10 = v13;
  sub_1B7801F88();
  (*(v3 + 8))(v5, v10);
  return (*(v7 + 8))(v9, v6);
}

uint64_t DateComponentsParseStrategy.Fields.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993E40, &qword_1B7826470);
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993E48, &qword_1B7826478);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  v11 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1B73FEC88();
  sub_1B78023C8();
  if (!v2)
  {
    v12 = v22;
    v13 = sub_1B7801E98();
    v14 = (2 * *(v13 + 16)) | 1;
    v23 = v13;
    v24 = v13 + 32;
    v25 = 0;
    v26 = v14;
    if ((sub_1B721CE60() & 1) != 0 || v25 != v26 >> 1)
    {
      v15 = sub_1B7801B18();
      swift_allocError();
      v16 = v7;
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050, &unk_1B780CC20);
      *v18 = &type metadata for DateComponentsParseStrategy.Fields;
      sub_1B7801D68();
      sub_1B7801AE8();
      (*(*(v15 - 8) + 104))(v18, *MEMORY[0x1E69E6AF8], v15);
      swift_willThrow();
      (*(v8 + 8))(v10, v16);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1B73FECDC();
      sub_1B7801D38();
      v20 = sub_1B7801E08();
      (*(v12 + 8))(v6, v4);
      (*(v8 + 8))(v10, v7);
      swift_unknownObjectRelease();
      *v21 = v20 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v27);
}

unint64_t sub_1B73FEC88()
{
  result = qword_1EB993E30;
  if (!qword_1EB993E30)
  {
    result = swift_getWitnessTable(a8g7, &type metadata for DateComponentsParseStrategy.Fields.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993E30);
  }

  return result;
}

unint64_t sub_1B73FECDC()
{
  result = qword_1EB993E38;
  if (!qword_1EB993E38)
  {
    result = swift_getWitnessTable(aY8g7, &type metadata for DateComponentsParseStrategy.Fields.DateAndTimeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993E38);
  }

  return result;
}

uint64_t DateComponentsParseStrategy.parse(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v95 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v102 = &v86 - v7;
  v8 = sub_1B77FFB08();
  v97 = *(v8 - 8);
  v98 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v96 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B77FFC88();
  v108 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v100 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B77FFCF8();
  v104 = *(v12 - 8);
  v105 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v94 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938, &unk_1B7812F00);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v93 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v92 = &v86 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v91 = &v86 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v86 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA40, &qword_1B7809790);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v86 - v24;
  v26 = sub_1B77FED28();
  v106 = *(v26 - 8);
  v107 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v101) = *v3;
  v29 = objc_allocWithZone(MEMORY[0x1E696AE88]);
  v30 = sub_1B7800838();
  v31 = [v29 initWithString_];

  v32 = v28;
  v33 = *(v108 + 56);
  v99 = v10;
  v33(v25, 1, 1, v10);
  v35 = v104 + 56;
  v34 = *(v104 + 56);
  v34(v22, 1, 1, v105);
  sub_1B77FECD8();
  v36 = v103;
  sub_1B73FFD54(4, v31, a1, a2, 0x30u, 0x39u);
  if (v36)
  {
    goto LABEL_10;
  }

  v103 = a1;
  v87 = v34;
  v88 = v35;
  v89 = 0;
  v37 = v108;
  v38 = v102;
  swift_beginAccess();
  sub_1B77FEC68();
  swift_endAccess();
  sub_1B7801708();
  if (!v39 || (v90 = v32, v40 = sub_1B7800788(), v32 = v90, , (v40 & 0x100) != 0))
  {
    v45 = v103;
    v46 = a2;
    goto LABEL_9;
  }

  v41 = a2;
  v42 = v103;
  if (v40 != 45)
  {
    goto LABEL_7;
  }

  v43 = v89;
  sub_1B73FFD54(2, v31, v103, v41, 0x30u, 0x39u);
  if (v43)
  {
LABEL_10:

LABEL_11:
    v48 = v106;
    v47 = v107;
    return (*(v48 + 8))(v32, v47);
  }

  if ((v44 - 13) < 0xFFFFFFFFFFFFFFF4)
  {
LABEL_7:
    v45 = v42;
    v46 = v41;
LABEL_9:
    sub_1B73FFB24(v45, v46);
    swift_willThrow();
    goto LABEL_10;
  }

  swift_beginAccess();
  sub_1B77FEC88();
  swift_endAccess();
  v50 = v31;
  sub_1B7801708();
  if (!v51 || (v52 = sub_1B7800788(), v32 = v90, , (v52 & 0x100) != 0))
  {
    v55 = v103;
    goto LABEL_19;
  }

  v53 = v103;
  if (v52 != 45 || (sub_1B73FFD54(2, v50, v103, v41, 0x30u, 0x39u), (v54 - 32) < 0xFFFFFFFFFFFFFFE1))
  {
    v55 = v53;
LABEL_19:
    sub_1B73FFB24(v55, v41);
    swift_willThrow();
    v31 = v50;
    goto LABEL_10;
  }

  swift_beginAccess();
  sub_1B77FEC18();
  swift_endAccess();
  if ((v101 & 1) != 0 || ([v50 isAtEnd] & 1) == 0)
  {
    sub_1B7801708();
    if (!v61 || (v62 = sub_1B7800788(), , (v62 & 0x100) != 0) || (v62 | 0x20) != 0x74)
    {
      sub_1B73FFB24(v53, v41);
      swift_willThrow();
LABEL_31:
      v32 = v90;

      goto LABEL_11;
    }

    v89 = v50;
    v56 = v53;
    v101 = v41;
    sub_1B73FFD54(2, v50, v53, v41, 0x30u, 0x39u);
    if (v63 > 0x17 || (swift_beginAccess(), sub_1B77FEC48(), swift_endAccess(), sub_1B7801708(), !v67) || (v68 = sub_1B7800788(), , (v68 & 0x100) != 0) || v68 != 58 || (sub_1B73FFD54(2, v89, v53, v101, 0x30u, 0x39u), v69 > 0x3B) || (swift_beginAccess(), sub_1B77FECA8(), swift_endAccess(), sub_1B7801708(), !v70) || (v71 = sub_1B7800788(), , (v71 & 0x100) != 0) || v71 != 58 || (sub_1B73FFD54(2, v89, v53, v101, 0x30u, 0x39u), v72 > 0x3C))
    {
      sub_1B73FFB24(v53, v101);
      swift_willThrow();
      v50 = v89;
      goto LABEL_31;
    }

    swift_beginAccess();
    sub_1B77FECC8();
    swift_endAccess();
    sub_1B7801708();
    if (!v73 || (v74 = sub_1B7800788(), , (v74 & 0x100) != 0))
    {
LABEL_62:
      sub_1B73FFB24(v56, v101);
      swift_willThrow();

      goto LABEL_33;
    }

    if (v74 > 0x59u)
    {
      if (v74 != 122 && v74 != 90)
      {
        goto LABEL_62;
      }

      v75 = v91;
      sub_1B77FFCA8();
      result = (*(v104 + 48))(v75, 1, v105);
      v93 = v75;
      if (result != 1)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (v74 != 43 && v74 != 45)
      {
        goto LABEL_62;
      }

      sub_1B73FFD54(2, v89, v53, v101, 0x30u, 0x39u);
      v80 = v79;
      if (v79 > 0x17)
      {
        goto LABEL_62;
      }

      sub_1B7801708();
      if (!v81)
      {
        goto LABEL_62;
      }

      v82 = sub_1B7800788();

      if ((v82 & 0x1FF) != 0x3A)
      {
        goto LABEL_62;
      }

      sub_1B73FFD54(2, v89, v56, v101, 0x30u, 0x39u);
      if (v83 > 0x3B)
      {
        goto LABEL_62;
      }

      if (3600 * v80 + 60 * v83)
      {
        v84 = v93;
        sub_1B77FFCA8();
        if ((*(v104 + 48))(v84, 1, v105) == 1)
        {
          sub_1B7205418(v93, &qword_1EB98F938, &unk_1B7812F00);
          goto LABEL_62;
        }

LABEL_54:
        v76 = v104;
        v77 = v105;
        v78 = v94;
        (*(v104 + 32))(v94, v93, v105);
        (*(v76 + 16))(v22, v78, v77);
        v87(v22, 0, 1, v77);
        swift_beginAccess();
        sub_1B77FED18();
        swift_endAccess();
        (*(v76 + 8))(v78, v77);
        v50 = v89;
        goto LABEL_23;
      }

      v85 = v92;
      sub_1B77FFCA8();
      result = (*(v104 + 48))(v85, 1, v105);
      v93 = v85;
      if (result != 1)
      {
        goto LABEL_54;
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  v56 = v53;
  v101 = v41;
LABEL_23:
  if (![v50 isAtEnd])
  {
    sub_1B73FFB24(v56, v101);
    swift_willThrow();

    goto LABEL_33;
  }

  v57 = v96;
  v58 = v97;
  v59 = v98;
  (*(v97 + 104))(v96, *MEMORY[0x1E6969868], v98);
  sub_1B77FFB18();
  (*(v58 + 8))(v57, v59);
  swift_beginAccess();
  sub_1B77FFBF8();
  swift_endAccess();
  v60 = sub_1B77FF988();
  if ((*(*(v60 - 8) + 48))(v38, 1, v60) == 1)
  {
    sub_1B7205418(v38, &qword_1EB98EBD0, &unk_1B7809780);
    sub_1B73FFB24(v56, v101);
    swift_willThrow();

    (*(v37 + 8))(v100, v99);
LABEL_33:
    v48 = v106;
    v47 = v107;
    v32 = v90;
    return (*(v48 + 8))(v32, v47);
  }

  (*(v37 + 8))(v100, v99);

  sub_1B7205418(v38, &qword_1EB98EBD0, &unk_1B7809780);
  v65 = v106;
  v64 = v107;
  v66 = v90;
  (*(v106 + 16))(v95, v90, v107);
  return (*(v65 + 8))(v66, v64);
}

uint64_t sub_1B73FFB24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FE748();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1B77FE758();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FE698();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F110, &unk_1B7808C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7807CD0;
  *(inited + 32) = sub_1B7800868();
  *(inited + 40) = v10;
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_1B7801A78();

  v15 = 0xD000000000000010;
  v16 = 0x80000001B787E1A0;
  MEMORY[0x1B8CA4D30](a1, a2);
  MEMORY[0x1B8CA4D30](46, 0xE100000000000000);
  v11 = v15;
  v12 = v16;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v11;
  *(inited + 56) = v12;
  sub_1B72018E0(inited);
  swift_setDeallocating();
  sub_1B7205418(inited + 32, &qword_1EB98F118, &qword_1B781A570);
  sub_1B72DD604();
  sub_1B77FF2F8();
  v13 = sub_1B77FE688();
  (*(v6 + 8))(v8, v5);
  return v13;
}

void sub_1B73FFD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, unsigned __int8 a6)
{
  if (a1 >= 1)
  {
    v8 = a1;
    v9 = 0;
    v11 = a5 > 0xAu || a6 < 0xAu;
    while (1)
    {
      v12 = sub_1B7801708();
      if (!v13)
      {
        goto LABEL_43;
      }

      if (v14 = v12, v15 = v13, v12 == 2573) && v13 == 0xE200000000000000 || (sub_1B78020F8())
      {

        if (v11)
        {
          goto LABEL_43;
        }

        LOBYTE(v16) = 10;
      }

      else
      {
        if ((v15 & 0x2000000000000000) != 0)
        {
          v17 = HIBYTE(v15) & 0xF;
        }

        else
        {
          v17 = v14 & 0xFFFFFFFFFFFFLL;
        }

        if (!v17)
        {
          goto LABEL_47;
        }

        if ((v15 & 0x1000000000000000) != 0)
        {
          v22 = sub_1B7800978();
        }

        else
        {
          if ((v15 & 0x2000000000000000) != 0)
          {
            v19 = v14;
          }

          else
          {
            if ((v14 & 0x1000000000000000) != 0)
            {
              v18 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v18 = sub_1B7801B48();
            }

            v19 = *v18;
          }

          v20 = v19;
          v21 = (__clz(~v19) - 24) << 16;
          if (v20 < 0)
          {
            v22 = v21;
          }

          else
          {
            v22 = 65541;
          }
        }

        if (v22 >> 14 != 4 * v17)
        {
          goto LABEL_42;
        }

        v23 = sub_1B7403CE0(v14, v15);
        if ((v23 & 0x100000000) != 0)
        {
          goto LABEL_49;
        }

        if ((v23 & 0xFFFFFF80) != 0)
        {
LABEL_42:

LABEL_43:
          sub_1B73FFB24(a3, a4);
          swift_willThrow();
          return;
        }

        v24 = sub_1B7403CE0(v14, v15);
        if ((v24 & 0x100000000) != 0)
        {
          goto LABEL_50;
        }

        v16 = v24;

        if ((v16 & 0xFFFFFF00) != 0)
        {
          goto LABEL_48;
        }

        if (v16 < a5 || v16 > a6)
        {
          goto LABEL_43;
        }
      }

      if (((v16 - a5) & 0xFFFFFF00) != 0)
      {
        break;
      }

      v25 = 10 * v9;
      if ((v9 * 10) >> 64 != (10 * v9) >> 63)
      {
        goto LABEL_45;
      }

      v9 = v25 + (v16 - a5);
      if (__OFADD__(v25, (v16 - a5)))
      {
        goto LABEL_46;
      }

      if (!--v8)
      {
        return;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }
}

void sub_1B73FFFC4(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73646C656966 && a2 == 0xE600000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1B78020F8();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1B7400048(uint64_t a1)
{
  v2 = sub_1B740020C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7400084(uint64_t a1)
{
  v2 = sub_1B740020C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DateComponentsParseStrategy.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993E50, &qword_1B7826480);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B740020C();
  sub_1B78023F8();
  v10 = v7;
  sub_1B7400260();
  sub_1B7801FC8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B740020C()
{
  result = qword_1EB993E58;
  if (!qword_1EB993E58)
  {
    result = swift_getWitnessTable(byte_1B78268F0, &type metadata for DateComponentsParseStrategy.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993E58);
  }

  return result;
}

unint64_t sub_1B7400260()
{
  result = qword_1EB993E60;
  if (!qword_1EB993E60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DateComponentsParseStrategy.Fields, &type metadata for DateComponentsParseStrategy.Fields, v0, v1);
    atomic_store(result, &qword_1EB993E60);
  }

  return result;
}

uint64_t _s10FinanceKit27DateComponentsParseStrategyV6FieldsO9hashValueSivg_0()
{
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](0);
  sub_1B7802318();
  return sub_1B7802368();
}

uint64_t DateComponentsParseStrategy.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993E68, &qword_1B7826488);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B740020C();
  sub_1B78023C8();
  if (!v2)
  {
    sub_1B7400554();
    sub_1B7801E48();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B7400504(uint64_t a1)
{
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](0);
  sub_1B7802318();
  return sub_1B7802368();
}

unint64_t sub_1B7400554()
{
  result = qword_1EB993E70;
  if (!qword_1EB993E70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DateComponentsParseStrategy.Fields, &type metadata for DateComponentsParseStrategy.Fields, v0, v1);
    atomic_store(result, &qword_1EB993E70);
  }

  return result;
}

unint64_t sub_1B74005AC()
{
  result = qword_1EB993E78;
  if (!qword_1EB993E78)
  {
    result = swift_getWitnessTable("))g7ȶ\b", &type metadata for DateComponentsParseStrategy.Fields, v0, v1);
    atomic_store(result, &qword_1EB993E78);
  }

  return result;
}

unint64_t sub_1B7400604()
{
  result = qword_1EB993E80;
  if (!qword_1EB993E80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DateComponentsParseStrategy, &type metadata for DateComponentsParseStrategy, v0, v1);
    atomic_store(result, &qword_1EB993E80);
  }

  return result;
}

unint64_t sub_1B740065C()
{
  result = qword_1EB993E88;
  if (!qword_1EB993E88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DateComponentsParseStrategy, &type metadata for DateComponentsParseStrategy, v0, v1);
    atomic_store(result, &qword_1EB993E88);
  }

  return result;
}

unint64_t sub_1B74006B4()
{
  result = qword_1EB993E90;
  if (!qword_1EB993E90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DateComponentsParseStrategy, &type metadata for DateComponentsParseStrategy, v0, v1);
    atomic_store(result, &qword_1EB993E90);
  }

  return result;
}

unint64_t sub_1B740070C()
{
  result = qword_1EB993E98;
  if (!qword_1EB993E98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DateComponentsParseStrategy, &type metadata for DateComponentsParseStrategy, v0, v1);
    atomic_store(result, &qword_1EB993E98);
  }

  return result;
}

unint64_t sub_1B74007B4()
{
  result = qword_1EB993EA0;
  if (!qword_1EB993EA0)
  {
    result = swift_getWitnessTable(byte_1B7826758, &type metadata for DateComponentsParseStrategy.Fields.DateAndTimeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993EA0);
  }

  return result;
}

unint64_t sub_1B740080C()
{
  result = qword_1EB993EA8;
  if (!qword_1EB993EA8)
  {
    result = swift_getWitnessTable(a9G7, &type metadata for DateComponentsParseStrategy.Fields.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993EA8);
  }

  return result;
}

unint64_t sub_1B7400864()
{
  result = qword_1EB993EB0;
  if (!qword_1EB993EB0)
  {
    result = swift_getWitnessTable(byte_1B78268C8, &type metadata for DateComponentsParseStrategy.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993EB0);
  }

  return result;
}

unint64_t sub_1B74008BC()
{
  result = qword_1EB993EB8;
  if (!qword_1EB993EB8)
  {
    result = swift_getWitnessTable(byte_1B7826838, &type metadata for DateComponentsParseStrategy.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993EB8);
  }

  return result;
}

unint64_t sub_1B7400914()
{
  result = qword_1EB993EC0;
  if (!qword_1EB993EC0)
  {
    result = swift_getWitnessTable(byte_1B7826860, &type metadata for DateComponentsParseStrategy.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993EC0);
  }

  return result;
}

unint64_t sub_1B740096C()
{
  result = qword_1EB993EC8;
  if (!qword_1EB993EC8)
  {
    result = swift_getWitnessTable(a4g7, &type metadata for DateComponentsParseStrategy.Fields.DateAndTimeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993EC8);
  }

  return result;
}

unint64_t sub_1B74009C4()
{
  result = qword_1EB993ED0;
  if (!qword_1EB993ED0)
  {
    result = swift_getWitnessTable(aA0g7d, &type metadata for DateComponentsParseStrategy.Fields.DateAndTimeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993ED0);
  }

  return result;
}

unint64_t sub_1B7400A1C()
{
  result = qword_1EB993ED8;
  if (!qword_1EB993ED8)
  {
    result = swift_getWitnessTable(aQ3g7, &type metadata for DateComponentsParseStrategy.Fields.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993ED8);
  }

  return result;
}

unint64_t sub_1B7400A74()
{
  result = qword_1EB993EE0;
  if (!qword_1EB993EE0)
  {
    result = swift_getWitnessTable(byte_1B78267A8, &type metadata for DateComponentsParseStrategy.Fields.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB993EE0);
  }

  return result;
}

FinanceKit::FinanceExtensionPointIdentifier_optional __swiftcall FinanceExtensionPointIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B7801D18();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t FinanceExtensionPointIdentifier.rawValue.getter()
{
  v1 = 0xD000000000000022;
  v2 = 0xD000000000000027;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000028;
  }

  if (!*v0)
  {
    v1 = 0xD00000000000002CLL;
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

unint64_t sub_1B7400BC8()
{
  result = qword_1EB993EE8;
  if (!qword_1EB993EE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FinanceExtensionPointIdentifier, &type metadata for FinanceExtensionPointIdentifier, v0, v1);
    atomic_store(result, &qword_1EB993EE8);
  }

  return result;
}

uint64_t sub_1B7400C1C()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

double sub_1B7400CD4(uint64_t a1)
{
  sub_1B7800798();

  return result;
}

uint64_t sub_1B7400D78(uint64_t a1)
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

void sub_1B7400E38(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000022;
  v3 = "ekit.maps-insights";
  v4 = 0xD000000000000027;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000028;
    v3 = "ekit.financial-insights";
  }

  if (*v1)
  {
    v5 = "ekit.financial-connection-ui";
  }

  else
  {
    v2 = 0xD00000000000002CLL;
    v5 = "modificationDate";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v2 = v4;
    v6 = v3;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

unint64_t sub_1B7400EC0()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x796C6E4F656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x796C6E4F65746164;
  }
}

uint64_t sub_1B7400F20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B7404060(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B7400F48(uint64_t a1)
{
  v2 = sub_1B74014A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7400F84(uint64_t a1)
{
  v2 = sub_1B74014A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7400FC0(uint64_t a1)
{
  v2 = sub_1B740159C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7400FFC(uint64_t a1)
{
  v2 = sub_1B740159C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7401038(uint64_t a1)
{
  v2 = sub_1B7401548();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7401074(uint64_t a1)
{
  v2 = sub_1B7401548();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B74010B0(uint64_t a1)
{
  v2 = sub_1B74014F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B74010EC(uint64_t a1)
{
  v2 = sub_1B74014F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Date.ISO8601ComponentsFormatStyle.Fields.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993EF0, &qword_1B7826AC0);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993EF8, &qword_1B7826AC8);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993F00, &qword_1B7826AD0);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993F08, &qword_1B7826AD8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74014A0();
  sub_1B78023F8();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1B7401548();
      v9 = v21;
      sub_1B7801ED8();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1B74014F4();
      v9 = v24;
      sub_1B7801ED8();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1B740159C();
    sub_1B7801ED8();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1B74014A0()
{
  result = qword_1EB993F10;
  if (!qword_1EB993F10)
  {
    result = swift_getWitnessTable("m/g7ܪ\b", &_s28ISO8601ComponentsFormatStyleV6FieldsO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB993F10);
  }

  return result;
}

unint64_t sub_1B74014F4()
{
  result = qword_1EB993F18;
  if (!qword_1EB993F18)
  {
    result = swift_getWitnessTable(byte_1B78271FC, &_s28ISO8601ComponentsFormatStyleV6FieldsO18TimeOnlyCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB993F18);
  }

  return result;
}

unint64_t sub_1B7401548()
{
  result = qword_1EB993F20;
  if (!qword_1EB993F20)
  {
    result = swift_getWitnessTable("\r0g7ī\b", &_s28ISO8601ComponentsFormatStyleV6FieldsO27DateOrDateAndTimeCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB993F20);
  }

  return result;
}

unint64_t sub_1B740159C()
{
  result = qword_1EB993F28;
  if (!qword_1EB993F28)
  {
    result = swift_getWitnessTable(a0g7, &_s28ISO8601ComponentsFormatStyleV6FieldsO18DateOnlyCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB993F28);
  }

  return result;
}

uint64_t Date.ISO8601ComponentsFormatStyle.Fields.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993F30, &qword_1B7826AE0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993F38, &qword_1B7826AE8);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993F40, &qword_1B7826AF0);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993F48, &unk_1B7826AF8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1B74014A0();
  v15 = v36;
  sub_1B78023C8();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1B7801E98();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1B721CE54();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1B7801B18();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050, &unk_1B780CC20);
      *v24 = &type metadata for Date.ISO8601ComponentsFormatStyle.Fields;
      sub_1B7801D68();
      sub_1B7801AE8();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
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
          sub_1B7401548();
          sub_1B7801D38();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1B74014F4();
          v26 = v17;
          sub_1B7801D38();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1B740159C();
        sub_1B7801D38();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

double Date.ISO8601ComponentsFormatStyle.components(fromDateString:)@<D0>(uint64_t a3@<X8>)
{
  v37 = a3;
  v4 = sub_1B77FFB08();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F938, &unk_1B7812F00);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA40, &qword_1B7809790);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v32[-v12];
  v33 = *v3;
  v14 = objc_allocWithZone(MEMORY[0x1E696AE88]);
  v15 = sub_1B7800838();
  v34 = [v14 initWithString_];

  v36 = sub_1B77FED28();
  v35 = swift_allocBox();
  v16 = sub_1B77FFC88();
  v17 = *(*(v16 - 8) + 56);
  v17(v13, 1, 1, v16);
  v18 = sub_1B77FFCF8();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  sub_1B77FECD8();
  (*(v5 + 104))(v7, *MEMORY[0x1E6969830], v4);
  sub_1B77FFB18();
  (*(v5 + 8))(v7, v4);
  v17(v13, 0, 1, v16);
  sub_1B77FECF8();
  if (!v33)
  {
    v20 = v34;
    sub_1B7402334(v34, v35);
    goto LABEL_10;
  }

  if (v33 != 1)
  {
    v20 = v34;
    sub_1B74024F8(v34, v35);
    goto LABEL_10;
  }

  v20 = v34;
  v19 = v35;
  sub_1B7402334(v34, v35);
  if ([v20 isAtEnd])
  {
    goto LABEL_10;
  }

  v21 = sub_1B7801708();
  if (!v22)
  {
    goto LABEL_15;
  }

  if (v21 != 84 || v22 != 0xE100000000000000)
  {
    v30 = sub_1B78020F8();

    if (v30)
    {
      goto LABEL_14;
    }

LABEL_15:
    v38 = 1;
    sub_1B74026FC();
    swift_willThrowTypedImpl();
    goto LABEL_16;
  }

LABEL_14:
  sub_1B74024F8(v20, v19);
LABEL_10:
  if (![v20 isAtEnd])
  {
LABEL_16:

    v25 = v36;
    v24 = v37;
    goto LABEL_17;
  }

  swift_beginAccess();
  v23 = sub_1B77FEBD8();
  swift_endAccess();

  v25 = v36;
  v24 = v37;
  if ((v23 & 1) == 0)
  {
LABEL_17:
    v26 = *(v25 - 8);
    v29 = 1;
    goto LABEL_18;
  }

  v26 = *(v36 - 8);
  v27 = v37;
  v28 = v36;
  (*(v26 + 16))();
  v25 = v28;
  v24 = v27;
  v29 = 0;
LABEL_18:
  (*(v26 + 56))(v24, v29, 1, v25);

  return result;
}

void sub_1B7402128(uint64_t a1)
{
  if (a1 < 0)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  else
  {
    v2 = 0;
    v3 = 0;
    while (a1 != v2)
    {
      if (__OFADD__(v2, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v4 = sub_1B7801708();
      if (!v5)
      {
        goto LABEL_35;
      }

      v6 = v4;
      v7 = v5;
      if (v4 == 2573 && v5 == 0xE200000000000000 || (sub_1B78020F8() & 1) != 0)
      {
        goto LABEL_34;
      }

      if ((v7 & 0x2000000000000000) != 0)
      {
        v8 = HIBYTE(v7) & 0xF;
      }

      else
      {
        v8 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (!v8)
      {
        goto LABEL_38;
      }

      if ((v7 & 0x1000000000000000) != 0)
      {
        v13 = sub_1B7800978();
      }

      else
      {
        if ((v7 & 0x2000000000000000) != 0)
        {
          v10 = v6;
        }

        else
        {
          v9 = ((v6 & 0x1000000000000000) != 0 ? (v7 & 0xFFFFFFFFFFFFFFFLL) + 32 : sub_1B7801B48());
          v10 = *v9;
        }

        v11 = v10;
        v12 = (__clz(~v10) - 24) << 16;
        v13 = v11 < 0 ? v12 : 65541;
      }

      if (v13 >> 14 != 4 * v8)
      {
        goto LABEL_34;
      }

      v14 = sub_1B7403CE0(v6, v7);
      if ((v14 & 0x100000000) != 0)
      {
        goto LABEL_43;
      }

      if ((v14 & 0xFFFFFF80) != 0)
      {
LABEL_34:

LABEL_35:
        sub_1B74026FC();
        swift_willThrowTypedImpl();
        return;
      }

      v15 = sub_1B7403CE0(v6, v7);
      if ((v15 & 0x100000000) != 0)
      {
        goto LABEL_44;
      }

      v16 = v15;

      if ((v16 & 0xFFFFFF00) != 0)
      {
        goto LABEL_39;
      }

      if (v16 - 58 < 0xFFFFFFF6)
      {
        goto LABEL_35;
      }

      v17 = 10 * v3;
      if ((v3 * 10) >> 64 != (10 * v3) >> 63)
      {
        goto LABEL_40;
      }

      v3 = v17 + (v16 - 48);
      ++v2;
      if (__OFADD__(v17, (v16 - 48)))
      {
        goto LABEL_41;
      }
    }
  }
}

uint64_t sub_1B7402334(uint64_t a1, uint64_t a2)
{
  sub_1B77FED28();
  swift_projectBox();
  sub_1B7402128(4);
  v4 = v3;
  if (v2)
  {
    return v4 & 1;
  }

  v5 = sub_1B7801708();
  if (v6)
  {
    if (v5 == 45 && v6 == 0xE100000000000000)
    {

      goto LABEL_7;
    }

    v7 = sub_1B78020F8();

    if (v7)
    {
LABEL_7:
      sub_1B7402128(2);
      v8 = sub_1B7801708();
      if (v9)
      {
        if (v8 == 45 && v9 == 0xE100000000000000)
        {

LABEL_12:
          sub_1B7402128(2);
          swift_beginAccess();
          sub_1B77FEC68();
          sub_1B77FEC88();
          sub_1B77FEC18();
          return swift_endAccess();
        }

        v10 = sub_1B78020F8();

        if (v10)
        {
          goto LABEL_12;
        }
      }
    }
  }

  v4 = 1;
  sub_1B74026FC();
  swift_willThrowTypedImpl();
  return v4 & 1;
}

uint64_t sub_1B74024F8(void *a1, uint64_t a2)
{
  sub_1B77FED28();
  swift_projectBox();
  sub_1B7402128(2);
  v5 = v4;
  if (v2)
  {
    return v5 & 1;
  }

  v6 = sub_1B7801708();
  if (v7)
  {
    if (v6 == 58 && v7 == 0xE100000000000000)
    {

      goto LABEL_7;
    }

    v8 = sub_1B78020F8();

    if (v8)
    {
LABEL_7:
      sub_1B7402128(2);
      swift_beginAccess();
      sub_1B77FEC48();
      sub_1B77FECA8();
      swift_endAccess();
      result = [a1 isAtEnd];
      if (result)
      {
        return result;
      }

      v10 = sub_1B7801708();
      if (v11)
      {
        if (v10 == 58 && v11 == 0xE100000000000000)
        {

LABEL_13:
          sub_1B7402128(2);
          swift_beginAccess();
          sub_1B77FECC8();
          return swift_endAccess();
        }

        v12 = sub_1B78020F8();

        if (v12)
        {
          goto LABEL_13;
        }
      }
    }
  }

  v5 = 1;
  sub_1B74026FC();
  swift_willThrowTypedImpl();
  return v5 & 1;
}

unint64_t sub_1B74026FC()
{
  result = qword_1EB993F50;
  if (!qword_1EB993F50)
  {
    result = swift_getWitnessTable(byte_1B782711C, &_s28ISO8601ComponentsFormatStyleV16DateParsingErrorON, v0, v1);
    atomic_store(result, &qword_1EB993F50);
  }

  return result;
}

uint64_t Date.ISO8601ComponentsFormatStyle.format(_:)(unsigned __int8 *a1)
{
  v2 = sub_1B77FFC88();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v35 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993F58, &qword_1B7826B08);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - v7;
  v9 = sub_1B77FFB08();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA40, &qword_1B7809790);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v38 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v35 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v35 - v19;
  v36 = *v37;
  v37 = a1;
  sub_1B77FECE8();
  (*(v10 + 104))(v12, *MEMORY[0x1E6969830], v9);
  sub_1B77FFB18();
  (*(v10 + 8))(v12, v9);
  (*(v3 + 56))(v18, 0, 1, v2);
  v21 = *(v6 + 56);
  sub_1B7402D00(v20, v8);
  sub_1B7402D00(v18, &v8[v21]);
  v22 = *(v3 + 48);
  if (v22(v8, 1, v2) == 1)
  {
    sub_1B7205418(v18, &unk_1EB99AA40, &qword_1B7809790);
    sub_1B7205418(v20, &unk_1EB99AA40, &qword_1B7809790);
    if (v22(&v8[v21], 1, v2) == 1)
    {
      sub_1B7205418(v8, &unk_1EB99AA40, &qword_1B7809790);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1B7402D00(v8, v38);
  if (v22(&v8[v21], 1, v2) == 1)
  {
    sub_1B7205418(v18, &unk_1EB99AA40, &qword_1B7809790);
    sub_1B7205418(v20, &unk_1EB99AA40, &qword_1B7809790);
    (*(v3 + 8))(v38, v2);
LABEL_6:
    sub_1B7205418(v8, &qword_1EB993F58, &qword_1B7826B08);
    return 0;
  }

  v23 = v35;
  (*(v3 + 32))(v35, &v8[v21], v2);
  sub_1B7403070();
  v24 = v38;
  v25 = sub_1B7800828();
  v26 = *(v3 + 8);
  v26(v23, v2);
  sub_1B7205418(v18, &unk_1EB99AA40, &qword_1B7809790);
  sub_1B7205418(v20, &unk_1EB99AA40, &qword_1B7809790);
  v26(v24, v2);
  sub_1B7205418(v8, &unk_1EB99AA40, &qword_1B7809790);
  if (v25)
  {
LABEL_8:
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0xE000000000000000;
    if (v36)
    {
      v28 = v37;
      if (v36 == 1)
      {
        sub_1B7402D70(v37, v27);
        sub_1B77FEC38();
        if (v29)
        {
          goto LABEL_14;
        }

        sub_1B77FEC98();
        if (v30)
        {
          goto LABEL_14;
        }

        swift_beginAccess();
        MEMORY[0x1B8CA4D30](84, 0xE100000000000000);
        swift_endAccess();
        v31 = v28;
        v32 = v27;
      }

      else
      {
        v31 = v37;
        v32 = v27;
      }

      sub_1B7402EAC(v31, v32);
    }

    else
    {
      sub_1B7402D70(v37, v27);
    }

LABEL_14:
    swift_beginAccess();
    v33 = *(v27 + 16);

    return v33;
  }

  return 0;
}

uint64_t sub_1B7402D00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA40, &qword_1B7809790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1B7402D70(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B77FEC58();
  if (v3 & 1) != 0 || (v4 = v2, v5 = sub_1B77FEC78(), (v6) || (v7 = v5, v8 = sub_1B77FEC08(), (v9))
  {
    sub_1B7404180();
    swift_willThrowTypedImpl();
  }

  else
  {
    v11 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E6530];
    *(v12 + 16) = xmmword_1B780D870;
    v14 = MEMORY[0x1E69E65A8];
    *(v12 + 56) = v13;
    *(v12 + 64) = v14;
    *(v12 + 32) = v4;
    *(v12 + 96) = v13;
    *(v12 + 104) = v14;
    *(v12 + 72) = v7;
    *(v12 + 136) = v13;
    *(v12 + 144) = v14;
    *(v12 + 112) = v11;
    v15 = sub_1B78008B8();
    v17 = v16;
    swift_beginAccess();
    MEMORY[0x1B8CA4D30](v15, v17);
    swift_endAccess();
  }

  return result;
}

double sub_1B7402EAC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B77FEC38();
  if (v3 & 1) != 0 || (v4 = v2, v5 = sub_1B77FEC98(), (v6))
  {
    sub_1B7404180();
    swift_willThrowTypedImpl();
  }

  else
  {
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990, &qword_1B780B310);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1B7808C50;
    v10 = MEMORY[0x1E69E6530];
    v11 = MEMORY[0x1E69E65A8];
    *(v9 + 56) = MEMORY[0x1E69E6530];
    *(v9 + 64) = v11;
    *(v9 + 32) = v4;
    *(v9 + 96) = v10;
    *(v9 + 104) = v11;
    *(v9 + 72) = v8;
    v12 = sub_1B78008B8();
    v14 = v13;
    swift_beginAccess();
    MEMORY[0x1B8CA4D30](v12, v14);
    swift_endAccess();

    v15 = sub_1B77FECB8();
    if ((v16 & 1) == 0)
    {
      v17 = v15;
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1B7807CD0;
      *(v18 + 56) = v10;
      *(v18 + 64) = v11;
      *(v18 + 32) = v17;
      v19 = sub_1B78008B8();
      v21 = v20;
      swift_beginAccess();
      MEMORY[0x1B8CA4D30](v19, v21);
      swift_endAccess();
    }
  }

  return result;
}

unint64_t sub_1B7403070()
{
  result = qword_1EB993F60;
  if (!qword_1EB993F60)
  {
    v3 = sub_1B77FFC88();
    result = swift_getWitnessTable(MEMORY[0x1E6969B00], v3, v0, v1);
    atomic_store(result, &qword_1EB993F60);
  }

  return result;
}

uint64_t sub_1B74030DC(uint64_t a1)
{
  v2 = sub_1B74032A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7403118(uint64_t a1)
{
  v2 = sub_1B74032A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Date.ISO8601ComponentsFormatStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993F68, &qword_1B7826B10);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74032A0();
  sub_1B78023F8();
  v10 = v7;
  sub_1B74032F4();
  sub_1B7801FC8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B74032A0()
{
  result = qword_1EB993F70;
  if (!qword_1EB993F70)
  {
    result = swift_getWitnessTable(byte_1B78270CC, &_s28ISO8601ComponentsFormatStyleV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB993F70);
  }

  return result;
}

unint64_t sub_1B74032F4()
{
  result = qword_1EB993F78;
  if (!qword_1EB993F78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Date.ISO8601ComponentsFormatStyle.Fields, &type metadata for Date.ISO8601ComponentsFormatStyle.Fields, v0, v1);
    atomic_store(result, &qword_1EB993F78);
  }

  return result;
}

uint64_t Date.ISO8601ComponentsFormatStyle.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993F80, &qword_1B7826B18);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74032A0();
  sub_1B78023C8();
  if (!v2)
  {
    sub_1B7403538();
    sub_1B7801E48();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B74034E0@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = Date.ISO8601ComponentsFormatStyle.format(_:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_1B7403538()
{
  result = qword_1EB993F88;
  if (!qword_1EB993F88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Date.ISO8601ComponentsFormatStyle.Fields, &type metadata for Date.ISO8601ComponentsFormatStyle.Fields, v0, v1);
    atomic_store(result, &qword_1EB993F88);
  }

  return result;
}

unint64_t sub_1B74035CC()
{
  result = qword_1EB993F90;
  if (!qword_1EB993F90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Date.ISO8601ComponentsFormatStyle.Fields, &type metadata for Date.ISO8601ComponentsFormatStyle.Fields, v0, v1);
    atomic_store(result, &qword_1EB993F90);
  }

  return result;
}

unint64_t sub_1B7403624()
{
  result = qword_1EB993F98;
  if (!qword_1EB993F98)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB993FA0, &qword_1B7826BD8);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EB993F98);
  }

  return result;
}

unint64_t sub_1B740368C()
{
  result = qword_1EB993FA8;
  if (!qword_1EB993FA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Date.ISO8601ComponentsFormatStyle, &type metadata for Date.ISO8601ComponentsFormatStyle, v0, v1);
    atomic_store(result, &qword_1EB993FA8);
  }

  return result;
}

unint64_t sub_1B74036E4()
{
  result = qword_1EB993FB0;
  if (!qword_1EB993FB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Date.ISO8601ComponentsFormatStyle, &type metadata for Date.ISO8601ComponentsFormatStyle, v0, v1);
    atomic_store(result, &qword_1EB993FB0);
  }

  return result;
}

unint64_t sub_1B740373C()
{
  result = qword_1EB993FB8;
  if (!qword_1EB993FB8)
  {
    result = swift_getWitnessTable("y g7د\b", &type metadata for Date.ISO8601ComponentsFormatStyle, v0, v1);
    atomic_store(result, &qword_1EB993FB8);
  }

  return result;
}

unint64_t sub_1B7403794()
{
  result = qword_1EB993FC0;
  if (!qword_1EB993FC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Date.ISO8601ComponentsFormatStyle, &type metadata for Date.ISO8601ComponentsFormatStyle, v0, v1);
    atomic_store(result, &qword_1EB993FC0);
  }

  return result;
}

unint64_t sub_1B740386C()
{
  result = qword_1EB993FC8;
  if (!qword_1EB993FC8)
  {
    result = swift_getWitnessTable(byte_1B7826F84, &_s28ISO8601ComponentsFormatStyleV6FieldsO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB993FC8);
  }

  return result;
}

unint64_t sub_1B74038C4()
{
  result = qword_1EB993FD0;
  if (!qword_1EB993FD0)
  {
    result = swift_getWitnessTable(asc_1B7826FEC, &_s28ISO8601ComponentsFormatStyleV16DateParsingErrorON, v0, v1);
    atomic_store(result, &qword_1EB993FD0);
  }

  return result;
}

unint64_t sub_1B740391C()
{
  result = qword_1EB993FD8;
  if (!qword_1EB993FD8)
  {
    result = swift_getWitnessTable(byte_1B78270A4, &_s28ISO8601ComponentsFormatStyleV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB993FD8);
  }

  return result;
}

unint64_t sub_1B7403974()
{
  result = qword_1EB993FE0;
  if (!qword_1EB993FE0)
  {
    result = swift_getWitnessTable(byte_1B7827014, &_s28ISO8601ComponentsFormatStyleV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB993FE0);
  }

  return result;
}

unint64_t sub_1B74039CC()
{
  result = qword_1EB993FE8;
  if (!qword_1EB993FE8)
  {
    result = swift_getWitnessTable(byte_1B782703C, &_s28ISO8601ComponentsFormatStyleV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB993FE8);
  }

  return result;
}

unint64_t sub_1B7403A24()
{
  result = qword_1EB993FF0;
  if (!qword_1EB993FF0)
  {
    result = swift_getWitnessTable(aMG7_1, &_s28ISO8601ComponentsFormatStyleV6FieldsO18DateOnlyCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB993FF0);
  }

  return result;
}

unint64_t sub_1B7403A7C()
{
  result = qword_1EB993FF8;
  if (!qword_1EB993FF8)
  {
    result = swift_getWitnessTable(aEG7_0, &_s28ISO8601ComponentsFormatStyleV6FieldsO18DateOnlyCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB993FF8);
  }

  return result;
}

unint64_t sub_1B7403AD4()
{
  result = qword_1EB994000;
  if (!qword_1EB994000)
  {
    result = swift_getWitnessTable(byte_1B7826E54, &_s28ISO8601ComponentsFormatStyleV6FieldsO27DateOrDateAndTimeCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB994000);
  }

  return result;
}

unint64_t sub_1B7403B2C()
{
  result = qword_1EB994008;
  if (!qword_1EB994008)
  {
    result = swift_getWitnessTable(byte_1B7826E7C, &_s28ISO8601ComponentsFormatStyleV6FieldsO27DateOrDateAndTimeCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB994008);
  }

  return result;
}

unint64_t sub_1B7403B84()
{
  result = qword_1EB994010;
  if (!qword_1EB994010)
  {
    result = swift_getWitnessTable(byte_1B7826E04, &_s28ISO8601ComponentsFormatStyleV6FieldsO18TimeOnlyCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB994010);
  }

  return result;
}

unint64_t sub_1B7403BDC()
{
  result = qword_1EB994018;
  if (!qword_1EB994018)
  {
    result = swift_getWitnessTable(byte_1B7826E2C, &_s28ISO8601ComponentsFormatStyleV6FieldsO18TimeOnlyCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB994018);
  }

  return result;
}

unint64_t sub_1B7403C34()
{
  result = qword_1EB994020;
  if (!qword_1EB994020)
  {
    result = swift_getWitnessTable(byte_1B7826EF4, &_s28ISO8601ComponentsFormatStyleV6FieldsO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB994020);
  }

  return result;
}

unint64_t sub_1B7403C8C()
{
  result = qword_1EB994028;
  if (!qword_1EB994028)
  {
    result = swift_getWitnessTable(byte_1B7826F1C, &_s28ISO8601ComponentsFormatStyleV6FieldsO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EB994028);
  }

  return result;
}

unint64_t sub_1B7403CE0(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1B7403E30(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_1B7801A68();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_1B7801B48() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_1B7403E30(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1B7403EC8(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1B7403F3C(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1B7403EC8(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1B75D680C(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B7403F3C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1B7801B48();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

uint64_t sub_1B7404060(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x796C6E4F65746164 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B787E1C0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x796C6E4F656D6974 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

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

unint64_t sub_1B7404180()
{
  result = qword_1EB994030;
  if (!qword_1EB994030)
  {
    result = swift_getWitnessTable(byte_1B782731C, &_s28ISO8601ComponentsFormatStyleV19DateFormattingErrorON, v0, v1);
    atomic_store(result, &qword_1EB994030);
  }

  return result;
}

unint64_t sub_1B74041E8()
{
  result = qword_1EB994038;
  if (!qword_1EB994038)
  {
    result = swift_getWitnessTable("U\x1Bg7̪\b", &_s28ISO8601ComponentsFormatStyleV19DateFormattingErrorON, v0, v1);
    atomic_store(result, &qword_1EB994038);
  }

  return result;
}

unint64_t FinanceKitEntitlement.rawValue.getter()
{
  v1 = 0xD000000000000017;
  v2 = *v0;
  v3 = 0xD00000000000002ELL;
  v4 = 0xD00000000000001ELL;
  if (v2 != 4)
  {
    v4 = 0xD000000000000031;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000019;
  if (v2 != 1)
  {
    v5 = 0xD00000000000001FLL;
  }

  if (*v0)
  {
    v1 = v5;
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

FinanceKit::FinanceKitEntitlement_optional __swiftcall FinanceKitEntitlement.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B7801D18();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1B7404354()
{
  result = qword_1EB994040;
  if (!qword_1EB994040)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FinanceKitEntitlement, &type metadata for FinanceKitEntitlement, v0, v1);
    atomic_store(result, &qword_1EB994040);
  }

  return result;
}

double sub_1B74043B0(uint64_t a1)
{
  sub_1B7800798();

  return result;
}

void sub_1B74044A0(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000017;
  v3 = *v1;
  v4 = "cloudOrderLatestMigratedSchema";
  v5 = "ekit.background-delivery";
  v6 = 0xD00000000000002ELL;
  v7 = "com.apple.finance.internal.read";
  v8 = 0xD00000000000001ELL;
  if (v3 != 4)
  {
    v8 = 0xD000000000000031;
    v7 = "ekit.financial-connection.host";
  }

  if (v3 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = "com.apple.finance.store";
  v10 = 0xD000000000000019;
  if (v3 != 1)
  {
    v10 = 0xD00000000000001FLL;
    v9 = "com.apple.finance.private";
  }

  if (*v1)
  {
    v2 = v10;
    v4 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v2 = v6;
    v11 = v5;
  }

  *a1 = v2;
  a1[1] = v11 | 0x8000000000000000;
}

uint64_t sub_1B740456C(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994060, &qword_1B78277A0);
  if (swift_dynamicCast())
  {
    sub_1B71E4C44(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_1B77FEDA8();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1B7406878(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1B7801B48();
  }

  sub_1B77F2CA0(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1B77F3298(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v34[2] = v39;
  sub_1B7405970(sub_1B74068E0, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1B77FF568();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1B75D680C(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1B7800A48();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1B7800A78();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1B7801B48();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1B75D680C(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1B7800A58();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_1B77FF588();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_1B77FF588();
    sub_1B72380B8(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_1B72380B8(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_1B720ABEC(*&__src[0], *(&__src[0] + 1));

  sub_1B720A388(v32, *(&v32 + 1));
  return v32;
}

Swift::String_optional __swiftcall NSHTTPURLResponse.value(forHTTPHeaderField:)(FinanceKit::HTTPHeaderField::Name forHTTPHeaderField)
{
  v2 = sub_1B7800838();
  v3 = [v1 valueForHTTPHeaderField_];

  if (v3)
  {
    v4 = sub_1B7800868();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = v4;
  v8 = v6;
  result.value._object = v8;
  result.value._countAndFlagsBits = v7;
  return result;
}

uint64_t sub_1B7404B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v22 = a3;
  v5 = sub_1B77FF988();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v12 = sub_1B740602C();
  v13 = sub_1B7800838();
  v14 = [v12 dateFromString_];

  if (v14)
  {
    sub_1B77FF928();

    v15 = *(v6 + 32);
    v15(v11, v9, v5);
    v16 = v22;
    v15(v22, v11, v5);
    v17 = 0;
    v18 = v16;
  }

  else
  {
    v19 = v22;
    v23 = 0;
    if (sub_1B7405E84(a1, a2, &v23))
    {
      sub_1B77FF828();
      v18 = v19;
      v17 = 0;
    }

    else
    {
      v17 = 1;
      v18 = v19;
    }
  }

  return (*(v6 + 56))(v18, v17, 1, v5);
}

FinanceKit::HTTPMethod_optional __swiftcall HTTPMethod.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B7801D18();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HTTPMethod.rawValue.getter()
{
  v1 = 0x4554454C4544;
  v2 = 1414745936;
  if (*v0 != 2)
  {
    v2 = 5526864;
  }

  if (*v0)
  {
    v1 = 5522759;
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

uint64_t sub_1B7404DA4()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

double sub_1B7404E48(uint64_t a1)
{
  sub_1B7800798();

  return result;
}

uint64_t sub_1B7404ED8(uint64_t a1)
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

void sub_1B7404F84(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x4554454C4544;
  v4 = 0xE400000000000000;
  v5 = 1414745936;
  if (*v1 != 2)
  {
    v5 = 5526864;
    v4 = 0xE300000000000000;
  }

  if (*v1)
  {
    v3 = 5522759;
    v2 = 0xE300000000000000;
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

uint64_t HTTPHeaderField.name.getter()
{
  v1 = *v0;

  return v1;
}

void HTTPHeaderField.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t HTTPHeaderField.value.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void HTTPHeaderField.value.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

FinanceKit::HTTPHeaderField __swiftcall HTTPHeaderField.init(name:value:)(Swift::String name, Swift::String value)
{
  *v2 = name;
  v2[1] = value;
  result.value = value;
  result.name = name;
  return result;
}

uint64_t static HTTPHeaderField.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1B78020F8(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1B78020F8();
    }
  }

  return result;
}

uint64_t HTTPHeaderField.hash(into:)(uint64_t a1)
{
  sub_1B7800798();

  return sub_1B7800798();
}

uint64_t HTTPHeaderField.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t HTTPHeaderField.Name.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

void HTTPHeaderField.Name.rawValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

FinanceKit::HTTPHeaderField __swiftcall HTTPHeaderField.init(name:value:)(FinanceKit::HTTPHeaderField::Name name, Swift::String value)
{
  v3 = *(name.rawValue._countAndFlagsBits + 8);
  *v2 = *name.rawValue._countAndFlagsBits;
  v2[1] = v3;
  v2[2] = name.rawValue._object;
  v2[3] = value._countAndFlagsBits;
  result.value = value;
  result.name = name.rawValue;
  return result;
}

void static HTTPHeaderField.Name.contentType.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "Content-Type");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

void static HTTPHeaderField.Name.requestID.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "X-Request-ID");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

double static HTTPHeaderField.authorization(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  strcpy(a3, "Authorization");
  *(a3 + 14) = -4864;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;

  return result;
}

void static HTTPHeaderField.authorization(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (!*(a1 + 32))
  {
    v14 = 0x64724F656C707041;
    v15 = 0xEB00000000207265;
LABEL_6:
    v17 = v14;
    v19 = v15;
    MEMORY[0x1B8CA4D30](v4, v5);
    goto LABEL_7;
  }

  if (*(a1 + 32) != 1)
  {
    v14 = 0x20726572616542;
    v15 = 0xE700000000000000;
    goto LABEL_6;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v16 = v4;
  v18 = *(a1 + 8);

  MEMORY[0x1B8CA4D30](58, 0xE100000000000000);
  MEMORY[0x1B8CA4D30](v7, v6);
  v8 = sub_1B740456C(v16, v18);
  v10 = v9;
  v11 = sub_1B77FF5A8();
  v13 = v12;
  sub_1B720A388(v8, v10);
  v17 = 0x206369736142;
  v19 = 0xE600000000000000;
  MEMORY[0x1B8CA4D30](v11, v13);

LABEL_7:
  strcpy(a2, "Authorization");
  *(a2 + 14) = -4864;
  *(a2 + 16) = v17;
  *(a2 + 24) = v19;
}

void HTTPHeaderField.ContentType.init(rawValue:)(BOOL *a3@<X8>)
{
  v4 = sub_1B7801D18();

  *a3 = v4 != 0;
}

uint64_t sub_1B7405688()
{
  sub_1B78022F8();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B74056FC(uint64_t a1)
{
  sub_1B78022F8();
  sub_1B7800798();
  return sub_1B7802368();
}

void sub_1B7405750(BOOL *a2@<X8>)
{
  v3 = sub_1B7801D18();

  *a2 = v3 != 0;
}

double static HTTPHeaderField.contentType(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  strcpy(a3, "Content-Type");
  *(a3 + 13) = 0;
  *(a3 + 14) = -5120;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;

  return result;
}

void static HTTPHeaderField.contentType(_:)(uint64_t a1@<X8>)
{
  strcpy(a1, "Content-Type");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
  *(a1 + 16) = 0xD000000000000010;
  *(a1 + 24) = 0x80000001B7873B70;
}

double static HTTPHeaderField.ifModifiedSince(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0xD000000000000011;
  a3[1] = 0x80000001B787E1E0;
  a3[2] = a1;
  a3[3] = a2;

  return result;
}

uint64_t static HTTPHeaderField.requestID(_:)@<X0>(uint64_t a2@<X8>)
{
  result = sub_1B77FF9A8();
  strcpy(a2, "X-Request-ID");
  *(a2 + 13) = 0;
  *(a2 + 14) = -5120;
  *(a2 + 16) = result;
  *(a2 + 24) = v4;
  return result;
}

uint64_t static HTTPHeaderField.offlineLabUserID(_:)@<X0>(void *a2@<X8>)
{
  result = sub_1B77FF9A8();
  *a2 = 0xD000000000000019;
  a2[1] = 0x80000001B787E200;
  a2[2] = result;
  a2[3] = v4;
  return result;
}

uint64_t static HTTPHeaderField.offlineLabDeviceID(_:)@<X0>(void *a1@<X8>)
{
  result = sub_1B7802068();
  *a1 = 0xD00000000000001BLL;
  a1[1] = 0x80000001B787E220;
  a1[2] = result;
  a1[3] = v3;
  return result;
}

Swift::String_optional __swiftcall URLRequest.value(forHTTPHeaderField:)(FinanceKit::HTTPHeaderField::Name forHTTPHeaderField)
{
  v1 = sub_1B77FE828();
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

void sub_1B7405970(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v17[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 != 2)
    {
      memset(v17, 0, 15);
      a1(&v15, v17, v17);
      return;
    }

    sub_1B720A388(v7, v6);
    v15 = v7;
    v16 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_1B781DD20;
    sub_1B720A388(0, 0xC000000000000000);
    sub_1B77FF508();
    sub_1B7405D80(*(v15 + 16), *(v15 + 24), a1);
    v10 = v16 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v15;
      v4[1] = v10;
      return;
    }

    *v4 = v15;
    goto LABEL_18;
  }

  if (!v8)
  {
    sub_1B720A388(v7, v6);
    v17[0] = v7;
    LOWORD(v17[1]) = v6;
    BYTE2(v17[1]) = BYTE2(v6);
    BYTE3(v17[1]) = BYTE3(v6);
    BYTE4(v17[1]) = BYTE4(v6);
    BYTE5(v17[1]) = BYTE5(v6);
    BYTE6(v17[1]) = BYTE6(v6);
    a1(&v15, v17, v17 + BYTE6(v6));
    v9 = LODWORD(v17[1]) | ((WORD2(v17[1]) | (BYTE6(v17[1]) << 16)) << 32);
    *v4 = v17[0];
    v4[1] = v9;
    return;
  }

  v11 = v6 & 0x3FFFFFFFFFFFFFFFLL;

  sub_1B720A388(v7, v6);
  *v4 = xmmword_1B781DD20;
  sub_1B720A388(0, 0xC000000000000000);
  v12 = v7 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v12 < v7)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (sub_1B77FEB78() && __OFSUB__(v7, sub_1B77FEBA8()))
    {
LABEL_22:
      __break(1u);
    }

    sub_1B77FEBC8();
    swift_allocObject();
    v13 = sub_1B77FEB58();

    v11 = v13;
  }

  if (v12 < v7)
  {
    __break(1u);
    goto LABEL_21;
  }

  sub_1B7405D80(v7, v7 >> 32, a1);

  v10 = v11 | 0x4000000000000000;
  if (v3)
  {
    *v4 = v7;
LABEL_18:
    v4[1] = v10;
    return;
  }

  *v4 = v7;
  v4[1] = v10;
}