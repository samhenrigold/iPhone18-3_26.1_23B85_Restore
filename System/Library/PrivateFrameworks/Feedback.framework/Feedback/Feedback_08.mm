void sub_1B8BF4FBC(char *a1)
{
  v2 = v1;
  v49 = a1;
  v3 = sub_1B8C236E8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA84D8, &qword_1B8C2F020);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v46 - v8;
  v10 = type metadata accessor for FBKEvaluationController.FormContext(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v51 = v1;
  sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
  sub_1B8C23588();

  v14 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__formContext;
  swift_beginAccess();
  sub_1B8B34450(v2 + v14, v9, &qword_1EBAA84D8, &qword_1B8C2F020);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1B8B3433C(v9, &qword_1EBAA84D8, &qword_1B8C2F020);
    if (qword_1EBAA5910 != -1)
    {
      swift_once();
    }

    v15 = sub_1B8C23C38();
    __swift_project_value_buffer(v15, qword_1EBAB39C8);
    v16 = sub_1B8C23C18();
    v17 = sub_1B8C25478();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v50 = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_1B8B5DD48(0xD000000000000037, 0x80000001B8C36240, &v50);
      _os_log_impl(&dword_1B8B22000, v16, v17, "Unexpected Error: %{public}s", v18, 0xCu);
      v20 = __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1B8CCB0E0](v19, -1, -1, v20);
      MEMORY[0x1B8CCB0E0](v18, -1, -1);
    }

    sub_1B8BD0C60(v21, v22, v23);
    v24 = swift_allocError();
    *v25 = 0;
    sub_1B8BE9BA8(v24, 1);
  }

  else
  {
    sub_1B8BF9E58(v9, v13, type metadata accessor for FBKEvaluationController.FormContext);
    (*(v4 + 16))(v6, v13, v3);
    v26 = (*(v4 + 88))(v6, v3);
    if (v26 == *MEMORY[0x1E699C1F0] || v26 == *MEMORY[0x1E699C1C8] || v26 == *MEMORY[0x1E699C1D8])
    {
      *(swift_allocObject() + 16) = v2;
      v45 = v2;
      sub_1B8C23958();

      sub_1B8BFD64C(v13, type metadata accessor for FBKEvaluationController.FormContext);
    }

    else
    {
      v27 = v3;
      if (v26 == *MEMORY[0x1E699C1E8] || v26 == *MEMORY[0x1E699C1D0] || v26 == *MEMORY[0x1E699C1E0])
      {
        sub_1B8C258A8();
        __break(1u);
      }

      else
      {
        v48 = v2;
        v49 = v6;
        v47 = v4;
        if (qword_1EDC85598 != -1)
        {
          swift_once();
        }

        v28 = sub_1B8C23C38();
        __swift_project_value_buffer(v28, qword_1EDC85D40);
        v29 = sub_1B8C23C18();
        v30 = sub_1B8C25498();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v50 = v32;
          *v31 = 136446210;
          *(v31 + 4) = sub_1B8B5DD48(0xD000000000000038, 0x80000001B8C36280, &v50);
          _os_log_impl(&dword_1B8B22000, v29, v30, "%{public}s Unknown Action case", v31, 0xCu);
          v33 = __swift_destroy_boxed_opaque_existential_0(v32);
          MEMORY[0x1B8CCB0E0](v32, -1, -1, v33);
          MEMORY[0x1B8CCB0E0](v31, -1, -1);
        }

        sub_1B8BD0C60(v34, v35, v36);
        v37 = swift_allocError();
        v39 = v38;
        if (qword_1EBAA5910 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v28, qword_1EBAB39C8);
        v40 = sub_1B8C23C18();
        v41 = sub_1B8C25478();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v50 = v43;
          *v42 = 136446210;
          *(v42 + 4) = sub_1B8B5DD48(0xD000000000000013, 0x80000001B8C35C90, &v50);
          _os_log_impl(&dword_1B8B22000, v40, v41, "Unexpected Error: %{public}s", v42, 0xCu);
          v44 = __swift_destroy_boxed_opaque_existential_0(v43);
          MEMORY[0x1B8CCB0E0](v43, -1, -1, v44);
          MEMORY[0x1B8CCB0E0](v42, -1, -1);
        }

        *v39 = 0;
        sub_1B8BE9BA8(v37, 1);

        sub_1B8BFD64C(v13, type metadata accessor for FBKEvaluationController.FormContext);
        (*(v47 + 8))(v49, v27);
      }
    }
  }
}

uint64_t FBKEvaluationController.feedbackDraftViewControllerDidCancel(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA84E0, &qword_1B8C2F0A0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13[-v2];
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v4 = sub_1B8C23C38();
  __swift_project_value_buffer(v4, qword_1EDC85D40);
  v5 = sub_1B8C23C18();
  v6 = sub_1B8C25498();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14[0] = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1B8B5DD48(0xD000000000000028, 0x80000001B8C35E40, v14);
    _os_log_impl(&dword_1B8B22000, v5, v6, "%{public}s", v7, 0xCu);
    v9 = __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CCB0E0](v8, -1, -1, v9);
    MEMORY[0x1B8CCB0E0](v7, -1, -1);
  }

  swift_beginAccess();
  swift_beginAccess();

  sub_1B8BFB710(v10);

  v11 = sub_1B8C236A8();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  sub_1B8BF4FBC(v3);
  return sub_1B8B3433C(v3, &unk_1EBAA84E0, &qword_1B8C2F0A0);
}

void FBKEvaluationController.feedbackDraftViewController(_:didFailToSubmitFeedback:)(uint64_t a1, void *a2)
{
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v3 = sub_1B8C23C38();
  __swift_project_value_buffer(v3, qword_1EDC85D40);
  v4 = a2;
  v5 = sub_1B8C23C18();
  v6 = sub_1B8C25498();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18[0] = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1B8B5DD48(0xD000000000000037, 0x80000001B8C35E70, v18);
    *(v7 + 12) = 2112;
    *(v7 + 14) = v4;
    *v8 = v4;
    v10 = v4;
    _os_log_impl(&dword_1B8B22000, v5, v6, "%{public}s, error: %@", v7, 0x16u);
    sub_1B8B3433C(v8, &qword_1EBAA69A0, &qword_1B8C29670);
    MEMORY[0x1B8CCB0E0](v8, -1, -1);
    v11 = __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B8CCB0E0](v9, -1, -1, v11);
    MEMORY[0x1B8CCB0E0](v7, -1, -1);
  }

  swift_beginAccess();
  swift_beginAccess();

  sub_1B8BFB710(v12);

  sub_1B8BD0C60(v13, v14, v15);
  v16 = swift_allocError();
  *v17 = 1;
  sub_1B8BE9BA8(v16, 1);
}

uint64_t sub_1B8BF5F7C(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a5;
  v21 = a6;
  v9 = sub_1B8C24FD8();
  v23 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1B8C25008();
  v12 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v15 = sub_1B8C25538();
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a1;
  *(v16 + 32) = a2 & 1;
  aBlock[4] = v20;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = v21;
  v17 = _Block_copy(aBlock);
  v18 = a3;
  sub_1B8B2DE30(a1);

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8BFA3AC(&qword_1EBAA69C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  sub_1B8C256D8();
  MEMORY[0x1B8CCA210](0, v14, v11, v17);
  _Block_release(v17);

  (*(v23 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v22);
}

void sub_1B8BF6254(uint64_t a1)
{
  v44[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1B8C23498();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v41 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v38 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - v9;
  sub_1B8C23418();
  sub_1B8BF73B0(v10, v8);
  v11 = *(v3 + 8);
  v42 = v2;
  v40 = v11;
  v11(v10, v2);
  v12 = objc_opt_self();
  v13 = [v12 defaultManager];
  sub_1B8C23468();
  v14 = sub_1B8C250F8();

  v15 = [v13 fileExistsAtPath_];

  if (v15)
  {
    v16 = [v12 defaultManager];
    v17 = sub_1B8C233E8();
    v44[0] = 0;
    v18 = [v16 removeItemAtURL:v17 error:v44];

    if (v18)
    {
      v19 = v44[0];
    }

    else
    {
      v20 = v44[0];
      v21 = sub_1B8C23368();

      swift_willThrow();
      if (qword_1EDC85598 != -1)
      {
        swift_once();
      }

      v22 = sub_1B8C23C38();
      __swift_project_value_buffer(v22, qword_1EDC85D40);
      v24 = v41;
      v23 = v42;
      (*(v3 + 16))(v41, a1, v42);
      v25 = v21;
      v26 = sub_1B8C23C18();
      v27 = sub_1B8C25478();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v43 = v21;
        v44[0] = v39;
        *v28 = 136380931;
        v29 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
        v30 = sub_1B8C25178();
        v32 = sub_1B8B5DD48(v30, v31, v44);

        *(v28 + 4) = v32;
        *(v28 + 12) = 2081;
        v33 = sub_1B8C23468();
        v35 = v34;
        v40(v24, v23);
        v36 = sub_1B8B5DD48(v33, v35, v44);

        *(v28 + 14) = v36;
        _os_log_impl(&dword_1B8B22000, v26, v27, "Failed to remove attachment: error: %{private}s path: %{private}s", v28, 0x16u);
        v37 = v39;
        swift_arrayDestroy();
        MEMORY[0x1B8CCB0E0](v37, -1, -1);
        MEMORY[0x1B8CCB0E0](v28, -1, -1);
      }

      else
      {

        v40(v24, v23);
      }
    }
  }
}

void sub_1B8BF66A8(uint64_t a1)
{
  v34[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1B8C23498();
  v32 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = [v5 defaultManager];
  sub_1B8C23468();
  v7 = sub_1B8C250F8();

  v8 = [v6 fileExistsAtPath_];

  if (v8)
  {
    v9 = [v5 defaultManager];
    v10 = sub_1B8C233E8();
    v34[0] = 0;
    v11 = [v9 removeItemAtURL:v10 error:v34];

    if (v11)
    {
      v12 = v34[0];
    }

    else
    {
      v13 = v34[0];
      v14 = sub_1B8C23368();

      swift_willThrow();
      if (qword_1EDC85598 != -1)
      {
        swift_once();
      }

      v15 = sub_1B8C23C38();
      __swift_project_value_buffer(v15, qword_1EDC85D40);
      v16 = v32;
      (*(v32 + 16))(v4, a1, v2);
      v17 = v14;
      v18 = sub_1B8C23C18();
      v19 = sub_1B8C25478();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v33 = v14;
        v34[0] = v31;
        *v20 = 136380931;
        v21 = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
        v22 = sub_1B8C25178();
        v24 = sub_1B8B5DD48(v22, v23, v34);

        *(v20 + 4) = v24;
        *(v20 + 12) = 2081;
        v25 = sub_1B8C23468();
        v27 = v26;
        (*(v16 + 8))(v4, v2);
        v28 = sub_1B8B5DD48(v25, v27, v34);

        *(v20 + 14) = v28;
        _os_log_impl(&dword_1B8B22000, v18, v19, "Failed to remove attachment directory: error: %{private}s path: %{private}s", v20, 0x16u);
        v29 = v31;
        swift_arrayDestroy();
        MEMORY[0x1B8CCB0E0](v29, -1, -1);
        MEMORY[0x1B8CCB0E0](v20, -1, -1);
      }

      else
      {

        (*(v16 + 8))(v4, v2);
      }
    }
  }
}

Swift::Void __swiftcall FBKEvaluationController.sheetPresentationControllerDidChangeSelectedDetentIdentifier(_:)(UISheetPresentationController a1)
{
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v2 = sub_1B8C23C38();
  __swift_project_value_buffer(v2, qword_1EDC85D40);
  v3 = sub_1B8C23C18();
  v4 = sub_1B8C25468();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_1B8B5DD48(0xD000000000000040, 0x80000001B8C35EB0, &v15);
    _os_log_impl(&dword_1B8B22000, v3, v4, "%{public}s", v5, 0xCu);
    v7 = __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B8CCB0E0](v6, -1, -1, v7);
    MEMORY[0x1B8CCB0E0](v5, -1, -1);
  }

  v8 = [(objc_class *)a1.super.super.isa selectedDetentIdentifier];
  v9 = v8;
  if (qword_1EBAA5958 == -1)
  {
    if (!v8)
    {
      return;
    }
  }

  else
  {
    swift_once();
    if (!v9)
    {
      return;
    }
  }

  v10 = sub_1B8C25128();
  v12 = v11;
  if (v10 == sub_1B8C25128() && v12 == v13)
  {
  }

  else
  {
    v14 = sub_1B8C25A08();

    if ((v14 & 1) == 0)
    {
      return;
    }
  }

  sub_1B8BE7E14();
}

uint64_t sub_1B8BF6D1C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B8BF6E14;

  return v6(a1);
}

uint64_t sub_1B8BF6E14()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1B8BF6F0C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1B8BF6F80(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B8C237B8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1B8BFA3AC(&qword_1EBAA64E0, MEMORY[0x1E699C390], MEMORY[0x1E699C398]);
  v33 = a2;
  v11 = sub_1B8C250B8();
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
      sub_1B8BFA3AC(&unk_1EBAA8610, MEMORY[0x1E699C390], MEMORY[0x1E699C3A0]);
      v21 = sub_1B8C250E8();
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
    sub_1B8BF7FA8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1B8BF7260(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1B8C25AB8();
  sub_1B8C251B8();
  v8 = sub_1B8C25AF8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1B8C25A08() & 1) != 0)
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

    sub_1B8BF8270(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1B8BF73B0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B8C23498();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1B8BFA3AC(&unk_1EBAA85C0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  v33 = a2;
  v11 = sub_1B8C250B8();
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
      sub_1B8BFA3AC(&qword_1EBAA63A0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v21 = sub_1B8C250E8();
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
    sub_1B8BF83F0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

void sub_1B8BF7690(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1B8C237B8();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7348, &qword_1B8C2BA10);
  v6 = sub_1B8C257A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_1B8BFA3AC(&qword_1EBAA64E0, MEMORY[0x1E699C390], MEMORY[0x1E699C398]);
      v21 = sub_1B8C250B8();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_1B8BF79EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA8600, qword_1B8C2F4E0);
  v4 = sub_1B8C257A8();
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
      sub_1B8C25AB8();
      sub_1B8C251B8();
      v21 = sub_1B8C25AF8();
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

void sub_1B8BF7C4C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1B8C23498();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA85D0, &unk_1B8C2F4C8);
  v6 = sub_1B8C257A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_1B8BFA3AC(&unk_1EBAA85C0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      v21 = sub_1B8C250B8();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

uint64_t sub_1B8BF7FA8(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1B8C237B8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
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
    sub_1B8BF7690(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1B8BF8814(MEMORY[0x1E699C390], &qword_1EBAA7348, &qword_1B8C2BA10);
      goto LABEL_12;
    }

    sub_1B8BF8A4C(v10 + 1);
  }

  v12 = *v3;
  sub_1B8BFA3AC(&qword_1EBAA64E0, MEMORY[0x1E699C390], MEMORY[0x1E699C398]);
  v13 = sub_1B8C250B8();
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
      sub_1B8BFA3AC(&unk_1EBAA8610, MEMORY[0x1E699C390], MEMORY[0x1E699C3A0]);
      v21 = sub_1B8C250E8();
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
  result = sub_1B8C25A48();
  __break(1u);
  return result;
}

void sub_1B8BF8270(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1B8BF79EC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1B8BF86B8();
      goto LABEL_16;
    }

    sub_1B8BF8D68(v8 + 1);
  }

  v10 = *v4;
  sub_1B8C25AB8();
  sub_1B8C251B8();
  v11 = sub_1B8C25AF8();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1B8C25A08() & 1) != 0)
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
  *v17 = result;
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
  sub_1B8C25A48();
  __break(1u);
}

uint64_t sub_1B8BF83F0(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1B8C23498();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
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
    sub_1B8BF7C4C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1B8BF8814(MEMORY[0x1E6968FB0], &unk_1EBAA85D0, &unk_1B8C2F4C8);
      goto LABEL_12;
    }

    sub_1B8BF8FA0(v10 + 1);
  }

  v12 = *v3;
  sub_1B8BFA3AC(&unk_1EBAA85C0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  v13 = sub_1B8C250B8();
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
      sub_1B8BFA3AC(&qword_1EBAA63A0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v21 = sub_1B8C250E8();
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
  result = sub_1B8C25A48();
  __break(1u);
  return result;
}

void sub_1B8BF86B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA8600, qword_1B8C2F4E0);
  v2 = *v0;
  v3 = sub_1B8C25798();
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

void sub_1B8BF8814(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_1B8C25798();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    v14 = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || v14 >= v11 + 56 + 8 * v15)
    {
      memmove(v14, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    v29 = v8 + 16;
    while (v20)
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
      (*(v8 + 32))(*(v13 + 48) + v25, v10, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }
}

void sub_1B8BF8A4C(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1B8C237B8();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7348, &qword_1B8C2BA10);
  v7 = sub_1B8C257A8();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
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
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_1B8BFA3AC(&qword_1EBAA64E0, MEMORY[0x1E699C390], MEMORY[0x1E699C398]);
      v21 = sub_1B8C250B8();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
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

        v2 = v29;
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
}

void sub_1B8BF8D68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA8600, qword_1B8C2F4E0);
  v4 = sub_1B8C257A8();
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
      sub_1B8C25AB8();

      sub_1B8C251B8();
      v20 = sub_1B8C25AF8();
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

void sub_1B8BF8FA0(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1B8C23498();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA85D0, &unk_1B8C2F4C8);
  v7 = sub_1B8C257A8();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
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
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_1B8BFA3AC(&unk_1EBAA85C0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      v21 = sub_1B8C250B8();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
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

        v2 = v29;
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
}

id sub_1B8BF92BC(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B8C24408();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2[OBJC_IVAR____TtC8Feedback23FBKEvaluationController_blockPresentationDetentUsage] = 0;
  a2[OBJC_IVAR____TtC8Feedback23FBKEvaluationController___presentAsEmbeddedView] = 0;
  a2[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__evaluationState] = 0;
  v11 = &a2[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__delegate];
  *&a2[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *(v11 + 1) = 0;
  swift_unknownObjectWeakInit();
  sub_1B8C243F8();
  sub_1B8C243E8();
  (*(v8 + 32))(&a2[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__swiftUIDetent], v10, v7);
  a2[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__isFeedbackFormPresented] = 0;
  *&a2[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__interaction] = 0;
  v12 = &a2[OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluation];
  *v12 = 0;
  v12[8] = -1;
  v13 = &a2[OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluationCompletionHandler];
  *v13 = 0;
  v13[1] = 0;
  v14 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__subject;
  v15 = sub_1B8C23738();
  v16 = *(*(v15 - 8) + 56);
  v16(&a2[v14], 1, 1, v15);
  v16(&a2[v14], 1, 1, v15);
  *&a2[OBJC_IVAR____TtC8Feedback23FBKEvaluationController___cachedInteraction] = 0;
  v17 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__formContext;
  v18 = type metadata accessor for FBKEvaluationController.FormContext(0);
  v19 = *(*(v18 - 8) + 56);
  v19(&a2[v17], 1, 1, v18);
  v19(&a2[v17], 1, 1, v18);
  v20 = OBJC_IVAR____TtC8Feedback23FBKEvaluationController__actionPerformed;
  v21 = sub_1B8C236E8();
  (*(*(v21 - 8) + 56))(&a2[v20], 1, 1, v21);
  a2[OBJC_IVAR____TtC8Feedback23FBKEvaluationController___shouldShortenForRemoteView] = 0;
  sub_1B8C235B8();
  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (swift_getObjectType(), swift_conformsToProtocol2()) && a1)
  {
    swift_unknownObjectRetain();
    sub_1B8B3099C(v11);
    *(v11 + 1) = a4;
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    a2[OBJC_IVAR____TtC8Feedback23FBKEvaluationController__apiType] = 0;
    v22 = type metadata accessor for FBKEvaluationController(0);
    v30.receiver = a2;
    v30.super_class = v22;
    v23 = objc_msgSendSuper2(&v30, sel_init);
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v29[-4] = v23;
    v29[-3] = sub_1B8BFD5E8;
    v28 = v24;
    v29[1] = v23;
    sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
    v26 = v23;

    sub_1B8C23578();

    swift_unknownObjectRelease();
    return v26;
  }

  else
  {
    result = sub_1B8C258A8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B8BF97A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8C236E8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA84D0, &qword_1B8C2F018);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8500, &qword_1B8C2F108);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1B8B34450(a1, &v21 - v13, &qword_1EBAA84D0, &qword_1B8C2F018);
  sub_1B8B34450(a2, &v14[v15], &qword_1EBAA84D0, &qword_1B8C2F018);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1B8B34450(v14, v10, &qword_1EBAA84D0, &qword_1B8C2F018);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1B8BFA3AC(&qword_1EBAA8508, MEMORY[0x1E699C1F8], MEMORY[0x1E699C200]);
      v18 = sub_1B8C250E8();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1B8B3433C(v14, &qword_1EBAA84D0, &qword_1B8C2F018);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1B8B3433C(v14, &qword_1EBAA8500, &qword_1B8C2F108);
    v17 = 1;
    return v17 & 1;
  }

  sub_1B8B3433C(v14, &qword_1EBAA84D0, &qword_1B8C2F018);
  v17 = 0;
  return v17 & 1;
}

unint64_t _s8Feedback23FBKEvaluationControllerC15systemImageName3for11hasResponseSS0A7Service14FBKSEvaluationC6ActionO_SbtFZ_0(uint64_t a1, char a2)
{
  v4 = sub_1B8C236E8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v8 = 0x6C6C69662ELL;
  }

  else
  {
    v8 = 0;
  }

  if (a2)
  {
    v9 = 0xE500000000000000;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 88))(v7, v4);
  if (v10 == *MEMORY[0x1E699C1F0])
  {
    v11 = 0x7568742E646E6168;
    v12 = 0xED0000707573626DLL;
  }

  else
  {
    if (v10 == *MEMORY[0x1E699C1C8])
    {
      v17 = 0;
      v18 = 0xE000000000000000;
      sub_1B8C257E8();

      v17 = 0x7568742E646E6168;
      v18 = 0xEF6E776F6473626DLL;
      goto LABEL_14;
    }

    if (v10 == *MEMORY[0x1E699C1D8])
    {
      v17 = 0;
      v18 = 0xE000000000000000;
      sub_1B8C257E8();

      v17 = 0xD000000000000016;
      v18 = 0x80000001B8C35480;
      goto LABEL_14;
    }

    if (v10 != *MEMORY[0x1E699C1E8] && v10 != *MEMORY[0x1E699C1D0] && v10 != *MEMORY[0x1E699C1E0])
    {
      v17 = 0;
      v18 = 0xE000000000000000;
      sub_1B8C257E8();

      v17 = 0xD000000000000013;
      v18 = 0x80000001B8C36530;
      MEMORY[0x1B8CC9EB0](v8, v9);

      v16 = v17;
      (*(v5 + 8))(v7, v4);
      return v16;
    }

    v11 = 0x656C637269632E78;
    v12 = 0xE800000000000000;
  }

  v17 = v11;
  v18 = v12;
LABEL_14:
  MEMORY[0x1B8CC9EB0](v8, v9);

  return v17;
}

uint64_t sub_1B8BF9DB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6590, &qword_1B8C2EFD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1B8BF9E28(id a1, char a2)
{
  if (a2 != -1)
  {
    return sub_1B8B2DE30(a1);
  }

  return a1;
}

void sub_1B8BF9E40(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_1B8B30A54(a1);
  }
}

uint64_t sub_1B8BF9E58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B8BF9EC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8C23738();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6590, &qword_1B8C2EFD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA85E8, &qword_1B8C2F4D8);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1B8B34450(a1, &v21 - v13, &qword_1EBAA6590, &qword_1B8C2EFD0);
  sub_1B8B34450(a2, &v14[v15], &qword_1EBAA6590, &qword_1B8C2EFD0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1B8B34450(v14, v10, &qword_1EBAA6590, &qword_1B8C2EFD0);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1B8BFA3AC(&unk_1EBAA85F0, MEMORY[0x1E699C248], MEMORY[0x1E699C250]);
      v18 = sub_1B8C250E8();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1B8B3433C(v14, &qword_1EBAA6590, &qword_1B8C2EFD0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1B8B3433C(v14, &qword_1EBAA85E8, &qword_1B8C2F4D8);
    v17 = 1;
    return v17 & 1;
  }

  sub_1B8B3433C(v14, &qword_1EBAA6590, &qword_1B8C2EFD0);
  v17 = 0;
  return v17 & 1;
}

BOOL sub_1B8BFA1E0()
{
  v0 = sub_1B8C23638();
  v8[3] = v0;
  v8[4] = sub_1B8BFA3AC(&unk_1EBAA7810, MEMORY[0x1E699C198], MEMORY[0x1E699C190]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E699C188], v0);
  v2 = sub_1B8C235D8();
  __swift_destroy_boxed_opaque_existential_0(v8);
  if ((v2 & 1) == 0)
  {
    if (qword_1EDC85598 != -1)
    {
      swift_once();
    }

    v3 = sub_1B8C23C38();
    __swift_project_value_buffer(v3, qword_1EDC85D40);
    v4 = sub_1B8C23C18();
    v5 = sub_1B8C25478();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1B8B22000, v4, v5, "CentralizedFeedback feature flag is not enabled.", v6, 2u);
      MEMORY[0x1B8CCB0E0](v6, -1, -1);
    }
  }

  return (v2 & 1) == 0;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B8BFA3AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1B8BFA3F4(uint64_t a1, char *a2, void (*a3)(_BYTE *, uint64_t, __n128), uint64_t (*a4)(_BYTE *, _BYTE *, uint64_t), void (*a5)(uint64_t, _BYTE *, uint64_t))
{
  v10 = sub_1B8C23568();
  v94 = *(v10 - 8);
  v11 = v94[8];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v88 = &v83[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v12);
  v87 = &v83[-v14];
  MEMORY[0x1EEE9AC00](v13);
  v89 = &v83[-v15];
  v95 = sub_1B8C23738();
  v16 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v18 = &v83[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = a5;
  v91 = a3;

  v92 = a4;
  v93 = a5;
  sub_1B8B247D4(a4, a5);
  if (sub_1B8BE6C4C(0))
  {
    if (qword_1EDC85598 != -1)
    {
      swift_once();
    }

    v77 = sub_1B8C23C38();
    __swift_project_value_buffer(v77, qword_1EDC85D40);
    v78 = sub_1B8C23C18();
    v79 = sub_1B8C25478();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v96 = v81;
      *v80 = 136446210;
      *(v80 + 4) = sub_1B8B5DD48(0xD00000000000002ALL, 0x80000001B8C36410, &v96);
      _os_log_impl(&dword_1B8B22000, v78, v79, "%{public}s called while FBKEvaluationController is idling.", v80, 0xCu);
      v82 = __swift_destroy_boxed_opaque_existential_0(v81);
      MEMORY[0x1B8CCB0E0](v81, -1, -1, v82);
      MEMORY[0x1B8CCB0E0](v80, -1, -1);
    }

    sub_1B8B30A44(v92, v93);
    sub_1B8C258A8();
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    v96 = a2;
    sub_1B8BFA3AC(&qword_1EDC85660, type metadata accessor for FBKEvaluationController, &protocol conformance descriptor for FBKEvaluationController);
    sub_1B8C23588();

    v20 = *&a2[OBJC_IVAR____TtC8Feedback23FBKEvaluationController___cachedInteraction];
    v21 = v10;
    if (v20)
    {
      v90 = v19;
      v22 = v20;
      if (sub_1B8C23708())
      {
        if (qword_1EDC85598 != -1)
        {
          swift_once();
        }

        v23 = sub_1B8C23C38();
        __swift_project_value_buffer(v23, qword_1EDC85D40);
        v24 = sub_1B8C23C18();
        v25 = sub_1B8C25498();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_1B8B22000, v24, v25, "Using cached interaction", v26, 2u);
          MEMORY[0x1B8CCB0E0](v26, -1, -1);
        }

        v27 = v22;
        sub_1B8BEABF0(v20, 0, v91, v92, v93);

        return;
      }

      v19 = v90;
    }

    v28 = v95;
    (*(v16 + 16))(v18, a1, v95);
    v29 = (*(v16 + 88))(v18, v28);
    if (v29 == *MEMORY[0x1E699C230])
    {
      (*(v16 + 96))(v18, v28);
      v30 = v94;
      v31 = v94[4];
      v32 = v89;
      v95 = (v94 + 4);
      v93 = v31;
      v31(v89, v18, v21);
      if (qword_1EDC85598 != -1)
      {
        swift_once();
      }

      v33 = sub_1B8C23C38();
      __swift_project_value_buffer(v33, qword_1EDC85D40);
      v34 = v87;
      v92 = v30[2];
      v92(v87, v32, v21);
      v35 = sub_1B8C23C18();
      v36 = sub_1B8C25498();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v96 = v85;
        *v37 = 136446210;
        v84 = v36;
        v38 = sub_1B8C23538();
        v90 = v19;
        v40 = v39;
        v41 = v94[1];
        v86 = (v94 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v91 = v41;
        (v41)(v34, v21);
        v42 = sub_1B8B5DD48(v38, v40, &v96);
        v19 = v90;

        *(v37 + 4) = v42;
        _os_log_impl(&dword_1B8B22000, v35, v84, "Prefetching interaction for uuid %{public}s", v37, 0xCu);
        v43 = v85;
        v44 = __swift_destroy_boxed_opaque_existential_0(v85);
        MEMORY[0x1B8CCB0E0](v43, -1, -1, v44);
        v45 = v37;
        v30 = v94;
        v32 = v89;
        MEMORY[0x1B8CCB0E0](v45, -1, -1);
      }

      else
      {

        v52 = v30[1];
        v86 = (v30 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v91 = v52;
        (v52)(v34, v21);
      }

      v94 = sub_1B8C23688();
      v53 = v88;
      v92(v88, v32, v21);
      v54 = (*(v30 + 80) + 16) & ~*(v30 + 80);
      v55 = (v11 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
      v56 = v32;
      v57 = swift_allocObject();
      v93(v57 + v54, v53, v21);
      *(v57 + v55) = a2;
      v58 = (v57 + ((v55 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v58 = sub_1B8BFD3FC;
      v58[1] = v19;
      v59 = a2;

      MEMORY[0x1B8CC8340](v56, sub_1B8BFD7D4, v57);

      (v91)(v56, v21);
LABEL_32:

      return;
    }

    if (v29 != *MEMORY[0x1E699C218])
    {
      if (qword_1EDC85598 != -1)
      {
        swift_once();
      }

      v60 = sub_1B8C23C38();
      __swift_project_value_buffer(v60, qword_1EDC85D40);
      v61 = sub_1B8C23C18();
      v62 = sub_1B8C25498();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v96 = v64;
        *v63 = 136446210;
        *(v63 + 4) = sub_1B8B5DD48(0xD00000000000002ALL, 0x80000001B8C36410, &v96);
        _os_log_impl(&dword_1B8B22000, v61, v62, "%{public}s Unknown Subject case", v63, 0xCu);
        v65 = __swift_destroy_boxed_opaque_existential_0(v64);
        MEMORY[0x1B8CCB0E0](v64, -1, -1, v65);
        MEMORY[0x1B8CCB0E0](v63, -1, -1);
      }

      sub_1B8BD0C60(v66, v67, v68);
      v69 = swift_allocError();
      v71 = v70;
      if (qword_1EBAA5910 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v60, qword_1EBAB39C8);
      v72 = sub_1B8C23C18();
      v73 = sub_1B8C25478();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v96 = v75;
        *v74 = 136446210;
        *(v74 + 4) = sub_1B8B5DD48(0xD000000000000014, 0x80000001B8C363F0, &v96);
        _os_log_impl(&dword_1B8B22000, v72, v73, "Unexpected Error: %{public}s", v74, 0xCu);
        v76 = __swift_destroy_boxed_opaque_existential_0(v75);
        MEMORY[0x1B8CCB0E0](v75, -1, -1, v76);
        MEMORY[0x1B8CCB0E0](v74, -1, -1);
      }

      *v71 = 0;
      sub_1B8BEABF0(v69, 1, v91, v92, v93);

      (*(v16 + 8))(v18, v95);
      goto LABEL_32;
    }

    (*(v16 + 96))(v18, v28);
    v46 = *v18;
    if (qword_1EDC85598 != -1)
    {
      swift_once();
    }

    v47 = sub_1B8C23C38();
    __swift_project_value_buffer(v47, qword_1EDC85D40);
    v48 = sub_1B8C23C18();
    v49 = sub_1B8C25498();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1B8B22000, v48, v49, "Interaction already available", v50, 2u);
      MEMORY[0x1B8CCB0E0](v50, -1, -1);
    }

    v51 = v46;
    sub_1B8BE74E4(v46);
    sub_1B8BEABF0(v46, 0, v91, v92, v93);
  }
}

void sub_1B8BFB004()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___cachedInteraction);
  *(v1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___cachedInteraction) = v2;
  v4 = v2;
}

uint64_t sub_1B8BFB088(void *a1, char a2)
{
  v5 = *(sub_1B8C236E8() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_1B8C23738() - 8);
  v9 = *(v2 + 16);
  v10 = *(v2 + v7);
  v11 = v2 + ((v7 + *(v8 + 80) + 1) & ~*(v8 + 80));

  return sub_1B8BEEC14(a1, a2 & 1, v9, v2 + v6, v10, v11);
}

uint64_t sub_1B8BFB178(void *a1, char a2)
{
  v5 = *(sub_1B8C236E8() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_1B8BEE6F8(a1, a2 & 1, v6, v7);
}

void sub_1B8BFB1FC()
{
  v1 = *(sub_1B8C236E8() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1B8C23738() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1B8BED0A4(v0 + v2, v0 + v5, 1, 2, v6 + 1);
  }
}

uint64_t sub_1B8BFB330(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, void, void))
{
  v4 = *(a1(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  return a2(v2 + v5, *v6, v6[1]);
}

uint64_t sub_1B8BFB408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23[2] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA84E0, &qword_1B8C2F0A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v23 - v6;
  v8 = sub_1B8C236A8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v12 = sub_1B8C23C38();
  __swift_project_value_buffer(v12, qword_1EDC85D40);
  v13 = sub_1B8C23C18();
  v14 = sub_1B8C25498();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v23[1] = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v24[0] = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_1B8B5DD48(0xD000000000000046, 0x80000001B8C36380, v24);
    _os_log_impl(&dword_1B8B22000, v13, v14, "%{public}s", v16, 0xCu);
    v18 = __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x1B8CCB0E0](v17, -1, -1, v18);
    MEMORY[0x1B8CCB0E0](v16, -1, -1);
  }

  v19 = OBJC_IVAR____TtC8Feedback30FBKFeedbackDraftViewController_form;
  swift_beginAccess();
  v20 = *(a1 + v19);

  v21 = v20;
  sub_1B8BF4770();

  sub_1B8C23698();
  (*(v9 + 16))(v7, v11, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_1B8BF4FBC(v7);
  sub_1B8B3433C(v7, &unk_1EBAA84E0, &qword_1B8C2F0A0);
  return (*(v9 + 8))(v11, v8);
}

void sub_1B8BFB710(uint64_t a1)
{
  v2 = sub_1B8C23498();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E7CD0];
  v18 = MEMORY[0x1E69E7CD0];
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1B8BF6254(v8);
      v8 += v9;
      --v7;
    }

    while (v7);
    v6 = v18;
  }

  v10 = 1 << *(v6 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v6 + 56);
  v13 = (v10 + 63) >> 6;
  v17[1] = v3 + 16;
  v14 = (v3 + 8);

  for (i = 0; v12; i = v16)
  {
    v16 = i;
LABEL_12:
    (*(v3 + 16))(v5, *(v6 + 48) + *(v3 + 72) * (__clz(__rbit64(v12)) | (v16 << 6)), v2);
    sub_1B8BF66A8(v5);
    v12 &= v12 - 1;
    (*v14)(v5, v2);
  }

  while (1)
  {
    v16 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v16 >= v13)
    {

      return;
    }

    v12 = *(v6 + 56 + 8 * v16);
    ++i;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);

  (*v14)(v5, v2);
  __break(1u);
}

void _s8Feedback23FBKEvaluationControllerC017feedbackDraftViewC0_23didFailToStartWithErroryAA011FBKFeedbackefC0C_AA08FBKDraftL0OtF_0(uint64_t a1)
{
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v1 = sub_1B8C23C38();
  __swift_project_value_buffer(v1, qword_1EDC85D40);
  v2 = sub_1B8C23C18();
  v3 = sub_1B8C25498();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13[0] = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B8B5DD48(0xD000000000000037, 0x80000001B8C36340, v13);
    _os_log_impl(&dword_1B8B22000, v2, v3, "%{public}s", v4, 0xCu);
    v6 = __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B8CCB0E0](v5, -1, -1, v6);
    MEMORY[0x1B8CCB0E0](v4, -1, -1);
  }

  swift_beginAccess();
  swift_beginAccess();

  sub_1B8BFB710(v7);

  sub_1B8BD0C60(v8, v9, v10);
  v11 = swift_allocError();
  *v12 = 1;
  sub_1B8BE9BA8(v11, 1);
}

double _s8Feedback23FBKEvaluationControllerC017feedbackDraftViewC0_18didFailToAttachURL5erroryAA011FBKFeedbackefC0C_10Foundation0K0VAA18FBKAttachmentErrorOtF_0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B8C23498();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v7 = sub_1B8C23C38();
  __swift_project_value_buffer(v7, qword_1EDC85D40);
  (*(v4 + 16))(v6, a2, v3);
  v8 = sub_1B8C23C18();
  v9 = sub_1B8C25498();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v10 = 136446466;
    *(v10 + 4) = sub_1B8B5DD48(0xD000000000000038, 0x80000001B8C36300, v19);
    *(v10 + 12) = 2082;
    v12 = sub_1B8C233B8();
    v14 = v13;
    (*(v4 + 8))(v6, v3);
    v15 = sub_1B8B5DD48(v12, v14, v19);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_1B8B22000, v8, v9, "%{public}s: %{public}s ", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CCB0E0](v11, -1, -1);
    MEMORY[0x1B8CCB0E0](v10, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  swift_beginAccess();
  swift_beginAccess();

  sub_1B8BFB710(v16);

  return result;
}

double _s8Feedback23FBKEvaluationControllerC017feedbackDraftViewC11DidLoadFormyyAA011FBKFeedbackefC0CF_0(uint64_t a1)
{
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v1 = sub_1B8C23C38();
  __swift_project_value_buffer(v1, qword_1EDC85D40);
  v2 = sub_1B8C23C18();
  v3 = sub_1B8C25498();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9[0] = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B8B5DD48(0xD00000000000002ALL, 0x80000001B8C36210, v9);
    _os_log_impl(&dword_1B8B22000, v2, v3, "%{public}s", v4, 0xCu);
    v6 = __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B8CCB0E0](v5, -1, -1, v6);
    MEMORY[0x1B8CCB0E0](v4, -1, -1);
  }

  swift_beginAccess();
  swift_beginAccess();

  sub_1B8BFB710(v7);

  return result;
}

unint64_t sub_1B8BFBF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8520;
  if (!qword_1EBAA8520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8520);
  }

  return result;
}

void sub_1B8BFBFE4(uint64_t a1)
{
  sub_1B8C24408();
  if (v1 <= 0x3F)
  {
    sub_1B8BFCA74(319, &unk_1EDC85820, MEMORY[0x1E699C248]);
    if (v2 <= 0x3F)
    {
      sub_1B8BFCA74(319, qword_1EDC857B8, type metadata accessor for FBKEvaluationController.FormContext);
      if (v3 <= 0x3F)
      {
        sub_1B8BFCA74(319, &unk_1EDC85830, MEMORY[0x1E699C1F8]);
        if (v4 <= 0x3F)
        {
          sub_1B8C235C8();
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1B8BFCA74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B8C25608();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B8BFCB10(uint64_t a1)
{
  sub_1B8C236E8();
  if (v1 <= 0x3F)
  {
    sub_1B8C23978();
    if (v2 <= 0x3F)
    {
      sub_1B8BFCA74(319, &unk_1EDC856D0, type metadata accessor for FBKFeedbackDraftViewController);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1B8BFCBCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8588;
  if (!qword_1EBAA8588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8588);
  }

  return result;
}

uint64_t sub_1B8BFCC3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B8BFCCA4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1B8C236E8() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + v6 + *(v5 + 64));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1B8B5115C;

  return sub_1B8BF0B08(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_1B8BFCDEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B8BFD788;

  return sub_1B8BF6D1C(a1, v4);
}

uint64_t sub_1B8BFCEA4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B8B5115C;

  return sub_1B8BF6D1C(a1, v4);
}

void sub_1B8BFCFA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController__interaction);
  *(v1 + OBJC_IVAR____TtC8Feedback23FBKEvaluationController__interaction) = v2;
  v4 = v2;
}

double sub_1B8BFD084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    v5 = vars8;
  }

  return result;
}

void sub_1B8BFD0D8()
{
  v1 = *(sub_1B8C236E8() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  sub_1B8BEEAB0(v2, v3, v4, v5);
}

uint64_t sub_1B8BFD164()
{
  v1 = *(sub_1B8C23568() - 8);
  v2 = (*(v1 + 80) + 25) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + v3);
  v7 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_1B8BEC5A0(v4, v5, v0 + v2, v6, v8, v9);
}

void sub_1B8BFD208()
{
  v1 = *(sub_1B8C236E8() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(sub_1B8C23738() - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + v3);
  v9 = v0 + ((v3 + *(v4 + 80) + 1) & ~*(v4 + 80));

  sub_1B8BEF0B8(v5, v6, v7, v0 + v2, v8, v9);
}

uint64_t objectdestroy_211Tm()
{
  sub_1B8B30A54(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1B8BFD360(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_239Tm()
{
  v1 = sub_1B8C23568();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_1B8BFD4BC(void *a1, char a2)
{
  v5 = *(sub_1B8C23568() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = (v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_1B8BEC1B8(a1, a2 & 1, v2 + v6, v8, v10, v11);
}

void sub_1B8BFD588()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluation;
  v3 = *v2;
  v4 = *(v0 + 32);
  *v2 = v1;
  v5 = *(v2 + 8);
  *(v2 + 8) = v4;
  sub_1B8BF9E28(v1, v4);
  sub_1B8BF9E40(v3, v5);
}

uint64_t sub_1B8BFD5F4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC8Feedback23FBKEvaluationController___evaluationCompletionHandler);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_1B8B247D4(v1, v2);
  return sub_1B8B30A44(v4, v5);
}

uint64_t sub_1B8BFD64C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B8BFD7F0(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1B8C25708();
    v5 = v4;
    v6 = sub_1B8C25778();
    v8 = v7;
    v9 = MEMORY[0x1B8CCA3F0](v3, v5, v6, v7);
    sub_1B8BFDE40(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1B8BFDE40(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_1B8C256E8();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1B8BFD90C(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_1B8BFDE40(v3, v5, v2 != 0);
  return v12;
}

void sub_1B8BFD90C(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
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

      MEMORY[0x1B8CCA420](a1, a2, v7);
      sub_1B8BFDD9C();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1B8BFDD9C();
    if (sub_1B8C25738() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1B8C25748();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_1B8C255D8();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_1B8C255E8();

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

void sub_1B8BFDB0C()
{
  v1 = [v0 currentUser];
  if (!v1 || (v2 = v1, v3 = [v1 bugFormStubs], v2, !v3) || (sub_1B8BFDD9C(), sub_1B8BFDDE8(), v4 = sub_1B8C253E8(), v3, v5 = sub_1B8BFD7F0(v4), , !v5))
  {
    if (qword_1EBAA5968 != -1)
    {
      swift_once();
    }

    v14 = sub_1B8C23C38();
    __swift_project_value_buffer(v14, qword_1EBAB3A00);
    v8 = sub_1B8C23C18();
    v15 = sub_1B8C25478();
    if (os_log_type_enabled(v8, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1B8B22000, v8, v15, "Could not find FBKFormStub", v16, 2u);
      MEMORY[0x1B8CCB0E0](v16, -1, -1);
    }

    goto LABEL_13;
  }

  if (qword_1EBAA5968 != -1)
  {
    swift_once();
  }

  v6 = sub_1B8C23C38();
  __swift_project_value_buffer(v6, qword_1EBAB3A00);
  v7 = v5;
  v8 = sub_1B8C23C18();
  v9 = sub_1B8C25498();
  if (!os_log_type_enabled(v8, v9))
  {

    v8 = v7;
    goto LABEL_13;
  }

  v10 = swift_slowAlloc();
  *v10 = 134349056;
  v11 = [v7 ID];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 integerValue];

    *(v10 + 4) = v13;
    _os_log_impl(&dword_1B8B22000, v8, v9, "Will start draft with form [%{public}ld]", v10, 0xCu);
    MEMORY[0x1B8CCB0E0](v10, -1, -1);
LABEL_13:

    return;
  }

  __break(1u);
}

unint64_t sub_1B8BFDD9C()
{
  result = qword_1EBAA8680;
  if (!qword_1EBAA8680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBAA8680);
  }

  return result;
}

unint64_t sub_1B8BFDDE8()
{
  result = qword_1EBAA8688;
  if (!qword_1EBAA8688)
  {
    sub_1B8BFDD9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8688);
  }

  return result;
}

double sub_1B8BFDE40(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void _s8Feedback31FBKEvaluationControllerDelegatePAAE21evaluationDidComplete10controller0E0yAA0bC0C_0A7Service14FBKSEvaluationCtF_0()
{
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v0 = sub_1B8C23C38();
  __swift_project_value_buffer(v0, qword_1EDC85D40);
  oslog = sub_1B8C23C18();
  v1 = sub_1B8C25498();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v6 = v3;
    *v2 = 136446210;
    *(v2 + 4) = sub_1B8B5DD48(0xD00000000000002DLL, 0x80000001B8C368C0, &v6);
    _os_log_impl(&dword_1B8B22000, oslog, v1, "%{public}s", v2, 0xCu);
    v4 = __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x1B8CCB0E0](v3, -1, -1, v4);
    MEMORY[0x1B8CCB0E0](v2, -1, -1);
  }
}

void _s8Feedback31FBKEvaluationControllerDelegatePAAE21evaluationDidComplete10controller8responseyAA0bC0C_AA0B0V8ResponseVtF_0()
{
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v0 = sub_1B8C23C38();
  __swift_project_value_buffer(v0, qword_1EDC85D40);
  oslog = sub_1B8C23C18();
  v1 = sub_1B8C25498();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v6 = v3;
    *v2 = 136446210;
    *(v2 + 4) = sub_1B8B5DD48(0xD00000000000002BLL, 0x80000001B8C368F0, &v6);
    _os_log_impl(&dword_1B8B22000, oslog, v1, "%{public}s", v2, 0xCu);
    v4 = __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x1B8CCB0E0](v3, -1, -1, v4);
    MEMORY[0x1B8CCB0E0](v2, -1, -1);
  }
}

void _s8Feedback31FBKEvaluationControllerDelegatePAAE17evaluationDidFail10controller5erroryAA0bC0C_s5Error_ptF_0()
{
  if (qword_1EDC85598 != -1)
  {
    swift_once();
  }

  v0 = sub_1B8C23C38();
  __swift_project_value_buffer(v0, qword_1EDC85D40);
  oslog = sub_1B8C23C18();
  v1 = sub_1B8C25498();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v6 = v3;
    *v2 = 136446210;
    *(v2 + 4) = sub_1B8B5DD48(0xD000000000000024, 0x80000001B8C36920, &v6);
    _os_log_impl(&dword_1B8B22000, oslog, v1, "%{public}s", v2, 0xCu);
    v4 = __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x1B8CCB0E0](v3, -1, -1, v4);
    MEMORY[0x1B8CCB0E0](v2, -1, -1);
  }
}

uint64_t FBKAnswerType.description.getter(uint64_t a1)
{
  v1 = a1 + 1;
  result = 0x6C65694674786554;
  switch(v1)
  {
    case 0:
      result = 0x6E776F6E6B6E55;
      break;
    case 1:
      return result;
    case 2:
      result = 0x6165724174786554;
      break;
    case 3:
      result = 0x7055706F50;
      break;
    case 4:
      result = 0x6F69646152;
      break;
    case 5:
      result = 0x786F426B63656843;
      break;
    case 6:
      result = 0x656E6F5A656C6946;
      break;
    case 7:
      result = 0x74616D726F666E49;
      break;
    case 8:
      result = 0x726564696C53;
      break;
    case 9:
      result = 1702125892;
      break;
    case 10:
      result = 0x656D695465746144;
      break;
    case 11:
      result = 1701669204;
      break;
    case 12:
      result = 0x6C61646F4DLL;
      break;
    case 13:
      result = 0x656C67676F54;
      break;
    default:
      result = 0x206E776F6E6B6E55;
      break;
  }

  return result;
}

uint64_t FBKImageTransformer.__allocating_init(_:targetFileSize:resizeScale:attemptLimit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a5;
  *(result + 48) = a4;
  *(result + 56) = 0;
  return result;
}

uint64_t FBKImageTransformer.init(_:targetFileSize:resizeScale:attemptLimit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a5;
  *(v5 + 48) = a4;
  *(v5 + 56) = 0;
  return v5;
}

void sub_1B8BFE498()
{
  v1 = v0;
  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v2 = sub_1B8C23C38();
  __swift_project_value_buffer(v2, qword_1EBAB3A30);
  v3 = sub_1B8C23C18();
  v4 = sub_1B8C25468();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v105.a = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1B8B5DD48(0x2928657A69736572, 0xE800000000000000, &v105);
    _os_log_impl(&dword_1B8B22000, v3, v4, "%s", v5, 0xCu);
    v7 = __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B8CCB0E0](v6, -1, -1, v7);
    MEMORY[0x1B8CCB0E0](v5, -1, -1);
  }

  v8 = *(v0 + 7);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  *(v0 + 7) = v10;
  v11 = *(v0 + 6);
  if (v11 < v10)
  {
    v12 = sub_1B8C23C18();
    v13 = sub_1B8C25468();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v105.a = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1B8B5DD48(0x2928657A69736572, 0xE800000000000000, &v105);
      _os_log_impl(&dword_1B8B22000, v12, v13, "%s - reached attempt limit", v14, 0xCu);
      v16 = __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1B8CCB0E0](v15, -1, -1, v16);
      MEMORY[0x1B8CCB0E0](v14, -1, -1);
    }

    sub_1B8BFF1A4(v17, v18, v19);
    swift_allocError();
    *v20 = v11;
    *(v20 + 8) = 0;
LABEL_10:
    swift_willThrow();
    return;
  }

  v21 = sub_1B8C23C18();
  v22 = sub_1B8C25468();
  if (!os_log_type_enabled(v21, v22))
  {

    goto LABEL_24;
  }

  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  *&v105.a = v24;
  *v23 = 136315394;
  *(v23 + 4) = sub_1B8B5DD48(0x2928657A69736572, 0xE800000000000000, &v105);
  *(v23 + 12) = 2048;
  v25 = *(v0 + 2);
  v26 = *(v0 + 3);
  v27 = v26 >> 62;
  if ((v26 >> 62) > 1)
  {
    if (v27 != 2)
    {
      v25 = 0;
      goto LABEL_23;
    }

    v30 = v25 + 16;
    v28 = *(v25 + 16);
    v29 = *(v30 + 8);
    v9 = __OFSUB__(v29, v28);
    v25 = v29 - v28;
    if (!v9)
    {
      goto LABEL_23;
    }

    __break(1u);
LABEL_20:
    v9 = __OFSUB__(HIDWORD(v25), v25);
    LODWORD(v25) = HIDWORD(v25) - v25;
    if (v9)
    {
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v25 = v25;
    goto LABEL_23;
  }

  if (v27)
  {
    goto LABEL_20;
  }

  v25 = BYTE6(v26);
LABEL_23:
  *(v23 + 14) = v25;

  _os_log_impl(&dword_1B8B22000, v21, v22, "%s - size: %ld", v23, 0x16u);
  v31 = __swift_destroy_boxed_opaque_existential_0(v24);
  MEMORY[0x1B8CCB0E0](v24, -1, -1, v31);
  MEMORY[0x1B8CCB0E0](v23, -1, -1);

LABEL_24:
  v32 = *(v0 + 2);
  v33 = *(v0 + 3);
  v34 = v33 >> 62;
  if ((v33 >> 62) <= 1)
  {
    if (!v34)
    {
      v35 = BYTE6(v33);
      goto LABEL_34;
    }

LABEL_31:
    LODWORD(v35) = HIDWORD(v32) - v32;
    if (!__OFSUB__(HIDWORD(v32), v32))
    {
      v35 = v35;
      goto LABEL_34;
    }

    goto LABEL_79;
  }

  if (v34 == 2)
  {
    v37 = *(v32 + 16);
    v36 = *(v32 + 24);
    v9 = __OFSUB__(v36, v37);
    v35 = v36 - v37;
    if (v9)
    {
      __break(1u);
      goto LABEL_31;
    }
  }

  else
  {
    v35 = 0;
  }

LABEL_34:
  if (v35 < *(v0 + 4))
  {
    v38 = sub_1B8C23C18();
    v39 = sub_1B8C25468();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v105.a = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_1B8B5DD48(0x2928657A69736572, 0xE800000000000000, &v105);
      _os_log_impl(&dword_1B8B22000, v38, v39, "%s - image is less than 1 mb, will not resize", v40, 0xCu);
      v42 = __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x1B8CCB0E0](v41, -1, -1, v42);
      MEMORY[0x1B8CCB0E0](v40, -1, -1);
    }

    sub_1B8B7B54C(*(v1 + 2), *(v1 + 3));
    return;
  }

  v104 = *(v0 + 4);
  v43 = objc_allocWithZone(MEMORY[0x1E695F658]);
  sub_1B8B7B54C(v32, v33);
  v44 = sub_1B8C234A8();
  v45 = [v43 initWithData_];

  sub_1B8B4645C(v32, v33);
  if (!v45)
  {
    v64 = sub_1B8C23C18();
    v65 = sub_1B8C25478();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *&v105.a = v67;
      *v66 = 136315138;
      *(v66 + 4) = sub_1B8B5DD48(0x2928657A69736572, 0xE800000000000000, &v105);
      _os_log_impl(&dword_1B8B22000, v64, v65, "%s - Failed to create CIImage from image Data", v66, 0xCu);
      v68 = __swift_destroy_boxed_opaque_existential_0(v67);
      MEMORY[0x1B8CCB0E0](v67, -1, -1, v68);
      MEMORY[0x1B8CCB0E0](v66, -1, -1);
    }

    sub_1B8BFF1A4(v69, v70, v71);
    swift_allocError();
    *v72 = 0;
    *(v72 + 8) = 1;
    goto LABEL_10;
  }

  v46 = v0[5];
  CGAffineTransformMakeScale(&v105, v46, v46);
  v47 = [v45 imageByApplyingTransform_];

  v48 = sub_1B8C23C18();
  v49 = sub_1B8C25468();

  v103 = v47;
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *&v105.a = v51;
    *v50 = 136315394;
    *(v50 + 4) = sub_1B8B5DD48(0x2928657A69736572, 0xE800000000000000, &v105);
    *(v50 + 12) = 2048;
    *(v50 + 14) = v46;
    _os_log_impl(&dword_1B8B22000, v48, v49, "%s - resized image by %f", v50, 0x16u);
    v52 = __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x1B8CCB0E0](v51, -1, -1, v52);
    v53 = v50;
    v47 = v103;
    MEMORY[0x1B8CCB0E0](v53, -1, -1);
  }

  v54 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCIImage_];
  v55 = UIImagePNGRepresentation(v54);

  if (v55)
  {
    v102 = v45;
    v56 = sub_1B8C234B8();
    v58 = v57;

    sub_1B8B7B54C(v56, v58);
    v59 = sub_1B8C23C18();
    v60 = sub_1B8C25468();
    if (!os_log_type_enabled(v59, v60))
    {

      v62 = v58 >> 62;
LABEL_61:
      v85 = *(v0 + 2);
      v86 = *(v0 + 3);
      *(v0 + 2) = v56;
      *(v0 + 3) = v58;
      sub_1B8B7B54C(v56, v58);
      sub_1B8B4645C(v85, v86);
      if (v62 > 1)
      {
        if (v62 != 2)
        {
          if (v104 <= 0)
          {
            goto LABEL_71;
          }

          goto LABEL_75;
        }

        v89 = *(v56 + 16);
        v88 = *(v56 + 24);
        v9 = __OFSUB__(v88, v89);
        v87 = v88 - v89;
        if (!v9)
        {
LABEL_70:
          if (v87 >= v104)
          {
LABEL_71:
            v90 = sub_1B8C23C18();
            v91 = sub_1B8C25468();
            if (os_log_type_enabled(v90, v91))
            {
              v92 = swift_slowAlloc();
              v93 = swift_slowAlloc();
              *&v105.a = v93;
              *v92 = 136315138;
              *(v92 + 4) = sub_1B8B5DD48(0x2928657A69736572, 0xE800000000000000, &v105);
              _os_log_impl(&dword_1B8B22000, v90, v91, "%s - resized image is still too big, will resize again", v92, 0xCu);
              v94 = __swift_destroy_boxed_opaque_existential_0(v93);
              v95 = v93;
              v47 = v103;
              MEMORY[0x1B8CCB0E0](v95, -1, -1, v94);
              MEMORY[0x1B8CCB0E0](v92, -1, -1);
            }

            sub_1B8BFE498();
            sub_1B8B4645C(v56, v58);
            sub_1B8B4645C(v56, v58);

            return;
          }

LABEL_75:
          sub_1B8B4645C(v56, v58);
          v96 = sub_1B8C23C18();
          v97 = sub_1B8C25468();
          if (os_log_type_enabled(v96, v97))
          {
            v98 = swift_slowAlloc();
            v99 = swift_slowAlloc();
            *&v105.a = v99;
            *v98 = 136315138;
            *(v98 + 4) = sub_1B8B5DD48(0x2928657A69736572, 0xE800000000000000, &v105);
            _os_log_impl(&dword_1B8B22000, v96, v97, "%s - resized image is valid, will return", v98, 0xCu);
            v100 = __swift_destroy_boxed_opaque_existential_0(v99);
            MEMORY[0x1B8CCB0E0](v99, -1, -1, v100);
            MEMORY[0x1B8CCB0E0](v98, -1, -1);
          }

          else
          {
          }

          return;
        }

        __break(1u);
      }

      else if (!v62)
      {
        v87 = BYTE6(v58);
        goto LABEL_70;
      }

      LODWORD(v87) = HIDWORD(v56) - v56;
      if (!__OFSUB__(HIDWORD(v56), v56))
      {
        v87 = v87;
        goto LABEL_70;
      }

      goto LABEL_81;
    }

    v61 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    *&v105.a = v101;
    *v61 = 136315394;
    *(v61 + 4) = sub_1B8B5DD48(0x2928657A69736572, 0xE800000000000000, &v105);
    *(v61 + 12) = 2048;
    v62 = v58 >> 62;
    if ((v58 >> 62) > 1)
    {
      if (v62 != 2)
      {
        v63 = 0;
        goto LABEL_60;
      }

      v83 = *(v56 + 16);
      v82 = *(v56 + 24);
      v9 = __OFSUB__(v82, v83);
      v63 = v82 - v83;
      if (!v9)
      {
        goto LABEL_60;
      }

      __break(1u);
    }

    else if (!v62)
    {
      v63 = BYTE6(v58);
LABEL_60:
      *(v61 + 14) = v63;
      _os_log_impl(&dword_1B8B22000, v59, v60, "%s - resized data is %ld bytes", v61, 0x16u);
      v84 = __swift_destroy_boxed_opaque_existential_0(v101);
      MEMORY[0x1B8CCB0E0](v101, -1, -1, v84);
      MEMORY[0x1B8CCB0E0](v61, -1, -1);

      v47 = v103;
      goto LABEL_61;
    }

    LODWORD(v63) = HIDWORD(v56) - v56;
    if (__OFSUB__(HIDWORD(v56), v56))
    {
LABEL_82:
      __break(1u);
      return;
    }

    v63 = v63;
    goto LABEL_60;
  }

  v73 = sub_1B8C23C18();
  v74 = sub_1B8C25478();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *&v105.a = v76;
    *v75 = 136315138;
    *(v75 + 4) = sub_1B8B5DD48(0x2928657A69736572, 0xE800000000000000, &v105);
    _os_log_impl(&dword_1B8B22000, v73, v74, "%s - Failed to convert CIImage to Data", v75, 0xCu);
    v77 = __swift_destroy_boxed_opaque_existential_0(v76);
    MEMORY[0x1B8CCB0E0](v76, -1, -1, v77);
    MEMORY[0x1B8CCB0E0](v75, -1, -1);
  }

  sub_1B8BFF1A4(v78, v79, v80);
  swift_allocError();
  *v81 = 1;
  *(v81 + 8) = 1;
  swift_willThrow();
}

uint64_t FBKImageTransformer.__deallocating_deinit()
{
  sub_1B8B4645C(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

void sub_1B8BFF16C(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

unint64_t sub_1B8BFF1A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8690;
  if (!qword_1EBAA8690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8690);
  }

  return result;
}

unint64_t sub_1B8BFF290(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v23[0] = result;
      v23[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v23 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v23;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v23 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1B8C25838();
        v3 = v22;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v24 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  sub_1B8C02988(result, a2, 10);
  v6 = v20;
  v19 = v21;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1B8BFF590@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v108 = sub_1B8C23258();
  v4 = *(v108 - 8);
  v5 = MEMORY[0x1EEE9AC00](v108);
  v102 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v112 = &v95 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v110 = &v95 - v9;
  v10 = sub_1B8C23218();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1B8C232C8();
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8C232B8();
  MEMORY[0x1B8CC7F60](7824750, 0xE300000000000000);
  v111 = v15;
  sub_1B8C232A8();
  v16 = v2 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formId;
  swift_beginAccess();
  if (*(v16 + 8) & 1) != 0 || (v17 = *v16, v18 = (v2 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_environment), swift_beginAccess(), (v18[1]) || (LODWORD(v109) = *v18, v19 = (v2 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_host), swift_beginAccess(), (v20 = v19[1]) == 0) || (v21 = *v19, v22 = (v2 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_appToken), swift_beginAccess(), (v23 = v22[1]) == 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6618, &qword_1B8C29460);
    *(swift_allocObject() + 16) = xmmword_1B8C2A740;
    swift_beginAccess();

    sub_1B8C23228();

    v44 = v111;
    sub_1B8C23278();
    goto LABEL_13;
  }

  v101 = *v22;
  v107 = v17;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6618, &qword_1B8C29460);
  v25 = v4;
  v26 = *(v4 + 72);
  v105 = v25;
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = swift_allocObject();
  v100 = v28;
  *(v28 + 16) = xmmword_1B8C293A0;
  v106 = v27;
  v99 = v28 + v27;
  v114 = v21;
  v115 = v20;

  v29 = sub_1B8C231F8();
  sub_1B8B34CA8(v29, v30, v31);
  sub_1B8C25698();
  (*(v11 + 8))(v13, v10);

  sub_1B8C23228();

  v32 = MEMORY[0x1B8CCA890](v109);
  sub_1B8C25128();

  sub_1B8C23228();

  v33 = (2 * v26);
  v114 = v107;
  sub_1B8C259E8();
  sub_1B8C23228();

  v107 = v26;
  sub_1B8C23228();

  sub_1B8C23278();
  v34 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_plugFormIds;
  swift_beginAccess();
  v35 = *(v2 + v34);
  v99 = a1;
  if (v35)
  {
    v33 = *(v35 + 16);
    if (v33)
    {
      v109 = v2;
      v114 = MEMORY[0x1E69E7CC0];

      sub_1B8C13FE8(0, v33, 0);
      v36 = 32;
      v37 = v114;
      do
      {
        v116[0] = *(v35 + v36);
        v38 = sub_1B8C259E8();
        v40 = v39;
        v114 = v37;
        v42 = *(v37 + 16);
        v41 = *(v37 + 24);
        v24 = v42 + 1;
        if (v42 >= v41 >> 1)
        {
          sub_1B8C13FE8((v41 > 1), v42 + 1, 1);
          v37 = v114;
        }

        *(v37 + 16) = v24;
        v43 = v37 + 16 * v42;
        *(v43 + 32) = v38;
        *(v43 + 40) = v40;
        v36 += 8;
        --v33;
      }

      while (v33);

      v114 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7478, &qword_1B8C2BC80);
      sub_1B8C03380();
      sub_1B8C250D8();
      v33 = v46;

      v47 = sub_1B8C23268();
      v49 = v47;
      if (*v48)
      {
        v50 = v48;
        v24 = v110;
        sub_1B8C23228();

        v33 = *v50;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v50 = v33;
        v2 = v109;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_97;
        }

        goto LABEL_16;
      }

      (v49)(&v114, 0);
      v2 = v109;
    }
  }

LABEL_20:
  v55 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_answers;
  swift_beginAccess();
  v56 = *(v2 + v55);
  v49 = v56 + 64;
  v57 = 1 << *(v56 + 32);
  v58 = -1;
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  v100 = v58 & *(v56 + 64);
  v59 = (v57 + 63) >> 6;
  v101 = 0x80000001B8C33DC0;
  v105 += 4;
  v97 = v56;

  v50 = 0;
  v95 = v49;
  v96 = v59;
  while (1)
  {
    v60 = v100;
    if (!v100)
    {
      break;
    }

LABEL_30:
    v100 = (v60 - 1) & v60;
    v98 = v50;
    v62 = __clz(__rbit64(v60)) | (v50 << 6);
    v63 = (*(v97 + 48) + 16 * v62);
    v49 = v63[1];
    v33 = *(*(v97 + 56) + 8 * v62);
    v64 = *(v33 + 2);
    v110 = *v63;
    sub_1B8B5FB10(v110, v49);

    v24 = 0;
    v50 = MEMORY[0x1E69E7CC0];
LABEL_31:
    v65 = &v33[16 * v24 + 40];
    while (v64 != v24)
    {
      if (v24 >= *(v33 + 2))
      {
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        v33 = sub_1B8B5D994(0, *(v33 + 2) + 1, 1, v33);
        *v50 = v33;
LABEL_16:
        v52 = v105;
        v54 = *(v33 + 2);
        v53 = *(v33 + 3);
        if (v54 >= v53 >> 1)
        {
          v33 = sub_1B8B5D994((v53 > 1), v54 + 1, 1, v33);
          *v50 = v33;
        }

        *(v33 + 2) = v54 + 1;
        v52[4](&v33[v106 + v54 * v107], v24, v108);
        (v49)(&v114, 0);
        goto LABEL_20;
      }

      ++v24;
      v2 = *(v65 - 1);
      v66 = *v65;
      v65 += 2;
      v67 = HIBYTE(v66) & 0xF;
      if ((v66 & 0x2000000000000000) == 0)
      {
        v67 = v2 & 0xFFFFFFFFFFFFLL;
      }

      if (v67)
      {

        v68 = swift_isUniquelyReferenced_nonNull_native();
        v114 = v50;
        if ((v68 & 1) == 0)
        {
          sub_1B8C13FE8(0, *(v50 + 16) + 1, 1);
          v50 = v114;
        }

        v70 = *(v50 + 16);
        v69 = *(v50 + 24);
        if (v70 >= v69 >> 1)
        {
          sub_1B8C13FE8((v69 > 1), v70 + 1, 1);
          v50 = v114;
        }

        *(v50 + 16) = v70 + 1;
        v71 = v50 + 16 * v70;
        *(v71 + 32) = v2;
        *(v71 + 40) = v66;
        goto LABEL_31;
      }
    }

    v72 = *(v50 + 16);
    if (v72 >= 2)
    {
      v73 = 0;
      v74 = (v50 + 40);
      v109 = *(v50 + 16);
      while (1)
      {
        if (v73 >= *(v50 + 16))
        {
          goto LABEL_95;
        }

        v75 = v50;
        v33 = *v74;
        v114 = 0x6E6F697473657571;
        v115 = 0xEA00000000005B73;
        v113 = v73;

        v76 = sub_1B8C259E8();
        MEMORY[0x1B8CC9EB0](v76);

        MEMORY[0x1B8CC9EB0](23389, 0xE200000000000000);
        if (v49 > 2)
        {
          switch(v49)
          {
            case 3:
              v2 = 0x657275746165663ALL;
              v78 = 0xEF6E69616D6F645FLL;
              break;
            case 4:
              v2 = 0x6165665F6275733ALL;
              v77 = 1701999988;
              goto LABEL_61;
            case 5:
              v2 = 0xD000000000000012;
              v78 = v101;
              break;
            default:
              goto LABEL_58;
          }
        }

        else
        {
          if (v49)
          {
            if (v49 == 1)
            {
              v78 = 0xE500000000000000;
              v2 = 0x616572613ALL;
              goto LABEL_62;
            }

            if (v49 == 2)
            {
              v2 = 0x706972637365643ALL;
              v77 = 1852795252;
LABEL_61:
              v78 = v77 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
              goto LABEL_62;
            }

LABEL_58:
            v2 = v110;
            v78 = v49;
            goto LABEL_62;
          }

          v78 = 0xE600000000000000;
          v2 = 0x656C7469743ALL;
        }

LABEL_62:
        v79 = sub_1B8B5FB10(v110, v49);
        MEMORY[0x1B8CC9EB0](v2, v78, v79);

        MEMORY[0x1B8CC9EB0](93, 0xE100000000000000);
        v24 = v114;
        v81 = sub_1B8C23268();
        if (*v80)
        {
          v2 = v80;
          sub_1B8C23228();

          v33 = *v2;
          v82 = swift_isUniquelyReferenced_nonNull_native();
          *v2 = v33;
          if ((v82 & 1) == 0)
          {
            v33 = sub_1B8B5D994(0, *(v33 + 2) + 1, 1, v33);
            *v2 = v33;
          }

          v24 = *(v33 + 2);
          v83 = *(v33 + 3);
          if (v24 >= v83 >> 1)
          {
            v33 = sub_1B8B5D994((v83 > 1), v24 + 1, 1, v33);
            *v2 = v33;
          }

          *(v33 + 2) = v24 + 1;
          (*v105)(&v33[v106 + v24 * v107], v112, v108);
        }

        else
        {
        }

        v81(&v114, 0);
        ++v73;
        v74 += 2;
        v50 = v75;
        if (v109 == v73)
        {

          sub_1B8B5E4C4(v110, v49);
          v49 = v95;
          v59 = v96;
          goto LABEL_24;
        }
      }
    }

    v59 = v96;
    if (v72)
    {
      v33 = *(v50 + 40);

      v114 = 0x6E6F697473657571;
      v115 = 0xE90000000000005BLL;
      if (v49 > 2)
      {
        if (v49 == 3)
        {
          v84 = 0x657275746165663ALL;
          v86 = 0xEF6E69616D6F645FLL;
          goto LABEL_85;
        }

        if (v49 != 4)
        {
          if (v49 == 5)
          {
            v84 = 0xD000000000000012;
            v86 = v101;
            goto LABEL_85;
          }

LABEL_81:
          v84 = v110;
          v86 = v49;
          goto LABEL_85;
        }

        v84 = 0x6165665F6275733ALL;
        v85 = 1701999988;
      }

      else
      {
        if (!v49)
        {
          v86 = 0xE600000000000000;
          v84 = 0x656C7469743ALL;
          goto LABEL_85;
        }

        if (v49 == 1)
        {
          v86 = 0xE500000000000000;
          v84 = 0x616572613ALL;
          goto LABEL_85;
        }

        if (v49 != 2)
        {
          goto LABEL_81;
        }

        v84 = 0x706972637365643ALL;
        v85 = 1852795252;
      }

      v86 = v85 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
LABEL_85:
      v87 = v110;
      v88 = sub_1B8B5FB10(v110, v49);
      MEMORY[0x1B8CC9EB0](v84, v86, v88);

      sub_1B8B5E4C4(v87, v49);
      MEMORY[0x1B8CC9EB0](93, 0xE100000000000000);
      v24 = v114;
      v90 = sub_1B8C23268();
      if (!*v89)
      {

        v90(&v114, 0);
        goto LABEL_92;
      }

      v91 = v89;
      sub_1B8C23228();

      v33 = *v91;
      v92 = swift_isUniquelyReferenced_nonNull_native();
      *v91 = v33;
      if ((v92 & 1) == 0)
      {
        v33 = sub_1B8B5D994(0, *(v33 + 2) + 1, 1, v33);
        *v91 = v33;
      }

      v94 = *(v33 + 2);
      v93 = *(v33 + 3);
      if (v94 >= v93 >> 1)
      {
        v33 = sub_1B8B5D994((v93 > 1), v94 + 1, 1, v33);
        *v91 = v33;
      }

      v50 = v98;
      *(v33 + 2) = v94 + 1;
      (*v105)(&v33[v106 + v94 * v107], v102, v108);
      v90(&v114, 0);
      v49 = v95;
      v59 = v96;
    }

    else
    {
      sub_1B8B5E4C4(v110, v49);

LABEL_92:
      v49 = v95;
LABEL_24:
      v50 = v98;
    }
  }

  while (1)
  {
    v61 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      goto LABEL_96;
    }

    if (v61 >= v59)
    {
      break;
    }

    v60 = *(v49 + 8 * v61);
    ++v50;
    if (v60)
    {
      v50 = v61;
      goto LABEL_30;
    }
  }

  v44 = v111;
LABEL_13:
  sub_1B8C23288();
  return (*(v103 + 8))(v44, v104);
}

char *FBKFeedbackForm.__allocating_init(url:)(uint64_t a1)
{
  v2 = sub_1B8C23258();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v238 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v238 - v7);
  v9 = sub_1B8C23498();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v238 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a1, v9);
  v13 = objc_allocWithZone(MEMORY[0x1E696AF20]);
  v14 = sub_1B8C233E8();
  v15 = [v13 initWithURL:v14 resolvingAgainstBaseURL:1];

  v16 = *(v10 + 8);
  v265 = v9;
  v264 = v10 + 8;
  v263 = v16;
  v16(v12, v9);
  if (!v15)
  {
    goto LABEL_212;
  }

  v262 = v8;
  v266 = a1;
  v267 = v15;
  v17 = [v15 queryItems];
  if (!v17)
  {
    goto LABEL_211;
  }

  v18 = v17;
  v19 = sub_1B8C252C8();

  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = 0x6E6564496D726F66;
    v268 = v3 + 16;
    v23 = (v3 + 8);
    while (1)
    {
      if (v21 >= *(v19 + 16))
      {
        goto LABEL_196;
      }

      (*(v3 + 16))(v6, v19 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v21, v2);
      if (sub_1B8C23238() == v22 && v24 == 0xEE00726569666974)
      {
        break;
      }

      v25 = v22;
      v26 = sub_1B8C25A08();

      if (v26)
      {
        goto LABEL_12;
      }

      ++v21;
      (*v23)(v6, v2);
      v22 = v25;
      if (v20 == v21)
      {
        goto LABEL_10;
      }
    }

LABEL_12:

    v27 = v262;
    (*(v3 + 32))(v262, v6, v2);
    v28 = sub_1B8C23248();
    v30 = v267;
    if (v29)
    {
      v31 = v28;
      v32 = v29;
      v33 = objc_allocWithZone(type metadata accessor for FBKFeedbackForm());
      v34 = FBKFeedbackForm.init(identifier:)(v31, v32);
      v35 = v2;
      v36 = v34;

      v263(v266, v265);
      (*v23)(v27, v35);
      return v36;
    }

    (*v23)(v27, v2);
  }

  else
  {
LABEL_10:
  }

  v37 = objc_allocWithZone(type metadata accessor for FBKFeedbackForm());
  v36 = FBKFeedbackForm.init(identifier:)(0, 0xE000000000000000);
  v38 = sub_1B8C254B8();
  v39 = v38;
  v40 = v38 + 64;
  v41 = 1 << *(v38 + 32);
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  else
  {
    v42 = -1;
  }

  v43 = v42 & *(v38 + 64);
  v260 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_answers;
  v44 = &v36[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_appToken];
  v45 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_plugFormIds;
  v46 = &v36[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_host];
  v47 = &v36[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_environment];
  v262 = &v36[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formId];
  swift_beginAccess();
  v261 = v47;
  swift_beginAccess();
  v259 = v46;
  swift_beginAccess();
  v257 = v45;
  swift_beginAccess();
  v256 = v44;
  swift_beginAccess();
  v48 = 0;
  v49 = (v41 + 63) >> 6;
  v258 = xmmword_1B8C2A740;
  while (1)
  {
LABEL_20:
    if (v43)
    {
      goto LABEL_25;
    }

    do
    {
      v50 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        __break(1u);
        goto LABEL_209;
      }

      if (v50 >= v49)
      {
        v263(v266, v265);

        return v36;
      }

      v43 = *(v40 + 8 * v50);
      ++v48;
    }

    while (!v43);
    v48 = v50;
LABEL_25:
    v51 = __clz(__rbit64(v43));
    v43 &= v43 - 1;
    v52 = v51 | (v48 << 6);
    v53 = (*(v39 + 48) + 16 * v52);
    v54 = *v53;
    v55 = v53[1];
    v268 = *(*(v39 + 56) + 8 * v52);
    v56 = v54 == 0x64496D726F66 && v55 == 0xE600000000000000;
    if (!v56 && (sub_1B8C25A08() & 1) == 0)
    {
      break;
    }

    v269 = v268;
    swift_unknownObjectRetain_n();
    if (swift_dynamicCast())
    {
      v57 = sub_1B8BFF290(v271, v272);
      v59 = v58;
      swift_unknownObjectRelease();
      v60 = v262;
      *v262 = v57;
      *(v60 + 8) = v59 & 1;
      continue;
    }

LABEL_19:
    swift_unknownObjectRelease();
  }

  v61 = v54 == 0x6D6E6F7269766E65 && v55 == 0xEB00000000746E65;
  if (v61 || (sub_1B8C25A08() & 1) != 0)
  {
    v269 = v268;
    swift_unknownObjectRetain_n();
    if (swift_dynamicCast())
    {
      v255 = v39;
      sub_1B8C023B0();
      v62 = sub_1B8C25578();
      v39 = v255;

      swift_unknownObjectRelease();
      v63 = v261;
      *v261 = v62;
      v63[2] = BYTE2(v62) & 1;
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v64 = v54 == 1953722216 && v55 == 0xE400000000000000;
  if (v64 || (sub_1B8C25A08() & 1) != 0)
  {
    v269 = v268;
    swift_unknownObjectRetain();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_20;
    }

    v65 = v271;
    v66 = v272;
    v67 = &v276;
LABEL_46:
    v68 = *(v67 - 32);
    *v68 = v65;
    v68[1] = v66;

    goto LABEL_20;
  }

  if (v54 == 0x6D726F4667756C70 && v55 == 0xEB00000000736449 || (sub_1B8C25A08() & 1) != 0)
  {
    v269 = v268;
    swift_unknownObjectRetain_n();
    v69 = swift_dynamicCast();
    if (v69)
    {
      v255 = v39;
      v269 = 44;
      v270 = 0xE100000000000000;
      sub_1B8B34CA8(v69, v70, v71);
      v72 = sub_1B8C25668();

      v73 = 0;
      v254 = *(v72 + 16);
      v74 = v72 + 40;
      v253 = MEMORY[0x1E69E7CC0];
      v252 = v72 + 40;
LABEL_52:
      v75 = (v74 + 16 * v73);
      while (v254 != v73)
      {
        if (v73 >= *(v72 + 16))
        {
          goto LABEL_197;
        }

        ++v73;
        v76 = v36;
        v77 = v75 + 2;
        v79 = *(v75 - 1);
        v78 = *v75;

        v80 = sub_1B8BFF290(v79, v78);
        v75 = v77;
        v36 = v76;
        if ((v81 & 1) == 0)
        {
          v251 = v80;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v253 = sub_1B8B5DBC0(0, *(v253 + 2) + 1, 1, v253);
          }

          v83 = *(v253 + 2);
          v82 = *(v253 + 3);
          v84 = v251;
          if (v83 >= v82 >> 1)
          {
            v253 = sub_1B8B5DBC0((v82 > 1), v83 + 1, 1, v253);
            v84 = v251;
          }

          v85 = v253;
          *(v253 + 2) = v83 + 1;
          *&v85[8 * v83 + 32] = v84;
          v74 = v252;
          goto LABEL_52;
        }
      }

      swift_unknownObjectRelease();

      *&v36[v257] = v253;

      v39 = v255;
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v54 == 0x6E656B6F54707061 && v55 == 0xE800000000000000 || (sub_1B8C25A08() & 1) != 0)
  {
    v269 = v268;
    swift_unknownObjectRetain();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_20;
    }

    v65 = v271;
    v66 = v272;
    v67 = v275;
    goto LABEL_46;
  }

  if (v54 == 0x6E6F697473657571 && v55 == 0xE900000000000073 || (sub_1B8C25A08() & 1) != 0)
  {
    v271 = v268;
    swift_unknownObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA86A0, &qword_1B8C2F690);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_19;
    }

    v86 = 0;
    v87 = v269;
    v88 = *(v269 + 64);
    v243 = v269 + 64;
    v89 = 1 << *(v269 + 32);
    if (v89 < 64)
    {
      v90 = ~(-1 << v89);
    }

    else
    {
      v90 = -1;
    }

    v91 = v90 & v88;
    v92 = (v89 + 63) >> 6;
    v245 = v269;
    v244 = v92;
    do
    {
LABEL_76:
      if (v91)
      {
        goto LABEL_81;
      }

      do
      {
        v93 = v86 + 1;
        if (__OFADD__(v86, 1))
        {
          goto LABEL_200;
        }

        if (v93 >= v92)
        {

          goto LABEL_19;
        }

        v91 = *(v243 + 8 * v93);
        ++v86;
      }

      while (!v91);
      v86 = v93;
LABEL_81:
      v94 = __clz(__rbit64(v91));
      v91 &= v91 - 1;
      v95 = v94 | (v86 << 6);
      v96 = *(*(v87 + 56) + 8 * v95);
      v250 = *(v96 + 2);
    }

    while (!v250);
    v246 = v91;
    v247 = v86;
    v97 = *(v87 + 48) + 16 * v95;
    v98 = *(v97 + 8);
    v253 = *v97;
    i = (v96 + 32);
    v254 = v98;

    swift_beginAccess();
    v99 = 0;
    v248 = v96;
    while (2)
    {
      if (v99 >= *(v96 + 2))
      {
        goto LABEL_198;
      }

      v252 = v99;
      v100 = (i + 16 * v99);
      v102 = *v100;
      v101 = v100[1];
      v103 = *&v36[v260];
      v104 = *(v103 + 16);

      if (v104)
      {

        v105 = sub_1B8B5E354(v253, v254);
        if (v106)
        {
          v107 = *(*(v103 + 56) + 8 * v105);

          v108 = v107;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v108 = sub_1B8B5D1AC(0, *(v107 + 16) + 1, 1, v107);
          }

          v109 = v108;
          v111 = *(v108 + 2);
          v110 = *(v108 + 3);
          if (v111 >= v110 >> 1)
          {
            v109 = sub_1B8B5D1AC((v110 > 1), v111 + 1, 1, v108);
          }

          *(v109 + 2) = v111 + 1;
          v251 = v109;
          v112 = &v109[16 * v111];
          *(v112 + 4) = v102;
          *(v112 + 5) = v101;
          v113 = v260;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v269 = *&v36[v113];
          v115 = v269;
          *&v36[v113] = 0x8000000000000000;
          v116 = sub_1B8B5E354(v253, v254);
          v118 = *(v115 + 16);
          v119 = (v117 & 1) == 0;
          v120 = __OFADD__(v118, v119);
          v121 = v118 + v119;
          if (v120)
          {
            goto LABEL_202;
          }

          v122 = v117;
          if (*(v115 + 24) >= v121)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v123 = v115;
              goto LABEL_108;
            }

            v242 = v40;
            v241 = v49;
            v255 = v39;
            v240 = v36;
            v239 = v116;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6608, &qword_1B8C2BC60);
            v157 = sub_1B8C258C8();
            v123 = v157;
            if (*(v115 + 16))
            {
              v158 = (v157 + 64);
              v159 = v115 + 64;
              v160 = ((1 << *(v123 + 32)) + 63) >> 6;
              if (v123 != v115 || v158 >= v159 + 8 * v160)
              {
                memmove(v158, (v115 + 64), 8 * v160);
              }

              v161 = 0;
              *(v123 + 16) = *(v115 + 16);
              v162 = 1 << *(v115 + 32);
              v163 = *(v115 + 64);
              if (v162 < 64)
              {
                v164 = ~(-1 << v162);
              }

              else
              {
                v164 = -1;
              }

              v165 = v164 & v163;
              v166 = (v162 + 63) >> 6;
              if ((v164 & v163) != 0)
              {
                do
                {
                  v167 = __clz(__rbit64(v165));
                  v165 &= v165 - 1;
LABEL_142:
                  v170 = v167 | (v161 << 6);
                  v171 = *(*(v115 + 56) + 8 * v170);
                  v172 = *(*(v115 + 48) + 16 * v170);
                  *(*(v123 + 48) + 16 * v170) = v172;
                  *(*(v123 + 56) + 8 * v170) = v171;
                  sub_1B8B5FB10(v172, *(&v172 + 1));
                }

                while (v165);
              }

              v168 = v161;
              while (1)
              {
                v161 = v168 + 1;
                if (__OFADD__(v168, 1))
                {
                  goto LABEL_210;
                }

                if (v161 >= v166)
                {
                  break;
                }

                v169 = *(v159 + 8 * v161);
                ++v168;
                if (v169)
                {
                  v167 = __clz(__rbit64(v169));
                  v165 = (v169 - 1) & v169;
                  goto LABEL_142;
                }
              }
            }

            v116 = v239;
            v36 = v240;
            v39 = v255;
            v49 = v241;
            v40 = v242;
            if ((v122 & 1) == 0)
            {
              goto LABEL_145;
            }

LABEL_109:
            *(*(v123 + 56) + 8 * v116) = v251;
          }

          else
          {
            sub_1B8B93050(v121, isUniquelyReferenced_nonNull_native);
            v123 = v269;
            v116 = sub_1B8B5E354(v253, v254);
            if ((v122 & 1) != (v124 & 1))
            {
              goto LABEL_213;
            }

LABEL_108:
            if (v122)
            {
              goto LABEL_109;
            }

LABEL_145:
            *(v123 + 8 * (v116 >> 6) + 64) |= 1 << v116;
            v173 = (*(v123 + 48) + 16 * v116);
            v174 = v254;
            *v173 = v253;
            v173[1] = v174;
            *(*(v123 + 56) + 8 * v116) = v251;
            v175 = *(v123 + 16);
            v120 = __OFADD__(v175, 1);
            v176 = v175 + 1;
            if (v120)
            {
              goto LABEL_203;
            }

            *(v123 + 16) = v176;
          }

LABEL_84:
          *&v36[v260] = v123;
          swift_endAccess();
          v99 = v252 + 1;
          v96 = v248;
          if ((v252 + 1) == v250)
          {

            v87 = v245;
            v86 = v247;
            v92 = v244;
            v91 = v246;
            goto LABEL_76;
          }

          continue;
        }
      }

      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6630, qword_1B8C2BBF0);
    v125 = swift_allocObject();
    *(v125 + 16) = v258;
    *(v125 + 32) = v102;
    *(v125 + 40) = v101;
    v251 = v125;
    v126 = v260;
    swift_beginAccess();
    v127 = swift_isUniquelyReferenced_nonNull_native();
    v269 = *&v36[v126];
    v128 = v269;
    *&v36[v126] = 0x8000000000000000;
    v130 = sub_1B8B5E354(v253, v254);
    v131 = *(v128 + 16);
    v132 = (v129 & 1) == 0;
    v133 = v131 + v132;
    if (__OFADD__(v131, v132))
    {
      goto LABEL_199;
    }

    if (*(v128 + 24) >= v133)
    {
      if (v127)
      {
        v123 = v128;
        v135 = v254;
        if ((v129 & 1) == 0)
        {
LABEL_104:
          *(v123 + 8 * (v130 >> 6) + 64) |= 1 << v130;
          v138 = (*(v123 + 48) + 16 * v130);
          *v138 = v253;
          v138[1] = v135;
          *(*(v123 + 56) + 8 * v130) = v251;
          v139 = *(v123 + 16);
          v120 = __OFADD__(v139, 1);
          v140 = v139 + 1;
          if (v120)
          {
            goto LABEL_201;
          }

          *(v123 + 16) = v140;
          goto LABEL_84;
        }
      }

      else
      {
        LODWORD(v239) = v129;
        v242 = v40;
        v241 = v49;
        v255 = v39;
        v240 = v36;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6608, &qword_1B8C2BC60);
        v141 = sub_1B8C258C8();
        v123 = v141;
        if (*(v128 + 16))
        {
          v142 = (v141 + 64);
          v143 = v128 + 64;
          v144 = ((1 << *(v123 + 32)) + 63) >> 6;
          if (v123 != v128 || v142 >= v143 + 8 * v144)
          {
            memmove(v142, (v128 + 64), 8 * v144);
          }

          v145 = 0;
          *(v123 + 16) = *(v128 + 16);
          v146 = 1 << *(v128 + 32);
          v147 = *(v128 + 64);
          if (v146 < 64)
          {
            v148 = ~(-1 << v146);
          }

          else
          {
            v148 = -1;
          }

          v149 = v148 & v147;
          v150 = (v146 + 63) >> 6;
          if ((v148 & v147) != 0)
          {
            do
            {
              v151 = __clz(__rbit64(v149));
              v149 &= v149 - 1;
LABEL_124:
              v154 = v151 | (v145 << 6);
              v155 = *(*(v128 + 56) + 8 * v154);
              v156 = *(*(v128 + 48) + 16 * v154);
              *(*(v123 + 48) + 16 * v154) = v156;
              *(*(v123 + 56) + 8 * v154) = v155;
              sub_1B8B5FB10(v156, *(&v156 + 1));
            }

            while (v149);
          }

          v152 = v145;
          while (1)
          {
            v145 = v152 + 1;
            if (__OFADD__(v152, 1))
            {
              goto LABEL_208;
            }

            if (v145 >= v150)
            {
              break;
            }

            v153 = *(v143 + 8 * v145);
            ++v152;
            if (v153)
            {
              v151 = __clz(__rbit64(v153));
              v149 = (v153 - 1) & v153;
              goto LABEL_124;
            }
          }
        }

        v36 = v240;
        v39 = v255;
        v49 = v241;
        v40 = v242;
        v135 = v254;
        if ((v239 & 1) == 0)
        {
          goto LABEL_104;
        }
      }
    }

    else
    {
      v134 = v129;
      sub_1B8B93050(v133, v127);
      v123 = v269;
      v135 = v254;
      v136 = sub_1B8B5E354(v253, v254);
      if ((v134 & 1) != (v137 & 1))
      {
        goto LABEL_213;
      }

      v130 = v136;
      if ((v134 & 1) == 0)
      {
        goto LABEL_104;
      }
    }

    *(*(v123 + 56) + 8 * v130) = v251;

    goto LABEL_84;
  }

  if ((v54 != 0x6E6F697473657571 || v55 != 0xE800000000000000) && (sub_1B8C25A08() & 1) == 0)
  {
    goto LABEL_20;
  }

  v271 = v268;
  swift_unknownObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA8698, &qword_1B8C2F688);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v177 = *(v269 + 64);
  v252 = v269 + 64;
  v251 = v269;
  v178 = 1 << *(v269 + 32);
  if (v178 < 64)
  {
    v179 = ~(-1 << v178);
  }

  else
  {
    v179 = -1;
  }

  v180 = v179 & v177;
  swift_beginAccess();
  v181 = 0;
  v182 = (v178 + 63) >> 6;
  for (i = v182; ; v182 = i)
  {
    if (v180)
    {
      goto LABEL_165;
    }

    do
    {
      v185 = v181 + 1;
      if (__OFADD__(v181, 1))
      {
        goto LABEL_204;
      }

      if (v185 >= v182)
      {

        swift_unknownObjectRelease();
        goto LABEL_20;
      }

      v180 = *(v252 + 8 * v185);
      ++v181;
    }

    while (!v180);
    v181 = v185;
LABEL_165:
    v186 = __clz(__rbit64(v180));
    v180 &= v180 - 1;
    v187 = (v181 << 10) | (16 * v186);
    v188 = (*(v251 + 48) + v187);
    v190 = *v188;
    v189 = v188[1];
    v191 = *(v251 + 56) + v187;
    v192 = *(v191 + 8);
    v253 = *v191;
    v271 = v190;
    v272 = v189;

    v255 = sub_1B8C25278();
    v254 = v193;
    v194 = *&v36[v260];
    if (!*(v194 + 16))
    {
      goto LABEL_176;
    }

    v195 = sub_1B8B5E354(v255, v254);
    if ((v196 & 1) == 0)
    {
      break;
    }

    v250 = v192;
    v197 = *(*(v194 + 56) + 8 * v195);

    v198 = v197;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v198 = sub_1B8B5D1AC(0, *(v197 + 16) + 1, 1, v197);
    }

    v199 = v198;
    v200 = *(v198 + 2);
    v201 = *(v199 + 3);
    v202 = v200 + 1;
    v203 = v250;
    if (v200 >= v201 >> 1)
    {
      v248 = (v200 + 1);
      v234 = sub_1B8B5D1AC((v201 > 1), v200 + 1, 1, v199);
      v202 = v248;
      v199 = v234;
    }

    *(v199 + 2) = v202;
    v248 = v199;
    v204 = &v199[16 * v200];
    *(v204 + 4) = v253;
    *(v204 + 5) = v203;
    v205 = v260;
    swift_beginAccess();
    LODWORD(v253) = swift_isUniquelyReferenced_nonNull_native();
    v269 = *&v36[v205];
    v206 = v269;
    *&v36[v205] = 0x8000000000000000;
    v207 = v254;
    v208 = sub_1B8B5E354(v255, v254);
    v210 = *(v206 + 16);
    v211 = (v209 & 1) == 0;
    v120 = __OFADD__(v210, v211);
    v212 = v210 + v211;
    if (v120)
    {
      goto LABEL_207;
    }

    if (*(v206 + 24) >= v212)
    {
      if ((v253 & 1) == 0)
      {
        v253 = v208;
        v235 = v209;
        sub_1B8B94514();
        LOBYTE(v209) = v235;
        v208 = v253;
      }
    }

    else
    {
      LODWORD(v250) = v209;
      sub_1B8B93050(v212, v253);
      v208 = sub_1B8B5E354(v255, v207);
      v213 = v209 & 1;
      LOBYTE(v209) = v250;
      if ((v250 & 1) != v213)
      {
        goto LABEL_213;
      }
    }

    v229 = v255;
    v224 = v269;
    if ((v209 & 1) == 0)
    {
      *(v269 + 8 * (v208 >> 6) + 64) |= 1 << v208;
      v230 = (v224[6] + 16 * v208);
      v231 = v254;
      *v230 = v229;
      v230[1] = v231;
      *(v224[7] + 8 * v208) = v248;
      v232 = v224[2];
      v120 = __OFADD__(v232, 1);
      v228 = v232 + 1;
      if (!v120)
      {
LABEL_191:
        v224[2] = v228;
        goto LABEL_159;
      }

LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:

LABEL_212:
      v277 = 0;
      v278 = 0xE000000000000000;
      sub_1B8C257E8();

      v277 = 0xD000000000000026;
      v278 = 0x80000001B8C369E0;
      sub_1B8C02358();
      v237 = sub_1B8C259E8();
      MEMORY[0x1B8CC9EB0](v237);

      sub_1B8C258A8();
      __break(1u);
      goto LABEL_213;
    }

    v183 = *(v269 + 56);
    v184 = &v273;
LABEL_158:
    *(v183 + 8 * v208) = *(v184 - 32);

LABEL_159:
    *&v36[v260] = v224;
    swift_endAccess();
  }

LABEL_176:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6630, qword_1B8C2BBF0);
  v214 = swift_allocObject();
  *(v214 + 16) = v258;
  *(v214 + 32) = v253;
  *(v214 + 40) = v192;
  v253 = v214;
  v215 = v260;
  swift_beginAccess();
  LODWORD(v250) = swift_isUniquelyReferenced_nonNull_native();
  v269 = *&v36[v215];
  v216 = v269;
  *&v36[v215] = 0x8000000000000000;
  v217 = v254;
  v208 = sub_1B8B5E354(v255, v254);
  v219 = *(v216 + 16);
  v220 = (v218 & 1) == 0;
  v120 = __OFADD__(v219, v220);
  v221 = v219 + v220;
  if (v120)
  {
    goto LABEL_205;
  }

  if (*(v216 + 24) >= v221)
  {
    if ((v250 & 1) == 0)
    {
      v250 = v208;
      v233 = v218;
      sub_1B8B94514();
      LOBYTE(v218) = v233;
      v208 = v250;
    }

LABEL_182:
    v223 = v255;
    v224 = v269;
    if (v218)
    {
      v183 = *(v269 + 56);
      v184 = v274;
      goto LABEL_158;
    }

    *(v269 + 8 * (v208 >> 6) + 64) |= 1 << v208;
    v225 = (v224[6] + 16 * v208);
    v226 = v254;
    *v225 = v223;
    v225[1] = v226;
    *(v224[7] + 8 * v208) = v253;
    v227 = v224[2];
    v120 = __OFADD__(v227, 1);
    v228 = v227 + 1;
    if (!v120)
    {
      goto LABEL_191;
    }

    goto LABEL_206;
  }

  LODWORD(v248) = v218;
  sub_1B8B93050(v221, v250);
  v208 = sub_1B8B5E354(v255, v217);
  v222 = v218 & 1;
  LOBYTE(v218) = v248;
  if ((v248 & 1) == v222)
  {
    goto LABEL_182;
  }

LABEL_213:
  result = sub_1B8C25A58();
  __break(1u);
  return result;
}

void *sub_1B8C022E4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6688, &qword_1B8C294C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_1B8C02358()
{
  result = qword_1EBAA63C0;
  if (!qword_1EBAA63C0)
  {
    sub_1B8C23498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA63C0);
  }

  return result;
}

unint64_t sub_1B8C023B0()
{
  result = qword_1EBAA8840;
  if (!qword_1EBAA8840)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBAA8840);
  }

  return result;
}

void sub_1B8C023FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  v4 = sub_1B8C25278();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1B8C02F0C(v4, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_1B8C25838();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

void sub_1B8C02988(uint64_t a1, uint64_t a2, int64_t a3)
{
  v72 = a1;
  v73 = a2;

  v4 = sub_1B8C25278();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1B8C02F0C(v4, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_1B8C25838();
      v8 = v71;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v21 = v8 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (v7)
          {
            v25 = 0;
            v26 = v7 + 1;
            while (1)
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v22)
              {
                if (v27 < 0x41 || v27 >= v23)
                {
                  if (v27 < 0x61 || v27 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              if (is_mul_ok(v25, a3))
              {
                v29 = v25 * a3;
                v30 = v27 + v28;
                v20 = __CFADD__(v29, v30);
                v25 = v29 + v30;
                if (!v20)
                {
                  ++v26;
                  if (--v21)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_127;
            }
          }
        }

        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (v7)
        {
          v34 = 0;
          while (1)
          {
            v35 = *v7;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_127;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (is_mul_ok(v34, a3))
            {
              v37 = v34 * a3;
              v38 = v35 + v36;
              v20 = __CFADD__(v37, v38);
              v34 = v37 + v38;
              if (!v20)
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_127;
          }
        }
      }

      goto LABEL_127;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            if (is_mul_ok(v14, a3))
            {
              v18 = v14 * a3;
              v19 = v16 + v17;
              v20 = v18 >= v19;
              v14 = v18 - v19;
              if (v20)
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_127:

      return;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v5) & 0xF;
  v72 = v6;
  v73 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v62 = 0;
        v63 = a3 + 48;
        v64 = a3 + 55;
        v65 = a3 + 87;
        if (a3 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_127;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          if (is_mul_ok(v62, a3))
          {
            v69 = v62 * a3;
            v70 = v67 + v68;
            v20 = __CFADD__(v69, v70);
            v62 = v69 + v70;
            if (!v20)
            {
              v66 = (v66 + 1);
              if (--v41)
              {
                continue;
              }
            }
          }

          goto LABEL_127;
        }
      }

      goto LABEL_127;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v72 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_127;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (is_mul_ok(v43, a3))
          {
            v50 = v43 * a3;
            v51 = v48 + v49;
            v20 = v50 >= v51;
            v43 = v50 - v51;
            if (v20)
            {
              ++v47;
              if (--v42)
              {
                continue;
              }
            }
          }

          goto LABEL_127;
        }
      }

      goto LABEL_127;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v53 = 0;
      v54 = a3 + 48;
      v55 = a3 + 55;
      v56 = a3 + 87;
      if (a3 > 10)
      {
        v54 = 58;
      }

      else
      {
        v56 = 97;
        v55 = 65;
      }

      v57 = &v72 + 1;
      while (1)
      {
        v58 = *v57;
        if (v58 < 0x30 || v58 >= v54)
        {
          if (v58 < 0x41 || v58 >= v55)
          {
            if (v58 < 0x61 || v58 >= v56)
            {
              goto LABEL_127;
            }

            v59 = -87;
          }

          else
          {
            v59 = -55;
          }
        }

        else
        {
          v59 = -48;
        }

        if (is_mul_ok(v53, a3))
        {
          v60 = v53 * a3;
          v61 = v58 + v59;
          v20 = __CFADD__(v60, v61);
          v53 = v60 + v61;
          if (!v20)
          {
            ++v57;
            if (--v52)
            {
              continue;
            }
          }
        }

        goto LABEL_127;
      }
    }

    goto LABEL_127;
  }

LABEL_132:
  __break(1u);
}

uint64_t sub_1B8C02F0C(uint64_t a1, unint64_t a2)
{
  v2 = sub_1B8C25288();
  v6 = sub_1B8C02F8C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1B8C02F8C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1B8C25628();
    if (!v9 || (v10 = v9, v11 = sub_1B8C022E4(v9, 0), v12 = sub_1B8C030E4(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1B8C251A8();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1B8C251A8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1B8C25838();
LABEL_4:

  return sub_1B8C251A8();
}

unint64_t sub_1B8C030E4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1B8C03304(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1B8C25238();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1B8C25838();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1B8C03304(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1B8C25218();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1B8C03304(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1B8C25248();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1B8CC9EF0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_1B8C03380()
{
  result = qword_1EBAA8A50;
  if (!qword_1EBAA8A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7478, &qword_1B8C2BC80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8A50);
  }

  return result;
}

uint64_t sub_1B8C033E4()
{
  v1 = type metadata accessor for AnalyticsEvent(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_1B8C257E8();

  v10 = 0x636974796C616E41;
  v11 = 0xEF2E746E65764573;
  sub_1B8C03F40(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v8 = sub_1B8C237B8();
      (*(*(v8 - 8) + 8))(v3, v8);
      v5 = 0xEB00000000646574;
      v6 = 0x6164696C61766E69;
    }

    else
    {
      v5 = 0xE800000000000000;
      v6 = 0x70752D6C6576656CLL;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v5 = 0x80000001B8C36AA0;
    v7 = sub_1B8C237B8();
    (*(*(v7 - 8) + 8))(v3, v7);
    v6 = 0xD000000000000012;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v5 = 0xEA00000000006572;
    v6 = 0x6F63732D77656976;
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x68636E75616CLL;
  }

  MEMORY[0x1B8CC9EB0](v6, v5);

  return v10;
}

unint64_t sub_1B8C035D8()
{
  v1 = 0xD000000000000012;
  v2 = type metadata accessor for AnalyticsEvent(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_1B8C257E8();

  v10 = 0xD000000000000025;
  v11 = 0x80000001B8C36A70;
  sub_1B8C03F40(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v8 = sub_1B8C237B8();
      (*(*(v8 - 8) + 8))(v4, v8);
      v6 = 0xEB00000000646574;
      v1 = 0x6164696C61766E69;
    }

    else
    {
      v6 = 0xE800000000000000;
      v1 = 0x70752D6C6576656CLL;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v6 = 0x80000001B8C36AA0;
    v7 = sub_1B8C237B8();
    (*(*(v7 - 8) + 8))(v4, v7);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v6 = 0xEA00000000006572;
    v1 = 0x6F63732D77656976;
  }

  else
  {
    v6 = 0xE600000000000000;
    v1 = 0x68636E75616CLL;
  }

  MEMORY[0x1B8CC9EB0](v1, v6);

  return v10;
}

unint64_t sub_1B8C037CC()
{
  v1 = v0;
  v2 = sub_1B8C237B8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for AnalyticsEvent(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B8C03F40(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA86B0, &qword_1B8C2F6A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B8C27920;
      *(inited + 32) = 0x6C6576656CLL;
      *(inited + 40) = 0xE500000000000000;
      sub_1B8B46130(0, &qword_1EBAA88A0, 0x1E696AD98);
      *(inited + 48) = sub_1B8C255C8();
      *(inited + 56) = 0x65726F6373;
      *(inited + 64) = 0xE500000000000000;
      *(inited + 72) = sub_1B8C255C8();
      v12 = sub_1B8B5FA0C(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA86B8, &unk_1B8C2F6A8);
      swift_arrayDestroy();
      return v12;
    }
  }

  else if (EnumCaseMultiPayload != 2)
  {
    return sub_1B8B5FA0C(MEMORY[0x1E69E7CC0]);
  }

  (*(v3 + 32))(v5, v8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA86B0, &qword_1B8C2F6A0);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_1B8C27920;
  strcpy((v13 + 32), "feature_domain");
  *(v13 + 47) = -18;
  sub_1B8C23798();
  v14 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v15 = sub_1B8C250F8();

  v16 = [v14 initWithString_];

  *(v13 + 48) = v16;
  *(v13 + 56) = 0xD000000000000011;
  *(v13 + 64) = 0x80000001B8C36A50;
  *(v13 + 72) = sub_1B8C23788();
  v17 = sub_1B8B5FA0C(v13);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA86B8, &unk_1B8C2F6A8);
  swift_arrayDestroy();
  (*(v3 + 8))(v5, v2);
  return v17;
}

void sub_1B8C03B68()
{
  v1 = type metadata accessor for AnalyticsEvent(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v28 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = v28 - v9;
  sub_1B8C035D8();
  v11 = sub_1B8C250F8();

  sub_1B8C03F40(v0, v10);
  v12 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v13 = swift_allocObject();
  sub_1B8C03FA4(v10, v13 + v12);
  aBlock[4] = sub_1B8C04008;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8C04064;
  aBlock[3] = &block_descriptor_10;
  v14 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v14);

  if (qword_1EBAA5980 != -1)
  {
    swift_once();
  }

  v15 = sub_1B8C23C38();
  __swift_project_value_buffer(v15, qword_1EBAB3A48);
  sub_1B8C03F40(v0, v8);
  sub_1B8C03F40(v0, v5);
  v16 = sub_1B8C23C18();
  v17 = sub_1B8C25468();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136315394;
    v20 = sub_1B8C035D8();
    v22 = v21;
    sub_1B8B50964(v8);
    v23 = sub_1B8B5DD48(v20, v22, aBlock);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v28[1] = sub_1B8C037CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA86A8, &qword_1B8C2F698);
    v24 = sub_1B8C25178();
    v26 = v25;
    sub_1B8B50964(v5);
    v27 = sub_1B8B5DD48(v24, v26, aBlock);

    *(v18 + 14) = v27;
    _os_log_impl(&dword_1B8B22000, v16, v17, "%s - %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CCB0E0](v19, -1, -1);
    MEMORY[0x1B8CCB0E0](v18, -1, -1);
  }

  else
  {

    sub_1B8B50964(v5);
    sub_1B8B50964(v8);
  }
}

uint64_t type metadata accessor for AnalyticsEvent(uint64_t a1)
{
  result = qword_1EBAA86C0;
  if (!qword_1EBAA86C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8C03F40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnalyticsEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8C03FA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnalyticsEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1B8C04064(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1B8B46130(0, &qword_1EBAA6238, 0x1E69E58C0);
    v4 = sub_1B8C25088();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1B8C0411C(uint64_t a1)
{
  sub_1B8C04190();
  if (v1 <= 0x3F)
  {
    sub_1B8C041F0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1B8C04190()
{
  if (!qword_1EBAA86D0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBAA86D0);
    }
  }
}

void sub_1B8C041F0()
{
  if (!qword_1EBAA86D8)
  {
    v0 = sub_1B8C237B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBAA86D8);
    }
  }
}

uint64_t sub_1B8C04238(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  sub_1B8B46130(0, &qword_1EBAA6238, 0x1E69E58C0);
  if (sub_1B8C255E8())
  {
    if (v3)
    {
      if (v5 && (v2 == v4 && v3 == v5 || (sub_1B8C25A08() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

BOOL sub_1B8C042E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1B8C061C8(v7, v9);
}

uint64_t sub_1B8C04344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1B8C237E8();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v5 = sub_1B8C23938();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6290, &qword_1B8C2F800);
  v3[19] = swift_task_alloc();
  v6 = sub_1B8C238B8();
  v3[20] = v6;
  v3[21] = *(v6 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v7 = sub_1B8C237B8();
  v3[25] = v7;
  v3[26] = *(v7 - 8);
  v3[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8C045CC, 0, 0);
}

uint64_t sub_1B8C045CC(uint64_t a1)
{
  v3 = v1[26];
  v2 = v1[27];
  v4 = v1[25];
  v5 = v1[4];
  sub_1B8C237C8();
  v6 = sub_1B8B4E0BC(v2, v5);
  v7 = (*(v3 + 8))(v2, v4);
  if ((v6 & 1) == 0)
  {
    sub_1B8C063CC(v7, v8, v9);
    swift_allocError();
    *v17 = 0;
    goto LABEL_5;
  }

  v10 = v1[20];
  v11 = v1[21];
  v12 = v1[19];
  sub_1B8C23918();
  if ((*(v11 + 48))(v12, 1, v10) == 1)
  {
    v13 = sub_1B8B48A20(v1[19]);
    sub_1B8C063CC(v13, v14, v15);
    swift_allocError();
    *v16 = 1;
LABEL_5:
    swift_willThrow();
LABEL_6:

    v18 = v1[1];
    goto LABEL_7;
  }

  v20 = v1[18];
  v21 = v1[15];
  v22 = v1[16];
  v23 = *(v1[21] + 32);
  v23(v1[24], v1[19], v1[20]);
  sub_1B8C23878();
  v24 = *(v22 + 88);
  if (v24(v20, v21) != *MEMORY[0x1E699C5F0])
  {
    v57 = v1[24];
    v59 = v1[20];
    v58 = v1[21];
    v60 = (*(v1[16] + 8))(v1[18], v1[15]);
    sub_1B8C063CC(v60, v61, v62);
    swift_allocError();
    *v63 = 3;
    swift_willThrow();
    (*(v58 + 8))(v57, v59);
    goto LABEL_6;
  }

  v25 = v1[18];
  v187 = *(v1[16] + 96);
  v187(v25, v1[15]);
  v26 = *v25;
  v27 = v25[1];
  v28 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v29 = sub_1B8C234A8();
  v30 = [v28 initWithData_];

  if (!v30)
  {
    v64 = v1[24];
    v65 = v26;
    v67 = v1[20];
    v66 = v1[21];
    sub_1B8C063CC(v31, v32, v33);
    swift_allocError();
    *v68 = 6;
    swift_willThrow();
    v69 = sub_1B8B4645C(v65, v27);
    (*(v66 + 8))(v64, v67, v69);
    goto LABEL_6;
  }

  v183 = v30;
  v184 = v26;
  v34 = sub_1B8C23768();
  if (!*(v34 + 16))
  {
    v70 = v1[24];
    v72 = v1[20];
    v71 = v1[21];

    sub_1B8C063CC(v73, v74, v75);
    swift_allocError();
    *v76 = 2;
    swift_willThrow();
    sub_1B8B4645C(v184, v27);

    (*(v71 + 8))(v70, v72);
    goto LABEL_6;
  }

  v36 = v1[22];
  v35 = v1[23];
  v37 = v1[20];
  v180 = v1[17];
  v182 = v27;
  v185 = v1[15];
  (*(v1[21] + 16))(v36, v34 + ((*(v1[21] + 80) + 32) & ~*(v1[21] + 80)), v37);

  v23(v35, v36, v37);
  sub_1B8C23878();
  if (v24(v180, v185) != *MEMORY[0x1E699C588])
  {
    v78 = v1[23];
    v77 = v1[24];
    v80 = v1[20];
    v79 = v1[21];
    v81 = (*(v1[16] + 8))(v1[17], v1[15]);
    sub_1B8C063CC(v81, v82, v83);
    swift_allocError();
    *v84 = 4;
    swift_willThrow();
    sub_1B8B4645C(v184, v27);

    v85 = *(v79 + 8);
    v85(v78, v80);
    v86 = v77;
LABEL_52:
    v85(v86, v80);
    goto LABEL_6;
  }

  v38 = v1[17];
  v39 = v1[14];
  v40 = v1[13];
  v42 = v1[5];
  v41 = v1[6];
  v187(v38, v1[15]);
  v43 = v41[4];
  v43(v39, v38, v42);
  v181 = v41[2];
  v181(v40, v39, v42);
  v179 = v41[11];
  v44 = v1;
  v186 = v1;
  if (v179(v40, v42) != *MEMORY[0x1E699C3B0])
  {
    v100 = v1[23];
    v99 = v1[24];
    v80 = v1[20];
    v101 = v1[21];
    v102 = v1[14];
    v103 = v1[5];
    v104 = *(v1[6] + 8);
    v105 = v104(v1[13], v103);
    sub_1B8C063CC(v105, v106, v107);
    swift_allocError();
    *v108 = 5;
    swift_willThrow();
    sub_1B8B4645C(v184, v182);

    v104(v102, v103);
    v85 = *(v101 + 8);
    v85(v100, v80);
    v86 = v99;
    goto LABEL_52;
  }

  v45 = v1[13];
  v174 = *(v1[6] + 96);
  v174(v45, v1[5]);
  v46 = *v45;
  if (!*(*v45 + 16))
  {
    goto LABEL_50;
  }

  v47 = sub_1B8B5E2DC(0x74706D6F7270, 0xE600000000000000);
  if ((v48 & 1) == 0)
  {
    goto LABEL_50;
  }

  v49 = v44[12];
  v50 = v44[5];
  v177 = *(v44[6] + 72);
  v181(v49, *(v46 + 56) + v177 * v47, v50);
  v51 = v179(v49, v50);
  v52 = v44[12];
  if (v51 != *MEMORY[0x1E699C3C0])
  {
    v110 = v44[5];
    v109 = v44[6];

    v111 = (*(v109 + 8))(v52, v110);
LABEL_51:
    v138 = v44[23];
    v137 = v44[24];
    v80 = v44[20];
    v139 = v44[21];
    v140 = v186[14];
    v141 = v186[6];
    v142 = v186[5];
    sub_1B8C063CC(v111, v112, v113);
    swift_allocError();
    *v143 = 5;
    swift_willThrow();
    sub_1B8B4645C(v184, v182);

    v1 = v186;
    (*(v141 + 8))(v140, v142);
    v85 = *(v139 + 8);
    v85(v138, v80);
    v86 = v137;
    goto LABEL_52;
  }

  v167 = v51;
  v174(v52, v44[5]);
  v53 = *(*v52 + 16);
  v173 = v43;
  if (v53)
  {
    v170 = v44[9];
    v54 = v44[6];
    v55 = *v52 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
    v175 = *MEMORY[0x1E699C3D0];
    v56 = (v54 + 8);
    v178 = MEMORY[0x1E69E7CC0];
    do
    {
      v87 = v44[11];
      v88 = v186[9];
      v89 = v186[5];
      v181(v87, v55, v89);
      v43(v88, v87, v89);
      v90 = v88;
      v44 = v186;
      v91 = v179(v90, v89);
      v92 = v186[9];
      v93 = v186[5];
      if (v91 == v175)
      {
        v174(v186[9], v93);
        v94 = *v92;
        v95 = *(v170 + 8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v178 = sub_1B8B5D1AC(0, *(v178 + 2) + 1, 1, v178);
        }

        v97 = *(v178 + 2);
        v96 = *(v178 + 3);
        if (v97 >= v96 >> 1)
        {
          v178 = sub_1B8B5D1AC((v96 > 1), v97 + 1, 1, v178);
        }

        *(v178 + 2) = v97 + 1;
        v98 = &v178[16 * v97];
        *(v98 + 4) = v94;
        *(v98 + 5) = v95;
        v43 = v173;
      }

      else
      {
        (*v56)(v186[9], v93);
      }

      v55 += v177;
      --v53;
    }

    while (v53);
  }

  else
  {

    v178 = MEMORY[0x1E69E7CC0];
  }

  if (!*(v46 + 16) || (v114 = sub_1B8B5E2DC(0x73746365666665, 0xE700000000000000), (v115 & 1) == 0))
  {

LABEL_50:

    goto LABEL_51;
  }

  v116 = v44[10];
  v117 = v44[5];
  v181(v116, *(v46 + 56) + v114 * v177, v117);
  v118 = v179(v116, v117);
  v119 = v44[10];
  if (v118 != v167)
  {
    v145 = v44[5];
    v144 = v44[6];

    v111 = (*(v144 + 8))(v119, v145);
    goto LABEL_51;
  }

  v166 = v46;
  v174(v119, v44[5]);
  v120 = *(*v119 + 16);
  if (v120)
  {
    v121 = v44[6];
    v171 = v44[7];
    v122 = *v119 + ((*(v121 + 80) + 32) & ~*(v121 + 80));
    v176 = *MEMORY[0x1E699C3D0];
    v168 = (v121 + 8);
    v123 = MEMORY[0x1E69E7CC0];
    do
    {
      v125 = v44;
      v126 = v44[8];
      v127 = v125[7];
      v128 = v125[5];
      v181(v126, v122, v128);
      v43(v127, v126, v128);
      v129 = v179(v127, v128);
      v130 = v125[7];
      v131 = v125[5];
      if (v129 == v176)
      {
        v174(v125[7], v131);
        v132 = *v130;
        v133 = *(v171 + 8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v123 = sub_1B8B5D1AC(0, *(v123 + 2) + 1, 1, v123);
        }

        v124 = v184;
        v135 = *(v123 + 2);
        v134 = *(v123 + 3);
        if (v135 >= v134 >> 1)
        {
          v123 = sub_1B8B5D1AC((v134 > 1), v135 + 1, 1, v123);
        }

        *(v123 + 2) = v135 + 1;
        v136 = &v123[16 * v135];
        *(v136 + 4) = v132;
        *(v136 + 5) = v133;
        v43 = v173;
      }

      else
      {
        (*v168)(v125[7], v131);
        v124 = v184;
      }

      v122 += v177;
      --v120;
      v44 = v186;
    }

    while (v120);
  }

  else
  {

    v123 = MEMORY[0x1E69E7CC0];
    v124 = v184;
  }

  v172 = v44[24];
  v169 = v44[23];
  v146 = v44[21];
  v147 = v44[20];
  v164 = v44[14];
  v148 = v44;
  v151 = v44 + 5;
  v150 = v44[5];
  v149 = v151[1];
  v152 = v148[2];
  v153 = v148[3];
  v165 = sub_1B8C05C08();
  v154 = sub_1B8C053B8(v153, v166);
  v162 = v155;
  v163 = v154;
  v161 = v156;
  v157 = sub_1B8C059F8(v166);
  v160 = v158;
  sub_1B8B4645C(v124, v182);

  (*(v149 + 8))(v164, v150);
  v159 = *(v146 + 8);
  v159(v169, v147);
  v159(v172, v147);
  *v152 = v183;
  *(v152 + 8) = v165;
  *(v152 + 16) = v163;
  *(v152 + 24) = v162;
  *(v152 + 32) = v161;
  *(v152 + 40) = v178;
  *(v152 + 48) = v123;
  *(v152 + 56) = v157;
  *(v152 + 64) = v160;
  *(v152 + 72) = 1;

  v18 = v148[1];
LABEL_7:

  return v18();
}

id sub_1B8C053B8(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v2 = sub_1B8C237E8();
  v39 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B8C23938();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1B8C238B8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(sub_1B8C23768() + 16);

  if (v13 < 2)
  {
    if (qword_1EBAA5978 != -1)
    {
      swift_once();
    }

    v14 = sub_1B8C23C38();
    __swift_project_value_buffer(v14, qword_1EBAB3A30);
    v15 = sub_1B8C23C18();
    v16 = sub_1B8C25468();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1B8B22000, v15, v16, "extra content does not have at least 2 entries", v17, 2u);
      MEMORY[0x1B8CCB0E0](v17, -1, -1);
    }

    return 0;
  }

  v18 = sub_1B8C23768();
  if (*(v18 + 16) < 2uLL)
  {
    __break(1u);
LABEL_28:
    swift_once();
LABEL_15:
    v32 = sub_1B8C23C38();
    __swift_project_value_buffer(v32, qword_1EBAB3A30);
    v33 = sub_1B8C23C18();
    v34 = sub_1B8C25468();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1B8B22000, v33, v34, "Failed to load person image data", v35, 2u);
      MEMORY[0x1B8CCB0E0](v35, -1, -1);
    }

    goto LABEL_24;
  }

  (*(v10 + 16))(v12, v18 + *(v10 + 72) + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v9);

  sub_1B8C23878();
  if ((*(v6 + 88))(v8, v5) != *MEMORY[0x1E699C5F0])
  {
    (*(v6 + 8))(v8, v5);
    if (qword_1EBAA5978 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

  (*(v6 + 96))(v8, v5);
  v20 = *v8;
  v19 = v8[1];
  v21 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v22 = sub_1B8C234A8();
  v23 = [v21 initWithData_];

  if (!v23)
  {
    if (qword_1EBAA5978 != -1)
    {
      swift_once();
    }

    v36 = sub_1B8C23C38();
    __swift_project_value_buffer(v36, qword_1EBAB3A30);
    v33 = sub_1B8C23C18();
    v37 = sub_1B8C25468();
    if (os_log_type_enabled(v33, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1B8B22000, v33, v37, "Failed to load person image", v38, 2u);
      MEMORY[0x1B8CCB0E0](v38, -1, -1);
    }

    sub_1B8B4645C(v20, v19);
LABEL_24:

    (*(v10 + 8))(v12, v9);
    return 0;
  }

  v24 = v23;
  v25 = v40;
  if (*(v40 + 16) && (v26 = sub_1B8B5E2DC(0x614E6E6F73726570, 0xEA0000000000656DLL), (v27 & 1) != 0))
  {
    v28 = *(v25 + 56);
    v29 = v39;
    (*(v39 + 16))(v4, v28 + *(v39 + 72) * v26, v2);
    v30 = sub_1B8B4645C(v20, v19);
    (*(v10 + 8))(v12, v9, v30);
    if ((*(v29 + 88))(v4, v2) == *MEMORY[0x1E699C3D0])
    {
      (*(v29 + 96))(v4, v2);
      return v24;
    }

    (*(v29 + 8))(v4, v2);
  }

  else
  {
    (*(v10 + 8))(v12, v9);
    sub_1B8B4645C(v20, v19);
  }

  return v24;
}

uint64_t sub_1B8C059F8(uint64_t a1)
{
  v2 = sub_1B8C237E8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v6 = sub_1B8B5E2DC(0x656C797473, 0xE500000000000000);
    if (v7)
    {
      (*(v3 + 16))(v5, *(a1 + 56) + *(v3 + 72) * v6, v2);
      if ((*(v3 + 88))(v5, v2) == *MEMORY[0x1E699C3D0])
      {
        (*(v3 + 96))(v5, v2);
        return *v5;
      }

      (*(v3 + 8))(v5, v2);
    }
  }

  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v9 = sub_1B8C23C38();
  __swift_project_value_buffer(v9, qword_1EBAB3A30);
  v10 = sub_1B8C23C18();
  v11 = sub_1B8C25468();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1B8B22000, v10, v11, "Failed to load style", v12, 2u);
    MEMORY[0x1B8CCB0E0](v12, -1, -1);
  }

  return 0;
}

id sub_1B8C05C08()
{
  v0 = sub_1B8C23938();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6290, &qword_1B8C2F800);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_1B8C238B8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8C238F8();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B8B48A20(v6);
    if (qword_1EBAA5978 != -1)
    {
      swift_once();
    }

    v11 = sub_1B8C23C38();
    __swift_project_value_buffer(v11, qword_1EBAB3A30);
    v12 = sub_1B8C23C18();
    v13 = sub_1B8C25468();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1B8B22000, v12, v13, "Failed to load original content", v14, 2u);
      MEMORY[0x1B8CCB0E0](v14, -1, -1);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_1B8C23878();
    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x1E699C5F0])
    {
      (*(v1 + 96))(v3, v0);
      v15 = *v3;
      v16 = v3[1];
      v17 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
      v18 = sub_1B8C234A8();
      v19 = [v17 initWithData_];

      v20 = sub_1B8B4645C(v15, v16);
      (*(v8 + 8))(v10, v7, v20);
      return v19;
    }

    (*(v1 + 8))(v3, v0);
    if (qword_1EBAA5978 != -1)
    {
      swift_once();
    }

    v22 = sub_1B8C23C38();
    __swift_project_value_buffer(v22, qword_1EBAB3A30);
    v23 = sub_1B8C23C18();
    v24 = sub_1B8C25468();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1B8B22000, v23, v24, "Failed to load original content image", v25, 2u);
      MEMORY[0x1B8CCB0E0](v25, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
  }

  return 0;
}

uint64_t sub_1B8C06038()
{
  v1 = sub_1B8C237B8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1B8C237C8();
  v6 = sub_1B8B4E0BC(v4, v5);
  (*(v2 + 8))(v4, v1);
  return v6 & 1;
}

uint64_t sub_1B8C06120(uint64_t a1, uint64_t a2)
{
  *(v3 + 96) = a1;
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 104) = v6;
  *v6 = v3;
  v6[1] = sub_1B8B47300;

  return sub_1B8C04344(v3 + 16, a2, v5);
}

BOOL sub_1B8C061C8(void *a1, void *a2)
{
  sub_1B8B46130(0, &qword_1EBAA6238, 0x1E69E58C0);
  if ((sub_1B8C255E8() & 1) == 0)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    sub_1B8B46130(0, &qword_1EBAA6220, 0x1E69DCAB8);
    v6 = v5;
    v7 = v4;
    v8 = sub_1B8C255E8();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v9 = a2[2];
  if (!a1[2])
  {
    if (v9)
    {
      return 0;
    }

    goto LABEL_22;
  }

  if (!v9)
  {
    return 0;
  }

  v11 = a1[3];
  v10 = a1[4];
  v13 = a2[3];
  v12 = a2[4];

  v14 = v9;
  if ((sub_1B8C255E8() & 1) == 0)
  {
LABEL_18:

    goto LABEL_19;
  }

  if (!v10)
  {
    if (!v12)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (!v12)
  {
LABEL_19:

    return 0;
  }

  if (v11 != v13 || v10 != v12)
  {
    v15 = sub_1B8C25A08();

    if ((v15 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_22;
  }

LABEL_20:

LABEL_22:
  if (sub_1B8B44024(a1[5], a2[5]) & 1) != 0 && (sub_1B8B44024(a1[6], a2[6]))
  {
    v16 = a1[8];
    v17 = a2[8];
    if (v16)
    {
      return v17 && (a1[7] == a2[7] && v16 == v17 || (sub_1B8C25A08() & 1) != 0);
    }

    if (!v17)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1B8C063CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA86E0;
  if (!qword_1EBAA86E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA86E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImagePlaygroundDonationDecoder.Err(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ImagePlaygroundDonationDecoder.Err(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B8C06570(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1B8C065B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B8C0660C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA86E8;
  if (!qword_1EBAA86E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA86E8);
  }

  return result;
}

uint64_t FBKInlineConcern.feedbackController.getter()
{
  v3[1] = *v0;
  v4 = *(v0 + 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  MEMORY[0x1B8CC9B00](v3, v1);
  return v3[0];
}

void (*FBKInlineConcern.feedbackController.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = v1[1];
  v4[8] = *v1;
  v4[9] = v6;
  v7 = v1[2];
  v4[10] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;

  v8 = v7;
  v4[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  MEMORY[0x1B8CC9B00]();
  return sub_1B8B833D4;
}

uint64_t FBKInlineConcern.$feedbackController.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  sub_1B8C24E68();
  return v1;
}

uint64_t type metadata accessor for FBKInlineConcern(uint64_t a1)
{
  result = qword_1EBAA86F0;
  if (!qword_1EBAA86F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8C06888()
{
  type metadata accessor for FBKInlineConcern(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  return MEMORY[0x1B8CC9B00](v0);
}

uint64_t sub_1B8C068E0(uint64_t a1)
{
  v2 = sub_1B8C23738();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  type metadata accessor for FBKInlineConcern(0);
  v9(v6, v8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  sub_1B8C24E48();
  return (*(v3 + 8))(v8, v2);
}

uint64_t FBKInlineConcern.subject.setter(uint64_t a1)
{
  v2 = sub_1B8C23738();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FBKInlineConcern(0);
  (*(v3 + 16))(v5, a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  sub_1B8C24E48();
  return (*(v3 + 8))(a1, v2);
}

void (*FBKInlineConcern.subject.modify(uint64_t **a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = sub_1B8C23738();
  *v5 = v6;
  v7 = *(v6 - 8);
  v5[1] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[3] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  v5[4] = v10;
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(*(v10 - 8) + 64));
  }

  v12 = v11;
  v5[5] = v11;
  v13 = type metadata accessor for FBKInlineConcern(0);
  sub_1B8B83A68(v1 + *(v13 + 20), v12);
  MEMORY[0x1B8CC9B00](v10);
  return sub_1B8B83990;
}

uint64_t sub_1B8C06CD8(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for FBKInlineConcern(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  return a1(v2);
}

uint64_t FBKInlineConcern.disabled.getter()
{
  v1 = (v0 + *(type metadata accessor for FBKInlineConcern(0) + 24));
  v2 = *v1;
  v3 = v1[1];
  LOBYTE(v1) = *(v1 + 16);
  v7 = v2;
  v8 = v3;
  v9 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  MEMORY[0x1B8CC9B00](&v6, v4);
  return v6;
}

void *sub_1B8C06D9C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for FBKInlineConcern(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  v9 = v4;
  v10 = v5;
  v11 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  result = MEMORY[0x1B8CC9B00](&v8, v6);
  *a2 = v8;
  return result;
}

uint64_t sub_1B8C06E18(char *a1, uint64_t a2)
{
  type metadata accessor for FBKInlineConcern(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  return sub_1B8C24E48();
}

uint64_t FBKInlineConcern.disabled.setter(char a1)
{
  type metadata accessor for FBKInlineConcern(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  return sub_1B8C24E48();
}

void (*FBKInlineConcern.disabled.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for FBKInlineConcern(0) + 24));
  v6 = *v5;
  v7 = v5[1];
  *(v4 + 48) = *v5;
  *(v4 + 56) = v7;
  LOBYTE(v5) = *(v5 + 16);
  *(v4 + 19) = v5;
  *v4 = v6;
  *(v4 + 8) = v7;
  *(v4 + 16) = v5;

  *(v4 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  MEMORY[0x1B8CC9B00]();
  return sub_1B8B83E40;
}

uint64_t FBKInlineConcern.$disabled.getter()
{
  type metadata accessor for FBKInlineConcern(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  sub_1B8C24E68();
  return v1;
}

uint64_t sub_1B8C0702C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = (a1 + *(type metadata accessor for FBKInlineConcern(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1B8B84788;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_1B8B247D4(v4, v5);
}

uint64_t sub_1B8C070C0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1B8B84780;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for FBKInlineConcern(0) + 28));
  v8 = *v7;
  v9 = v7[1];
  sub_1B8B247D4(v3, v4);
  result = sub_1B8B30A44(v8, v9);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t FBKInlineConcern.onFormComplete.getter()
{
  v1 = (v0 + *(type metadata accessor for FBKInlineConcern(0) + 28));
  v2 = *v1;
  sub_1B8B247D4(*v1, v1[1]);
  return v2;
}

uint64_t FBKInlineConcern.onFormComplete.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FBKInlineConcern(0) + 28));
  result = sub_1B8B30A44(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FBKInlineConcern.init(feedbackController:subject:disabled:onFormComplete:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v17 = type metadata accessor for FBKInlineConcern(0);
  v18 = (a9 + v17[7]);
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  result = sub_1B8B841EC(a4, a9 + v17[5]);
  v20 = a9 + v17[6];
  *v20 = a5;
  *(v20 + 1) = a6;
  v20[16] = a7;
  *v18 = a8;
  v18[1] = a10;
  return result;
}

double FBKInlineConcern.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - v4;
  v6 = sub_1B8C236E8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, *MEMORY[0x1E699C1D8], v6);
  v10 = type metadata accessor for FBKInlineConcern(0);
  sub_1B8C24E68();
  v11 = (v1 + *(v10 + 28));
  v12 = *v11;
  v30 = v11[1];
  v31 = v12;
  *&v36[0] = *v1;
  *(v36 + 8) = *(v1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  sub_1B8C24E68();
  v33 = v34;
  v32 = v35;
  v13 = (v1 + *(v10 + 24));
  v14 = *v13;
  v15 = v13[1];
  LOBYTE(v13) = *(v13 + 16);
  *&v36[0] = v14;
  *(&v36[0] + 1) = v15;
  LOBYTE(v36[1]) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  sub_1B8C24E68();
  v28 = v35;
  v29 = v34;
  v27 = BYTE8(v35);
  v16 = type metadata accessor for FBKInlineViewButton(0);
  v17 = v16[6];
  v26 = v16[7];
  v18 = (a1 + v17);
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA71A0, &qword_1B8C2C220);
  sub_1B8C24D58();
  v19 = *&v36[0];
  (*(v7 + 16))(a1, v9, v6);
  sub_1B8B83A68(v5, a1 + v16[5]);
  v21 = v30;
  v20 = v31;
  *v18 = v31;
  v18[1] = v21;
  v34 = 0;
  sub_1B8B247D4(v20, v21);
  sub_1B8C24D58();
  sub_1B8B83AD8(v5);
  (*(v7 + 8))(v9, v6);

  *(a1 + v26) = v36[0];
  v22 = a1 + v16[8];
  *v22 = v33;
  result = *&v32;
  *(v22 + 8) = v32;
  v24 = a1 + v16[9];
  v25 = v28;
  *v24 = v29;
  *(v24 + 8) = v25;
  *(v24 + 16) = v27;
  return result;
}

uint64_t sub_1B8C07640(char a1, char a2, __n128 a3)
{
  v3 = (a1 & 1) == 0;
  if (a1)
  {
    v4 = 0x6C6C69662ELL;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = 0xE000000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (!a2)
  {
    v7 = 0x7568742E646E6168;
LABEL_12:
    v9 = v7;
    goto LABEL_13;
  }

  if (a2 != 1)
  {
    v7 = 0x656C637269632E78;
    goto LABEL_12;
  }

  v6 = v4;
  sub_1B8C257E8();

  v9 = 0x7568742E646E6168;
  v4 = v6;
LABEL_13:
  MEMORY[0x1B8CC9EB0](v4, v5);

  return v9;
}

uint64_t sub_1B8C07740()
{
  v1 = 0x6F4473626D756874;
  if (*v0 != 1)
  {
    v1 = 1885956979;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x705573626D756874;
  }
}

unint64_t sub_1B8C0779C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBAA8700;
  if (!qword_1EBAA8700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA8700);
  }

  return result;
}

uint64_t sub_1B8C077F0()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1B8C09CF8(&qword_1EBAA6F30, type metadata accessor for AppInfoController, &unk_1B8C2FAF0);
  sub_1B8C23588();

  v1 = *(v0 + 16);
  sub_1B8C09614(v1, *(v3 + 24), *(v3 + 32));
  return v1;
}

uint64_t sub_1B8C078B0()
{
  swift_getKeyPath();
  sub_1B8C09CF8(&qword_1EBAA6F30, type metadata accessor for AppInfoController, &unk_1B8C2FAF0);
  sub_1B8C23588();

  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_1B8C07960(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1B8C25A08() & 1) == 0)
  {
    return 0;
  }

  sub_1B8B46130(0, &qword_1EBAA6238, 0x1E69E58C0);
  return sub_1B8C255E8() & 1;
}

void sub_1B8C079E4(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8C09CF8(&qword_1EBAA6F30, type metadata accessor for AppInfoController, &unk_1B8C2FAF0);
  sub_1B8C23588();

  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  sub_1B8C09614(v4, v5, v6);
}

void sub_1B8C07A98(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  sub_1B8C09614(*a1, v2, v3);
  sub_1B8C07AE8(v1, v2, v3);
}

void sub_1B8C07AE8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  if (!v8)
  {
    if (!a2)
    {
      v13 = 0;
      goto LABEL_13;
    }

LABEL_11:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8C09CF8(&qword_1EBAA6F30, type metadata accessor for AppInfoController, &unk_1B8C2FAF0);
    sub_1B8C23578();
    sub_1B8C09658(a1, a2, a3);

    return;
  }

  if (!a2)
  {
    goto LABEL_11;
  }

  v10 = v7 == a1 && v8 == a2;
  if (!v10 && (sub_1B8C25A08() & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1B8B46130(0, &qword_1EBAA6238, 0x1E69E58C0);

  v11 = v9;
  v12 = sub_1B8C255E8();
  sub_1B8C09658(v7, v8, v9);
  if ((v12 & 1) == 0)
  {
    goto LABEL_11;
  }

  v7 = v3[2];
  v13 = v3[3];
  v9 = v3[4];
LABEL_13:
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;

  sub_1B8C09658(v7, v13, v9);
}

double sub_1B8C07CEC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8C09CF8(&qword_1EBAA6F30, type metadata accessor for AppInfoController, &unk_1B8C2FAF0);
  sub_1B8C23588();

  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;

  return result;
}

double sub_1B8C07D98(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40) == a1 && *(v2 + 48) == a2;
  if (v5 || (sub_1B8C25A08() & 1) != 0)
  {
    *(v2 + 40) = a1;
    *(v2 + 48) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8C09CF8(&qword_1EBAA6F30, type metadata accessor for AppInfoController, &unk_1B8C2FAF0);
    sub_1B8C23578();
  }

  return result;
}

double sub_1B8C07EF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7C68, &qword_1B8C2D578);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_1B8C08040(sub_1B8BBDC18, v7);

  return result;
}

void sub_1B8C08040(void (*a1)(void), uint64_t a2)
{
  v75 = a2;
  v79 = a1;
  v68 = *v2;
  v3 = sub_1B8C24FD8();
  v73 = *(v3 - 8);
  v74 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v71 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1B8C25008();
  v70 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v69 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1B8C24FE8();
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B8C23388();
  v76 = *(v7 - 8);
  v77 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = [objc_opt_self() enumeratorWithOptions_];
  sub_1B8C25418();
  v80 = OBJC_IVAR____TtC8Feedback17AppInfoController___observationRegistrar;
  sub_1B8C23378();
  if (!v84)
  {
LABEL_21:
    (*(v76 + 8))(v9, v77);
    if (qword_1EBAA5978 != -1)
    {
      swift_once();
    }

    v53 = sub_1B8C23C38();
    __swift_project_value_buffer(v53, qword_1EBAB3A30);
    v54 = v81;

    v55 = sub_1B8C23C18();
    v56 = sub_1B8C25478();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *&aBlock = v58;
      *v57 = 136315138;
      swift_getKeyPath();
      *&v88[0] = v54;
      sub_1B8C09CF8(&qword_1EBAA6F30, type metadata accessor for AppInfoController, &unk_1B8C2FAF0);
      sub_1B8C23588();

      v59 = v54[5];
      v60 = v54[6];

      v61 = sub_1B8B5DD48(v59, v60, &aBlock);

      *(v57 + 4) = v61;
      _os_log_impl(&dword_1B8B22000, v55, v56, "Failed to find app record for bundleID: %s", v57, 0xCu);
      v62 = __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x1B8CCB0E0](v58, -1, -1, v62);
      MEMORY[0x1B8CCB0E0](v57, -1, -1);
    }

    v63 = v78;
    if (v79)
    {
      v79();
    }

    return;
  }

  v10 = v81;
  while (1)
  {
    sub_1B8B5FE40(&aBlock, v88);
    sub_1B8B46130(0, &qword_1EBAA8720, 0x1E69635F8);
    if (!swift_dynamicCast())
    {
      goto LABEL_5;
    }

    v12 = v87;
    v13 = [v87 bundleIdentifier];
    if (v13)
    {
      v14 = v13;
      v15 = sub_1B8C25128();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    swift_getKeyPath();
    *&v88[0] = v10;
    sub_1B8C09CF8(&qword_1EBAA6F30, type metadata accessor for AppInfoController, &unk_1B8C2FAF0);
    sub_1B8C23588();

    if (v17)
    {
      break;
    }

LABEL_4:

LABEL_5:
    sub_1B8C23378();
    if (!v84)
    {
      goto LABEL_21;
    }
  }

  if (v15 != v10[5] || v17 != v10[6])
  {
    v11 = sub_1B8C25A08();

    if (v11)
    {
      goto LABEL_14;
    }

    goto LABEL_4;
  }

LABEL_14:
  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v18 = sub_1B8C23C38();
  v19 = __swift_project_value_buffer(v18, qword_1EBAB3A30);
  v20 = v81;

  v21 = sub_1B8C23C18();
  v22 = sub_1B8C25468();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v64 = v19;
    v25 = v24;
    *&v88[0] = v24;
    *v23 = 136315138;
    swift_getKeyPath();
    v87 = v20;
    sub_1B8C23588();

    v26 = v20[5];
    v27 = v20[6];

    v28 = sub_1B8B5DD48(v26, v27, v88);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_1B8B22000, v21, v22, "Found app record for bundleID: %s, will break early", v23, 0xCu);
    v29 = __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x1B8CCB0E0](v25, -1, -1, v29);
    MEMORY[0x1B8CCB0E0](v23, -1, -1);
  }

  (*(v76 + 8))(v9, v77);

  v30 = v12;
  v31 = sub_1B8C23C18();
  v32 = sub_1B8C25468();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&aBlock = v34;
    *v33 = 136315138;
    swift_getKeyPath();
    *&v88[0] = v20;
    sub_1B8C23588();

    v35 = v20[5];
    v36 = v20[6];

    v37 = sub_1B8B5DD48(v35, v36, &aBlock);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_1B8B22000, v31, v32, "Found app record for bundleID: %s, will prepare image", v33, 0xCu);
    v38 = __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x1B8CCB0E0](v34, -1, -1, v38);
    MEMORY[0x1B8CCB0E0](v33, -1, -1);
  }

  v39 = v20;
  v40 = v79;
  v42 = v73;
  v41 = v74;
  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v43 = v66;
  v44 = v65;
  v45 = v67;
  (*(v66 + 104))(v65, *MEMORY[0x1E69E7F88], v67);
  v46 = sub_1B8C25568();
  (*(v43 + 8))(v44, v45);
  v47 = swift_allocObject();
  v47[2] = v39;
  v47[3] = v40;
  v48 = v75;
  v47[4] = v75;
  v47[5] = v30;
  v47[6] = v68;
  v85 = sub_1B8C09734;
  v86 = v47;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v83 = sub_1B8B8B9F4;
  v84 = &block_descriptor_11;
  v49 = _Block_copy(&aBlock);

  v50 = v30;
  sub_1B8B247D4(v40, v48);
  v51 = v69;
  sub_1B8C24FF8();
  *&v88[0] = MEMORY[0x1E69E7CC0];
  sub_1B8C09CF8(&qword_1EBAA69C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  v52 = v71;
  sub_1B8C256D8();
  MEMORY[0x1B8CCA210](0, v51, v52, v49);
  _Block_release(v49);

  (*(v42 + 8))(v52, v41);
  (*(v70 + 8))(v51, v72);
}

void sub_1B8C08B14(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4)
{
  v8 = sub_1B8C24FD8();
  v42 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1B8C25008();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  aBlock[0] = a1;
  sub_1B8C09CF8(&qword_1EBAA6F30, type metadata accessor for AppInfoController, &unk_1B8C2FAF0);
  sub_1B8C23588();

  v12 = objc_allocWithZone(MEMORY[0x1E69A8A00]);

  v13 = sub_1B8C250F8();

  v14 = [v12 initWithBundleIdentifier_];

  v15 = [objc_allocWithZone(MEMORY[0x1E69A8A30]) initWithSize:24.0 scale:{24.0, 2.0}];
  v16 = [v14 prepareImageForDescriptor_];

  if (v16)
  {
    v37 = v14;
    v38 = v8;
    v17 = a2;
    v18 = a3;
    v19 = [v16 CGImage];
    if (v19)
    {
      v20 = v19;
      v21 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];

      v22 = [a4 localizedName];
      v23 = sub_1B8C25128();
      v25 = v24;

      sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
      v26 = v21;
      v27 = sub_1B8C25538();
      v28 = swift_allocObject();
      v28[2] = a1;
      v28[3] = v23;
      v28[4] = v25;
      v28[5] = v26;
      v28[6] = v17;
      v28[7] = v18;
      aBlock[4] = sub_1B8C0975C;
      aBlock[5] = v28;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B8B8B9F4;
      aBlock[3] = &block_descriptor_15_0;
      v29 = _Block_copy(aBlock);
      v30 = v26;

      sub_1B8B247D4(v17, v18);

      sub_1B8C24FF8();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1B8C09CF8(&qword_1EBAA69C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
      sub_1B8B62264();
      v31 = v40;
      v32 = v38;
      sub_1B8C256D8();
      MEMORY[0x1B8CCA210](0, v11, v31, v29);
      _Block_release(v29);

      (*(v42 + 8))(v31, v32);
      (*(v39 + 8))(v11, v41);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_1EBAA5978 != -1)
    {
      swift_once();
    }

    v33 = sub_1B8C23C38();
    __swift_project_value_buffer(v33, qword_1EBAB3A30);
    v34 = sub_1B8C23C18();
    v35 = sub_1B8C25478();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1B8B22000, v34, v35, "Failed to prepare image for app record", v36, 2u);
      MEMORY[0x1B8CCB0E0](v36, -1, -1);
    }

    if (a2)
    {
      a2();
    }
  }
}

void sub_1B8C0909C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void))
{
  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v9 = sub_1B8C23C38();
  __swift_project_value_buffer(v9, qword_1EBAB3A30);
  v10 = sub_1B8C23C18();
  v11 = sub_1B8C25468();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1B8B22000, v10, v11, "Successfully built app info", v12, 2u);
    MEMORY[0x1B8CCB0E0](v12, -1, -1);
  }

  v13 = a4;
  sub_1B8C07AE8(a2, a3, a4);
  if (a5)
  {
    a5();
  }
}

uint64_t sub_1B8C091D4()
{
  sub_1B8C09658(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  v1 = OBJC_IVAR____TtC8Feedback17AppInfoController___observationRegistrar;
  v2 = sub_1B8C235C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppInfoController(uint64_t a1)
{
  result = qword_1EBAA8710;
  if (!qword_1EBAA8710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8C092D8(uint64_t a1)
{
  result = sub_1B8C235C8();
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

uint64_t sub_1B8C09398(void *a1, void *a2)
{
  swift_getKeyPath();
  sub_1B8C09CF8(&qword_1EBAA6F30, type metadata accessor for AppInfoController, &unk_1B8C2FAF0);
  sub_1B8C23588();

  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  swift_getKeyPath();
  sub_1B8C09614(v5, v4, v6);
  sub_1B8C23588();

  v7 = a2[3];
  if (v4)
  {
    if (!v7 || ((v8 = a2[4], v5 != a2[2]) || v4 != v7) && (sub_1B8C25A08() & 1) == 0)
    {
      sub_1B8C09658(v5, v4, v6);
      v13 = 0;
      return v13 & 1;
    }

    sub_1B8B46130(0, &qword_1EBAA6238, 0x1E69E58C0);

    v9 = v8;
    v10 = sub_1B8C255E8();

    sub_1B8C09658(v5, v4, v6);
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_11:
    v13 = 0;
    return v13 & 1;
  }

  if (v7)
  {
    goto LABEL_11;
  }

LABEL_7:
  swift_getKeyPath();
  sub_1B8C23588();

  v12 = a1[5];
  v11 = a1[6];
  swift_getKeyPath();

  sub_1B8C23588();

  if (v12 == a2[5] && v11 == a2[6])
  {

    v13 = 1;
  }

  else
  {
    v13 = sub_1B8C25A08();
  }

  return v13 & 1;
}

void sub_1B8C09614(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {

    v3 = a3;
  }
}

void sub_1B8C09658(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

void sub_1B8C0969C()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 40) = v0[3];
  *(v1 + 48) = v2;
}

void sub_1B8C096DC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v2[2] = v1;
  v2[3] = v3;
  v2[4] = v4;
  sub_1B8C09614(v1, v3, v4);
  sub_1B8C09658(v5, v6, v7);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1B8C0976C(void *a1)
{
  v2 = 0xD000000000000021;
  v3 = sub_1B8C237B8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v40 - v8;
  sub_1B8C237C8();
  v10 = (*(v4 + 88))(v9, v3);
  if (v10 == *MEMORY[0x1E699C2E0] || v10 == *MEMORY[0x1E699C2B0])
  {
    v12 = "com.apple.MobileSMS";
    v2 = 0xD000000000000014;
LABEL_9:
    v13 = v12 | 0x8000000000000000;
    if (qword_1EBAA5978 != -1)
    {
      swift_once();
    }

    v14 = sub_1B8C23C38();
    __swift_project_value_buffer(v14, qword_1EBAB3A30);

    v15 = a1;
    v16 = sub_1B8C23C18();
    v17 = sub_1B8C25468();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v40 = v2;
      v19 = v18;
      v20 = swift_slowAlloc();
      v41 = v20;
      *v19 = 136446466;
      *(v19 + 4) = sub_1B8B5DD48(v40, v13, &v41);
      *(v19 + 12) = 2082;
      sub_1B8C237C8();
      sub_1B8C09CF8(&qword_1EBAA6278, MEMORY[0x1E699C390], MEMORY[0x1E699C3A8]);
      v21 = sub_1B8C259E8();
      v23 = v22;
      (*(v4 + 8))(v7, v3);
      v24 = sub_1B8B5DD48(v21, v23, &v41);

      *(v19 + 14) = v24;
      _os_log_impl(&dword_1B8B22000, v16, v17, "Will use bundleID override for AppInfoController: %{public}s for feature domain: %{public}s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CCB0E0](v20, -1, -1);
      v25 = v19;
      v2 = v40;
      MEMORY[0x1B8CCB0E0](v25, -1, -1);
    }

    return v2;
  }

  if (v10 == *MEMORY[0x1E699C308])
  {
    v12 = "For(interaction:)";
    v2 = 0xD000000000000013;
    goto LABEL_9;
  }

  (*(v4 + 8))(v9, v3);
  v27 = sub_1B8C23948();
  if (v28)
  {
    if (v27 == 0xD000000000000033 && v28 == 0x80000001B8C36B00)
    {

LABEL_20:
      if (qword_1EBAA5978 != -1)
      {
        swift_once();
      }

      v30 = sub_1B8C23C38();
      __swift_project_value_buffer(v30, qword_1EBAB3A30);
      v31 = sub_1B8C23C18();
      v32 = sub_1B8C25468();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v41 = v34;
        *v33 = 136446210;
        *(v33 + 4) = sub_1B8B5DD48(0xD000000000000021, 0x80000001B8C36B70, &v41);
        _os_log_impl(&dword_1B8B22000, v31, v32, "%{public}s - BundleID is GP extension, will override for GP app", v33, 0xCu);
        v35 = __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x1B8CCB0E0](v34, -1, -1, v35);
        MEMORY[0x1B8CCB0E0](v33, -1, -1);
      }

      return v2;
    }

    v29 = sub_1B8C25A08();

    if (v29)
    {
      goto LABEL_20;
    }
  }

  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v36 = sub_1B8C23C38();
  __swift_project_value_buffer(v36, qword_1EBAB3A30);
  v37 = sub_1B8C23C18();
  v38 = sub_1B8C25468();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_1B8B22000, v37, v38, "Will use bundleID provided for AppInfoController", v39, 2u);
    MEMORY[0x1B8CCB0E0](v39, -1, -1);
  }

  return 0;
}